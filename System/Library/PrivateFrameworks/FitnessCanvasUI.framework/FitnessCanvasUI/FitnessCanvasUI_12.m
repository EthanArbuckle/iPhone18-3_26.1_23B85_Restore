uint64_t sub_1E688A5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E688CA4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E688A614(uint64_t a1)
{
  v2 = sub_1E688C00C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E688A650(uint64_t a1)
{
  v2 = sub_1E688C00C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E688A68C()
{
  xmmword_1ED099F50 = xmmword_1E68C60B0;
  unk_1ED099F60 = xmmword_1E68C60C0;
  result = 1.0;
  xmmword_1ED099F70 = xmmword_1E68C60D0;
  unk_1ED099F80 = vdupq_n_s64(0x3FBC1C1C1C1C1C1CuLL);
  return result;
}

uint64_t InfoActionCardViewLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099F90);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  v12 = *(v1 + 2);
  v14 = *(v1 + 3);
  v15 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E688C00C();
  sub_1E68B3BD0();
  *&v16 = v9;
  v18 = 0;
  sub_1E67621E8();
  sub_1E68B3AB0();
  if (!v2)
  {
    *&v16 = v8;
    v18 = 1;
    sub_1E68B3AB0();
    *&v16 = v11;
    v18 = 2;
    sub_1E68B3AB0();
    *&v16 = v10;
    v18 = 3;
    sub_1E68B3AB0();
    v17 = v14;
    v16 = v15;
    v18 = 4;
    sub_1E67F4B5C();
    sub_1E68B3AB0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t InfoActionCardViewLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099FA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E688C00C();
  sub_1E68B3BC0();
  if (!v2)
  {
    v16 = 0;
    sub_1E6762A60();
    sub_1E68B3A00();
    v9 = *&v15[0];
    v16 = 1;
    sub_1E68B3A00();
    v10 = *&v15[0];
    v16 = 2;
    sub_1E68B3A00();
    v11 = *&v15[0];
    v16 = 3;
    sub_1E68B3A00();
    v13 = *&v15[0];
    v16 = 4;
    sub_1E67F4C04();
    sub_1E68B3A00();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v13;
    v14 = v15[1];
    *(a2 + 32) = v15[0];
    *(a2 + 48) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t InfoActionCardViewLayout.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v1);
  if (v2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x1E69523F0](*&v9);
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x1E69523F0](*&v10);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x1E69523F0](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x1E69523F0](*&v12);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1E69523F0](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x1E69523F0](*&v14);
  if (v8 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8;
  }

  return MEMORY[0x1E69523F0](*&v15);
}

uint64_t InfoActionCardViewLayout.hashValue.getter()
{
  sub_1E68B3B70();
  InfoActionCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E688AD38()
{
  sub_1E68B3B70();
  InfoActionCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E688AD7C()
{
  sub_1E68B3B70();
  InfoActionCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E688ADBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v49 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1E68B2B10();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099FC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099FD0);
  v37 = *(a1 + 16);
  sub_1E68B3750();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v5 = sub_1E68B2CC0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = sub_1E68B1E40();
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099640);
  v41 = sub_1E68B1E40();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v36 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v13 = sub_1E68B1E40();
  v46 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v36 - v16;
  v17 = *(a1 + 24);
  v52 = v37;
  v53 = v17;
  v18 = v39;
  v54 = v39;
  sub_1E68B21C0();
  sub_1E68B2CB0();
  sub_1E68B2500();
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A70();
  (*(v6 + 8))(v8, v5);
  (*(v47 + 104))(v45, *MEMORY[0x1E69814D8], v48);
  v61 = sub_1E68B2B60();
  sub_1E68B2500();
  v59 = WitnessTable;
  v60 = MEMORY[0x1E697E5D8];
  v20 = swift_getWitnessTable();
  v21 = v38;
  sub_1E68B2750();

  (*(v42 + 8))(v11, v9);
  v22 = *v18;
  v23 = *(v49 + 20);
  v24 = *MEMORY[0x1E697F468];
  v25 = sub_1E68B2160();
  v26 = v50;
  (*(*(v25 - 8) + 104))(&v50[v23], v24, v25);
  *v26 = v22;
  v26[1] = v22;
  v27 = sub_1E673F530(&qword_1ED099638, &qword_1ED099640);
  v57 = v20;
  v58 = v27;
  v28 = v41;
  v29 = swift_getWitnessTable();
  sub_1E688C978(&qword_1EE2EA660, MEMORY[0x1E697EAF0]);
  v30 = v40;
  sub_1E68B2AE0();
  sub_1E6768D04(v26);
  (*(v44 + 8))(v21, v28);
  v31 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v55 = v29;
  v56 = v31;
  v32 = swift_getWitnessTable();
  v33 = v43;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v30, v13, v32);
  v34 = *(v46 + 8);
  v34(v30, v13);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v33, v13, v32);
  return (v34)(v33, v13);
}

uint64_t sub_1E688B5AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a2;
  v65 = a3;
  v80 = a4;
  v66 = sub_1E68B3750();
  v5 = sub_1E68B1E40();
  v68 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v63 - v6;
  v69 = v7;
  v8 = sub_1E68B1E40();
  v72 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v63 - v9;
  v73 = v10;
  v79 = sub_1E68B1E40();
  v76 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v63 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v63 - v15;
  v16 = sub_1E68B21B0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099FC8);
  MEMORY[0x1EEE9AC00](v74);
  v81 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v63 - v22;
  v24 = a1[8];
  v25 = a1[9];
  v26 = a1[10];
  v27 = a1[11];
  sub_1E68B2E90();
  sub_1E68B1F30();
  *&v101 = v24;
  *(&v101 + 1) = v25;
  *&v102 = v26;
  *(&v102 + 1) = v27;
  sub_1E673F228(v24, v25, v26, v27);
  sub_1E68B21A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099FD8);
  sub_1E688C830();
  v75 = v23;
  sub_1E68B2950();
  (*(v17 + 8))(v19, v16);
  v113[6] = v107;
  v113[7] = v108;
  v113[8] = v109;
  v113[2] = v103;
  v113[3] = v104;
  v113[4] = v105;
  v113[5] = v106;
  v113[0] = v101;
  v113[1] = v102;
  sub_1E6744A10(v113, &qword_1ED099FD8);
  v28 = a1[12];
  v29 = a1[13];
  v30 = a1[14];
  v31 = a1[15];
  sub_1E68B2E90();
  sub_1E68B1F30();
  sub_1E673F228(v28, v29, v30, v31);
  LOBYTE(v27) = sub_1E68B2520();
  v32 = sub_1E68B2540();
  sub_1E68B2540();
  if (sub_1E68B2540() != v27)
  {
    v32 = sub_1E68B2540();
  }

  sub_1E68B1B30();
  v112 = 0;
  *&v101 = v28;
  *(&v101 + 1) = v29;
  *&v102 = v30;
  *(&v102 + 1) = v31;
  v107 = v111[6];
  v108 = v111[7];
  v109 = v111[8];
  v103 = v111[2];
  v104 = v111[3];
  v105 = v111[4];
  v106 = v111[5];
  LOBYTE(v110) = v32;
  *(&v110 + 1) = v33;
  *&v111[0] = v34;
  *(&v111[0] + 1) = v35;
  *&v111[1] = v36;
  BYTE8(v111[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097968);
  v37 = swift_allocObject();
  v63 = xmmword_1E68B77B0;
  *(v37 + 16) = xmmword_1E68B77B0;
  v38 = sub_1E68B2530();
  *(v37 + 32) = v38;
  v39 = sub_1E68B2550();
  *(v37 + 33) = v39;
  sub_1E68B2540();
  sub_1E68B2540();
  if (sub_1E68B2540() != v38)
  {
    sub_1E68B2540();
  }

  sub_1E68B2540();
  v40 = sub_1E68B2540();
  v41 = v67;
  if (v40 != v39)
  {
    sub_1E68B2540();
  }

  v42 = v65;
  type metadata accessor for InfoActionCardView();
  v100 = v42;
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A70();
  v44 = swift_allocObject();
  *(v44 + 16) = v63;
  v45 = sub_1E68B2510();
  *(v44 + 32) = v45;
  v46 = sub_1E68B2520();
  *(v44 + 33) = v46;
  sub_1E68B2540();
  sub_1E68B2540();
  if (sub_1E68B2540() != v45)
  {
    sub_1E68B2540();
  }

  sub_1E68B2540();
  if (sub_1E68B2540() != v46)
  {
    sub_1E68B2540();
  }

  v47 = MEMORY[0x1E697E5D8];
  v97[7] = WitnessTable;
  v97[8] = MEMORY[0x1E697E5D8];
  v48 = v69;
  v49 = swift_getWitnessTable();
  v50 = v71;
  sub_1E68B2A70();
  (*(v68 + 8))(v41, v48);
  sub_1E68B2E80();
  v97[5] = v49;
  v97[6] = v47;
  v61 = v73;
  v62 = swift_getWitnessTable();
  v51 = v70;
  sub_1E68B2A00();
  (*(v72 + 8))(v50, v61);
  v97[3] = v62;
  v97[4] = MEMORY[0x1E697EBF8];
  v52 = v79;
  v53 = swift_getWitnessTable();
  v54 = v77;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v51, v52, v53);
  v55 = v76;
  v56 = *(v76 + 8);
  v56(v51, v52);
  v57 = v75;
  v58 = v81;
  sub_1E67612FC(v75, v81, &qword_1ED099FC8);
  v94 = v109;
  v95 = v110;
  v96[0] = v111[0];
  *(v96 + 9) = *(v111 + 9);
  v90 = v105;
  v91 = v106;
  v92 = v107;
  v93 = v108;
  v86 = v101;
  v87 = v102;
  v88 = v103;
  v89 = v104;
  v97[0] = v58;
  v97[1] = &v86;
  v59 = v78;
  (*(v55 + 16))(v78, v54, v52);
  v97[2] = v59;
  sub_1E67612FC(&v101, v98, &qword_1ED099FD0);
  v85[0] = v74;
  v85[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099FD0);
  v85[2] = v52;
  v82 = sub_1E688C8BC();
  v83 = sub_1E688C9C0();
  v84 = v53;
  sub_1E6848F14(v97, 3uLL, v85);
  sub_1E6744A10(&v101, &qword_1ED099FD0);
  v56(v54, v52);
  sub_1E6744A10(v57, &qword_1ED099FC8);
  v56(v59, v52);
  v98[8] = v94;
  v98[9] = v95;
  v99[0] = v96[0];
  *(v99 + 9) = *(v96 + 9);
  v98[4] = v90;
  v98[5] = v91;
  v98[6] = v92;
  v98[7] = v93;
  v98[0] = v86;
  v98[1] = v87;
  v98[2] = v88;
  v98[3] = v89;
  sub_1E6744A10(v98, &qword_1ED099FD0);
  return sub_1E6744A10(v81, &qword_1ED099FC8);
}

uint64_t _s15FitnessCanvasUI24InfoActionCardViewLayoutV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))))
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3])))) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E688C00C()
{
  result = qword_1ED099F98;
  if (!qword_1ED099F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099F98);
  }

  return result;
}

unint64_t sub_1E688C064()
{
  result = qword_1ED099FA8;
  if (!qword_1ED099FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099FA8);
  }

  return result;
}

uint64_t sub_1E688C0B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E688C0D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

void sub_1E688C134()
{
  sub_1E673ED38();
  if (v0 <= 0x3F)
  {
    sub_1E68B3750();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E688C1CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 128) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      v17 = (a1 + 71) & 0xFFFFFFFFFFFFFFF8;
      if (v6 > 0x7FFFFFFE)
      {
        v19 = (*(v4 + 48))((((v17 + 39) & 0xFFFFFFFFFFFFFFF8) + v8 + 32) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *(v17 + 24);
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
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

  return v7 + (v11 | v16) + 1;
}

void sub_1E688C3A4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 128) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = (a1 + 71) & 0xFFFFFFFFFFFFFFF8;
  if (v9 > 0x7FFFFFFE)
  {
    v22 = ((((v21 + 39) & 0xFFFFFFFFFFFFFFF8) + v11 + 32) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26((((v21 + 39) & 0xFFFFFFFFFFFFFFF8) + v11 + 32) & ~v11, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *v21 = 0u;
    *(v21 + 16) = 0u;
    *v21 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(v21 + 24) = a2;
  }
}

unint64_t sub_1E688C6DC()
{
  result = qword_1ED099FB0;
  if (!qword_1ED099FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099FB0);
  }

  return result;
}

unint64_t sub_1E688C734()
{
  result = qword_1ED099FB8;
  if (!qword_1ED099FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099FB8);
  }

  return result;
}

unint64_t sub_1E688C78C()
{
  result = qword_1ED099FC0;
  if (!qword_1ED099FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099FC0);
  }

  return result;
}

unint64_t sub_1E688C830()
{
  result = qword_1ED099FE0;
  if (!qword_1ED099FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099FD8);
    sub_1E67688F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099FE0);
  }

  return result;
}

unint64_t sub_1E688C8BC()
{
  result = qword_1ED099FE8;
  if (!qword_1ED099FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099FC8);
    sub_1E688C830();
    sub_1E688C978(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099FE8);
  }

  return result;
}

uint64_t sub_1E688C978(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E688C9C0()
{
  result = qword_1ED099FF0;
  if (!qword_1ED099FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099FD0);
    sub_1E688C830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099FF0);
  }

  return result;
}

uint64_t sub_1E688CA4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E68E3100 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E68E3120 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001E68E3140 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E3160 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t CanvasLayout.init(bounds:carouselPageControlSpacing:contentMargins:dynamicTypeSize:intersectionSpacing:sectionDensityFactor:sizeClass:)@<X0>(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>)
{
  *a6 = a7;
  *(a6 + 8) = a8;
  *(a6 + 16) = a9;
  *(a6 + 24) = a10;
  *(a6 + 32) = a11;
  v15 = a1[1];
  *(a6 + 40) = *a1;
  *(a6 + 56) = v15;
  *(a6 + 72) = a2;
  *(a6 + 80) = a12;
  *(a6 + 88) = a3;
  v16 = type metadata accessor for CanvasLayout();
  return (*(*(a5 - 8) + 32))(a6 + *(v16 + 72), a4, a5);
}

__n128 CanvasLayout.contentMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E688CD20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73646E756F62 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E68E3180 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5463696D616E7964 && a2 == 0xEF657A6953657079 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E31A0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E68E31C0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1E688CF84(unsigned __int8 a1)
{
  v1 = 0x73646E756F62;
  if (a1 == 5)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0x73616C43657A6973;
  }

  v3 = 0x5463696D616E7964;
  if (a1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001ALL;
  if (a1 != 1)
  {
    v4 = 0x4D746E65746E6F63;
  }

  if (a1)
  {
    v1 = v4;
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

uint64_t sub_1E688D090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E688CD20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E688D0C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E6773BAC();
  *a1 = result;
  return result;
}

uint64_t sub_1E688D0F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E688D14C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasLayout.encode(to:)(void *a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[4];
  v5 = a2[5];
  v19 = a2[3];
  v20 = v3;
  *&v26 = v3;
  *(&v26 + 1) = v19;
  v21 = v4;
  *&v27 = v4;
  *(&v27 + 1) = v5;
  v18 = v5;
  type metadata accessor for CanvasLayout.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1E68B3AC0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v22;
  sub_1E68B3BD0();
  v11 = v10[1];
  v26 = *v10;
  v27 = v11;
  v28 = 0;
  type metadata accessor for CGRect(0);
  sub_1E688DB40(&qword_1ED099FF8);
  v12 = v23;
  sub_1E68B3AB0();
  if (v12)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v13 = v21;
  *&v26 = *(v10 + 4);
  v28 = 1;
  sub_1E67621E8();
  sub_1E68B3AB0();
  v15 = *(v10 + 56);
  v26 = *(v10 + 40);
  v27 = v15;
  v28 = 2;
  sub_1E67F4B08();
  v23 = v9;
  sub_1E68B3AB0();
  LOBYTE(v26) = *(v10 + 72);
  v28 = 3;
  sub_1E688D564();
  sub_1E68B3AB0();
  *&v26 = *(v10 + 10);
  v28 = 4;
  sub_1E68B3AB0();
  *&v26 = *(v10 + 11);
  v28 = 5;
  sub_1E68B30E0();
  v16 = *(v13 + 16);
  v17 = sub_1E6804270();
  v24 = v16;
  v25 = v17;
  swift_getWitnessTable();
  sub_1E68B3AB0();
  LOBYTE(v26) = 6;
  sub_1E68B3AB0();
  return (*(v7 + 8))(v23, v6);
}

unint64_t sub_1E688D564()
{
  result = qword_1EE2EBD00;
  if (!qword_1EE2EBD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD00);
  }

  return result;
}

uint64_t CanvasLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a6;
  v38 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v50 = v12;
  *(&v50 + 1) = v13;
  *&v51 = v14;
  *(&v51 + 1) = v15;
  type metadata accessor for CanvasLayout.CodingKeys();
  swift_getWitnessTable();
  v45 = sub_1E68B3A20();
  v42 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v17 = &v36 - v16;
  v40 = a2;
  v41 = a4;
  *&v50 = a2;
  *(&v50 + 1) = a3;
  *&v51 = a4;
  *(&v51 + 1) = a5;
  v44 = a5;
  v18 = type metadata accessor for CanvasLayout();
  v37 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  v21 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v22 = v46;
  sub_1E68B3BC0();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v23 = v20;
  v46 = v18;
  v24 = v43;
  v25 = v42;
  type metadata accessor for CGRect(0);
  v52 = 0;
  sub_1E688DB40(&qword_1ED09A000);
  v26 = v17;
  sub_1E68B3A00();
  v27 = v51;
  *v23 = v50;
  *(v23 + 1) = v27;
  v52 = 1;
  sub_1E6762A60();
  sub_1E68B3A00();
  v28 = v25;
  *(v23 + 4) = v50;
  v52 = 2;
  sub_1E67F4BB0();
  sub_1E68B3A00();
  v29 = v51;
  *(v23 + 40) = v50;
  *(v23 + 56) = v29;
  v52 = 3;
  sub_1E688DB84();
  sub_1E68B3A00();
  v23[72] = v50;
  v52 = 4;
  sub_1E68B3A00();
  *(v23 + 10) = v50;
  v30 = v41;
  sub_1E68B30E0();
  v52 = 5;
  v31 = *(v30 + 8);
  v32 = sub_1E6804318();
  v48 = v31;
  v49 = v32;
  swift_getWitnessTable();
  sub_1E68B3A00();
  *(v23 + 11) = v50;
  LOBYTE(v50) = 6;
  sub_1E68B3A00();
  (*(v28 + 8))(v26, v45);
  v33 = v46;
  (*(v38 + 32))(&v23[*(v46 + 72)], v24, a3);
  v34 = v37;
  (*(v37 + 16))(v39, v23, v33);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return (*(v34 + 8))(v23, v33);
}

uint64_t sub_1E688DB40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E688DB84()
{
  result = qword_1ED09A008;
  if (!qword_1ED09A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A008);
  }

  return result;
}

uint64_t static CanvasLayout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = CGRectEqualToRect(*a1, *a2);
  if (v4)
  {
    if (*(a1 + 32) == *(a2 + 32) && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 40), *(a2 + 40)), vceqq_f64(*(a1 + 56), *(a2 + 56))))) & 1) != 0 && *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80) && (sub_1E6839A10(), (sub_1E68B3100() & 1) != 0))
    {
      type metadata accessor for CanvasLayout();
      LOBYTE(v4) = sub_1E68B3190();
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4 & 1;
}

void sub_1E688DD64(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 96) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
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

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((((((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t dispatch thunk of CanvasItemPlaceholderCaching.registerMissingPlaceholders(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 136) + **(a3 + 136));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E6782994;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CanvasItemPlaceholderCaching.registerPlaceholdersToFetch(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 144) + **(a3 + 144));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E688E298;

  return v9(a1, a2, a3);
}

uint64_t sub_1E688E298(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of CanvasItemPlaceholderCaching.registerResolvedItems(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 152) + **(a3 + 152));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E6782994;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CanvasItemPlaceholderCaching.removeCurrentlyFetchingPlaceholders(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 160) + **(a3 + 160));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E6782994;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CanvasItemPlaceholderCaching.invalidate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 168) + **(a2 + 168));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E6782994;

  return v7(a1, a2);
}

uint64_t dispatch thunk of CanvasItemPlaceholderCaching.invalidatePlaceholders(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 176) + **(a3 + 176));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E6782994;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CanvasItemPlaceholderCaching.transformResolvedItems<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 184) + **(a6 + 184));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E6782994;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1E688E9D4()
{
  v0 = swift_allocObject();
  sub_1E688F840();
  return v0;
}

uint64_t sub_1E688EA2C()
{
  v18 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 128);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 128) = v4;
    if (qword_1EE2EAA00 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v5 = sub_1E68B1AE0();
  __swift_project_value_buffer(v5, qword_1EE2F8440);
  swift_retain_n();
  v6 = sub_1E68B1AC0();
  v7 = sub_1E68B3740();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446466;

    v10 = sub_1E68915C8();
    v12 = v11;

    v13 = sub_1E683B478(v10, v12, &v17);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2048;
    v14 = *(v1 + 128);

    *(v8 + 14) = v14;

    _os_log_impl(&dword_1E6725000, v6, v7, "%{public}s reference count is now %ld", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E6952A70](v9, -1, -1);
    MEMORY[0x1E6952A70](v8, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

void sub_1E688EC2C()
{
  if (!v0[16])
  {
    v1 = *v0;
    if (qword_1EE2EAA00 != -1)
    {
      swift_once();
    }

    v2 = sub_1E68B1AE0();
    __swift_project_value_buffer(v2, qword_1EE2F8440);

    v3 = sub_1E68B1AC0();
    v4 = sub_1E68B3740();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *&v17 = v6;
      *v5 = 136446210;

      v7 = sub_1E68915C8();
      v9 = v8;

      v10 = sub_1E683B478(v7, v9, &v17);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_1E6725000, v3, v4, "%{public}s cleaning up", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1E6952A70](v6, -1, -1);
      MEMORY[0x1E6952A70](v5, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v12 = *(v1 + 152);
    v16 = *(v1 + 160);
    *&v17 = *(v1 + 104);
    v11 = v17;
    *(&v17 + 1) = v12;
    v18 = v16;
    type metadata accessor for CanvasItemPlaceholder();
    v13 = *(v1 + 96);
    *&v14 = *(v1 + 144);
    v17 = *(v1 + 80);
    *&v18 = v13;
    *(&v18 + 1) = v11;
    v15 = *(v1 + 128);
    v19 = *(v1 + 112);
    v20 = v15;
    *(&v14 + 1) = v12;
    v21 = v14;
    v22 = v16;
    v23 = *(v1 + 176);
    type metadata accessor for CanvasItemDescriptor();
    swift_getWitnessTable();
    sub_1E68B30E0();
    sub_1E68B30D0();
    swift_endAccess();
    swift_beginAccess();
    sub_1E68B3630();
    sub_1E68B3620();
    swift_endAccess();
    swift_beginAccess();
    sub_1E68B3620();
    swift_endAccess();
  }
}

uint64_t sub_1E688EF10()
{
  v1[16] = v0;
  v1[17] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10);
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E688EFD4, v0, 0);
}

uint64_t sub_1E688EFD4()
{
  v29 = v0;
  v1 = *(v0 + 128);
  v2 = *(v1 + 128);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (v3)
  {
    return sub_1E68B3910();
  }

  *(v1 + 128) = v4;
  if (qword_1EE2EAA00 != -1)
  {
    swift_once();
  }

  v5 = sub_1E68B1AE0();
  __swift_project_value_buffer(v5, qword_1EE2F8440);
  swift_retain_n();
  v6 = sub_1E68B1AC0();
  v7 = sub_1E68B3740();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136446466;
    v10 = sub_1E68915C8();
    v12 = sub_1E683B478(v10, v11, &v28);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    v13 = *(v1 + 128);

    *(v8 + 14) = v13;

    _os_log_impl(&dword_1E6725000, v6, v7, "%{public}s reference count is now %ld", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E6952A70](v9, -1, -1);
    MEMORY[0x1E6952A70](v8, -1, -1);
  }

  else
  {
  }

  if (!*(v1 + 128))
  {
    v16 = *(v0 + 136);
    v15 = *(v0 + 144);
    v17 = *(v0 + 128);
    v18 = sub_1E68B3460();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = v16[6];
    v20 = v16[7];
    v21 = v16[8];
    v22 = v16[9];
    v23 = v16[10];
    v24 = v16[11];
    *(v0 + 16) = v16[5];
    *(v0 + 32) = v19;
    *(v0 + 48) = v20;
    *(v0 + 64) = v21;
    *(v0 + 80) = v22;
    *(v0 + 96) = v23;
    *(v0 + 112) = v24;
    type metadata accessor for CanvasItemPlaceholderCache();
    WitnessTable = swift_getWitnessTable();
    v26 = swift_allocObject();
    v26[2] = v17;
    v26[3] = WitnessTable;
    v26[4] = v17;
    swift_retain_n();
    sub_1E688F558(0, 0, v15, &unk_1E68C67E0, v26);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1E688F314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1E688F3B0;

  return MEMORY[0x1EEE6DA60](1000000000);
}

uint64_t sub_1E688F3B0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1E688F4F4, v6, 0);
  }
}

uint64_t sub_1E688F4F4()
{
  sub_1E688EC2C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E688F558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1E678271C(a3, v22 - v9);
  v11 = sub_1E68B3460();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1E67826B4(v10);
  }

  else
  {
    sub_1E68B3450();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E68B3400();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E68B31C0() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1E67826B4(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E67826B4(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1E688F7C4()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1E688F7FC()
{
  sub_1E688F7C4();

  return MEMORY[0x1EEE6DEF0](v0);
}

void *sub_1E688F840()
{
  swift_defaultActor_initialize();
  v1 = type metadata accessor for CanvasItemPlaceholder();
  v2 = sub_1E68B3350();
  if (sub_1E68B3380())
  {
    WitnessTable = swift_getWitnessTable();
    v4 = sub_1E6891918(v2, v1, WitnessTable);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  v0[14] = v4;
  v5 = sub_1E68B3350();
  if (sub_1E68B3380())
  {
    v6 = swift_getWitnessTable();
    v7 = sub_1E6891918(v5, v1, v6);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CD0];
  }

  v0[15] = v7;
  v0[16] = 0;
  v8 = type metadata accessor for CanvasItemDescriptor();
  swift_getTupleTypeMetadata2();
  v9 = sub_1E68B3350();
  v10 = swift_getWitnessTable();
  v11 = sub_1E678307C(v9, v1, v8, v10);

  v0[17] = v11;
  return v0;
}

uint64_t sub_1E688FA90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E67825C0;

  return sub_1E688EA0C();
}

uint64_t sub_1E688FB20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1E68B3460();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_1E67877E0(0, 0, v6, a2, v8);
}

uint64_t sub_1E688FC1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E6782994;

  return sub_1E688EF10();
}

uint64_t sub_1E688FCAC(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1E688FCF4, v1, 0);
}

uint64_t sub_1E688FCF4()
{
  v1 = *(v0 + 96);
  *(v0 + 72) = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v1 + 104);
  v3 = *(v1 + 168);

  v4 = *(v1 + 152);
  *(v0 + 16) = v2;
  *(v0 + 24) = v4;
  *(v0 + 40) = v3;
  type metadata accessor for CanvasItemPlaceholder();
  swift_getWitnessTable();
  sub_1E68B3630();
  swift_getWitnessTable();
  sub_1E68B3610();
  swift_endAccess();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E688FE1C(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v2[28] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1E688FE64, v1, 0);
}

uint64_t sub_1E688FE64()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  swift_beginAccess();
  v4 = v2[17];
  v5 = *(v1 + 104);
  v6 = *(v1 + 168);
  v24 = *(v1 + 152);
  *(v0 + 16) = v5;
  *(v0 + 24) = v24;
  *(v0 + 40) = v6;
  v23 = *(v1 + 160);
  v7 = type metadata accessor for CanvasItemPlaceholder();
  v8 = *(v1 + 88);
  v9 = *(v1 + 112);
  v10 = *(v1 + 128);
  v11 = *(v1 + 176);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 24) = v8;
  *(v0 + 40) = v5;
  *(v0 + 48) = v9;
  *(v0 + 64) = v10;
  v8.i64[0] = *(v1 + 144);
  *(v0 + 80) = vzip1q_s64(v8, v24);
  *(v0 + 96) = v23;
  *(v0 + 112) = v11;
  type metadata accessor for CanvasItemDescriptor();
  WitnessTable = swift_getWitnessTable();
  *(v0 + 16) = v4;
  sub_1E68B3050();

  swift_getWitnessTable();
  sub_1E68B3640();
  MEMORY[0x1E6951DD0]();

  swift_beginAccess();
  v13 = v2[15];

  MEMORY[0x1E6951DD0](v3, v13, v7, WitnessTable);
  swift_beginAccess();
  v14 = v2[14];

  MEMORY[0x1E6951DD0](v3, v14, v7, WitnessTable);
  *(v0 + 176) = v2[17];

  sub_1E68B3640();
  sub_1E68B3560();

  sub_1E68B3560();
  v15 = sub_1E68B3560();
  if (sub_1E68B35D0())
  {

    v16 = sub_1E68B35B0();

    v17 = sub_1E68B35B0();

    v18 = sub_1E68B35B0();

    sub_1E68438C8();
    swift_allocError();
    *v19 = v16;
    *(v19 + 8) = v17;
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    swift_willThrow();
    v20 = *(v0 + 8);

    return v20();
  }

  else
  {

    *(v0 + 200) = v15;
    swift_beginAccess();
    sub_1E68B3630();

    swift_getWitnessTable();
    sub_1E68B3610();
    swift_endAccess();
    v22 = *(v0 + 8);

    return v22(v15);
  }
}

uint64_t sub_1E6890288(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v2[19] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1E68902D0, v1, 0);
}

uint64_t sub_1E68902D0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v1 + 104);
  v4 = *(v1 + 152);
  v17 = *(v1 + 160);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v17;
  type metadata accessor for CanvasItemPlaceholder();
  v5 = *(v1 + 112);
  v11 = *(v1 + 144);
  v12 = *(v1 + 176);
  v15 = *(v1 + 128);
  v16 = *(v1 + 80);
  *(v0 + 16) = v16;
  *&v6 = *(v1 + 96);
  *(&v6 + 1) = v3;
  v13 = v6;
  v14 = v5;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  *(v0 + 64) = v15;
  *(v0 + 80) = v11;
  *(v0 + 88) = v4;
  *(v0 + 96) = v17;
  *(v0 + 112) = v12;
  type metadata accessor for CanvasItemDescriptor();
  swift_getWitnessTable();
  *(v0 + 128) = v2;
  swift_beginAccess();
  sub_1E68B3630();
  sub_1E68B3050();
  swift_getWitnessTable();
  sub_1E68B3600();
  swift_endAccess();
  v7 = swift_task_alloc();
  *&v8 = v11;
  *(&v8 + 1) = v4;
  v7[1] = v16;
  v7[2] = v13;
  v7[3] = v14;
  v7[4] = v15;
  v7[5] = v8;
  v7[6] = v17;
  v7[7] = v12;
  swift_beginAccess();
  sub_1E68B30E0();

  sub_1E68B3070();
  swift_endAccess();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E6890520(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6890568, v1, 0);
}

uint64_t sub_1E6890568()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  v2 = *(v1 + 168);
  v3 = *(v1 + 152);
  *(v0 + 16) = *(v1 + 104);
  *(v0 + 24) = v3;
  *(v0 + 40) = v2;
  type metadata accessor for CanvasItemPlaceholder();
  swift_getWitnessTable();
  sub_1E68B3630();
  sub_1E68B35F0();
  swift_endAccess();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E6890650()
{
  swift_beginAccess();
  type metadata accessor for CanvasItemPlaceholder();
  swift_getWitnessTable();
  sub_1E68B3630();
  sub_1E68B3620();
  swift_endAccess();
  swift_beginAccess();
  type metadata accessor for CanvasItemDescriptor();
  sub_1E68B30E0();
  sub_1E68B30D0();
  swift_endAccess();
  swift_beginAccess();
  sub_1E68B3620();
  return swift_endAccess();
}

uint64_t sub_1E689082C()
{
  swift_beginAccess();

  type metadata accessor for CanvasItemPlaceholder();
  swift_getWitnessTable();
  *(v0 + 112) = sub_1E68B35C0();

  swift_beginAccess();

  type metadata accessor for CanvasItemDescriptor();
  *(v0 + 136) = sub_1E68B30A0();
}

BOOL sub_1E6890B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v44 = a8;
  v42 = a6;
  v50 = a2;
  v51 = a3;
  v48 = a1;
  v43 = a16;
  v40 = a9;
  v41 = a15;
  v49 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v46 = a14;
  v47 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v19;
  v53 = a12;
  v20 = v19;
  v45 = v19;
  v54 = a13;
  v55 = a14;
  v21 = type metadata accessor for CanvasItemPlaceholder();
  v52 = a4;
  v53 = a5;
  v54 = v42;
  v55 = v20;
  v56 = v44;
  v57 = v40;
  v58 = a10;
  v59 = a11;
  v60 = a12;
  v61 = a13;
  v62 = a14;
  v63 = v41;
  v64 = v43;
  v22 = type metadata accessor for CanvasItemDescriptor();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v38 - v29;
  v39 = v21;
  v31 = *(v21 - 8);
  (*(v31 + 16))(&v38 - v29, v48, v21, v28);
  v32 = *(TupleTypeMetadata2 + 48);
  v44 = v22;
  v33 = *(v22 - 8);
  (*(v33 + 16))(&v30[v32], v50, v22);
  (*(v24 + 16))(v26, v30, TupleTypeMetadata2);
  v50 = *(TupleTypeMetadata2 + 48);
  v34 = v49;
  v35 = v47;
  v36 = v45;
  (*(v49 + 16))(v47, v26, v45);
  (*(v31 + 8))(v26, v39);
  LOBYTE(v31) = sub_1E68B35E0();
  (*(v34 + 8))(v35, v36);
  (*(v24 + 8))(v30, TupleTypeMetadata2);
  (*(v33 + 8))(&v26[v50], v44);
  return (v31 & 1) == 0;
}

uint64_t sub_1E6890F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6890F44, v3, 0);
}

uint64_t sub_1E6890F44()
{
  v1 = v0[11];
  v2 = v0[9];
  swift_beginAccess();
  v3 = *(v1 + 136);
  swift_beginAccess();
  v4 = *(v1 + 112);

  v2(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E68910B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E6782994;

  return sub_1E688FCAC(a1);
}

uint64_t sub_1E689114C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E68911E4;

  return sub_1E688FE1C(a1);
}

uint64_t sub_1E68911E4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1E68912E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E6782994;

  return sub_1E6890288(a1);
}

uint64_t sub_1E689137C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E6782994;

  return sub_1E6890520(a1);
}

uint64_t sub_1E6891414()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1E6891434, v2, 0);
}

uint64_t sub_1E6891434()
{
  sub_1E6890650();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6891494(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1E68914B4, v3, 0);
}

uint64_t sub_1E68914B4()
{
  sub_1E689082C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6891514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E67825C0;

  return sub_1E6890F20(a1, a2, a3);
}

unint64_t sub_1E68915C8()
{
  sub_1E68B3820();

  v0 = sub_1E68B31B0();
  MEMORY[0x1E6951A70](v0);

  MEMORY[0x1E6951A70](41, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

uint64_t sub_1E68917B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E6782994;

  return sub_1E688FC1C();
}

uint64_t sub_1E6891864()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E67825C0;

  return sub_1E688FA90();
}

uint64_t sub_1E6891918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v38 - v10;
  v39 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  if (sub_1E68B3380())
  {
    sub_1E68B3800();
    v15 = sub_1E68B37F0();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  v43 = sub_1E68B3380();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_1E68B3370();
    sub_1E68B3340();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1E68B3840();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_1E68B3130();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v8, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_1E68B3190();
        v32 = *v47;
        (*v47)(v8, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_10()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E6891D14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E67825C0;

  return sub_1E688F314(a1, v4, v5, v6);
}

uint64_t String.attributedTextStyle(_:)(uint64_t a1)
{
  v2 = sub_1E68B1880();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);

  return sub_1E68B1830();
}

uint64_t Optional<A>.attributedTextStyle(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1E68B1880();
  v9 = MEMORY[0x1EEE9AC00](v6);
  if (a2)
  {
    (*(v8 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);

    sub_1E68B1830();
    v10 = sub_1E68B1820();
    return (*(*(v10 - 8) + 56))(a3, 0, 1, v10);
  }

  else
  {
    v12 = sub_1E68B1820();
    v13 = *(*(v12 - 8) + 56);

    return v13(a3, 1, 1, v12);
  }
}

double sub_1E6892048@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t ListView.init(header:items:footer:metrics:contentMargins:densityFactor:dynamicTypeSize:sizeClass:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:actionButtonViewBuilder:contextMenuViewModifierBuilder:viewDescriptorBuilder:sectionHeaderSubtitleViewBuilder:onItemAppearedAtIndex:onItemDisappearedAtIndex:onItemSelectedWithIdentifier:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, __int128 a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, __int128 a36, uint64_t a37, __int128 a38, __int128 a39, uint64_t a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, __int128 a45, __int128 a46, uint64_t a47, uint64_t a48)
{
  v94 = *a3;
  v49 = a6[1];
  v92 = a6[2];
  v93 = *a6;
  swift_getFunctionTypeMetadata1();
  v50 = sub_1E68B3750();
  v123 = 0;
  v124 = 0;
  v90 = a5[1];
  v91 = *a5;
  sub_1E672890C(&v123, v50, &v105);
  v101 = v105;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v105 = a31;
  *(&v105 + 1) = a39;
  v106 = AssociatedConformanceWitness;
  v107 = *(&a45 + 1);
  type metadata accessor for CanvasSectionHeader();
  v52 = sub_1E68B3750();
  v99 = *(v52 - 8);
  v100 = v52;
  (*(v99 + 16))(a9, a1);
  v105 = a31;
  v106 = a32;
  v107 = a33;
  v108 = a34;
  v109 = a35;
  v110 = a36;
  v111 = a37;
  v112 = a38;
  v113 = a39;
  v114 = a40;
  v115 = a41;
  v116 = a42;
  v117 = a43;
  v118 = a44;
  v119 = a45;
  v120 = a46;
  v121 = a47;
  v122 = a48;
  v53 = type metadata accessor for ListView();
  *(a9 + v53[61]) = a2;
  *(a9 + v53[62]) = v94;
  v54 = v53[63];
  v55 = sub_1E68B3750();
  v95 = *(v55 - 8);
  v97 = v55;
  (*(v95 + 16))(a9 + v54, a4);
  v56 = v53[68];
  v123 = a10;
  v124 = a11;
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v123, FunctionTypeMetadata1, &v105);
  *(a9 + v56) = v105;
  v58 = v53[69];
  v123 = a12;
  v124 = a13;
  v59 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v123, v59, &v105);
  *(a9 + v58) = v105;
  v60 = v53[70];
  v123 = a14;
  v124 = a15;
  v61 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v123, v61, &v105);
  *(a9 + v60) = v105;
  v62 = (a9 + v53[74]);

  *v62 = sub_1E6892B84(a20, a21, a31, *(&a31 + 1), a32, a33, a34, a35, a36, *(&a36 + 1), a37, a38, a39, a40, a41, *(&a41 + 1), a42, a43, a44, a45, a46, a47, a48);
  v62[1] = v63;
  v64 = (a9 + v53[71]);

  *&v88[40] = a40;
  *&v88[24] = a39;
  *v88 = a37;
  *&v88[8] = a38;
  *v64 = sub_1E689296C(a16, a17, a31, *(&a31 + 1), a32, a33, a34, a35, a36, *v88, *&v88[16], *&v88[32], a41, a42, a43, a44, a45, a46, a47, a48);
  v64[1] = v65;
  v66 = v53[72];
  v123 = a18;
  v124 = a19;
  v67 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v123, v67, &v105);
  *(a9 + v66) = v105;
  v68 = v53[73];
  v123 = a22;
  v124 = a23;
  v69 = v53;
  v70 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v123, v70, &v105);
  *(a9 + v68) = v105;
  v71 = (a9 + v53[64]);
  *v71 = v91;
  v71[1] = v90;
  v72 = (a9 + v53[65]);
  *v72 = v93;
  v72[1] = v49;
  v72[2] = v92;
  *(a9 + v53[66]) = a7;
  v73 = v53[67];
  v74 = *(a41 - 8);
  (*(v74 + 16))(a9 + v73, a8, a41);
  if (a24)
  {
    v75 = swift_allocObject();
    *(v75 + 16) = a24;
    *(v75 + 24) = a25;
    v76 = sub_1E67E403C;
  }

  else
  {
    v76 = 0;
    v75 = 0;
  }

  v77 = (a9 + v69[75]);
  *v77 = v76;
  v77[1] = v75;
  if (a26)
  {
    v78 = swift_allocObject();
    *(v78 + 16) = a26;
    *(v78 + 24) = a27;
    v79 = sub_1E67E3FAC;
  }

  else
  {
    v79 = 0;
    v78 = 0;
  }

  v80 = (a9 + v69[76]);
  v81 = (a9 + v69[77]);
  *v80 = v79;
  v80[1] = v78;
  v82 = sub_1E6892EA0(a28, a29, a31, *(&a31 + 1), a32, a33, a34, a35, a36, *(&a36 + 1), a37, a38, *(&a38 + 1), a39, *(&a39 + 1), a40, a41, *(&a41 + 1), a42, *(&a42 + 1), a43, *(&a43 + 1), a44, *(&a44 + 1), a45, *(&a45 + 1), a46, *(&a46 + 1), a47, a48);
  v84 = v83;

  (*(v74 + 8))(a8, a41);
  (*(v95 + 8))(a4, v97);
  (*(v99 + 8))(a1, v100);
  sub_1E672E440(v101);
  *v81 = v82;
  v81[1] = v84;
  v85 = v69[78];
  v86 = sub_1E68B1950();
  return (*(*(v86 - 8) + 32))(a9 + v85, a30, v86);
}

uint64_t sub_1E689296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20)
{
  v28 = swift_allocObject();
  *(v28 + 16) = a3;
  *(v28 + 24) = a4;
  *(v28 + 32) = a5;
  *(v28 + 40) = a6;
  *(v28 + 48) = a7;
  *(v28 + 56) = a8;
  *(v28 + 64) = a9;
  *(v28 + 80) = a10;
  *(v28 + 96) = a11;
  *(v28 + 112) = a12;
  *(v28 + 128) = a13;
  *(v28 + 144) = a14;
  *(v28 + 160) = a15;
  *(v28 + 176) = a16;
  *(v28 + 192) = a17;
  *(v28 + 208) = a18;
  *(v28 + 224) = a19;
  *(v28 + 232) = a20;
  *(v28 + 240) = a1;
  *(v28 + 248) = a2;
  v31[0] = sub_1E67D5538;
  v31[1] = v28;
  sub_1E68B3750();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098208);
  FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
  sub_1E672890C(v31, FunctionTypeMetadata2, &v32);
  return v32;
}

uint64_t (*sub_1E6892AD8(uint64_t a1))(uint64_t a1, uint64_t a2, char a3)
{
  v3 = (v1 + *(a1 + 284));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  v7 = *(a1 + 32);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v7;
  v8 = *(a1 + 64);
  *(v6 + 48) = *(a1 + 48);
  *(v6 + 64) = v8;
  v9 = *(a1 + 96);
  *(v6 + 80) = *(a1 + 80);
  *(v6 + 96) = v9;
  v10 = *(a1 + 128);
  *(v6 + 112) = *(a1 + 112);
  *(v6 + 128) = v10;
  v11 = *(a1 + 160);
  *(v6 + 144) = *(a1 + 144);
  *(v6 + 160) = v11;
  v12 = *(a1 + 192);
  *(v6 + 176) = *(a1 + 176);
  *(v6 + 192) = v12;
  v13 = *(a1 + 224);
  *(v6 + 208) = *(a1 + 208);
  *(v6 + 224) = v13;
  *(v6 + 240) = v5;
  *(v6 + 248) = v4;

  return sub_1E689A1D0;
}

uint64_t sub_1E6892B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23)
{
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  *(v27 + 32) = a5;
  *(v27 + 40) = a6;
  *(v27 + 48) = a7;
  *(v27 + 56) = a8;
  *(v27 + 64) = a9;
  *(v27 + 72) = a10;
  *(v27 + 80) = a11;
  *(v27 + 88) = a12;
  *(v27 + 104) = a13;
  *(v27 + 120) = a14;
  *(v27 + 128) = a15;
  *(v27 + 136) = a16;
  *(v27 + 144) = a17;
  *(v27 + 160) = a18;
  *(v27 + 176) = a19;
  *(v27 + 192) = a20;
  *(v27 + 208) = a21;
  *(v27 + 224) = a22;
  *(v27 + 232) = a23;
  *(v27 + 240) = a1;
  *(v27 + 248) = a2;
  v34[0] = sub_1E67D559C;
  v34[1] = v27;
  FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
  sub_1E672890C(v34, FunctionTypeMetadata2, &v35);
  return v35;
}

uint64_t (*sub_1E6892CEC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = (v1 + *(a1 + 296));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  v7 = *(a1 + 32);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v7;
  v8 = *(a1 + 64);
  *(v6 + 48) = *(a1 + 48);
  *(v6 + 64) = v8;
  v9 = *(a1 + 96);
  *(v6 + 80) = *(a1 + 80);
  *(v6 + 96) = v9;
  v10 = *(a1 + 128);
  *(v6 + 112) = *(a1 + 112);
  *(v6 + 128) = v10;
  v11 = *(a1 + 160);
  *(v6 + 144) = *(a1 + 144);
  *(v6 + 160) = v11;
  v12 = *(a1 + 192);
  *(v6 + 176) = *(a1 + 176);
  *(v6 + 192) = v12;
  v13 = *(a1 + 224);
  *(v6 + 208) = *(a1 + 208);
  *(v6 + 224) = v13;
  *(v6 + 240) = v5;
  *(v6 + 248) = v4;

  return sub_1E689B2EC;
}

uint64_t (*sub_1E6892D98(uint64_t a1))(uint64_t)
{
  v2 = (v1 + *(a1 + 300));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E689B34C;
  }

  else
  {
    v6 = 0;
  }

  sub_1E6739D68(v3);
  return v6;
}

uint64_t (*sub_1E6892E1C(uint64_t a1))(uint64_t a1)
{
  v2 = (v1 + *(a1 + 304));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E689B2B4;
  }

  else
  {
    v6 = 0;
  }

  sub_1E6739D68(v3);
  return v6;
}

uint64_t sub_1E6892EA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a1)
  {
    v30 = a1;
    a1 = swift_allocObject();
    a1[2] = a3;
    a1[3] = a4;
    a1[4] = a5;
    a1[5] = a6;
    a1[6] = a7;
    a1[7] = a8;
    a1[8] = a9;
    a1[9] = a10;
    a1[10] = a11;
    a1[11] = a12;
    a1[12] = a13;
    a1[13] = a14;
    a1[14] = a15;
    a1[15] = a16;
    a1[16] = a17;
    a1[17] = a18;
    a1[18] = a19;
    a1[19] = a20;
    a1[20] = a21;
    a1[21] = a22;
    a1[22] = a23;
    a1[23] = a24;
    a1[24] = a25;
    a1[25] = a26;
    a1[26] = a27;
    a1[27] = a28;
    a1[28] = a29;
    a1[29] = a30;
    a1[30] = v30;
    a1[31] = a2;
    v37 = sub_1E67D5600;
  }

  else
  {
    v37 = 0;
  }

  v41[0] = v37;
  v41[1] = a1;
  swift_getFunctionTypeMetadata1();
  v38 = sub_1E68B3750();
  sub_1E672890C(v41, v38, &v42);
  return v42;
}

uint64_t (*sub_1E6893090(uint64_t a1))()
{
  v2 = (v1 + *(a1 + 308));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v6 = swift_allocObject();
    v7 = *(a1 + 32);
    *(v6 + 16) = *(a1 + 16);
    *(v6 + 32) = v7;
    v8 = *(a1 + 64);
    *(v6 + 48) = *(a1 + 48);
    *(v6 + 64) = v8;
    v9 = *(a1 + 96);
    *(v6 + 80) = *(a1 + 80);
    *(v6 + 96) = v9;
    v10 = *(a1 + 128);
    *(v6 + 112) = *(a1 + 112);
    *(v6 + 128) = v10;
    v11 = *(a1 + 160);
    *(v6 + 144) = *(a1 + 144);
    *(v6 + 160) = v11;
    v12 = *(a1 + 192);
    *(v6 + 176) = *(a1 + 176);
    *(v6 + 192) = v12;
    v13 = *(a1 + 224);
    *(v6 + 208) = *(a1 + 208);
    *(v6 + 224) = v13;
    *(v6 + 240) = v3;
    *(v6 + 248) = v4;
    v14 = sub_1E689B324;
  }

  else
  {
    v14 = 0;
  }

  sub_1E6739D68(v3);
  return v14;
}

uint64_t ListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  v106 = &v192;
  v3 = *(a1 + 24);
  v108 = *(a1 + 112);
  v191 = v3;
  *&v192 = v108;
  v4 = *(a1 + 152);
  v109 = *(a1 + 208);
  *(&v192 + 1) = v4;
  v193 = v109;
  type metadata accessor for CanvasSectionHeaderView();
  sub_1E68B2390();
  sub_1E68B1E40();
  sub_1E68B2220();
  v107 = sub_1E68B3750();
  v101 = *(a1 + 144);
  swift_getTupleTypeMetadata2();
  v5 = sub_1E68B33B0();
  v121 = *(a1 + 232);
  v104 = *(v121 + 32);
  v105 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(a1 + 160);
  v191 = *(a1 + 40);
  *&v192 = v3;
  v117 = v191;
  *(&v192 + 1) = v3;
  v193 = v6;
  v7 = v6;
  v118 = v6;
  *&v194 = v4;
  *(&v194 + 1) = v4;
  v96 = type metadata accessor for ActionCardView();
  WitnessTable = swift_getWitnessTable();
  *&v192 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v113 = sub_1E68B2440();
  sub_1E68B1E40();
  v8 = sub_1E68B1E40();
  *&v112 = sub_1E6899E90(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v203 = v7;
  v204 = v112;
  v9 = MEMORY[0x1E697E858];
  v10 = swift_getWitnessTable();
  v201 = v10;
  v202 = MEMORY[0x1E697F568];
  v115 = v9;
  v93 = v8;
  v92 = swift_getWitnessTable();
  *&v192 = v92;
  v80 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v85 = sub_1E68B1E40();
  v199 = v10;
  v200 = MEMORY[0x1E697E040];
  v84 = swift_getWitnessTable();
  v191 = v85;
  *&v192 = v84;
  swift_getOpaqueTypeMetadata2();
  v86 = sub_1E68B2220();
  v88 = sub_1E68B2B90();
  v87 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v91 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v94 = sub_1E68B2220();
  v75 = sub_1E68B2220();
  OpaqueTypeMetadata2 = *(a1 + 80);
  v100 = *(a1 + 128);
  v102 = *(a1 + 224);
  v191 = v117;
  *&v192 = v3;
  *(&v192 + 1) = v3;
  v193 = OpaqueTypeMetadata2;
  *&v194 = v100;
  *(&v194 + 1) = v118;
  v195 = v4;
  v196 = v4;
  v120 = v4;
  v114 = *(a1 + 192);
  v197 = v114;
  v198 = v102;
  v90 = type metadata accessor for FullWidthStageView();
  v89 = swift_getWitnessTable();
  *&v192 = v89;
  swift_getOpaqueTypeMetadata2();
  v97 = v3;
  v83 = type metadata accessor for InfoActionCardView();
  v82 = swift_getWitnessTable();
  v191 = v83;
  *&v192 = v82;
  swift_getOpaqueTypeMetadata2();
  v81 = sub_1E68B2220();
  v53 = sub_1E68B2220();
  v119 = a1;
  v99 = *(a1 + 168);
  v191 = v117;
  v193 = v118;
  v194 = v99;
  v98 = *(a1 + 48);
  v192 = v98;
  v79 = type metadata accessor for LargeBrickView();
  v78 = swift_getWitnessTable();
  *&v192 = v78;
  swift_getOpaqueTypeMetadata2();
  v77 = type metadata accessor for DynamicBrickView();
  v76 = swift_getWitnessTable();
  *&v192 = v76;
  swift_getOpaqueTypeMetadata2();
  v68 = sub_1E68B2220();
  v73 = type metadata accessor for MonogramVerticalStackView();
  v72 = swift_getWitnessTable();
  *&v192 = v72;
  swift_getOpaqueTypeMetadata2();
  v69 = sub_1E68B2220();
  v74 = sub_1E68B2220();
  sub_1E68B2220();
  v71 = type metadata accessor for StandardCardView();
  v70 = swift_getWitnessTable();
  *&v192 = v70;
  swift_getOpaqueTypeMetadata2();
  *&v192 = v3;
  *(&v192 + 1) = v118;
  v193 = v4;
  v67 = type metadata accessor for StandardHorizontalStackView();
  v66 = swift_getWitnessTable();
  *&v192 = v66;
  swift_getOpaqueTypeMetadata2();
  v50 = sub_1E68B2220();
  v65 = type metadata accessor for StandardVerticalStackView();
  v64 = swift_getWitnessTable();
  *&v192 = v64;
  swift_getOpaqueTypeMetadata2();
  v59 = type metadata accessor for SummaryCardView();
  v63 = sub_1E68B2220();
  v47[1] = sub_1E68B2220();
  v61 = type metadata accessor for TallCardView();
  v60 = swift_getWitnessTable();
  *&v192 = v60;
  swift_getOpaqueTypeMetadata2();
  v55 = type metadata accessor for VerticalStackCardView();
  v54 = swift_getWitnessTable();
  *&v192 = v54;
  swift_getOpaqueTypeMetadata2();
  v47[2] = sub_1E68B2220();
  type metadata accessor for WideBrickView();
  v48 = swift_getWitnessTable();
  *&v192 = v48;
  swift_getOpaqueTypeMetadata2();
  v47[3] = sub_1E68B2220();
  v49 = sub_1E68B2220();
  v51 = sub_1E68B2220();
  v52 = sub_1E68B2220();
  v56 = sub_1E68B2B90();
  v57 = sub_1E68B1E40();
  v58 = sub_1E68B2220();
  v62 = sub_1E68B1E40();
  v113 = sub_1E68B1E40();
  *&v192 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v192 = v92;
  v12 = swift_getOpaqueTypeConformance2();
  *&v192 = v84;
  v189 = v12;
  v190 = swift_getOpaqueTypeConformance2();
  v188 = swift_getWitnessTable();
  v186 = swift_getWitnessTable();
  v187 = MEMORY[0x1E697E5D8];
  v184 = swift_getWitnessTable();
  v185 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v13 = swift_getWitnessTable();
  v96 = MEMORY[0x1E6981870];
  v182 = v13;
  v183 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v180 = OpaqueTypeConformance2;
  v181 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  *&v192 = v89;
  v15 = swift_getOpaqueTypeConformance2();
  *&v192 = v82;
  v178 = v15;
  v179 = swift_getOpaqueTypeConformance2();
  v176 = v14;
  v177 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  *&v192 = v78;
  v17 = swift_getOpaqueTypeConformance2();
  *&v192 = v76;
  v174 = v17;
  v175 = swift_getOpaqueTypeConformance2();
  v18 = swift_getWitnessTable();
  *&v192 = v72;
  v172 = swift_getOpaqueTypeConformance2();
  v173 = v175;
  v170 = v18;
  v171 = swift_getWitnessTable();
  v168 = v16;
  v169 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  *&v192 = v70;
  v20 = swift_getOpaqueTypeConformance2();
  *&v192 = v66;
  v166 = v20;
  v167 = swift_getOpaqueTypeConformance2();
  v21 = swift_getWitnessTable();
  *&v192 = v64;
  v164 = swift_getOpaqueTypeConformance2();
  v165 = swift_getWitnessTable();
  v162 = v21;
  v163 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  *&v192 = v60;
  v23 = swift_getOpaqueTypeConformance2();
  *&v192 = v54;
  v160 = v23;
  v161 = swift_getOpaqueTypeConformance2();
  v24 = swift_getWitnessTable();
  *&v192 = v48;
  v158 = v114;
  v159 = swift_getOpaqueTypeConformance2();
  v156 = v24;
  v157 = swift_getWitnessTable();
  v154 = v22;
  v155 = swift_getWitnessTable();
  v152 = v19;
  v153 = swift_getWitnessTable();
  v151 = swift_getWitnessTable();
  v149 = swift_getWitnessTable();
  v150 = v112;
  v25 = swift_getWitnessTable();
  v147 = MEMORY[0x1E6981E60];
  v148 = v25;
  v26 = swift_getWitnessTable();
  v27 = MEMORY[0x1E69805D0];
  v145 = v26;
  v146 = MEMORY[0x1E69805D0];
  v143 = swift_getWitnessTable();
  v144 = v27;
  v28 = swift_getWitnessTable();
  v191 = v113;
  *&v192 = v28;
  v94 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v112 = *(a1 + 64);
  v29 = v101;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = *(a1 + 184);
  *&v192 = *(&v112 + 1);
  *(&v192 + 1) = AssociatedConformanceWitness;
  v193 = WitnessTable;
  type metadata accessor for CanvasContextMenu();
  v31 = sub_1E68B1E40();
  v32 = swift_getWitnessTable();
  v33 = swift_getAssociatedConformanceWitness();
  *&v192 = AssociatedTypeWitness;
  *(&v192 + 1) = v31;
  v193 = v32;
  *&v194 = v33;
  sub_1E68B2D40();
  v191 = v113;
  *&v192 = v28;
  v141 = swift_getOpaqueTypeConformance2();
  v142 = v28;
  v139 = swift_getWitnessTable();
  v140 = swift_getWitnessTable();
  v138 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B1B70();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v34 = sub_1E68B2CC0();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = v47 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = v47 - v39;
  sub_1E68B21D0();
  *&v41 = *(v119 + 16);
  *(&v41 + 1) = v97;
  *&v42 = *(v119 + 32);
  *(&v42 + 1) = v117;
  v122 = v41;
  v123 = v42;
  v124 = v98;
  v125 = v112;
  v126 = OpaqueTypeMetadata2;
  v127 = *(v119 + 88);
  *&v41 = *(v119 + 104);
  *(&v41 + 1) = v108;
  *&v42 = *(v119 + 120);
  *(&v42 + 1) = v100;
  v129 = v42;
  *&v42 = *(v119 + 136);
  *(&v42 + 1) = v29;
  *&v43 = v120;
  *(&v43 + 1) = v118;
  v128 = v41;
  v131 = v43;
  v130 = v42;
  *&v41 = WitnessTable;
  *(&v41 + 1) = v114;
  v133 = v41;
  v132 = v99;
  *&v41 = *(v119 + 200);
  *(&v41 + 1) = v109;
  *&v42 = *(v119 + 216);
  *(&v42 + 1) = v102;
  v135 = v42;
  v134 = v41;
  v136 = v121;
  v137 = v110;
  sub_1E68B2CB0();
  v44 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v37, v34, v44);
  v45 = *(v35 + 8);
  v45(v37, v34);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v40, v34, v44);
  return (v45)(v40, v34);
}

uint64_t sub_1E6894384@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void (*a25)(void, void), uint64_t a26, uint64_t *a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v298 = a8;
  v297 = a7;
  v296 = a6;
  *&v287 = a4;
  v286 = a2;
  v271 = a1;
  v269 = a9;
  v300 = a30;
  v299 = a29;
  v289 = a28;
  v276 = a27;
  v288 = a26;
  v304 = a25;
  v295 = a24;
  v294 = a23;
  v293 = a22;
  v280 = a19;
  v283 = a18;
  v292 = a17;
  v282 = a16;
  v281 = a15;
  v279 = a14;
  v278 = a13;
  v277 = a12;
  *(&v303 + 1) = a11;
  v291 = a10;
  v32 = sub_1E68B22C0();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v268 = v222 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  v290 = sub_1E68B33B0();
  v275 = *(a30 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v317 = a5;
  *&v303 = a3;
  *(&v317 + 1) = a3;
  *&v318 = a3;
  *(&v318 + 1) = a21;
  v319 = a20;
  v320 = a20;
  v34 = type metadata accessor for ActionCardView();
  v272 = v34;
  WitnessTable = swift_getWitnessTable();
  *&v317 = v34;
  *(&v317 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v301 = sub_1E68B2440();
  sub_1E68B1E40();
  v35 = sub_1E68B1E40();
  v273 = sub_1E6899E90(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v400 = a21;
  v401 = v273;
  v36 = MEMORY[0x1E697E858];
  v37 = swift_getWitnessTable();
  v398 = v37;
  v399 = MEMORY[0x1E697F568];
  v302 = v36;
  v266 = v35;
  v265 = swift_getWitnessTable();
  *&v317 = v35;
  *(&v317 + 1) = v265;
  v253 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v38 = sub_1E68B1E40();
  v258 = v38;
  v396 = v37;
  v397 = MEMORY[0x1E697E040];
  v256 = swift_getWitnessTable();
  *&v317 = v38;
  *(&v317 + 1) = v256;
  swift_getOpaqueTypeMetadata2();
  v259 = sub_1E68B2220();
  v261 = sub_1E68B2B90();
  v260 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v262 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v267 = sub_1E68B2220();
  v248 = sub_1E68B2220();
  *&v317 = a5;
  v39 = v303;
  *(&v317 + 1) = v303;
  v318 = v303;
  v319 = v292;
  v320 = a21;
  v321 = a20;
  v322 = a20;
  v323 = v304;
  v324 = v299;
  v40 = type metadata accessor for FullWidthStageView();
  OpaqueTypeMetadata2 = v40;
  v263 = swift_getWitnessTable();
  *&v317 = v40;
  *(&v317 + 1) = v263;
  swift_getOpaqueTypeMetadata2();
  v41 = v39;
  v284 = a20;
  v42 = type metadata accessor for InfoActionCardView();
  v257 = v42;
  v255 = swift_getWitnessTable();
  *&v317 = v42;
  *(&v317 + 1) = v255;
  swift_getOpaqueTypeMetadata2();
  v254 = sub_1E68B2220();
  v228 = sub_1E68B2220();
  *&v317 = a5;
  *(&v317 + 1) = v296;
  *&v318 = v297;
  *(&v318 + 1) = a21;
  v319 = v293;
  v320 = v294;
  v43 = type metadata accessor for LargeBrickView();
  v252 = v43;
  v251 = swift_getWitnessTable();
  *&v317 = v43;
  *(&v317 + 1) = v251;
  swift_getOpaqueTypeMetadata2();
  v44 = type metadata accessor for DynamicBrickView();
  v250 = v44;
  v249 = swift_getWitnessTable();
  *&v317 = v44;
  *(&v317 + 1) = v249;
  swift_getOpaqueTypeMetadata2();
  v241 = sub_1E68B2220();
  v45 = type metadata accessor for MonogramVerticalStackView();
  v246 = v45;
  v245 = swift_getWitnessTable();
  *&v317 = v45;
  *(&v317 + 1) = v245;
  swift_getOpaqueTypeMetadata2();
  v242 = sub_1E68B2220();
  v247 = sub_1E68B2220();
  v222[1] = sub_1E68B2220();
  v46 = type metadata accessor for StandardCardView();
  v244 = v46;
  v243 = swift_getWitnessTable();
  *&v317 = v46;
  *(&v317 + 1) = v243;
  swift_getOpaqueTypeMetadata2();
  *&v317 = a5;
  *(&v317 + 1) = v41;
  *&v318 = a21;
  *(&v318 + 1) = a20;
  v47 = type metadata accessor for StandardHorizontalStackView();
  v240 = v47;
  v239 = swift_getWitnessTable();
  *&v317 = v47;
  *(&v317 + 1) = v239;
  swift_getOpaqueTypeMetadata2();
  v225 = sub_1E68B2220();
  v48 = type metadata accessor for StandardVerticalStackView();
  v238 = v48;
  v237 = swift_getWitnessTable();
  *&v317 = v48;
  *(&v317 + 1) = v237;
  swift_getOpaqueTypeMetadata2();
  v233 = type metadata accessor for SummaryCardView();
  v236 = sub_1E68B2220();
  v222[2] = sub_1E68B2220();
  *(&v287 + 1) = a5;
  v285 = a21;
  v49 = type metadata accessor for TallCardView();
  v234 = swift_getWitnessTable();
  *&v317 = v49;
  *(&v317 + 1) = v234;
  swift_getOpaqueTypeMetadata2();
  v50 = type metadata accessor for VerticalStackCardView();
  v229 = swift_getWitnessTable();
  *&v317 = v50;
  *(&v317 + 1) = v229;
  swift_getOpaqueTypeMetadata2();
  v222[3] = sub_1E68B2220();
  v51 = type metadata accessor for WideBrickView();
  v223 = swift_getWitnessTable();
  *&v317 = v51;
  *(&v317 + 1) = v223;
  swift_getOpaqueTypeMetadata2();
  v222[4] = sub_1E68B2220();
  v224 = sub_1E68B2220();
  v226 = sub_1E68B2220();
  v227 = sub_1E68B2220();
  v230 = sub_1E68B2B90();
  v231 = sub_1E68B1E40();
  v232 = sub_1E68B2220();
  v235 = sub_1E68B1E40();
  v301 = sub_1E68B1E40();
  *&v317 = v272;
  *(&v317 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v317 = v266;
  *(&v317 + 1) = v265;
  v53 = swift_getOpaqueTypeConformance2();
  *&v317 = v258;
  *(&v317 + 1) = v256;
  v54 = swift_getOpaqueTypeConformance2();
  v394 = v53;
  v395 = v54;
  v393 = swift_getWitnessTable();
  v272 = MEMORY[0x1E6981600];
  v391 = swift_getWitnessTable();
  v392 = MEMORY[0x1E697E5D8];
  v55 = swift_getWitnessTable();
  v56 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v389 = v55;
  v390 = v56;
  v57 = swift_getWitnessTable();
  v58 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v387 = v57;
  v388 = v58;
  v59 = swift_getWitnessTable();
  v385 = OpaqueTypeConformance2;
  v386 = v59;
  v60 = swift_getWitnessTable();
  *&v317 = OpaqueTypeMetadata2;
  *(&v317 + 1) = v263;
  v61 = swift_getOpaqueTypeConformance2();
  *&v317 = v257;
  *(&v317 + 1) = v255;
  v62 = swift_getOpaqueTypeConformance2();
  v383 = v61;
  v384 = v62;
  v63 = swift_getWitnessTable();
  v381 = v60;
  v382 = v63;
  v64 = swift_getWitnessTable();
  *&v317 = v252;
  *(&v317 + 1) = v251;
  v65 = swift_getOpaqueTypeConformance2();
  *&v317 = v250;
  *(&v317 + 1) = v249;
  v66 = swift_getOpaqueTypeConformance2();
  v379 = v65;
  v380 = v66;
  v67 = swift_getWitnessTable();
  *&v317 = v246;
  *(&v317 + 1) = v245;
  v377 = swift_getOpaqueTypeConformance2();
  v378 = v66;
  v68 = swift_getWitnessTable();
  v375 = v67;
  v376 = v68;
  v69 = swift_getWitnessTable();
  v373 = v64;
  v374 = v69;
  v70 = swift_getWitnessTable();
  *&v317 = v244;
  *(&v317 + 1) = v243;
  v71 = swift_getOpaqueTypeConformance2();
  *&v317 = v240;
  *(&v317 + 1) = v239;
  v72 = swift_getOpaqueTypeConformance2();
  v371 = v71;
  v372 = v72;
  v73 = swift_getWitnessTable();
  *&v317 = v238;
  *(&v317 + 1) = v237;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = swift_getWitnessTable();
  v369 = v74;
  v370 = v75;
  v76 = swift_getWitnessTable();
  v367 = v73;
  v368 = v76;
  v77 = swift_getWitnessTable();
  *&v317 = v49;
  *(&v317 + 1) = v234;
  v78 = swift_getOpaqueTypeConformance2();
  *&v317 = v50;
  *(&v317 + 1) = v229;
  v79 = swift_getOpaqueTypeConformance2();
  v365 = v78;
  v366 = v79;
  v80 = swift_getWitnessTable();
  *&v317 = v51;
  *(&v317 + 1) = v223;
  v81 = swift_getOpaqueTypeConformance2();
  v363 = v304;
  v364 = v81;
  v82 = swift_getWitnessTable();
  v361 = v80;
  v362 = v82;
  v83 = swift_getWitnessTable();
  v359 = v77;
  v360 = v83;
  v84 = swift_getWitnessTable();
  v357 = v70;
  v358 = v84;
  v356 = swift_getWitnessTable();
  v354 = swift_getWitnessTable();
  v355 = v273;
  v85 = swift_getWitnessTable();
  v352 = MEMORY[0x1E6981E60];
  v353 = v85;
  v86 = swift_getWitnessTable();
  v87 = MEMORY[0x1E69805D0];
  v350 = v86;
  v351 = MEMORY[0x1E69805D0];
  v348 = swift_getWitnessTable();
  v349 = v87;
  v88 = v301;
  v89 = swift_getWitnessTable();
  *&v317 = v88;
  *(&v317 + 1) = v89;
  v273 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v90 = v280;
  v91 = v298;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v317 = v91;
  *(&v317 + 1) = v291;
  *&v318 = AssociatedConformanceWitness;
  *(&v318 + 1) = v295;
  type metadata accessor for CanvasContextMenu();
  v93 = sub_1E68B1E40();
  v94 = v290;
  v95 = swift_getWitnessTable();
  v96 = AssociatedTypeWitness;
  v97 = swift_getAssociatedConformanceWitness();
  *&v317 = v94;
  *(&v317 + 1) = v96;
  *&v318 = v93;
  *(&v318 + 1) = v95;
  v319 = v97;
  v98 = sub_1E68B2D40();
  *&v317 = v301;
  *(&v317 + 1) = v89;
  v99 = v90;
  v346 = swift_getOpaqueTypeConformance2();
  v347 = v89;
  v100 = swift_getWitnessTable();
  v101 = swift_getWitnessTable();
  v344 = v100;
  v345 = v101;
  v343 = swift_getWitnessTable();
  v102 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v98;
  v259 = v102;
  v103 = sub_1E68B1B70();
  v261 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v260 = v222 - v104;
  v262 = v105;
  v267 = sub_1E68B1E40();
  v263 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267);
  v266 = v222 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v107);
  v265 = v222 - v108;
  v109 = v286;
  *&v317 = v286;
  v110 = v303;
  *(&v317 + 1) = v303;
  v318 = v287;
  v319 = v296;
  v320 = v297;
  v321 = v298;
  v322 = v291;
  v323 = *(&v303 + 1);
  v324 = v277;
  v325 = v278;
  v111 = v279;
  v326 = v279;
  v112 = v281;
  v327 = v281;
  v328 = v282;
  v329 = v292;
  v330 = v283;
  v331 = v99;
  v113 = v284;
  v332 = v284;
  v333 = v285;
  v334 = v293;
  v335 = v294;
  v336 = v295;
  v337 = v304;
  v114 = v288;
  v338 = v288;
  v115 = v276;
  v339 = v276;
  v340 = v289;
  v341 = v299;
  v342 = v300;
  WitnessTable = type metadata accessor for ListView();
  v254 = *(WitnessTable - 8);
  v253 = *(v254 + 64);
  MEMORY[0x1EEE9AC00](WitnessTable);
  v257 = v222 - v116;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  *&v317 = v110;
  *(&v317 + 1) = v112;
  *&v318 = v113;
  *(&v318 + 1) = v115;
  v117 = type metadata accessor for CanvasSectionHeaderView();
  sub_1E68B2390();
  AssociatedTypeWitness = v117;
  v275 = sub_1E68B1E40();
  v118 = sub_1E68B2220();
  v258 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v256 = (v222 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v120);
  v255 = v222 - v121;
  v122 = v280;
  v123 = swift_getAssociatedConformanceWitness();
  *&v317 = v109;
  *(&v317 + 1) = v111;
  *&v318 = v123;
  *(&v318 + 1) = v114;
  v124 = type metadata accessor for CanvasSectionHeader();
  v125 = sub_1E68B3750();
  v126 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v128 = v222 - v127;
  v129 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v132 = v222 - v131;
  v133 = sub_1E68B3750();
  v272 = *(v133 - 8);
  v273 = v133;
  MEMORY[0x1EEE9AC00](v133);
  v301 = v222 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = MEMORY[0x1EEE9AC00](v135);
  v290 = v222 - v137;
  v138 = v271;
  (*(v126 + 16))(v128, v136);
  v139 = (*(v129 + 48))(v128, 1, v124);
  v302 = v118;
  if (v139 == 1)
  {
    (*(v126 + 8))(v128, v125);
    v258[7](v301, 1, 1, v118);
    v140 = sub_1E673F2EC();
    v141 = swift_getWitnessTable();
    v142 = sub_1E6899E90(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
    v316[6] = v141;
    v316[7] = v142;
    v143 = swift_getWitnessTable();
    v316[4] = v140;
    v316[5] = v143;
    swift_getWitnessTable();
  }

  else
  {
    (*(v129 + 32))(v132, v128, v124);
    v144 = v254;
    v145 = *(v254 + 16);
    v251 = v132;
    v252 = v129;
    v146 = v138;
    v147 = v138;
    v148 = WitnessTable;
    v145(v257, v147, WitnessTable);
    v149 = (*(v144 + 80) + 240) & ~*(v144 + 80);
    v150 = swift_allocObject();
    v151 = v303;
    *(v150 + 2) = v286;
    *(v150 + 3) = v151;
    v152 = *(&v287 + 1);
    *(v150 + 4) = v287;
    *(v150 + 5) = v152;
    v153 = v297;
    *(v150 + 6) = v296;
    *(v150 + 7) = v153;
    v154 = v291;
    *(v150 + 8) = v298;
    *(v150 + 9) = v154;
    v155 = v277;
    v156 = v278;
    *(v150 + 10) = *(&v303 + 1);
    *(v150 + 11) = v155;
    v157 = v279;
    *(v150 + 12) = v156;
    *(v150 + 13) = v157;
    v159 = v281;
    v158 = v282;
    *(v150 + 14) = v281;
    *(v150 + 15) = v158;
    v160 = v283;
    *(v150 + 16) = v292;
    *(v150 + 17) = v160;
    *(v150 + 18) = v122;
    v161 = v284;
    v162 = v285;
    *(v150 + 19) = v284;
    *(v150 + 20) = v162;
    v163 = v294;
    *(v150 + 21) = v293;
    *(v150 + 22) = v163;
    v164 = v304;
    *(v150 + 23) = v295;
    *(v150 + 24) = v164;
    v165 = v276;
    *(v150 + 25) = v288;
    *(v150 + 26) = v165;
    v166 = v299;
    *(v150 + 27) = v289;
    *(v150 + 28) = v166;
    *(v150 + 29) = v300;
    (*(v144 + 32))(&v150[v149], v257, v148);
    v167 = v146 + v148[73];
    v168 = *v167;
    v169 = *(v167 + 1);
    v170 = (v146 + v148[64]);
    v171 = v170[1];
    v317 = *v170;
    v318 = v171;
    LODWORD(v148) = *(v146 + v148[66]);

    v220 = v161;
    v221 = v165;
    v122 = v280;
    v219 = v159;
    v172 = v256;
    v173 = v251;
    sub_1E68AF848(sub_1E6899F6C, v150, v168, v169, &v317, v148, v124, v303, v256, v219, v220, v221);

    (*(v252 + 8))(v173, v124);
    v174 = sub_1E673F2EC();
    v175 = swift_getWitnessTable();
    v176 = sub_1E6899E90(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
    v307 = v175;
    v308 = v176;
    v177 = swift_getWitnessTable();
    v305 = v174;
    v306 = v177;
    v178 = swift_getWitnessTable();
    v179 = v255;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v172, v302, v178);
    v180 = v258;
    v181 = v258[1];
    (v181)(v172, v302);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v179, v302, v178);
    (v181)(v179, v302);
    v182 = v302;
    v183 = v301;
    (v180[4])(v301, v172, v302);
    v180[7](v183, 0, 1, v182);
    v138 = v271;
  }

  v184 = v276;
  v185 = v301;
  sub_1E67FDFA4(v301, v290);
  v186 = *(v272 + 8);
  v257 = (v272 + 8);
  v258 = v186;
  (v186)(v185, v273);
  v187 = sub_1E68B21D0();
  v256 = v222;
  MEMORY[0x1EEE9AC00](v187);
  v188 = v303;
  v222[-30] = v286;
  v222[-29] = v188;
  v189 = *(&v287 + 1);
  v222[-28] = v287;
  v222[-27] = v189;
  v190 = v297;
  v222[-26] = v296;
  v222[-25] = v190;
  v191 = v291;
  v222[-24] = v298;
  v222[-23] = v191;
  v193 = v277;
  v192 = v278;
  v222[-22] = *(&v303 + 1);
  v222[-21] = v193;
  v222[-20] = v192;
  v195 = v281;
  v194 = v282;
  v222[-19] = v279;
  v222[-18] = v195;
  v222[-17] = v194;
  v196 = v283;
  v222[-16] = v292;
  v222[-15] = v196;
  v197 = v284;
  v222[-14] = v122;
  v222[-13] = v197;
  v198 = v293;
  v222[-12] = v285;
  v222[-11] = v198;
  v199 = v295;
  v222[-10] = v294;
  v222[-9] = v199;
  v200 = v288;
  v222[-8] = v304;
  v222[-7] = v200;
  v201 = v289;
  v222[-6] = v184;
  v222[-5] = v201;
  v219 = v299;
  v220 = v300;
  v221 = v138;
  sub_1E689D740();
  v202 = v260;
  sub_1E68B1B60();
  v203 = v262;
  v204 = swift_getWitnessTable();
  v205 = v266;
  sub_1E68B2A60();
  (*(v261 + 8))(v202, v203);
  v316[2] = v204;
  v316[3] = MEMORY[0x1E697E5D8];
  v206 = v267;
  v207 = swift_getWitnessTable();
  v208 = v265;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v205, v206, v207);
  v209 = v263;
  v304 = *(v263 + 8);
  v304(v205, v206);
  v210 = v273;
  v211 = v301;
  (*(v272 + 16))(v301, v290, v273);
  *&v317 = v211;
  (*(v209 + 16))(v205, v208, v206);
  *(&v317 + 1) = v205;
  v316[0] = v210;
  v316[1] = v206;
  v212 = sub_1E673F2EC();
  v213 = swift_getWitnessTable();
  v214 = sub_1E6899E90(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
  v312 = v213;
  v313 = v214;
  v215 = swift_getWitnessTable();
  v310 = v212;
  v311 = v215;
  v309 = swift_getWitnessTable();
  v314 = swift_getWitnessTable();
  v315 = v207;
  sub_1E6848F14(&v317, 2uLL, v316);
  v216 = v304;
  v304(v208, v206);
  v217 = v258;
  (v258)(v290, v210);
  v216(v205, v206);
  return (v217)(v301, v210);
}

uint64_t sub_1E68961DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22)
{
  v55 = a8;
  v53 = a7;
  v50 = a6;
  v58 = a2;
  v59 = a1;
  v61 = a9;
  v57 = a22;
  v56 = a21;
  v54 = a20;
  v52 = a19;
  v49 = a18;
  v48 = a17;
  v51 = a16;
  v47 = a14;
  v46 = a13;
  v45 = a12;
  v44 = a11;
  v43 = a10;
  v60 = sub_1E68B3750();
  v25 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v27 = &v43 - v26;
  v28 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v43 - v33;
  v62 = a3;
  v63 = a4;
  v64 = a5;
  v65 = v50;
  v66 = v53;
  v67 = v55;
  v68 = v43;
  v69 = v44;
  v70 = v45;
  v71 = v46;
  v72 = v47;
  v73 = a15;
  v74 = a16;
  v75 = v48;
  v76 = v49;
  v77 = v52;
  v78 = v54;
  v79 = v56;
  v80 = v57;
  v35 = type metadata accessor for ListView();
  sub_1E6892AD8(v35);
  v37 = v36;
  v38 = *(a3 - 8);
  (*(v38 + 16))(v27, v59, a3);
  (*(v38 + 56))(v27, 0, 1, a3);
  v39 = *(v37 + 240);
  v62 = 0;
  LOBYTE(v63) = 1;
  v39(v27, &v62);

  (*(v25 + 8))(v27, v60);
  v40 = v51;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v31, a4, v51);
  v41 = *(v28 + 8);
  v41(v31, a4);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v34, a4, v40);
  return (v41)(v34, a4);
}

uint64_t sub_1E6896600@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v208 = a8;
  v217 = a7;
  v215 = a6;
  v198 = a4;
  v220 = a3;
  v197 = a2;
  v202 = a1;
  v203 = a9;
  v213 = a29;
  v201 = a28;
  v200 = a27;
  v199 = a26;
  v222 = a25;
  v211 = a24;
  v216 = a23;
  v214 = a22;
  v196 = a18;
  v212 = a17;
  v195 = a16;
  v194 = a15;
  v193 = a14;
  v192 = a13;
  v191 = a12;
  v219 = a11;
  v209 = a10;
  v282 = a2;
  v283 = a3;
  v284 = a4;
  v285 = a5;
  v286 = a6;
  v287 = a7;
  v288 = a8;
  v289 = a10;
  v290 = a11;
  v291 = a12;
  v292 = a13;
  v293 = a14;
  v294 = a15;
  v295 = a16;
  v296 = a17;
  v297 = a18;
  v206 = a19;
  v298 = a19;
  v299 = a20;
  v300 = a21;
  v301 = a22;
  v302 = a23;
  v303 = a24;
  v304 = a25;
  v305 = a26;
  v306 = a27;
  v307 = a28;
  v308 = a29;
  v309 = a30;
  v210 = a30;
  v31 = type metadata accessor for ListView();
  v188 = *(v31 - 8);
  v189 = v31;
  v190 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v187 = v135 - v32;
  swift_getTupleTypeMetadata2();
  v186 = sub_1E68B33B0();
  v218 = *(a30 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v282 = a5;
  v283 = v220;
  v284 = v220;
  v285 = a21;
  v205 = a20;
  v286 = a20;
  v287 = a20;
  v33 = type metadata accessor for ActionCardView();
  v182 = v33;
  WitnessTable = swift_getWitnessTable();
  v282 = v33;
  v283 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v204 = sub_1E68B2440();
  sub_1E68B1E40();
  v34 = sub_1E68B1E40();
  v185 = sub_1E6899E90(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v280 = a21;
  v281 = v185;
  v35 = MEMORY[0x1E697E858];
  v36 = swift_getWitnessTable();
  v278 = v36;
  v279 = MEMORY[0x1E697F568];
  v221 = v35;
  v179 = v34;
  v178 = swift_getWitnessTable();
  v282 = v34;
  v283 = v178;
  v166 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v37 = sub_1E68B1E40();
  v171 = v37;
  v276 = v36;
  v277 = MEMORY[0x1E697E040];
  v169 = swift_getWitnessTable();
  v282 = v37;
  v283 = v169;
  swift_getOpaqueTypeMetadata2();
  v172 = sub_1E68B2220();
  v174 = sub_1E68B2B90();
  v173 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v175 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v180 = sub_1E68B2220();
  v161 = sub_1E68B2220();
  v38 = a5;
  v282 = a5;
  v39 = v220;
  v283 = v220;
  v284 = v220;
  v285 = v219;
  v286 = v212;
  v287 = a21;
  v40 = v205;
  v288 = v205;
  v289 = v205;
  v290 = v222;
  v291 = v213;
  v41 = type metadata accessor for FullWidthStageView();
  v177 = v41;
  v176 = swift_getWitnessTable();
  v282 = v41;
  v283 = v176;
  swift_getOpaqueTypeMetadata2();
  v42 = v39;
  v43 = type metadata accessor for InfoActionCardView();
  v170 = v43;
  v168 = swift_getWitnessTable();
  v282 = v43;
  v283 = v168;
  swift_getOpaqueTypeMetadata2();
  v167 = sub_1E68B2220();
  v141 = sub_1E68B2220();
  v282 = v38;
  v283 = v215;
  v284 = v217;
  v285 = a21;
  v286 = v214;
  v287 = v216;
  v44 = type metadata accessor for LargeBrickView();
  v165 = v44;
  v164 = swift_getWitnessTable();
  v282 = v44;
  v283 = v164;
  swift_getOpaqueTypeMetadata2();
  v45 = type metadata accessor for DynamicBrickView();
  v163 = v45;
  v162 = swift_getWitnessTable();
  v282 = v45;
  v283 = v162;
  swift_getOpaqueTypeMetadata2();
  v154 = sub_1E68B2220();
  v46 = type metadata accessor for MonogramVerticalStackView();
  v159 = v46;
  v158 = swift_getWitnessTable();
  v282 = v46;
  v283 = v158;
  swift_getOpaqueTypeMetadata2();
  v155 = sub_1E68B2220();
  v160 = sub_1E68B2220();
  sub_1E68B2220();
  v47 = type metadata accessor for StandardCardView();
  v157 = v47;
  v156 = swift_getWitnessTable();
  v282 = v47;
  v283 = v156;
  swift_getOpaqueTypeMetadata2();
  v282 = v38;
  v283 = v42;
  v284 = a21;
  v285 = v40;
  v48 = type metadata accessor for StandardHorizontalStackView();
  v153 = v48;
  v152 = swift_getWitnessTable();
  v282 = v48;
  v283 = v152;
  swift_getOpaqueTypeMetadata2();
  v138 = sub_1E68B2220();
  v49 = type metadata accessor for StandardVerticalStackView();
  v143 = v49;
  v151 = swift_getWitnessTable();
  v282 = v49;
  v283 = v151;
  swift_getOpaqueTypeMetadata2();
  v147 = type metadata accessor for SummaryCardView();
  v150 = sub_1E68B2220();
  v135[0] = sub_1E68B2220();
  v50 = v38;
  v51 = type metadata accessor for TallCardView();
  v148 = swift_getWitnessTable();
  v282 = v51;
  v283 = v148;
  swift_getOpaqueTypeMetadata2();
  v183 = v50;
  v184 = a21;
  v52 = type metadata accessor for VerticalStackCardView();
  v142 = swift_getWitnessTable();
  v282 = v52;
  v283 = v142;
  swift_getOpaqueTypeMetadata2();
  v135[1] = sub_1E68B2220();
  v53 = type metadata accessor for WideBrickView();
  v136 = swift_getWitnessTable();
  v282 = v53;
  v283 = v136;
  swift_getOpaqueTypeMetadata2();
  v135[2] = sub_1E68B2220();
  v137 = sub_1E68B2220();
  v139 = sub_1E68B2220();
  v140 = sub_1E68B2220();
  v144 = sub_1E68B2B90();
  v145 = sub_1E68B1E40();
  v146 = sub_1E68B2220();
  v149 = sub_1E68B1E40();
  v204 = sub_1E68B1E40();
  v282 = v182;
  v283 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v282 = v179;
  v283 = v178;
  v55 = swift_getOpaqueTypeConformance2();
  v282 = v171;
  v283 = v169;
  v56 = swift_getOpaqueTypeConformance2();
  v274 = v55;
  v275 = v56;
  v273 = swift_getWitnessTable();
  v182 = MEMORY[0x1E6981600];
  v271 = swift_getWitnessTable();
  v272 = MEMORY[0x1E697E5D8];
  v57 = swift_getWitnessTable();
  v58 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v269 = v57;
  v270 = v58;
  v59 = swift_getWitnessTable();
  v60 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v267 = v59;
  v268 = v60;
  v61 = swift_getWitnessTable();
  v265 = OpaqueTypeConformance2;
  v266 = v61;
  v62 = swift_getWitnessTable();
  v282 = v177;
  v283 = v176;
  v63 = swift_getOpaqueTypeConformance2();
  v282 = v170;
  v283 = v168;
  v64 = swift_getOpaqueTypeConformance2();
  v263 = v63;
  v264 = v64;
  v65 = swift_getWitnessTable();
  v261 = v62;
  v262 = v65;
  v66 = swift_getWitnessTable();
  v282 = v165;
  v283 = v164;
  v67 = swift_getOpaqueTypeConformance2();
  v282 = v163;
  v283 = v162;
  v68 = swift_getOpaqueTypeConformance2();
  v259 = v67;
  v260 = v68;
  v69 = swift_getWitnessTable();
  v282 = v159;
  v283 = v158;
  v257 = swift_getOpaqueTypeConformance2();
  v258 = v68;
  v70 = swift_getWitnessTable();
  v255 = v69;
  v256 = v70;
  v71 = swift_getWitnessTable();
  v253 = v66;
  v254 = v71;
  v72 = swift_getWitnessTable();
  v282 = v157;
  v283 = v156;
  v73 = swift_getOpaqueTypeConformance2();
  v282 = v153;
  v283 = v152;
  v74 = swift_getOpaqueTypeConformance2();
  v251 = v73;
  v252 = v74;
  v75 = swift_getWitnessTable();
  v282 = v143;
  v283 = v151;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = swift_getWitnessTable();
  v249 = v76;
  v250 = v77;
  v78 = swift_getWitnessTable();
  v247 = v75;
  v248 = v78;
  v79 = swift_getWitnessTable();
  v282 = v51;
  v283 = v148;
  v80 = swift_getOpaqueTypeConformance2();
  v282 = v52;
  v283 = v142;
  v81 = swift_getOpaqueTypeConformance2();
  v245 = v80;
  v246 = v81;
  v82 = swift_getWitnessTable();
  v282 = v53;
  v283 = v136;
  v83 = swift_getOpaqueTypeConformance2();
  v243 = v222;
  v244 = v83;
  v84 = swift_getWitnessTable();
  v241 = v82;
  v242 = v84;
  v85 = swift_getWitnessTable();
  v239 = v79;
  v240 = v85;
  v86 = swift_getWitnessTable();
  v237 = v72;
  v238 = v86;
  v236 = swift_getWitnessTable();
  v234 = swift_getWitnessTable();
  v235 = v185;
  v87 = swift_getWitnessTable();
  v232 = MEMORY[0x1E6981E60];
  v233 = v87;
  v88 = swift_getWitnessTable();
  v89 = MEMORY[0x1E69805D0];
  v230 = v88;
  v231 = MEMORY[0x1E69805D0];
  v228 = swift_getWitnessTable();
  v229 = v89;
  v90 = v204;
  v185 = swift_getWitnessTable();
  v282 = v90;
  v283 = v185;
  v182 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v180 = sub_1E68B2220();
  v91 = v206;
  v92 = v208;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v282 = v92;
  v283 = v209;
  v284 = AssociatedConformanceWitness;
  v285 = v211;
  WitnessTable = type metadata accessor for CanvasContextMenu();
  v94 = sub_1E68B1E40();
  v178 = v94;
  v95 = v186;
  v96 = swift_getWitnessTable();
  v97 = v91;
  v98 = AssociatedTypeWitness;
  v99 = swift_getAssociatedConformanceWitness();
  v282 = v95;
  v283 = v98;
  v284 = v94;
  v285 = v96;
  v286 = v99;
  v100 = sub_1E68B2D40();
  v186 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v102 = v135 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = MEMORY[0x1EEE9AC00](v103);
  v179 = v135 - v105;
  v106 = v188;
  v107 = v189;
  v177 = *(v202 + *(v189 + 244));
  v108 = v187;
  (*(v188 + 16))(v187, v104);
  v109 = (*(v106 + 80) + 240) & ~*(v106 + 80);
  v110 = swift_allocObject();
  v111 = v220;
  *(v110 + 2) = v197;
  *(v110 + 3) = v111;
  v112 = v183;
  *(v110 + 4) = v198;
  *(v110 + 5) = v112;
  v113 = v217;
  *(v110 + 6) = v215;
  *(v110 + 7) = v113;
  v114 = v209;
  *(v110 + 8) = v208;
  *(v110 + 9) = v114;
  v115 = v191;
  v116 = v192;
  *(v110 + 10) = v219;
  *(v110 + 11) = v115;
  v117 = v193;
  v118 = v194;
  *(v110 + 12) = v116;
  *(v110 + 13) = v117;
  v119 = v195;
  *(v110 + 14) = v118;
  *(v110 + 15) = v119;
  v120 = v196;
  *(v110 + 16) = v212;
  *(v110 + 17) = v120;
  v121 = v205;
  *(v110 + 18) = v97;
  *(v110 + 19) = v121;
  v122 = v214;
  *(v110 + 20) = v184;
  *(v110 + 21) = v122;
  v123 = v211;
  *(v110 + 22) = v216;
  *(v110 + 23) = v123;
  v124 = v199;
  *(v110 + 24) = v222;
  *(v110 + 25) = v124;
  v125 = v201;
  *(v110 + 26) = v200;
  *(v110 + 27) = v125;
  v126 = v210;
  *(v110 + 28) = v213;
  *(v110 + 29) = v126;
  (*(v106 + 32))(&v110[v109], v108, v107);

  v282 = v204;
  v127 = v185;
  v283 = v185;
  v226 = swift_getOpaqueTypeConformance2();
  v227 = v127;
  v128 = swift_getWitnessTable();
  v129 = swift_getWitnessTable();
  v224 = v128;
  v225 = v129;
  v130 = swift_getWitnessTable();
  sub_1E68B2D20();
  v223 = v130;
  v131 = swift_getWitnessTable();
  v132 = v179;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v102, v100, v131);
  v133 = *(v186 + 8);
  v133(v102, v100);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v132, v100, v131);
  return (v133)(v132, v100);
}

uint64_t sub_1E68979C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v356 = a8;
  v331 = a7;
  v338 = a6;
  v347 = a5;
  v328 = a4;
  v343 = a3;
  v318 = a2;
  v325 = a1;
  v304 = a9;
  v332 = a30;
  v342 = a29;
  v341 = a28;
  v344 = a27;
  v350 = a24;
  v349 = a23;
  v346 = a22;
  v348 = a21;
  v355 = a18;
  v336 = a17;
  v337 = a16;
  v327 = a15;
  v352 = a14;
  v335 = a13;
  v354 = a26;
  v353 = a12;
  v330 = a19;
  v351 = a10;
  v32 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v301 = v254 - v33;
  v339 = a31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v415 = a11;
  v340 = *(&a11 + 1);
  v329 = a11;
  *&v416 = AssociatedConformanceWitness;
  *(&v416 + 1) = a25;
  v345 = a25;
  v317 = type metadata accessor for CanvasContextMenu();
  v303 = *(v317 - 8);
  MEMORY[0x1EEE9AC00](v317);
  v300 = v254 - v34;
  v326 = a20;
  v307 = *(a20 - 8);
  v321 = *(v307 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v319 = v254 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v415 = v328;
  *(&v415 + 1) = a5;
  *&v416 = v338;
  v37 = v331;
  *(&v416 + 1) = v331;
  v417 = v356;
  v418 = a10;
  v419 = a11;
  v420 = a12;
  v421 = v335;
  v422 = v352;
  v423 = v327;
  v424 = v337;
  v425 = v336;
  v426 = v355;
  v427 = a19;
  v428 = a20;
  v38 = v348;
  v429 = v348;
  v39 = v346;
  v430 = v346;
  v431 = v349;
  v432 = v350;
  v433 = a25;
  v434 = v354;
  v435 = v344;
  v436 = v341;
  v437 = v342;
  v40 = v332;
  v438 = v332;
  v439 = a31;
  v334 = type metadata accessor for ListView();
  v333 = *(v334 - 8);
  v322 = *(v333 + 64);
  MEMORY[0x1EEE9AC00](v334);
  v316 = v254 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v299 = v254 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v315 = v254 - v45;
  v46 = v37;
  *&v415 = v37;
  *(&v415 + 1) = v347;
  *&v416 = v347;
  *(&v416 + 1) = v39;
  v417 = v38;
  v418 = v38;
  v47 = type metadata accessor for ActionCardView();
  v323 = v47;
  WitnessTable = swift_getWitnessTable();
  *&v415 = v47;
  *(&v415 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v314 = sub_1E68B2440();
  sub_1E68B1E40();
  v48 = sub_1E68B1E40();
  v324 = sub_1E6899E90(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v413 = v39;
  v414 = v324;
  v49 = MEMORY[0x1E697E858];
  v50 = swift_getWitnessTable();
  v411 = v50;
  v412 = MEMORY[0x1E697F568];
  v310 = v49;
  v306 = v48;
  v305 = swift_getWitnessTable();
  *&v415 = v48;
  *(&v415 + 1) = v305;
  v283 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v51 = sub_1E68B1E40();
  v288 = v51;
  v409 = v50;
  v410 = MEMORY[0x1E697E040];
  v286 = swift_getWitnessTable();
  *&v415 = v51;
  *(&v415 + 1) = v286;
  swift_getOpaqueTypeMetadata2();
  v289 = sub_1E68B2220();
  v291 = sub_1E68B2B90();
  v290 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v292 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v309 = sub_1E68B2220();
  v278 = sub_1E68B2220();
  *&v415 = v37;
  v52 = v347;
  *(&v415 + 1) = v347;
  *&v416 = v347;
  *(&v416 + 1) = v353;
  v417 = v355;
  v53 = v346;
  v418 = v346;
  v54 = v348;
  *&v419 = v348;
  *(&v419 + 1) = v348;
  v420 = v354;
  v421 = v40;
  v55 = type metadata accessor for FullWidthStageView();
  v294 = v55;
  v293 = swift_getWitnessTable();
  *&v415 = v55;
  *(&v415 + 1) = v293;
  swift_getOpaqueTypeMetadata2();
  v56 = v54;
  v57 = type metadata accessor for InfoActionCardView();
  v287 = v57;
  v285 = swift_getWitnessTable();
  *&v415 = v57;
  *(&v415 + 1) = v285;
  swift_getOpaqueTypeMetadata2();
  v284 = sub_1E68B2220();
  sub_1E68B2220();
  *&v415 = v46;
  *(&v415 + 1) = v356;
  *&v416 = v351;
  *(&v416 + 1) = v53;
  v417 = v349;
  v418 = v350;
  v58 = type metadata accessor for LargeBrickView();
  v282 = v58;
  v281 = swift_getWitnessTable();
  *&v415 = v58;
  *(&v415 + 1) = v281;
  swift_getOpaqueTypeMetadata2();
  v59 = type metadata accessor for DynamicBrickView();
  v280 = v59;
  v279 = swift_getWitnessTable();
  *&v415 = v59;
  *(&v415 + 1) = v279;
  swift_getOpaqueTypeMetadata2();
  v271 = sub_1E68B2220();
  v60 = type metadata accessor for MonogramVerticalStackView();
  v276 = v60;
  v275 = swift_getWitnessTable();
  *&v415 = v60;
  *(&v415 + 1) = v275;
  swift_getOpaqueTypeMetadata2();
  v272 = sub_1E68B2220();
  v277 = sub_1E68B2220();
  v254[0] = sub_1E68B2220();
  v61 = type metadata accessor for StandardCardView();
  v274 = v61;
  v273 = swift_getWitnessTable();
  *&v415 = v61;
  *(&v415 + 1) = v273;
  swift_getOpaqueTypeMetadata2();
  *&v415 = v46;
  *(&v415 + 1) = v52;
  *&v416 = v53;
  *(&v416 + 1) = v56;
  v62 = type metadata accessor for StandardHorizontalStackView();
  v270 = v62;
  v269 = swift_getWitnessTable();
  *&v415 = v62;
  *(&v415 + 1) = v269;
  swift_getOpaqueTypeMetadata2();
  v257 = sub_1E68B2220();
  v63 = type metadata accessor for StandardVerticalStackView();
  v268 = v63;
  v267 = swift_getWitnessTable();
  *&v415 = v63;
  *(&v415 + 1) = v267;
  swift_getOpaqueTypeMetadata2();
  v263 = type metadata accessor for SummaryCardView();
  v266 = sub_1E68B2220();
  v254[1] = sub_1E68B2220();
  v64 = type metadata accessor for TallCardView();
  v265 = v64;
  v264 = swift_getWitnessTable();
  *&v415 = v64;
  *(&v415 + 1) = v264;
  swift_getOpaqueTypeMetadata2();
  v65 = type metadata accessor for VerticalStackCardView();
  v260 = swift_getWitnessTable();
  *&v415 = v65;
  *(&v415 + 1) = v260;
  swift_getOpaqueTypeMetadata2();
  v254[2] = sub_1E68B2220();
  v66 = type metadata accessor for WideBrickView();
  v255 = swift_getWitnessTable();
  *&v415 = v66;
  *(&v415 + 1) = v255;
  swift_getOpaqueTypeMetadata2();
  v254[3] = sub_1E68B2220();
  v256 = sub_1E68B2220();
  v258 = sub_1E68B2220();
  v259 = sub_1E68B2220();
  v261 = sub_1E68B2B90();
  v262 = sub_1E68B1E40();
  v311 = sub_1E68B2220();
  v296 = *(v311 - 8);
  MEMORY[0x1EEE9AC00](v311);
  v312 = v254 - v67;
  v313 = sub_1E68B1E40();
  v297 = *(v313 - 8);
  MEMORY[0x1EEE9AC00](v313);
  v314 = v254 - v68;
  v308 = sub_1E68B1E40();
  v298 = *(v308 - 8);
  MEMORY[0x1EEE9AC00](v308);
  v295 = v254 - v69;
  *&v415 = v323;
  *(&v415 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v415 = v306;
  *(&v415 + 1) = v305;
  v71 = swift_getOpaqueTypeConformance2();
  *&v415 = v288;
  *(&v415 + 1) = v286;
  v72 = swift_getOpaqueTypeConformance2();
  v407 = v71;
  v408 = v72;
  v73 = MEMORY[0x1E697F968];
  v406 = swift_getWitnessTable();
  v404 = swift_getWitnessTable();
  v405 = MEMORY[0x1E697E5D8];
  v74 = swift_getWitnessTable();
  v75 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v402 = v74;
  v403 = v75;
  v76 = swift_getWitnessTable();
  v77 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v400 = v76;
  v401 = v77;
  v78 = swift_getWitnessTable();
  v398 = OpaqueTypeConformance2;
  v399 = v78;
  v79 = swift_getWitnessTable();
  *&v415 = v294;
  *(&v415 + 1) = v293;
  v80 = swift_getOpaqueTypeConformance2();
  *&v415 = v287;
  *(&v415 + 1) = v285;
  v81 = swift_getOpaqueTypeConformance2();
  v396 = v80;
  v397 = v81;
  v82 = swift_getWitnessTable();
  v394 = v79;
  v395 = v82;
  v83 = swift_getWitnessTable();
  *&v415 = v282;
  *(&v415 + 1) = v281;
  v84 = swift_getOpaqueTypeConformance2();
  *&v415 = v280;
  *(&v415 + 1) = v279;
  v85 = swift_getOpaqueTypeConformance2();
  v392 = v84;
  v393 = v85;
  v86 = swift_getWitnessTable();
  *&v415 = v276;
  *(&v415 + 1) = v275;
  v390 = swift_getOpaqueTypeConformance2();
  v391 = v85;
  v87 = swift_getWitnessTable();
  v388 = v86;
  v389 = v87;
  v88 = swift_getWitnessTable();
  v386 = v83;
  v387 = v88;
  v89 = swift_getWitnessTable();
  *&v415 = v274;
  *(&v415 + 1) = v273;
  v90 = swift_getOpaqueTypeConformance2();
  *&v415 = v270;
  *(&v415 + 1) = v269;
  v91 = swift_getOpaqueTypeConformance2();
  v384 = v90;
  v385 = v91;
  v92 = swift_getWitnessTable();
  *&v415 = v268;
  *(&v415 + 1) = v267;
  v93 = swift_getOpaqueTypeConformance2();
  v94 = swift_getWitnessTable();
  v382 = v93;
  v383 = v94;
  v95 = v73;
  v96 = swift_getWitnessTable();
  v380 = v92;
  v381 = v96;
  v97 = swift_getWitnessTable();
  *&v415 = v265;
  *(&v415 + 1) = v264;
  v98 = swift_getOpaqueTypeConformance2();
  *&v415 = v65;
  *(&v415 + 1) = v260;
  v99 = swift_getOpaqueTypeConformance2();
  v378 = v98;
  v379 = v99;
  v100 = swift_getWitnessTable();
  *&v415 = v66;
  *(&v415 + 1) = v255;
  v101 = swift_getOpaqueTypeConformance2();
  v376 = v354;
  v377 = v101;
  v102 = swift_getWitnessTable();
  v374 = v100;
  v375 = v102;
  v103 = swift_getWitnessTable();
  v372 = v97;
  v373 = v103;
  v104 = swift_getWitnessTable();
  v370 = v89;
  v371 = v104;
  v288 = v95;
  v369 = swift_getWitnessTable();
  v367 = swift_getWitnessTable();
  v368 = v324;
  v105 = swift_getWitnessTable();
  v365 = MEMORY[0x1E6981E60];
  v366 = v105;
  v284 = swift_getWitnessTable();
  v106 = MEMORY[0x1E69805D0];
  v363 = v284;
  v364 = MEMORY[0x1E69805D0];
  v285 = swift_getWitnessTable();
  v361 = v285;
  v362 = v106;
  v107 = v308;
  v286 = swift_getWitnessTable();
  *&v415 = v107;
  *(&v415 + 1) = v286;
  v290 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v289 = sub_1E68B2220();
  v292 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289);
  v309 = v254 - v108;
  v109 = sub_1E68B1E40();
  v110 = *(v109 - 8);
  v293 = v109;
  v294 = v110;
  MEMORY[0x1EEE9AC00](v109);
  v287 = v254 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = MEMORY[0x1EEE9AC00](v112);
  v291 = v254 - v114;
  v115 = v333;
  v116 = *(v333 + 16);
  v323 = v333 + 16;
  v324 = v116;
  v117 = v315;
  (v116)(v315, v343, v334, v113);
  v118 = v307;
  v119 = v326;
  (*(v307 + 16))(v319, v318, v326);
  v120 = *(v115 + 80);
  v121 = (v120 + 240) & ~v120;
  v122 = v121 + v322;
  WitnessTable = v121;
  v322 = v120 | 7;
  v123 = (v122 + *(v118 + 80)) & ~*(v118 + 80);
  v124 = swift_allocObject();
  v125 = v347;
  *(v124 + 2) = v328;
  *(v124 + 3) = v125;
  v126 = v331;
  *(v124 + 4) = v338;
  *(v124 + 5) = v126;
  v127 = v351;
  *(v124 + 6) = v356;
  *(v124 + 7) = v127;
  v128 = v340;
  *(v124 + 8) = v329;
  *(v124 + 9) = v128;
  v129 = v335;
  *(v124 + 10) = v353;
  *(v124 + 11) = v129;
  v130 = v327;
  *(v124 + 12) = v352;
  *(v124 + 13) = v130;
  v131 = v336;
  *(v124 + 14) = v337;
  *(v124 + 15) = v131;
  v132 = v330;
  *(v124 + 16) = v355;
  *(v124 + 17) = v132;
  v133 = v348;
  *(v124 + 18) = v119;
  *(v124 + 19) = v133;
  v134 = v349;
  *(v124 + 20) = v346;
  *(v124 + 21) = v134;
  v135 = v345;
  *(v124 + 22) = v350;
  *(v124 + 23) = v135;
  v136 = v344;
  *(v124 + 24) = v354;
  *(v124 + 25) = v136;
  v137 = v342;
  *(v124 + 26) = v341;
  *(v124 + 27) = v137;
  v138 = v339;
  *(v124 + 28) = v332;
  *(v124 + 29) = v138;
  v139 = *(v115 + 32);
  v333 = v115 + 32;
  v321 = v139;
  v140 = v117;
  v141 = v334;
  v139(&v124[v121], v140, v334);
  (*(v118 + 32))(&v124[v123], v319, v119);
  v142 = v141[67];
  v143 = (v343 + v141[68]);
  v144 = v143[1];
  v283 = *v143;
  v145 = (v343 + v141[69]);
  v147 = *v145;
  v146 = v145[1];
  v281 = v142;
  v282 = v147;
  v306 = v146;
  v307 = v144;
  v148 = (v343 + v141[70]);
  v150 = *v148;
  v149 = v148[1];
  v280 = v150;
  v305 = v149;
  v151 = v299;
  v152 = v141;
  v324(v299);
  v319 = ((v122 + 7) & 0xFFFFFFFFFFFFFFF8);
  v153 = swift_allocObject();
  v154 = v328;
  v155 = v347;
  *(v153 + 16) = v328;
  *(v153 + 24) = v155;
  v156 = v338;
  v157 = v331;
  *(v153 + 32) = v338;
  *(v153 + 40) = v157;
  v158 = v351;
  *(v153 + 48) = v356;
  *(v153 + 56) = v158;
  v159 = v340;
  *(v153 + 64) = v329;
  *(v153 + 72) = v159;
  v160 = v335;
  *(v153 + 80) = v353;
  *(v153 + 88) = v160;
  *(v153 + 96) = v352;
  *(v153 + 104) = v130;
  v161 = v336;
  *(v153 + 112) = v337;
  *(v153 + 120) = v161;
  v162 = v330;
  *(v153 + 128) = v355;
  *(v153 + 136) = v162;
  v163 = v348;
  *(v153 + 144) = v119;
  *(v153 + 152) = v163;
  v164 = v349;
  *(v153 + 160) = v346;
  *(v153 + 168) = v164;
  v165 = v345;
  *(v153 + 176) = v350;
  *(v153 + 184) = v165;
  v166 = v354;
  v167 = v344;
  *(v153 + 192) = v354;
  *(v153 + 200) = v167;
  v168 = v342;
  *(v153 + 208) = v341;
  *(v153 + 216) = v168;
  v169 = v339;
  *(v153 + 224) = v332;
  *(v153 + 232) = v169;
  v321(v153 + WitnessTable, v151, v152);
  *&v319[v153] = v325;
  (v324)(v316, v343, v152);
  v170 = swift_allocObject();
  *(v170 + 16) = v154;
  *(v170 + 24) = v155;
  v171 = v331;
  *(v170 + 32) = v156;
  *(v170 + 40) = v171;
  v172 = v351;
  *(v170 + 48) = v356;
  *(v170 + 56) = v172;
  v173 = v340;
  *(v170 + 64) = v329;
  *(v170 + 72) = v173;
  v174 = v335;
  *(v170 + 80) = v353;
  *(v170 + 88) = v174;
  v175 = v327;
  *(v170 + 96) = v352;
  *(v170 + 104) = v175;
  *(v170 + 112) = v337;
  *(v170 + 120) = v161;
  v176 = v330;
  *(v170 + 128) = v355;
  *(v170 + 136) = v176;
  v177 = v348;
  *(v170 + 144) = v326;
  *(v170 + 152) = v177;
  v178 = v346;
  v179 = v349;
  *(v170 + 160) = v346;
  *(v170 + 168) = v179;
  v180 = v350;
  v181 = v345;
  *(v170 + 176) = v350;
  *(v170 + 184) = v181;
  v182 = v344;
  *(v170 + 192) = v166;
  *(v170 + 200) = v182;
  v183 = v342;
  *(v170 + 208) = v341;
  *(v170 + 216) = v183;
  v184 = v332;
  v185 = v339;
  *(v170 + 224) = v332;
  *(v170 + 232) = v185;
  v321(v170 + WitnessTable, v316, v334);
  *&v319[v170] = v325;
  v416 = 0u;
  v415 = 0u;

  v251 = v180;
  v250 = v184;
  v186 = v331;
  v187 = v343;
  CanvasItemDescriptorProtocol.buildView<A, B, C, D, E, F>(onSelection:sizeClass:contentMargins:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:viewDescriptorBuilder:actionButtonViewBuilder:)(sub_1E689A850, v124, v343 + v281, &v415, v283, v307, v282, v306, v312, v280, v305, sub_1E689AA24, v153, sub_1E689AA3C, v170, v326, v355, v331, v356, v351, v353, v347, v185, v250, v178, v179, v251, v354, v177);

  v188 = v315;
  v189 = v187;
  v190 = v334;
  (v324)(v315, v189, v334);
  v191 = v319;
  v192 = swift_allocObject();
  v193 = v328;
  v194 = v347;
  *(v192 + 16) = v328;
  *(v192 + 24) = v194;
  *(v192 + 32) = v338;
  *(v192 + 40) = v186;
  v195 = v351;
  *(v192 + 48) = v356;
  *(v192 + 56) = v195;
  v196 = v329;
  v197 = v340;
  *(v192 + 64) = v329;
  *(v192 + 72) = v197;
  v198 = v335;
  *(v192 + 80) = v353;
  *(v192 + 88) = v198;
  v199 = v327;
  *(v192 + 96) = v352;
  *(v192 + 104) = v199;
  v200 = v336;
  *(v192 + 112) = v337;
  *(v192 + 120) = v200;
  v201 = v330;
  *(v192 + 128) = v355;
  *(v192 + 136) = v201;
  v202 = v348;
  *(v192 + 144) = v326;
  *(v192 + 152) = v202;
  v203 = v349;
  *(v192 + 160) = v346;
  *(v192 + 168) = v203;
  v204 = v345;
  *(v192 + 176) = v350;
  *(v192 + 184) = v204;
  v205 = v344;
  *(v192 + 192) = v354;
  *(v192 + 200) = v205;
  v206 = v342;
  *(v192 + 208) = v341;
  *(v192 + 216) = v206;
  v207 = v339;
  *(v192 + 224) = v332;
  *(v192 + 232) = v207;
  v321(v192 + WitnessTable, v188, v190);
  v208 = v325;
  *&v191[v192] = v325;
  v210 = v311;
  v209 = v312;
  sub_1E68B2AA0();

  (*(v296 + 8))(v209, v210);
  v211 = v334;
  (v324)(v188, v343, v334);
  v212 = swift_allocObject();
  v213 = v347;
  *(v212 + 16) = v193;
  *(v212 + 24) = v213;
  v214 = v331;
  *(v212 + 32) = v338;
  *(v212 + 40) = v214;
  v215 = v351;
  *(v212 + 48) = v356;
  *(v212 + 56) = v215;
  v216 = v340;
  *(v212 + 64) = v196;
  *(v212 + 72) = v216;
  *(v212 + 80) = v353;
  *(v212 + 88) = v198;
  v217 = v327;
  *(v212 + 96) = v352;
  *(v212 + 104) = v217;
  v218 = v336;
  *(v212 + 112) = v337;
  *(v212 + 120) = v218;
  v219 = v330;
  *(v212 + 128) = v355;
  *(v212 + 136) = v219;
  v220 = v326;
  v221 = v348;
  *(v212 + 144) = v326;
  *(v212 + 152) = v221;
  v222 = v349;
  *(v212 + 160) = v346;
  *(v212 + 168) = v222;
  v223 = v345;
  *(v212 + 176) = v350;
  *(v212 + 184) = v223;
  v224 = v344;
  *(v212 + 192) = v354;
  *(v212 + 200) = v224;
  v225 = v342;
  *(v212 + 208) = v341;
  *(v212 + 216) = v225;
  v226 = v339;
  *(v212 + 224) = v332;
  *(v212 + 232) = v226;
  v227 = v188;
  v228 = v211;
  v321(v212 + WitnessTable, v227, v211);
  *&v319[v212] = v208;
  v229 = v295;
  v231 = v313;
  v230 = v314;
  sub_1E68B27E0();

  (*(v297 + 8))(v230, v231);
  v253 = v226;
  v232 = v343;
  v233 = v343 + *(v228 + 252);
  v252 = v225;
  v234 = v286;
  v235 = v308;
  sub_1E6814294(v318, v233, v325, v308, v309, v352, v336, v219, v220, v286, v252, v253);
  (*(v298 + 8))(v229, v235);
  v236 = v301;
  (*(v339 + 168))(v220);
  v237 = (v232 + *(v334 + 288));
  v238 = v300;
  sub_1E67C02C4(v236, *v237, v237[1], v300);

  *&v415 = v235;
  *(&v415 + 1) = v234;
  v359 = swift_getOpaqueTypeConformance2();
  v360 = v234;
  v239 = v289;
  v240 = swift_getWitnessTable();
  v241 = v287;
  v242 = v317;
  v243 = v309;
  MEMORY[0x1E69512E0](v238, v239, v317, v240);
  (*(v303 + 8))(v238, v242);
  (*(v292 + 8))(v243, v239);
  v244 = swift_getWitnessTable();
  v357 = v240;
  v358 = v244;
  v245 = v293;
  v246 = swift_getWitnessTable();
  v247 = v291;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v241, v245, v246);
  v248 = *(v294 + 8);
  v248(v241, v245);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v247, v245, v246);
  return (v248)(v247, v245);
}

uint64_t (*sub_1E68997BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30))()
{
  v30 = *(a12 - 8);
  v31 = MEMORY[0x1EEE9AC00](a17);
  v33 = v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[0] = v34;
  v55[1] = v35;
  v55[2] = v36;
  v55[3] = v37;
  v55[4] = v38;
  v55[5] = v39;
  v56 = v40;
  v57 = v41;
  v58 = a12;
  v59 = v43;
  v60 = v42;
  v61 = v44;
  v62 = v45;
  *(v46 + 136) = v47;
  *(v46 + 152) = v48;
  *(v46 + 168) = v49;
  *(v46 + 184) = v31;
  v63 = a19;
  v64 = v51;
  v65 = v50;
  v66 = a30;
  v52 = type metadata accessor for ListView();
  result = sub_1E6893090(v52);
  if (result)
  {
    v54 = result;
    (*(a30 + 152))(a19, a30);
    (v54)(v33);
    sub_1E672E440(v54);
    return (*(v30 + 8))(v33, a12);
  }

  return result;
}

uint64_t sub_1E6899974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = &v58[-1] - v30;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v58[-1] - v33;
  v58[0] = v35;
  v58[1] = v36;
  v58[2] = v37;
  v58[3] = v38;
  v58[4] = v39;
  v59 = v40;
  v60 = v41;
  v61 = a12;
  v62 = v43;
  v63 = v42;
  v64 = v45;
  v65 = v44;
  *(v46 + 136) = v47;
  *(v46 + 152) = v48;
  v66 = v49;
  v67 = a26;
  *(v46 + 184) = v50;
  *(v46 + 200) = v32;
  v68 = v51;
  v52 = type metadata accessor for ListView();
  sub_1E6892CEC(v52);
  v54 = *(v53 + 240);
  v58[0] = a3;
  v54(a1, v58);

  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v31, a12, a26);
  v55 = *(v28 + 8);
  v55(v31, a12);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v34, a12, a26);
  return (v55)(v34, a12);
}

uint64_t sub_1E6899B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = &v53 - v26;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v53 - v29;
  v54 = v31;
  v55 = v32;
  v56 = v33;
  v57 = v34;
  v58 = v35;
  v59 = v36;
  v60 = v38;
  v61 = v37;
  v62 = v40;
  v63 = v39;
  v64 = v42;
  v65 = v41;
  v66 = a21;
  v67 = v43;
  v68 = v44;
  v69 = v45;
  v70 = v28;
  v71 = v47;
  v72 = v46;
  v48 = type metadata accessor for ListView();
  sub_1E6892AD8(v48);
  v50 = *(v49 + 240);
  v54 = a3;
  LOBYTE(v55) = 0;
  v50(a1, &v54);

  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v27, a5, a21);
  v51 = *(v24 + 8);
  v51(v27, a5);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v30, a5, a21);
  return (v51)(v30, a5);
}

void (*sub_1E6899D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t (*a31)(uint64_t)))(uint64_t)
{
  v32 = type metadata accessor for ListView();
  result = a31(v32);
  if (result)
  {
    v34 = result;
    result(a2);
    return sub_1E672E440(v34);
  }

  return result;
}

uint64_t sub_1E6899E90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6899F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = v2[3];
  v41 = v2[2];
  v38 = v2[5];
  v39 = v2[4];
  v36 = v2[7];
  v37 = v2[6];
  v34 = v2[9];
  v35 = v2[8];
  v32 = v2[11];
  v33 = v2[10];
  v30 = v2[13];
  v31 = v2[12];
  v28 = v2[15];
  v29 = v2[14];
  v26 = v2[17];
  v27 = v2[16];
  v24 = v2[19];
  v25 = v2[18];
  v3 = v2[21];
  v23 = v2[20];
  v4 = v2[22];
  v5 = v2[23];
  v6 = v2[24];
  v7 = v2[25];
  v9 = v2[26];
  v8 = v2[27];
  v11 = v2[28];
  v10 = v2[29];
  v12 = *(type metadata accessor for ListView() - 8);
  *&v22 = v9;
  *(&v22 + 1) = v8;
  *&v21 = v6;
  *(&v21 + 1) = v7;
  *&v20 = v4;
  *(&v20 + 1) = v5;
  *&v19 = v23;
  *(&v19 + 1) = v3;
  *(&v18 + 1) = v26;
  *(&v17 + 1) = v28;
  *&v18 = v27;
  *(&v16 + 1) = v30;
  *&v17 = v29;
  *(&v15 + 1) = v32;
  *&v16 = v31;
  *(&v14 + 1) = v34;
  *&v15 = v33;
  *&v14 = v35;
  return sub_1E68961DC(a1, v2 + ((*(v12 + 80) + 240) & ~*(v12 + 80)), v41, v40, v39, v38, v37, v36, a2, v14, v15, v16, v17, v18, v25, v24, v19, v20, v21, v22, v11, v10);
}

uint64_t sub_1E689A158(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t *))
{
  v5 = a2;
  v6 = a3 & 1;
  return a4(a1, &v5);
}

uint64_t sub_1E689A1D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 240);
  v6 = a2;
  v7 = a3 & 1;
  return v4(a1, &v6);
}

uint64_t objectdestroy_10Tm_1()
{
  v1 = *(v0 + 120);
  v19 = *(v0 + 16);
  v18 = *(v0 + 104);
  v17 = *(v0 + 128);
  v2 = type metadata accessor for ListView();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 240) & ~v3;
  v5 = v0 + v4;
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CanvasSectionHeader();
  if (!(*(*(v6 - 8) + 48))(v0 + v4, 1, v6))
  {
    v7 = sub_1E68B1820();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
    v8 = *(v6 + 52);
    v9 = *(v18 - 8);
    if (!(*(v9 + 48))(v5 + v8, 1, v18))
    {
      (*(v9 + 8))(v5 + v8, v18);
    }

    v10 = *(v6 + 56);
    v11 = *(v19 - 8);
    if (!(*(v11 + 48))(v5 + v10, 1, v19))
    {
      (*(v11 + 8))(v5 + v10, v19);
    }
  }

  v12 = v2[63];
  v13 = *(v1 - 8);
  if (!(*(v13 + 48))(v5 + v12, 1, v1))
  {
    (*(v13 + 8))(v5 + v12, v1);
  }

  (*(*(v17 - 8) + 8))(v5 + v2[67]);

  if (*(v5 + v2[75]))
  {
  }

  if (*(v5 + v2[76]))
  {
  }

  if (*(v5 + v2[77]))
  {
  }

  v14 = v2[78];
  v15 = sub_1E68B1950();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  return swift_deallocObject();
}

uint64_t sub_1E689A6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = v3[3];
  v34 = v3[2];
  v31 = v3[5];
  v32 = v3[4];
  v29 = v3[7];
  v30 = v3[6];
  v27 = v3[9];
  v28 = v3[8];
  v25 = v3[11];
  v26 = v3[10];
  v23 = v3[13];
  v24 = v3[12];
  v21 = v3[15];
  v22 = v3[14];
  v19 = v3[17];
  v20 = v3[16];
  v17 = v3[19];
  v18 = v3[18];
  v4 = v3[21];
  v16 = v3[20];
  v5 = v3[22];
  v6 = v3[23];
  v7 = v3[24];
  v8 = v3[25];
  v9 = v3[26];
  v10 = v3[27];
  v12 = v3[28];
  v11 = v3[29];
  v13 = *(type metadata accessor for ListView() - 8);
  *(&v15 + 1) = v27;
  *&v15 = v28;
  return sub_1E68979C0(a1, a2, v3 + ((*(v13 + 80) + 240) & ~*(v13 + 80)), v34, v33, v32, v31, v30, a3, v29, v15, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v4, v5, v6, v7, v8, v9, v10, v12, v11);
}

uint64_t (*sub_1E689A850())()
{
  v30 = v0[3];
  v31 = v0[2];
  v28 = v0[5];
  v29 = v0[4];
  v26 = v0[7];
  v27 = v0[6];
  v24 = v0[9];
  v25 = v0[8];
  v22 = v0[11];
  v23 = v0[10];
  v20 = v0[13];
  v21 = v0[12];
  v18 = v0[15];
  v19 = v0[14];
  v16 = v0[17];
  v17 = v0[16];
  v1 = v0[18];
  v14 = v0[20];
  v15 = v0[19];
  v13 = v0[21];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[29];
  v10 = *(type metadata accessor for ListView() - 8);
  v11 = (*(v10 + 80) + 240) & ~*(v10 + 80);
  return sub_1E68997BC(v0 + v11, v0 + ((v11 + *(v10 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80)), v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v1, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1E689AA54(uint64_t a1, uint64_t (*a2)(uint64_t, char *, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v32 = *(v2 + 3);
  v33 = *(v2 + 2);
  v30 = *(v2 + 5);
  v31 = *(v2 + 4);
  v28 = *(v2 + 7);
  v29 = *(v2 + 6);
  v26 = *(v2 + 9);
  v27 = *(v2 + 8);
  v24 = *(v2 + 11);
  v25 = *(v2 + 10);
  v22 = *(v2 + 13);
  v23 = *(v2 + 12);
  v20 = *(v2 + 15);
  v21 = *(v2 + 14);
  v18 = *(v2 + 17);
  v19 = *(v2 + 16);
  v16 = *(v2 + 19);
  v17 = *(v2 + 18);
  v3 = *(v2 + 21);
  v15 = *(v2 + 20);
  v4 = *(v2 + 22);
  v5 = *(v2 + 23);
  v6 = *(v2 + 24);
  v7 = *(v2 + 25);
  v8 = *(v2 + 26);
  v9 = *(v2 + 27);
  v11 = *(v2 + 28);
  v10 = *(v2 + 29);
  v12 = *(type metadata accessor for ListView() - 8);
  v13 = (*(v12 + 80) + 240) & ~*(v12 + 80);
  return a2(a1, &v2[v13], *&v2[(*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8], v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v3, v4, v5, v6, v7, v8, v9, v11, v10);
}

uint64_t objectdestroy_22Tm_0()
{
  v1 = *(v0 + 120);
  v19 = *(v0 + 16);
  v18 = *(v0 + 104);
  v17 = *(v0 + 128);
  v2 = type metadata accessor for ListView();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 240) & ~v3;
  v5 = v0 + v4;
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CanvasSectionHeader();
  if (!(*(*(v6 - 8) + 48))(v0 + v4, 1, v6))
  {
    v7 = sub_1E68B1820();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
    v8 = *(v6 + 52);
    v9 = *(v18 - 8);
    if (!(*(v9 + 48))(v5 + v8, 1, v18))
    {
      (*(v9 + 8))(v5 + v8, v18);
    }

    v10 = *(v6 + 56);
    v11 = *(v19 - 8);
    if (!(*(v11 + 48))(v5 + v10, 1, v19))
    {
      (*(v11 + 8))(v5 + v10, v19);
    }
  }

  v12 = v2[63];
  v13 = *(v1 - 8);
  if (!(*(v13 + 48))(v5 + v12, 1, v1))
  {
    (*(v13 + 8))(v5 + v12, v1);
  }

  (*(*(v17 - 8) + 8))(v5 + v2[67]);

  if (*(v5 + v2[75]))
  {
  }

  if (*(v5 + v2[76]))
  {
  }

  if (*(v5 + v2[77]))
  {
  }

  v14 = v2[78];
  v15 = sub_1E68B1950();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  return swift_deallocObject();
}

void (*sub_1E689B100(uint64_t (*a1)(uint64_t)))(uint64_t)
{
  v32 = v1[2];
  v30 = v1[4];
  v31 = v1[3];
  v28 = v1[6];
  v29 = v1[5];
  v26 = v1[8];
  v27 = v1[7];
  v24 = v1[10];
  v25 = v1[9];
  v22 = v1[12];
  v23 = v1[11];
  v20 = v1[14];
  v21 = v1[13];
  v18 = v1[16];
  v19 = v1[15];
  v16 = v1[18];
  v17 = v1[17];
  v2 = v1[21];
  v14 = v1[20];
  v15 = v1[19];
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[27];
  v10 = v1[28];
  v9 = v1[29];
  v11 = *(type metadata accessor for ListView() - 8);
  v12 = (*(v11 + 80) + 240) & ~*(v11 + 80);
  return sub_1E6899D54(v1 + v12, *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v2, v3, v4, v5, v6, v7, v8, v10, v9, a1);
}

uint64_t sub_1E689B2B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1E689B2EC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 240);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t sub_1E689B350(void (*a1)(char *), uint64_t a2)
{
  v4 = v2;
  v29 = a1;
  v30 = a2;
  v34 = sub_1E68B17E0();
  v5 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v32 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E68B17D0();
  v7 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E68B17F0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D10);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  (*(v10 + 16))(v12, v4, v9, v14);
  v17 = MEMORY[0x1E69687C8];
  sub_1E689C474(&qword_1EE2EDEB0, MEMORY[0x1E69687C8]);
  sub_1E68B32C0();
  sub_1E689C474(&qword_1EE2EDEA8, v17);
  v31 = (v5 + 8);
  v25 = (v7 + 8);
  v26 = (v7 + 16);
  while (1)
  {
    v18 = v32;
    sub_1E68B3690();
    sub_1E689C474(&qword_1EE2EDEB8, MEMORY[0x1E69687B0]);
    v19 = v34;
    v20 = sub_1E68B3190();
    (*v31)(v18, v19);
    if (v20)
    {
      break;
    }

    v21 = sub_1E68B36F0();
    v22 = v27;
    v23 = v28;
    (*v26)(v27);
    v21(v33, 0);
    sub_1E68B36A0();
    v29(v22);
    if (v3)
    {
      (*v25)(v22, v23);
      return sub_1E6744A10(v16, &qword_1ED097D10);
    }

    (*v25)(v22, v23);
  }

  return sub_1E6744A10(v16, &qword_1ED097D10);
}

uint64_t AttributedString.textView()()
{
  v1 = sub_1E68B17F0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E68B2150();
  v12[0] = sub_1E68B26C0();
  v12[1] = v5;
  v13 = v6;
  v14 = v7;
  sub_1E68B1800();
  v10 = v12;
  v11 = v0;
  sub_1E689B350(sub_1E67611A0, v9);
  (*(v2 + 8))(v4, v1);
  return v12[0];
}

uint64_t sub_1E689B8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v128 = a3;
  v134 = a2;
  v4 = sub_1E68B18D0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v127 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097DC8);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v120 - v6;
  v7 = sub_1E68B1820();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D08);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v129 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v130 = &v120 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v123 = &v120 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v120 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v120 - v20;
  swift_getKeyPath();
  v22 = sub_1E67934E4();
  v137 = a1;
  sub_1E68B17B0();

  swift_getKeyPath();
  v23 = sub_1E6793538();
  sub_1E68B1900();

  v24 = *(v10 + 8);
  v24(v21, v9);
  v25 = v139;
  v135 = v24;
  v136 = v10 + 8;
  v132 = v23;
  v133 = v22;
  v131 = v9;
  if (!v139)
  {
    goto LABEL_11;
  }

  v26 = v138;

  v122 = v26;
  v27 = v26;
  v28 = v25;
  v24 = v135;
  sub_1E679358C(v27, v25);
  swift_getKeyPath();
  sub_1E68B17B0();

  swift_getKeyPath();
  sub_1E68B1900();

  v24(v18, v9);
  v29 = v139;
  if (!v139)
  {

LABEL_11:
    v33 = v134;
    goto LABEL_12;
  }

  v31 = v140;
  v30 = v141;
  v32 = v138;

  sub_1E679358C(v32, v29);
  v33 = v134;
  if (v30)
  {
    sub_1E689C4BC();
    v34 = sub_1E689C508(v31, v30);
    if (v34)
    {
      v35 = v34;
      v36 = *v33;
      v37 = *(v33 + 8);
      v38 = *(v33 + 16);
      v39 = *(v33 + 24);

      v129 = v39;

      v130 = v36;
      v128 = v37;
      LODWORD(v127) = v38;
      sub_1E673F26C(v36, v37, v38);
      sub_1E68B2BB0();
      v40 = sub_1E68B26F0();
      v42 = v41;
      v44 = v43;
      v126 = v35;
      v138 = sub_1E68B2B70();
      v124 = sub_1E68B2660();
      v121 = v45;
      v47 = v46;
      v125 = v48;
      sub_1E673F0D4(v40, v42, v44 & 1);

      swift_getKeyPath();
      v49 = v123;
      sub_1E68B17B0();

      swift_getKeyPath();
      v50 = v131;
      sub_1E68B1900();

      v135(v49, v50);
      v51 = v139;
      if (v139 && (v53 = v142, v52 = v143, v54 = v138, , sub_1E679358C(v54, v51), v52))
      {

        v28 = v52;
      }

      else
      {
        v53 = v122;
      }

      v138 = v53;
      v139 = v28;
      sub_1E67612A8();
      v103 = v124;
      v104 = v47;
      v105 = v121;
      v106 = sub_1E68B2670();
      v108 = v107;
      v110 = v109;
      v132 = v111;
      sub_1E673F0D4(v103, v105, v104 & 1);

      v112 = v130;
      v113 = v128;
      LOBYTE(v105) = v127;
      v114 = sub_1E68B2680();
      v135 = v115;
      v136 = v114;
      LODWORD(v133) = v116;
      v137 = v117;

      sub_1E673F0D4(v106, v108, v110 & 1);

      sub_1E673F0D4(v112, v113, v105);

      v86 = *v33;
      v87 = *(v33 + 8);
      v88 = *(v33 + 16);
      v118 = v135;
      *v33 = v136;
      *(v33 + 8) = v118;
      v102 = v133;
      goto LABEL_20;
    }
  }

  v24 = v135;
LABEL_12:
  swift_getKeyPath();
  v55 = v130;
  sub_1E68B17B0();

  swift_getKeyPath();
  v56 = v131;
  sub_1E68B1900();

  v24(v55, v56);
  v57 = v139;
  if (!v139)
  {
    v91 = *v33;
    v90 = *(v33 + 8);
    v92 = *(v33 + 16);
    v136 = *(v33 + 24);
    sub_1E673F26C(v91, v90, v92);

    v93 = v125;
    sub_1E68B17C0();
    sub_1E6793FCC();
    sub_1E68B1850();
    sub_1E6744A10(v93, &qword_1ED097DC8);
    sub_1E68B1860();
    v94 = sub_1E68B26D0();
    v96 = v95;
    LOBYTE(v93) = v97;
    v135 = sub_1E68B2680();
    v133 = v98;
    LODWORD(v132) = v99;
    v137 = v100;
    sub_1E673F0D4(v94, v96, v93 & 1);

    sub_1E673F0D4(v91, v90, v92);

    v86 = *v33;
    v87 = *(v33 + 8);
    v88 = *(v33 + 16);
    v101 = v133;
    *v33 = v135;
    *(v33 + 8) = v101;
    v102 = v132;
LABEL_20:
    *(v33 + 16) = v102 & 1;
    *(v33 + 24) = v137;
    goto LABEL_21;
  }

  v58 = v138;

  sub_1E679358C(v58, v57);
  v60 = *v33;
  v59 = *(v33 + 8);
  v61 = *(v33 + 16);
  v62 = *(v33 + 24);

  v130 = v62;

  v126 = v60;
  v128 = v59;
  LODWORD(v127) = v61;
  sub_1E673F26C(v60, v59, v61);
  sub_1E68B2BB0();
  v125 = sub_1E68B26F0();
  v124 = v63;
  v65 = v64;
  v123 = v66;
  swift_getKeyPath();
  v67 = v129;
  sub_1E68B17B0();

  swift_getKeyPath();
  sub_1E68B1900();

  v135(v67, v56);
  v68 = v139;
  if (v139)
  {
    v70 = v142;
    v69 = v143;
    v71 = v138;

    sub_1E679358C(v71, v68);
    if (v69)
    {

      v58 = v70;
      v57 = v69;
    }
  }

  v138 = v58;
  v139 = v57;
  sub_1E67612A8();
  v72 = v125;
  v73 = v124;
  v74 = sub_1E68B2670();
  v76 = v75;
  v78 = v77;
  sub_1E673F0D4(v72, v73, v65 & 1);

  v79 = v126;
  v80 = v128;
  LOBYTE(v72) = v127;
  v81 = sub_1E68B2680();
  v135 = v82;
  v136 = v81;
  LOBYTE(v73) = v83;
  v137 = v84;
  sub_1E673F0D4(v74, v76, v78 & 1);

  sub_1E673F0D4(v79, v80, v72);

  v85 = v134;
  v86 = *v134;
  v87 = *(v134 + 8);
  v88 = *(v134 + 16);
  v89 = v135;
  *v134 = v136;
  *(v85 + 8) = v89;
  *(v85 + 16) = v73 & 1;
  *(v85 + 24) = v137;
LABEL_21:
  sub_1E673F0D4(v86, v87, v88);
}

uint64_t sub_1E689C474(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E689C4BC()
{
  result = qword_1ED09A010;
  if (!qword_1ED09A010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED09A010);
  }

  return result;
}

id sub_1E689C508(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (sub_1E68B3200() != 6)
  {
    goto LABEL_25;
  }

  v4 = sub_1E68B3210();
  v5 = sub_1E68B3210();
  v9 = sub_1E68B32B0();
  if (v5 >> 14 < v4 >> 14)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = sub_1E68B32B0();
  v34 = v16;
  v35 = v13;
  v17 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 >> 14 > 4 * v17)
  {
    goto LABEL_22;
  }

  v18 = v14;
  v19 = v15;
  v20 = sub_1E68B32B0();
  v32 = v22;
  v33 = v21;
  v24 = v23;

  if (!((v9 ^ v10) >> 14))
  {
LABEL_23:

LABEL_24:

LABEL_25:

    return 0;
  }

  v25 = sub_1E689D1B8(v9, v10, v11, v12, 16);
  if ((v25 & 0x10000000000) != 0)
  {
    v25 = sub_1E689C7BC(v9, v10, v11, v12, 16);
  }

  v26 = v25;

  if ((v26 & 0x100000000) != 0 || !((v35 ^ v18) >> 14))
  {
    goto LABEL_24;
  }

  v27 = sub_1E689D1B8(v35, v18, v34, v19, 16);
  if ((v27 & 0x10000000000) != 0)
  {
    v27 = sub_1E689C7BC(v35, v18, v34, v19, 16);
  }

  v28 = v27;

  if ((v28 & 0x100000000) != 0 || !((v20 ^ v33) >> 14))
  {
    goto LABEL_25;
  }

  v29 = sub_1E689D1B8(v20, v33, v32, v24, 16);
  if ((v29 & 0x10000000000) != 0)
  {
    v29 = sub_1E689C7BC(v20, v33, v32, v24, 16);
  }

  v30 = v29;

  if ((v30 & 0x100000000) == 0)
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:v26 / 255.0 green:v28 / 255.0 blue:v30 / 255.0 alpha:1.0];
  }

  return 0;
}

unsigned __int8 *sub_1E689C7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_1E689D280();

  result = sub_1E68B32A0();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1E689CD44();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1E68B38A0();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_127;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if (v31 != v31)
              {
                goto LABEL_126;
              }

              v32 = v29 + v30;
              v23 = __OFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_126;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if (v39 != v39)
            {
              goto LABEL_126;
            }

            v40 = v37 + v38;
            v23 = __OFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if (v21 != v21)
            {
              goto LABEL_126;
            }

            v22 = v18 + v19;
            v23 = __OFSUB__(v21, v22);
            v15 = v21 - v22;
            if (v23)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if (v69 != v69)
          {
            goto LABEL_126;
          }

          v70 = v67 + v68;
          v23 = __OFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_126;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_127;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if (v52 != v52)
          {
            goto LABEL_126;
          }

          v53 = v50 + v51;
          v23 = __OFSUB__(v52, v53);
          v45 = v52 - v53;
          if (v23)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_127;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if (v61 != v61)
        {
          goto LABEL_126;
        }

        v62 = v59 + v60;
        v23 = __OFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_126;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_125:
      v17 = 0;
      v20 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1E689CD44()
{
  v0 = sub_1E68B32B0();
  v4 = sub_1E689CDC4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1E689CDC4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1E68B3770();
    if (!v9 || (v10 = v9, v11 = sub_1E683B8B8(v9, 0), v12 = sub_1E689CF1C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1E68B31E0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1E68B31E0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1E68B38A0();
LABEL_4:

  return sub_1E68B31E0();
}

unint64_t sub_1E689CF1C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1E689D13C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1E68B3270();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1E68B38A0();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1E689D13C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1E68B3240();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1E689D13C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1E68B3280();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E6951AA0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1E689D1B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1E68B38A0();
  }

  result = sub_1E689D2D4(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

unint64_t sub_1E689D280()
{
  result = qword_1ED09A018;
  if (!qword_1ED09A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A018);
  }

  return result;
}

uint64_t sub_1E689D2D4(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1E689D13C(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1E68B3260();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1E689D13C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1E689D13C(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_1E68B3260();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if (v48 != v48)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__OFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if (v55 != v55)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__OFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if (v39 != v39)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (__OFSUB__(v39, v40))
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_1E689D740()
{
  sub_1E68B22C0();
  sub_1E68AA8A0(&qword_1EE2EA608, MEMORY[0x1E697FCB0]);
  return sub_1E68B3C00();
}

uint64_t sub_1E689D7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, uint64_t a25)
{
  v31 = swift_allocObject();
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;
  *(v31 + 32) = a5;
  *(v31 + 40) = a6;
  *(v31 + 48) = a7;
  *(v31 + 56) = a8;
  *(v31 + 64) = a9;
  *(v31 + 72) = a10;
  *(v31 + 80) = a11;
  *(v31 + 88) = a12;
  *(v31 + 104) = a13;
  *(v31 + 120) = a14;
  *(v31 + 136) = a15;
  *(v31 + 152) = a16;
  *(v31 + 168) = a17;
  *(v31 + 184) = a18;
  *(v31 + 200) = a19;
  *(v31 + 216) = a20;
  *(v31 + 232) = a21;
  *(v31 + 248) = a22;
  *(v31 + 264) = a23;
  *(v31 + 280) = a24;
  *(v31 + 296) = a25;
  *(v31 + 304) = a1;
  *(v31 + 312) = a2;
  v36[0] = sub_1E68AB7C0;
  v36[1] = v31;
  sub_1E68B3750();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098208);
  FunctionTypeMetadata3 = swift_getFunctionTypeMetadata3();
  sub_1E672890C(v36, FunctionTypeMetadata3, &v37);
  return v37;
}

uint64_t (*sub_1E689D98C(_OWORD *a1))(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = swift_allocObject();
  v6 = a1[2];
  *(v5 + 16) = a1[1];
  *(v5 + 32) = v6;
  v7 = a1[4];
  *(v5 + 48) = a1[3];
  *(v5 + 64) = v7;
  v8 = a1[6];
  *(v5 + 80) = a1[5];
  *(v5 + 96) = v8;
  v9 = a1[8];
  *(v5 + 112) = a1[7];
  *(v5 + 128) = v9;
  v10 = a1[10];
  *(v5 + 144) = a1[9];
  *(v5 + 160) = v10;
  v11 = a1[12];
  *(v5 + 176) = a1[11];
  *(v5 + 192) = v11;
  v12 = a1[14];
  *(v5 + 208) = a1[13];
  *(v5 + 224) = v12;
  v13 = a1[16];
  *(v5 + 240) = a1[15];
  *(v5 + 256) = v13;
  v14 = a1[18];
  *(v5 + 272) = a1[17];
  *(v5 + 288) = v14;
  *(v5 + 304) = v4;
  *(v5 + 312) = v3;

  return sub_1E68AA074;
}

uint64_t sub_1E689DA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, uint64_t a24, uint64_t a25)
{
  v31 = swift_allocObject();
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;
  *(v31 + 32) = a5;
  *(v31 + 40) = a6;
  *(v31 + 48) = a7;
  *(v31 + 56) = a8;
  *(v31 + 64) = a9;
  *(v31 + 80) = a10;
  *(v31 + 88) = a11;
  *(v31 + 96) = a12;
  *(v31 + 112) = a13;
  *(v31 + 128) = a14;
  *(v31 + 144) = a15;
  *(v31 + 160) = a16;
  *(v31 + 176) = a17;
  *(v31 + 192) = a18;
  *(v31 + 208) = a19;
  *(v31 + 224) = a20;
  *(v31 + 240) = a21;
  *(v31 + 256) = a22;
  *(v31 + 272) = a23;
  *(v31 + 288) = a24;
  *(v31 + 296) = a25;
  *(v31 + 304) = a1;
  *(v31 + 312) = a2;
  v36[0] = sub_1E68AB798;
  v36[1] = v31;
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(v36, FunctionTypeMetadata1, &v37);
  return v37;
}

uint64_t (*sub_1E689DBB8(uint64_t a1))()
{
  v3 = (v1 + *(a1 + 348));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  v7 = *(a1 + 32);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v7;
  v8 = *(a1 + 64);
  *(v6 + 48) = *(a1 + 48);
  *(v6 + 64) = v8;
  v9 = *(a1 + 96);
  *(v6 + 80) = *(a1 + 80);
  *(v6 + 96) = v9;
  v10 = *(a1 + 128);
  *(v6 + 112) = *(a1 + 112);
  *(v6 + 128) = v10;
  v11 = *(a1 + 160);
  *(v6 + 144) = *(a1 + 144);
  *(v6 + 160) = v11;
  v12 = *(a1 + 192);
  *(v6 + 176) = *(a1 + 176);
  *(v6 + 192) = v12;
  v13 = *(a1 + 224);
  *(v6 + 208) = *(a1 + 208);
  *(v6 + 224) = v13;
  v14 = *(a1 + 256);
  *(v6 + 240) = *(a1 + 240);
  *(v6 + 256) = v14;
  v15 = *(a1 + 288);
  *(v6 + 272) = *(a1 + 272);
  *(v6 + 288) = v15;
  *(v6 + 304) = v5;
  *(v6 + 312) = v4;

  return sub_1E68AA0B8;
}

double sub_1E689DC74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0984A8);
  sub_1E68B2BD0();
  return v1;
}

uint64_t CanvasContainerView.init(descriptors:layout:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:contextMenuViewModifierBuilder:viewDescriptorBuilder:actionButtonViewBuilder:sectionHeaderSubtitleViewBuilder:onItemAppearedAtIndexPath:onItemDisappearedAtIndexPath:onItemSelectedAtItemIdentifier:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 a30, uint64_t a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, __int128 a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, uint64_t a45)
{
  v78 = a25;
  v79 = a26;
  v80 = a27;
  v81 = a28;
  v82 = a29;
  v83 = a30;
  v84 = a31;
  v85 = a32;
  v86 = a33;
  v87 = a34;
  v88 = a35;
  v89 = a36;
  v90 = a37;
  v91 = a38;
  v92 = a39;
  v93 = a40;
  v94 = a41;
  v95 = a42;
  v96 = a43;
  v97 = a44;
  v98 = a45;
  v71 = type metadata accessor for CanvasContainerView();
  v47 = a9 + v71[88];
  type metadata accessor for CGSize(0);
  v99 = 0;
  v100 = 0;
  sub_1E68B2BC0();
  *v47 = a25;
  *(v47 + 16) = a26;
  *a9 = a1;
  v48 = v71[84];
  *&v78 = a35;
  *(&v78 + 1) = *(&a34 + 1);
  v79 = *(&a44 + 1);
  v80 = a44;
  v72 = type metadata accessor for CanvasLayout();
  v74 = *(v72 - 8);
  (*(v74 + 16))(a9 + v48, a2, v72);
  v99 = a3;
  v100 = a4;
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v99, FunctionTypeMetadata1, &v78);
  *(a9 + 24) = v78;
  v99 = a5;
  v100 = a6;
  v50 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v99, v50, &v78);
  *(a9 + 40) = v78;
  v99 = a7;
  v100 = a8;
  v51 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v99, v51, &v78);
  *(a9 + 56) = v78;
  v99 = a10;
  v100 = a11;
  v52 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v99, v52, &v78);
  *(a9 + 72) = v78;
  v99 = a12;
  v100 = a13;
  sub_1E68B19A0();
  *&v78 = a35;
  *(&v78 + 1) = *(&a34 + 1);
  v79 = *(&a44 + 1);
  v80 = a44;
  type metadata accessor for CanvasLayout();
  FunctionTypeMetadata3 = swift_getFunctionTypeMetadata3();
  sub_1E672890C(&v99, FunctionTypeMetadata3, &v78);
  *(a9 + 88) = v78;

  *(a9 + 8) = sub_1E689D7C0(a14, a15, a25, *(&a25 + 1), a26, a27, a28, a29, a30, *(&a30 + 1), a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
  *(a9 + 16) = v54;
  v99 = a16;
  v100 = a17;
  v55 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v99, v55, &v78);
  *(a9 + 104) = v78;
  v56 = (a9 + v71[85]);
  v57 = swift_allocObject();
  *(v57 + 16) = a18;
  *(v57 + 24) = a19;
  *v56 = sub_1E68A90F0;
  v56[1] = v57;
  v58 = (a9 + v71[86]);
  v59 = swift_allocObject();
  *(v59 + 16) = a20;
  *(v59 + 24) = a21;
  *v58 = sub_1E68AB7FC;
  v58[1] = v59;
  v60 = (a9 + v71[87]);
  *&v67[184] = a44;
  *&v67[168] = a43;
  *&v67[152] = a42;
  *&v67[136] = a41;
  *&v67[120] = a40;
  *&v67[104] = a39;
  *&v67[88] = a38;
  *&v67[72] = a37;
  *&v67[56] = a36;
  *&v67[40] = a35;
  *&v67[24] = a34;
  *v67 = *(&a32 + 1);
  *&v67[8] = a33;
  v61 = sub_1E689DA40(a22, a23, a25, *(&a25 + 1), a26, a27, a28, a29, a30, a31, a32, *v67, *&v67[16], *&v67[32], *&v67[48], *&v67[64], *&v67[80], *&v67[96], *&v67[112], *&v67[128], *&v67[144], *&v67[160], *&v67[176], *(&a44 + 1), a45);
  v63 = v62;

  (*(v74 + 8))(a2, v72);
  *v60 = v61;
  v60[1] = v63;
  v64 = v71[89];
  v65 = sub_1E68B1950();
  return (*(*(v65 - 8) + 32))(a9 + v64, a24, v65);
}

uint64_t sub_1E689E500@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v36 = *(a1 + 136);
  v37 = *(a1 + 288);
  v39 = v36;
  *v40 = v37;
  v35 = type metadata accessor for CanvasSectionLayout();
  v34 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v32 - v4;
  v6 = *(a1 + 56);
  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  v9 = *(a1 + 192);
  v10 = *(a1 + 272);
  v11 = *(a1 + 256);
  v39 = *(a1 + 16);
  *v40 = v6;
  *&v40[8] = *(a1 + 88);
  v41 = v7;
  v33 = v36;
  v42 = v36;
  v43 = v8;
  v44 = *(&v36 + 1);
  v45 = *(a1 + 152);
  v46 = v9;
  v12 = *(a1 + 240);
  v47 = *(a1 + 224);
  v48 = v12;
  v49 = v10;
  *&v36 = v37;
  v50 = v37;
  v51 = v11;
  v52 = *(&v37 + 1);
  v13 = type metadata accessor for CanvasSectionDescriptor();
  v14 = sub_1E68B3750();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v18 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  *&v37 = v2;
  *&v39 = *v2;
  sub_1E68B33B0();
  swift_getWitnessTable();
  sub_1E68B36C0();
  if ((*(v18 + 48))(v17, 1, v13) == 1)
  {
    (*(v15 + 8))(v17, v14);
LABEL_8:
    v30 = 1;
    v29 = v38;
    return (*(v18 + 56))(v29, v30, 1, v13);
  }

  v22 = *(v18 + 32);
  v22(v21, v17, v13);
  v23 = v34;
  v24 = v35;
  (*(v34 + 16))(v5, &v21[*(v13 + 180)], v35);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v18 + 8))(v21, v13);
    (*(v23 + 8))(v5, v24);
    goto LABEL_8;
  }

  v35 = v37 + *(a1 + 336);
  v25 = *(a1 + 128);
  v26 = *(a1 + 280);
  *&v39 = v33;
  *(&v39 + 1) = v25;
  *v40 = v36;
  *&v40[8] = v26;
  type metadata accessor for CanvasLayout();
  v27 = sub_1E689DC74();
  if (((*(v26 + 56))(v25, v26, v27) & 1) == 0)
  {
    (*(v18 + 8))(v21, v13);
    goto LABEL_8;
  }

  v28 = v38;
  v22(v38, v21, v13);
  v29 = v28;
  v30 = 0;
  return (*(v18 + 56))(v29, v30, 1, v13);
}

uint64_t sub_1E689E988@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v289 = a1;
  v286 = a3;
  v298 = *(a2 - 1);
  v299 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v285 = &v251 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v284 = (&v251 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v281 = &v251 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v278 = &v251 - v10;
  v270 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v275 = &v251 - v13;
  v319 = *(v14 + 72);
  WitnessTable = sub_1E68B2220();
  v15 = *(a2 + 2);
  v328 = a2[3];
  v17 = a2[5];
  v323 = a2[4];
  v16 = v323;
  v18 = a2[7];
  v322 = a2[6];
  v325 = v18;
  v19 = a2[11];
  v316 = a2[10];
  v20 = v316;
  v330 = v19;
  v324 = a2[12];
  v329 = a2[15];
  v321 = a2[16];
  v21 = a2[18];
  v306 = a2[17];
  v327 = v21;
  v22 = a2[19];
  v292 = a2[20];
  v293 = v22;
  v23 = a2[24];
  v24 = a2[28];
  v296 = a2[29];
  v297 = v24;
  v26 = a2[30];
  v25 = a2[31];
  v294 = v23;
  v295 = v26;
  v27 = a2[37];
  v301 = v25;
  v302 = v27;
  v360 = v15;
  v28 = v15;
  v311 = v15;
  v361 = v328;
  v362 = v18;
  v363 = v19;
  v364 = v324;
  v365 = v21;
  v366 = v22;
  v367 = v292;
  v368 = v23;
  v369 = v24;
  v370 = v296;
  v371 = v26;
  v372 = v25;
  v373 = v27;
  v29 = type metadata accessor for CanvasItemDescriptor();
  v31 = a2[21];
  v30 = a2[22];
  v318 = a2[23];
  v32 = a2[26];
  v313 = a2[27];
  v33 = v313;
  v314 = v30;
  v320 = v32;
  v300 = a2[36];
  v34 = v300;
  v35 = a2[35];
  v326 = a2[34];
  v317 = v35;
  v290 = v29;
  *&v291 = COERCE_DOUBLE(swift_getWitnessTable());
  v360 = v28;
  v361 = v20;
  v36 = v328;
  v362 = v328;
  v363 = v16;
  v309 = v17;
  v364 = v17;
  v37 = v322;
  v365 = v322;
  v366 = v325;
  v38 = v319;
  v367 = v319;
  v368 = v330;
  v369 = v324;
  v370 = v306;
  v371 = v329;
  v372 = v321;
  v373 = v327;
  v374 = v29;
  v375 = v33;
  v376 = v31;
  v39 = v31;
  v315 = v31;
  v40 = v314;
  v377 = v314;
  v378 = v318;
  v41 = v320;
  v379 = v320;
  v380 = v34;
  v381 = v326;
  v382 = v317;
  v383 = v291;
  v288 = type metadata accessor for CarouselView();
  v42 = a2[8];
  v43 = a2[14];
  v310 = a2[13];
  v312 = v43;
  v305 = a2[25];
  v44 = a2[33];
  v307 = a2[32];
  v308 = v42;
  v303 = v44;
  v45 = v311;
  v360 = v311;
  v361 = v316;
  v362 = v36;
  v363 = v323;
  v364 = v17;
  v365 = v37;
  v46 = v325;
  v366 = v325;
  v367 = v42;
  v368 = v38;
  v369 = v330;
  v47 = v324;
  v370 = v324;
  v371 = v310;
  v372 = v43;
  v373 = v329;
  v48 = v321;
  v374 = v321;
  v375 = v327;
  v49 = v290;
  v376 = v290;
  v50 = v313;
  v377 = v313;
  v378 = v39;
  v379 = v40;
  v51 = v318;
  v380 = v318;
  v381 = v305;
  v382 = v41;
  v383 = v307;
  v384 = v44;
  v385 = v326;
  v52 = v317;
  v386 = v317;
  v53 = v291;
  v387 = v291;
  v287 = type metadata accessor for HorizontalGridView();
  v360 = v45;
  v54 = v316;
  v361 = v316;
  v362 = v328;
  v363 = v323;
  v364 = v309;
  v365 = v322;
  v366 = v46;
  v367 = v308;
  v368 = v319;
  v55 = v330;
  v369 = v330;
  v370 = v47;
  v371 = v310;
  v372 = v312;
  v56 = v329;
  v373 = v329;
  v374 = v48;
  v375 = v327;
  v376 = v49;
  v377 = v50;
  v57 = v314;
  v378 = v315;
  v379 = v314;
  v380 = v51;
  v381 = v305;
  v382 = v320;
  v383 = v307;
  v58 = v303;
  v384 = v303;
  v385 = v326;
  v386 = v52;
  v387 = v53;
  v280 = type metadata accessor for VerticalGridView();
  v282 = sub_1E68B2220();
  v279 = sub_1E68B2220();
  v60 = v310;
  v59 = v311;
  v360 = v311;
  v361 = v54;
  v362 = v328;
  v363 = v323;
  v364 = v309;
  v365 = v322;
  v61 = v325;
  v366 = v325;
  v367 = v308;
  v368 = v319;
  v369 = v55;
  v62 = v324;
  v370 = v324;
  v371 = v310;
  v372 = v312;
  v373 = v56;
  v374 = v321;
  v63 = v327;
  v375 = v327;
  v376 = v290;
  v377 = v313;
  v378 = v315;
  v379 = v57;
  v380 = v318;
  v64 = v305;
  v381 = v305;
  v382 = v320;
  v65 = v307;
  v383 = v307;
  v384 = v58;
  v66 = v326;
  v385 = v326;
  v386 = v317;
  v387 = v291;
  v277 = type metadata accessor for ListView();
  v360 = v59;
  v361 = v316;
  v362 = v328;
  v363 = v323;
  v364 = v309;
  v365 = v322;
  v366 = v61;
  v367 = v308;
  v368 = v319;
  v369 = v330;
  v370 = v62;
  v371 = v60;
  v372 = v312;
  v373 = v329;
  v374 = v321;
  v375 = v63;
  v376 = v290;
  v377 = v313;
  v378 = v315;
  v379 = v314;
  v380 = v318;
  v381 = v64;
  v67 = v320;
  v382 = v320;
  v383 = v65;
  v384 = v303;
  v385 = v66;
  v386 = v317;
  v387 = v291;
  type metadata accessor for OrthogonalView();
  sub_1E68B2220();
  v290 = sub_1E68B2220();
  *&v291 = COERCE_DOUBLE(sub_1E68B2220());
  *&v68 = COERCE_DOUBLE(sub_1E68B2220());
  v268 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v267 = &v251 - v69;
  v358 = v67;
  v359 = MEMORY[0x1E6981E60];
  WitnessTable = swift_getWitnessTable();
  v70 = swift_getWitnessTable();
  v71 = swift_getWitnessTable();
  v72 = swift_getWitnessTable();
  v356 = v71;
  v357 = v72;
  v73 = swift_getWitnessTable();
  v354 = v70;
  v355 = v73;
  v74 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v76 = swift_getWitnessTable();
  v352 = v75;
  v353 = v76;
  v77 = swift_getWitnessTable();
  v350 = v74;
  v351 = v77;
  v348 = swift_getWitnessTable();
  v349 = v67;
  v78 = swift_getWitnessTable();
  v346 = WitnessTable;
  v347 = v78;
  v79 = swift_getWitnessTable();
  v360 = *&v68;
  v361 = v79;
  swift_getOpaqueTypeMetadata2();
  *&v80 = COERCE_DOUBLE(sub_1E68B2220());
  v263 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v260 = &v251 - v81;
  v269 = v68;
  v360 = *&v68;
  v361 = v79;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v261 = v79;
  v345 = v79;
  v82 = swift_getWitnessTable();
  v291 = v80;
  v360 = *&v80;
  WitnessTable = v82;
  v361 = v82;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v262 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v259 = &v251 - v84;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8);
  v264 = OpaqueTypeMetadata2;
  v85 = sub_1E68B1E40();
  v276 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v266 = &v251 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v265 = &v251 - v88;
  v360 = v311;
  v361 = v328;
  v362 = v325;
  v363 = v330;
  v364 = v324;
  v365 = v329;
  v366 = v306;
  v367 = v310;
  v368 = v327;
  v369 = v293;
  v370 = v292;
  v371 = v294;
  v372 = v297;
  v373 = v296;
  v374 = v295;
  v375 = v301;
  v376 = v326;
  v377 = v300;
  v378 = v307;
  v379 = v302;
  v89 = type metadata accessor for CanvasSectionDescriptor();
  v90 = sub_1E68B3750();
  v91 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v93 = &v251 - v92;
  v94 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v290 = &v251 - v96;
  v282 = v85;
  v280 = sub_1E68B3750();
  v274 = *(v280 - 8);
  MEMORY[0x1EEE9AC00](v280);
  v279 = &v251 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v98);
  v277 = &v251 - v99;
  v100 = v299;
  v101 = v304;
  sub_1E689E500(v299, v93);
  if ((*(v94 + 48))(v93, 1, v89) == 1)
  {
    (*(v91 + 8))(v93, v90);
    v102 = v279;
    (*(v276 + 56))(v279, 1, 1, v282);
    v360 = *&v291;
    v103 = WitnessTable;
    v361 = WitnessTable;
    v104 = swift_getOpaqueTypeConformance2();
    v105 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8);
    v342 = v104;
    v343 = v105;
    swift_getWitnessTable();
  }

  else
  {
    v257 = v94;
    v258 = v89;
    (*(v94 + 32))(v290, v93, v89);
    v256 = *(v100 + 336);
    v106 = v298;
    v107 = v298 + 16;
    v272 = *(v298 + 16);
    v272(v275, v101, v100);
    v273 = v107;
    v108 = (*(v106 + 80) + 304) & ~*(v106 + 80);
    v271 = *(v106 + 80);
    v255 = v108 + v270;
    v109 = v108;
    v288 = v108;
    v110 = (v108 + v270 + 7) & 0xFFFFFFFFFFFFFFF8;
    v111 = swift_allocObject();
    v112 = v328;
    v111[2] = v311;
    *(v111 + 3) = v112;
    v114 = v308;
    v113 = v309;
    *(v111 + 4) = v323;
    *(v111 + 5) = v113;
    v115 = v113;
    v116 = v325;
    *(v111 + 6) = v322;
    *(v111 + 7) = v116;
    v117 = v319;
    *(v111 + 8) = v114;
    *(v111 + 9) = v117;
    v118 = v330;
    *(v111 + 10) = v316;
    *(v111 + 11) = v118;
    v119 = v310;
    *(v111 + 12) = v324;
    *(v111 + 13) = v119;
    v120 = v329;
    *(v111 + 14) = v312;
    *(v111 + 15) = v120;
    v121 = v306;
    *(v111 + 16) = v321;
    *(v111 + 17) = v121;
    v122 = v292;
    v123 = v293;
    *(v111 + 18) = v327;
    *(v111 + 19) = v123;
    *(v111 + 20) = v122;
    v124 = v314;
    *(v111 + 21) = v315;
    *(v111 + 22) = v124;
    v125 = v294;
    *(v111 + 23) = v318;
    *(v111 + 24) = v125;
    v126 = v320;
    *(v111 + 25) = v305;
    *(v111 + 26) = v126;
    v127 = v296;
    v128 = v297;
    *(v111 + 27) = v313;
    *(v111 + 28) = v128;
    *(v111 + 29) = v127;
    v129 = v301;
    *(v111 + 30) = v295;
    *(v111 + 31) = v129;
    v130 = v303;
    *(v111 + 32) = v307;
    *(v111 + 33) = v130;
    v131 = v317;
    *(v111 + 34) = v326;
    *(v111 + 35) = v131;
    v132 = v302;
    *(v111 + 36) = v300;
    *(v111 + 37) = v132;
    v287 = *(v106 + 32);
    v298 = v106 + 32;
    v133 = v111 + v109;
    v134 = v299;
    v287(v133, v275, v299);
    v270 = v110;
    *(v111 + v110) = v289;
    v135 = v134;
    v136 = v272;
    v272(v278, v304, v135);
    v137 = swift_allocObject();
    v138 = v328;
    v137[2] = v311;
    *(v137 + 3) = v138;
    *(v137 + 4) = v323;
    *(v137 + 5) = v115;
    v139 = v325;
    *(v137 + 6) = v322;
    *(v137 + 7) = v139;
    *(v137 + 8) = v114;
    *(v137 + 9) = v117;
    v140 = v330;
    *(v137 + 10) = v316;
    *(v137 + 11) = v140;
    v141 = v310;
    *(v137 + 12) = v324;
    *(v137 + 13) = v141;
    v142 = v329;
    *(v137 + 14) = v312;
    *(v137 + 15) = v142;
    v143 = v306;
    *(v137 + 16) = v321;
    *(v137 + 17) = v143;
    v144 = v292;
    v145 = v293;
    *(v137 + 18) = v327;
    *(v137 + 19) = v145;
    v147 = v314;
    v146 = v315;
    *(v137 + 20) = v144;
    *(v137 + 21) = v146;
    v148 = v318;
    *(v137 + 22) = v147;
    *(v137 + 23) = v148;
    v149 = v294;
    v150 = v305;
    *(v137 + 24) = v294;
    *(v137 + 25) = v150;
    v151 = v313;
    *(v137 + 26) = v320;
    *(v137 + 27) = v151;
    v152 = v296;
    *(v137 + 28) = v297;
    *(v137 + 29) = v152;
    v153 = v301;
    *(v137 + 30) = v295;
    *(v137 + 31) = v153;
    *(v137 + 32) = v307;
    *(v137 + 33) = v130;
    v154 = v317;
    *(v137 + 34) = v326;
    *(v137 + 35) = v154;
    v155 = v299;
    v156 = v302;
    *(v137 + 36) = v300;
    *(v137 + 37) = v156;
    v287(v137 + v288, v278, v155);
    *(v137 + v270) = v289;
    v136(v281, v304, v155);
    v157 = swift_allocObject();
    v158 = v328;
    v157[2] = v311;
    *(v157 + 3) = v158;
    v159 = v309;
    v160 = v310;
    *(v157 + 4) = v323;
    *(v157 + 5) = v159;
    v161 = v325;
    *(v157 + 6) = v322;
    *(v157 + 7) = v161;
    v162 = v319;
    *(v157 + 8) = v308;
    *(v157 + 9) = v162;
    v163 = v330;
    *(v157 + 10) = v316;
    *(v157 + 11) = v163;
    *(v157 + 12) = v324;
    *(v157 + 13) = v160;
    v164 = v329;
    *(v157 + 14) = v312;
    *(v157 + 15) = v164;
    v165 = v306;
    *(v157 + 16) = v321;
    *(v157 + 17) = v165;
    *(v157 + 18) = v327;
    *(v157 + 19) = v145;
    v166 = v314;
    v167 = v315;
    *(v157 + 20) = v144;
    *(v157 + 21) = v167;
    v168 = v318;
    *(v157 + 22) = v166;
    *(v157 + 23) = v168;
    v169 = v305;
    *(v157 + 24) = v149;
    *(v157 + 25) = v169;
    v170 = v313;
    *(v157 + 26) = v320;
    *(v157 + 27) = v170;
    v171 = v297;
    *(v157 + 28) = v297;
    *(v157 + 29) = v152;
    v172 = v295;
    v173 = v301;
    *(v157 + 30) = v295;
    *(v157 + 31) = v173;
    v174 = v303;
    *(v157 + 32) = v307;
    *(v157 + 33) = v174;
    v175 = v317;
    *(v157 + 34) = v326;
    *(v157 + 35) = v175;
    v176 = v299;
    v177 = v302;
    *(v157 + 36) = v300;
    *(v157 + 37) = v177;
    v287(v157 + v288, v281, v176);
    v178 = v304[3];
    v278 = v304[4];
    v179 = v304[6];
    v254 = v304[5];
    v255 = v178;
    v275 = v179;
    v180 = v304[8];
    v253 = v304[7];
    v281 = v180;
    (v272)(v284);
    v181 = v270;
    v182 = swift_allocObject();
    v183 = v328;
    v182[2] = v311;
    *(v182 + 3) = v183;
    v184 = v309;
    *(v182 + 4) = v323;
    *(v182 + 5) = v184;
    v185 = v325;
    *(v182 + 6) = v322;
    *(v182 + 7) = v185;
    v186 = v319;
    *(v182 + 8) = v308;
    *(v182 + 9) = v186;
    v187 = v330;
    *(v182 + 10) = v316;
    *(v182 + 11) = v187;
    *(v182 + 12) = v324;
    *(v182 + 13) = v160;
    v188 = v329;
    *(v182 + 14) = v312;
    *(v182 + 15) = v188;
    v189 = v306;
    *(v182 + 16) = v321;
    *(v182 + 17) = v189;
    v190 = v327;
    v192 = v292;
    v191 = v293;
    *(v182 + 18) = v327;
    *(v182 + 19) = v191;
    v193 = v314;
    v194 = v315;
    *(v182 + 20) = v192;
    *(v182 + 21) = v194;
    *(v182 + 22) = v193;
    *(v182 + 23) = v168;
    v195 = v305;
    *(v182 + 24) = v294;
    *(v182 + 25) = v195;
    v196 = v313;
    *(v182 + 26) = v320;
    *(v182 + 27) = v196;
    v197 = v296;
    *(v182 + 28) = v171;
    *(v182 + 29) = v197;
    v198 = v301;
    *(v182 + 30) = v172;
    *(v182 + 31) = v198;
    v199 = v303;
    *(v182 + 32) = v307;
    *(v182 + 33) = v199;
    v200 = v317;
    *(v182 + 34) = v326;
    *(v182 + 35) = v200;
    v201 = v299;
    v202 = v302;
    *(v182 + 36) = v300;
    *(v182 + 37) = v202;
    v287(v182 + v288, v284, v201);
    *(v182 + v181) = v289;
    v203 = v304[10];
    v252 = v304[9];
    v284 = v203;
    (v272)(v285);
    v204 = swift_allocObject();
    v205 = v292;
    *(v204 + 19) = v293;
    *(v204 + 20) = v205;
    *(v204 + 24) = v294;
    v206 = v296;
    *(v204 + 28) = v297;
    *(v204 + 29) = v206;
    v207 = v301;
    *(v204 + 30) = v295;
    *(v204 + 31) = v207;
    *(v204 + 32) = v307;
    *(v204 + 34) = v326;
    v208 = v302;
    *(v204 + 36) = v300;
    *(v204 + 37) = v208;
    *(v204 + 18) = v190;
    v209 = v328;
    v204[2] = v311;
    *(v204 + 3) = v209;
    v210 = v309;
    *(v204 + 4) = v323;
    *(v204 + 5) = v210;
    v211 = v325;
    *(v204 + 6) = v322;
    *(v204 + 7) = v211;
    v212 = v319;
    *(v204 + 8) = v308;
    *(v204 + 9) = v212;
    v213 = v330;
    *(v204 + 10) = v316;
    *(v204 + 11) = v213;
    v214 = v310;
    *(v204 + 12) = v324;
    *(v204 + 13) = v214;
    v215 = v329;
    *(v204 + 14) = v312;
    *(v204 + 15) = v215;
    v216 = v306;
    *(v204 + 16) = v321;
    *(v204 + 17) = v216;
    v217 = v314;
    *(v204 + 21) = v315;
    *(v204 + 22) = v217;
    *(v204 + 23) = v318;
    v218 = v320;
    *(v204 + 25) = v305;
    *(v204 + 26) = v218;
    *(v204 + 27) = v313;
    v219 = v303;
    *(v204 + 33) = v303;
    *(v204 + 35) = v200;
    v220 = v201;
    v287(v204 + v288, v285, v201);
    *(v204 + v270) = v289;
    v221 = v304[14];
    v307 = v304[13];
    v302 = (v304 + *(v220 + 356));

    v222 = v284;

    v223 = v221;
    v301 = v221;

    v224 = v258;
    v326 = swift_getWitnessTable();
    v250 = v219;
    v249 = v223;
    v225 = v267;
    v226 = v290;
    sub_1E67EB0B4(v304 + v256, sub_1E68AB290, v111, sub_1E68AB2A8, v137, sub_1E68AB524, v157, v255, v267, v278, v254, v275, v253, v281, sub_1E68AB528, v182, v252, v222, sub_1E68AB794, v204, v307, v249, v302, v224, v321, v323, v309, v322, v316, v308, v319, v312, v326, v317, v315, v314, v318, v313, v305, v320, v250);
    v227 = v291;

    v228 = v258;
    v229 = v260;
    v230 = v269;
    sub_1E6814ED8(v226, 0, v269, v260, v329, v306, v310, v327, v258, v261, v326);
    (*(v268 + 8))(v225, v230);
    v231 = v259;
    v103 = WitnessTable;
    sub_1E68B2700();
    (*(v263 + 8))(v229, v227);
    swift_getKeyPath();
    v360 = sub_1E689DC74();
    v361 = v232;
    v340 = v227;
    v341 = v103;
    v233 = swift_getOpaqueTypeConformance2();
    v234 = v266;
    v235 = v264;
    sub_1E68B27B0();

    (*(v262 + 8))(v231, v235);
    (*(v257 + 8))(v290, v228);
    v236 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8);
    v331 = v233;
    v332 = v236;
    v237 = v282;
    v238 = swift_getWitnessTable();
    v239 = v265;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v234, v237, v238);
    v240 = v276;
    v241 = *(v276 + 8);
    v241(v234, v237);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v239, v237, v238);
    v241(v239, v237);
    v102 = v279;
    (*(v240 + 32))(v279, v234, v237);
    (*(v240 + 56))(v102, 0, 1, v237);
  }

  v242 = v277;
  sub_1E67FDFA4(v102, v277);
  v243 = v274;
  v244 = *(v274 + 8);
  v245 = v280;
  v244(v102, v280);
  (*(v243 + 16))(v102, v242, v245);
  v361 = v102;
  v340 = MEMORY[0x1E6981E70];
  v341 = v245;
  v338 = MEMORY[0x1E6981E60];
  v336 = v291;
  v337 = v103;
  v246 = swift_getOpaqueTypeConformance2();
  v247 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8);
  v334 = v246;
  v335 = v247;
  v333 = swift_getWitnessTable();
  v339 = swift_getWitnessTable();
  sub_1E6848F14(&v360, 2uLL, &v340);
  v244(v242, v245);
  return (v244)(v102, v245);
}

uint64_t CanvasContainerView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v188 = a1[9];
  v151 = sub_1E68B2220();
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v181 = a1[5];
  v182 = v5;
  v6 = a1[6];
  v179 = a1[7];
  v180 = v6;
  v7 = a1[10];
  v193 = a1[11];
  v184 = a1[12];
  v185 = v7;
  v8 = a1[15];
  v169 = a1[16];
  v9 = a1[18];
  v157 = a1[17];
  v186 = v8;
  v187 = v9;
  v10 = a1[19];
  v158 = a1[20];
  v159 = v10;
  v12 = a1[28];
  v11 = a1[29];
  v160 = a1[24];
  v161 = v11;
  v13 = a1[30];
  v155 = a1[31];
  v156 = v13;
  v14 = a1[37];
  v162 = v12;
  v163 = v14;
  v224 = v4;
  v168 = v4;
  v225 = v3;
  v189 = v3;
  v226 = v179;
  v227 = v193;
  v228 = v184;
  v229 = v9;
  v230 = v10;
  v231 = v158;
  v232 = v160;
  v233 = v12;
  v234 = v11;
  v235 = v13;
  v236 = v155;
  v237 = v14;
  v15 = type metadata accessor for CanvasItemDescriptor();
  v16 = a1[21];
  v183 = a1[22];
  v190 = a1[23];
  v191 = v16;
  v17 = a1[27];
  v192 = a1[26];
  v18 = a1[35];
  v166 = a1[36];
  v167 = v15;
  v178 = a1[34];
  v176 = v17;
  v177 = v18;
  WitnessTable = swift_getWitnessTable();
  v224 = v4;
  v225 = v7;
  v226 = v3;
  v227 = v182;
  v228 = v181;
  v229 = v180;
  v230 = v179;
  v231 = v188;
  v232 = v193;
  v233 = v184;
  v234 = v157;
  v235 = v186;
  v236 = v169;
  v237 = v187;
  v238 = v15;
  v239 = v17;
  v240 = v191;
  v241 = v183;
  v242 = v190;
  v243 = v192;
  v244 = v166;
  v245 = v178;
  v246 = v18;
  v247 = WitnessTable;
  v154 = type metadata accessor for CarouselView();
  v149 = a1;
  v19 = a1[13];
  v20 = a1[14];
  v170 = a1[8];
  v171 = v20;
  v21 = a1[25];
  v172 = v19;
  v173 = v21;
  v22 = a1[32];
  v174 = a1[33];
  v175 = v22;
  type metadata accessor for HorizontalGridView();
  v148 = type metadata accessor for VerticalGridView();
  v150 = sub_1E68B2220();
  v147 = sub_1E68B2220();
  v146 = type metadata accessor for ListView();
  v244 = v190;
  v245 = v173;
  v246 = v192;
  v247 = v175;
  v248 = v174;
  v249 = v178;
  v250 = v18;
  v251 = WitnessTable;
  type metadata accessor for OrthogonalView();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  v222 = v192;
  v223 = MEMORY[0x1E6981E60];
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v220 = swift_getWitnessTable();
  v221 = swift_getWitnessTable();
  v218 = v24;
  v219 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v216 = swift_getWitnessTable();
  v217 = swift_getWitnessTable();
  v214 = v25;
  v215 = swift_getWitnessTable();
  v212 = swift_getWitnessTable();
  v213 = v192;
  v210 = v23;
  v211 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v27 = sub_1E68B2220();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v209 = v26;
  v153 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8);
  v28 = sub_1E68B1E40();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  v167 = sub_1E68B2F00();
  v229 = v186;
  v230 = v157;
  v231 = v172;
  v232 = v187;
  v233 = v159;
  v234 = v158;
  v235 = v160;
  v236 = v162;
  v237 = v161;
  v238 = v156;
  v239 = v155;
  v240 = v178;
  v241 = v166;
  v242 = v175;
  v243 = v163;
  type metadata accessor for CanvasSectionDescriptor();
  swift_getTupleTypeMetadata2();
  WitnessTable = sub_1E68B33B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E8);
  v29 = sub_1E68B2220();
  v154 = swift_getWitnessTable();
  v226 = v29;
  v227 = v154;
  v228 = MEMORY[0x1E69E6168];
  sub_1E68B2D40();
  v30 = sub_1E68AA77C(&qword_1EE2EA7B8, &qword_1ED0995E8);
  v224 = v27;
  v225 = v153;
  v206 = swift_getOpaqueTypeConformance2();
  v207 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8);
  v31 = swift_getWitnessTable();
  v204 = v30;
  v205 = v31;
  v32 = v157;
  v203 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B1B70();
  swift_getTupleTypeMetadata2();
  v33 = sub_1E68B2F00();
  v143[1] = swift_getWitnessTable();
  v143[2] = v33;
  v34 = sub_1E68B2CE0();
  v144 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v148 = v143 - v35;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED09A020);
  v167 = v34;
  v36 = sub_1E68B1E40();
  v147 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v146 = v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v145 = v143 - v39;
  v40 = sub_1E68B22C0();
  MEMORY[0x1EEE9AC00](v40 - 8);
  v224 = WitnessTable;
  v225 = MEMORY[0x1E69E6158];
  v226 = v28;
  v227 = v154;
  v228 = MEMORY[0x1E69E6168];
  sub_1E68B2D40();
  v202 = v31;
  swift_getWitnessTable();
  v41 = sub_1E68B1B70();
  v143[0] = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = v143 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = v143 - v45;
  v150 = v47;
  WitnessTable = v36;
  v48 = sub_1E68B2220();
  v153 = *(v48 - 8);
  v154 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v151 = v143 - v49;
  v50 = v32;
  v224 = v32;
  v51 = v169;
  v225 = v169;
  v226 = v166;
  v52 = v177;
  v227 = v177;
  type metadata accessor for CanvasLayout();
  if ((*(v52 + 40))(v51, v52))
  {
    v148 = sub_1E68B21D0();
    v149 = v143;
    MEMORY[0x1EEE9AC00](v148);
    v53 = &v143[-40];
    v54 = v189;
    v53[2] = v168;
    v53[3] = v54;
    v55 = v181;
    v53[4] = v182;
    v53[5] = v55;
    v56 = v179;
    v53[6] = v180;
    v53[7] = v56;
    v57 = v188;
    v143[-32] = v170;
    v143[-31] = v57;
    v58 = v193;
    v143[-30] = v185;
    v143[-29] = v58;
    v59 = v171;
    v60 = v172;
    v143[-28] = v184;
    v143[-27] = v60;
    v143[-26] = v59;
    v61 = v187;
    v143[-25] = v186;
    v143[-24] = v51;
    v143[-23] = v50;
    v143[-22] = v61;
    v62 = v158;
    v143[-21] = v159;
    v143[-20] = v62;
    v63 = v183;
    v143[-19] = v191;
    v143[-18] = v63;
    v64 = v160;
    v143[-17] = v190;
    v143[-16] = v64;
    v65 = v192;
    v143[-15] = v173;
    v143[-14] = v65;
    v66 = v161;
    v67 = v162;
    v143[-13] = v176;
    v143[-12] = v67;
    v143[-11] = v66;
    v68 = v155;
    v143[-10] = v156;
    v143[-9] = v68;
    v69 = v174;
    v143[-8] = v175;
    v143[-7] = v69;
    v70 = v177;
    v143[-6] = v178;
    v143[-5] = v70;
    v72 = v163;
    v71 = v164;
    v143[-4] = v166;
    v143[-3] = v72;
    v143[-2] = v71;
    sub_1E689D740();
    sub_1E68B1B60();
    v73 = v150;
    v74 = swift_getWitnessTable();
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v43, v73, v74);
    v75 = *(v143[0] + 8);
    v75(v43, v73);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v46, v73, v74);
    v76 = swift_getWitnessTable();
    v77 = sub_1E673F530(&qword_1EE2EA640, &qword_1ED09A020);
    v194 = v76;
    v195 = v77;
    swift_getWitnessTable();
    v78 = v151;
    sub_1E6744CC0(v43, v73);
    v75(v43, v73);
    v75(v46, v73);
  }

  else
  {
    v79 = sub_1E68B2E60();
    MEMORY[0x1EEE9AC00](v79);
    v80 = &v143[-40];
    v81 = v188;
    v143[-32] = v170;
    v143[-31] = v81;
    v82 = v193;
    v143[-30] = v185;
    v143[-29] = v82;
    v83 = v171;
    v84 = v172;
    v143[-28] = v184;
    v143[-27] = v84;
    v143[-26] = v83;
    v85 = v187;
    v143[-25] = v186;
    v143[-24] = v51;
    v143[-23] = v50;
    v143[-22] = v85;
    v86 = v158;
    v143[-21] = v159;
    v143[-20] = v86;
    v87 = v183;
    v143[-19] = v191;
    v143[-18] = v87;
    v88 = v160;
    v143[-17] = v190;
    v143[-16] = v88;
    v89 = v192;
    v143[-15] = v173;
    v143[-14] = v89;
    v90 = v161;
    v91 = v162;
    v143[-13] = v176;
    v143[-12] = v91;
    v93 = v155;
    v92 = v156;
    v143[-11] = v90;
    v143[-10] = v92;
    v95 = v174;
    v94 = v175;
    v143[-9] = v93;
    v143[-8] = v94;
    v96 = v177;
    v97 = v178;
    v143[-7] = v95;
    v143[-6] = v97;
    v143[-5] = v96;
    v99 = v163;
    v98 = v164;
    v143[-4] = v166;
    v143[-3] = v99;
    v143[-2] = v98;
    v100 = v168;
    v101 = v189;
    v80[2] = v168;
    v80[3] = v101;
    v103 = v181;
    v102 = v182;
    v80[4] = v182;
    v80[5] = v103;
    v105 = v179;
    v104 = v180;
    v80[6] = v180;
    v80[7] = v105;
    v106 = sub_1E68B2CD0();
    v149 = v143;
    MEMORY[0x1EEE9AC00](v106);
    v107 = &v143[-40];
    v107[2] = v100;
    v107[3] = v101;
    v107[4] = v102;
    v107[5] = v103;
    v107[6] = v104;
    v107[7] = v105;
    v108 = v188;
    v143[-32] = v170;
    v143[-31] = v108;
    v109 = v193;
    v143[-30] = v185;
    v143[-29] = v109;
    v110 = v171;
    v111 = v172;
    v143[-28] = v184;
    v143[-27] = v111;
    v143[-26] = v110;
    v112 = v169;
    v143[-25] = v186;
    v143[-24] = v112;
    v113 = v187;
    v143[-23] = v157;
    v143[-22] = v113;
    v114 = v158;
    v143[-21] = v159;
    v143[-20] = v114;
    v115 = v183;
    v143[-19] = v191;
    v143[-18] = v115;
    v116 = v160;
    v143[-17] = v190;
    v143[-16] = v116;
    v117 = v192;
    v143[-15] = v173;
    v143[-14] = v117;
    v118 = v161;
    v119 = v162;
    v143[-13] = v176;
    v143[-12] = v119;
    v143[-11] = v118;
    v143[-10] = v92;
    v121 = v174;
    v120 = v175;
    v143[-9] = v93;
    v143[-8] = v120;
    v122 = v177;
    v123 = v178;
    v143[-7] = v121;
    v143[-6] = v123;
    v143[-5] = v122;
    v125 = v163;
    v124 = v164;
    v143[-4] = v166;
    v143[-3] = v125;
    v143[-2] = v124;
    sub_1E68B2E80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A028);
    v126 = v167;
    v127 = swift_getWitnessTable();
    sub_1E673F530(&qword_1ED09A030, &qword_1ED09A028);
    v128 = v146;
    v129 = v148;
    sub_1E68B2740();
    (*(v144 + 8))(v129, v126);
    v130 = sub_1E673F530(&qword_1EE2EA640, &qword_1ED09A020);
    v200 = v127;
    v201 = v130;
    v131 = WitnessTable;
    v132 = swift_getWitnessTable();
    v133 = v145;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v128, v131, v132);
    v134 = *(v147 + 8);
    v134(v128, v131);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v133, v131, v132);
    v135 = v150;
    swift_getWitnessTable();
    v78 = v151;
    sub_1E6744DB8(v128, v135, v131);
    v134(v128, v131);
    v134(v133, v131);
  }

  v136 = swift_getWitnessTable();
  v137 = swift_getWitnessTable();
  v138 = sub_1E673F530(&qword_1EE2EA640, &qword_1ED09A020);
  v198 = v137;
  v199 = v138;
  v139 = swift_getWitnessTable();
  v196 = v136;
  v197 = v139;
  v140 = v154;
  v141 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v78, v140, v141);
  return (*(v153 + 8))(v78, v140);
}

uint64_t sub_1E68A1974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v154 = a8;
  v174 = a7;
  v164 = a5;
  v165 = a6;
  v151 = a4;
  v168 = a3;
  v170 = a2;
  v135 = a1;
  v136 = a9;
  v148 = a31;
  v144 = a29;
  v153 = a28;
  v157 = a27;
  v155 = a26;
  v142 = a25;
  v163 = a24;
  v162 = a23;
  v161 = a22;
  v141 = a21;
  v140 = a20;
  v166 = a17;
  v147 = a15;
  v175 = a13;
  v169 = a12;
  v160 = a11;
  v167 = a10;
  v195 = a2;
  v196 = a3;
  v197 = a4;
  v198 = a5;
  v199 = a6;
  v200 = a7;
  v201 = a8;
  v202 = a10;
  v203 = a11;
  v204 = a12;
  v205 = a13;
  v206 = a14;
  v152 = a14;
  v207 = a15;
  v208 = a16;
  v158 = a16;
  v209 = a17;
  v210 = a18;
  v211 = a19;
  v172 = a19;
  v212 = a20;
  v213 = a21;
  v214 = a22;
  v215 = a23;
  v216 = a24;
  v217 = a25;
  v218 = a26;
  v219 = a27;
  v220 = a28;
  v221 = a29;
  v222 = a30;
  v143 = a32;
  v223 = a31;
  v224 = a32;
  v159 = a33;
  v156 = a34;
  v225 = a33;
  v226 = a34;
  v173 = a36;
  v227 = a35;
  v171 = a35;
  v228 = a36;
  v145 = a38;
  v146 = a37;
  v229 = a37;
  v230 = a38;
  v133 = type metadata accessor for CanvasContainerView();
  v131 = *(v133 - 8);
  v132 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v130 = v126 - v38;
  v39 = v170;
  v195 = v170;
  v196 = v168;
  v197 = v174;
  v198 = a12;
  v199 = a13;
  v200 = a16;
  v139 = a18;
  v201 = a18;
  v202 = a14;
  v203 = a19;
  v204 = a20;
  v205 = a21;
  v206 = a25;
  v207 = a29;
  v129 = a30;
  v208 = a30;
  v209 = a31;
  v210 = a32;
  v211 = a35;
  v212 = a37;
  v213 = a33;
  v214 = a38;
  v134 = type metadata accessor for CanvasSectionDescriptor();
  swift_getTupleTypeMetadata2();
  v128 = sub_1E68B33B0();
  v127 = sub_1E68B2220();
  v195 = v39;
  v40 = v168;
  v41 = v169;
  v196 = v168;
  v197 = v174;
  v198 = v169;
  v199 = v175;
  v200 = v172;
  v201 = a20;
  v202 = a21;
  v203 = a25;
  v204 = a29;
  v205 = a30;
  v206 = v148;
  v207 = a32;
  v208 = a38;
  v149 = type metadata accessor for CanvasItemDescriptor();
  WitnessTable = swift_getWitnessTable();
  v195 = v170;
  v42 = v160;
  v196 = v160;
  v197 = v40;
  v43 = v151;
  v198 = v151;
  v45 = v164;
  v44 = v165;
  v199 = v164;
  v200 = v165;
  v46 = v174;
  v47 = v175;
  v201 = v174;
  v48 = v167;
  v202 = v167;
  v203 = v41;
  v204 = v175;
  v205 = v139;
  v206 = v158;
  v49 = v166;
  v207 = v166;
  v208 = v172;
  v209 = v149;
  v50 = v153;
  v210 = v153;
  v211 = v161;
  v212 = v162;
  v213 = v163;
  v214 = v157;
  v215 = v146;
  v216 = v171;
  v217 = v173;
  v218 = WitnessTable;
  v138 = type metadata accessor for CarouselView();
  v195 = v170;
  v196 = v42;
  v197 = v168;
  v198 = v43;
  v199 = v45;
  v200 = v44;
  v201 = v46;
  v51 = v154;
  v202 = v154;
  v203 = v48;
  v204 = v169;
  v205 = v47;
  v206 = v152;
  v52 = v147;
  v207 = v147;
  v53 = v157;
  v208 = v158;
  v209 = v49;
  v54 = v172;
  v210 = v172;
  v211 = v149;
  v212 = v50;
  v56 = v161;
  v55 = v162;
  v213 = v161;
  v214 = v162;
  v57 = v163;
  v215 = v163;
  v59 = v155;
  v58 = v156;
  v216 = v155;
  v217 = v157;
  v218 = v159;
  v219 = v156;
  v220 = v171;
  v221 = v173;
  v222 = WitnessTable;
  v137 = type metadata accessor for HorizontalGridView();
  v195 = v170;
  v196 = v160;
  v197 = v168;
  v198 = v151;
  v199 = v164;
  v200 = v165;
  v201 = v174;
  v202 = v51;
  v203 = v167;
  v204 = v169;
  v205 = v175;
  v206 = v152;
  v207 = v52;
  v208 = v158;
  v209 = v166;
  v210 = v54;
  v60 = v149;
  v211 = v149;
  v212 = v153;
  v213 = v56;
  v214 = v55;
  v215 = v57;
  v216 = v59;
  v217 = v53;
  v218 = v159;
  v219 = v58;
  v220 = v171;
  v221 = v173;
  v222 = WitnessTable;
  v126[3] = type metadata accessor for VerticalGridView();
  v126[4] = sub_1E68B2220();
  v126[2] = sub_1E68B2220();
  v62 = v169;
  v61 = v170;
  v195 = v170;
  v196 = v160;
  v63 = v168;
  v197 = v168;
  v64 = v151;
  v65 = v152;
  v198 = v151;
  v199 = v164;
  v200 = v165;
  v201 = v174;
  v202 = v154;
  v203 = v167;
  v204 = v169;
  v205 = v175;
  v206 = v152;
  v66 = v147;
  v207 = v147;
  v68 = v158;
  v67 = v159;
  v208 = v158;
  v209 = v166;
  v210 = v172;
  v211 = v60;
  v69 = v153;
  v212 = v153;
  v213 = v161;
  v214 = v162;
  v215 = v163;
  v216 = v155;
  v217 = v157;
  v218 = v159;
  v219 = v156;
  v220 = v171;
  v221 = v173;
  v222 = WitnessTable;
  v126[1] = type metadata accessor for ListView();
  v195 = v61;
  v196 = v160;
  v197 = v63;
  v198 = v64;
  v199 = v164;
  v200 = v165;
  v201 = v174;
  v202 = v154;
  v203 = v167;
  v204 = v62;
  v205 = v175;
  v206 = v65;
  v207 = v66;
  v208 = v68;
  v209 = v166;
  v210 = v172;
  v211 = v149;
  v212 = v69;
  v213 = v161;
  v214 = v162;
  v215 = v163;
  v216 = v155;
  v70 = v157;
  v217 = v157;
  v218 = v67;
  v219 = v156;
  v220 = v171;
  v221 = v173;
  v222 = WitnessTable;
  type metadata accessor for OrthogonalView();
  sub_1E68B2220();
  v149 = sub_1E68B2220();
  WitnessTable = sub_1E68B2220();
  v71 = sub_1E68B2220();
  v193 = v70;
  v72 = v70;
  v194 = MEMORY[0x1E6981E60];
  v127 = swift_getWitnessTable();
  v73 = swift_getWitnessTable();
  v74 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v191 = v74;
  v192 = v75;
  v76 = swift_getWitnessTable();
  v189 = v73;
  v190 = v76;
  v77 = swift_getWitnessTable();
  v78 = swift_getWitnessTable();
  v79 = swift_getWitnessTable();
  v187 = v78;
  v188 = v79;
  v80 = swift_getWitnessTable();
  v185 = v77;
  v186 = v80;
  v183 = swift_getWitnessTable();
  v184 = v72;
  v81 = swift_getWitnessTable();
  v181 = v127;
  v182 = v81;
  v82 = swift_getWitnessTable();
  v195 = v71;
  v196 = v82;
  swift_getOpaqueTypeMetadata2();
  v83 = sub_1E68B2220();
  v195 = v71;
  v196 = v82;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v180 = v82;
  WitnessTable = v83;
  v149 = swift_getWitnessTable();
  v195 = v83;
  v196 = v149;
  v138 = MEMORY[0x1E699DCA0];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8);
  v84 = sub_1E68B1E40();
  v137 = v84;
  v85 = v128;
  v86 = swift_getWitnessTable();
  v195 = v85;
  v196 = MEMORY[0x1E69E6158];
  v197 = v84;
  v198 = v86;
  v199 = MEMORY[0x1E69E6168];
  v87 = sub_1E68B2D40();
  v128 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v89 = v126 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x1EEE9AC00](v90);
  v93 = v126 - v92;
  v94 = v130;
  v95 = v131;
  v96 = v133;
  (*(v131 + 16))(v130, v91);
  v97 = (*(v95 + 80) + 304) & ~*(v95 + 80);
  v98 = swift_allocObject();
  v99 = v168;
  *(v98 + 2) = v170;
  *(v98 + 3) = v99;
  v100 = v164;
  v101 = v165;
  *(v98 + 4) = v151;
  *(v98 + 5) = v100;
  v102 = v174;
  *(v98 + 6) = v101;
  *(v98 + 7) = v102;
  v103 = v167;
  *(v98 + 8) = v154;
  *(v98 + 9) = v103;
  v104 = v169;
  *(v98 + 10) = v160;
  *(v98 + 11) = v104;
  v105 = v152;
  *(v98 + 12) = v175;
  *(v98 + 13) = v105;
  v106 = v158;
  *(v98 + 14) = v147;
  *(v98 + 15) = v106;
  v107 = v139;
  *(v98 + 16) = v166;
  *(v98 + 17) = v107;
  v108 = v140;
  v109 = v141;
  *(v98 + 18) = v172;
  *(v98 + 19) = v108;
  v110 = v161;
  v111 = v162;
  *(v98 + 20) = v109;
  *(v98 + 21) = v110;
  v112 = v163;
  *(v98 + 22) = v111;
  *(v98 + 23) = v112;
  v113 = v155;
  *(v98 + 24) = v142;
  *(v98 + 25) = v113;
  v114 = v153;
  *(v98 + 26) = v157;
  *(v98 + 27) = v114;
  v115 = v129;
  *(v98 + 28) = v144;
  *(v98 + 29) = v115;
  v116 = v143;
  *(v98 + 30) = v148;
  *(v98 + 31) = v116;
  v117 = v156;
  *(v98 + 32) = v159;
  *(v98 + 33) = v117;
  v118 = v173;
  *(v98 + 34) = v171;
  *(v98 + 35) = v118;
  v119 = v145;
  *(v98 + 36) = v146;
  *(v98 + 37) = v119;
  (*(v95 + 32))(&v98[v97], v94, v96);

  v195 = WitnessTable;
  v196 = v149;
  v120 = swift_getOpaqueTypeConformance2();
  v121 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8);
  v177 = v120;
  v178 = v121;
  v122 = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2D20();
  v176 = v122;
  v123 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v89, v87, v123);
  v124 = *(v128 + 8);
  v124(v89, v87);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v93, v87, v123);
  return (v124)(v93, v87);
}

uint64_t sub_1E68A273C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, void *a3@<X2>, double a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(void, void), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40)
{
  v303 = a8;
  v312 = a7;
  v315 = a6;
  v317 = a5;
  v295 = a3;
  v265 = a2;
  v266 = a9;
  v280 = a1;
  v285 = a31;
  v297 = a30;
  v305 = a29;
  v304 = a28;
  v288 = a27;
  v313 = a26;
  v314 = a25;
  v300 = a24;
  v290 = a23;
  v283 = a22;
  v319 = a21;
  v291 = a20;
  v298 = a19;
  v308 = a18;
  v301 = a17;
  v307 = a16;
  v311 = a15;
  v306 = a14;
  v310 = a13;
  v302 = a11;
  v318 = a10;
  v340 = a4;
  v341 = a5;
  v342 = a6;
  v343 = a7;
  v344 = a8;
  v345 = a10;
  v346 = a11;
  v347 = a12;
  v348 = a13;
  v349 = a14;
  v350 = a15;
  v351 = a16;
  v352 = a17;
  v353 = a18;
  v354 = a19;
  v355 = a20;
  v356 = a21;
  v357 = a22;
  v358 = a23;
  v359 = a24;
  v360 = a25;
  v361 = a26;
  v362 = a27;
  v363 = a28;
  v364 = a29;
  v365 = a30;
  v289 = a32;
  v366 = a31;
  v367 = a32;
  v368 = a33;
  v284 = a33;
  v369 = a34;
  v282 = a34;
  v296 = a35;
  v293 = a36;
  v370 = a35;
  v371 = a36;
  v294 = a37;
  v309 = a38;
  v372 = a37;
  v373 = a38;
  v292 = a39;
  v374 = a39;
  v375 = a40;
  v281 = a40;
  v41 = type metadata accessor for CanvasContainerView();
  v286 = *(v41 - 8);
  v287 = v41;
  v275 = *(v286 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v273 = &v245 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v272 = (&v245 - v44);
  MEMORY[0x1EEE9AC00](v45);
  v270 = &v245 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v269 = &v245 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v267 = &v245 - v50;
  v299 = a12;
  v274 = sub_1E68B2220();
  v316 = a4;
  v340 = a4;
  v51 = v317;
  v341 = v317;
  v52 = v318;
  v342 = v318;
  v53 = v306;
  v343 = v306;
  v54 = v311;
  v344 = v311;
  v345 = v319;
  v346 = v283;
  v347 = v290;
  v348 = v288;
  v349 = v285;
  v350 = v289;
  v351 = a33;
  v352 = a34;
  v353 = a40;
  v55 = type metadata accessor for CanvasItemDescriptor();
  v278 = v55;
  WitnessTable = swift_getWitnessTable();
  v340 = a4;
  v341 = v310;
  v342 = v51;
  v56 = v315;
  v343 = v315;
  v57 = v312;
  v344 = v312;
  v58 = v303;
  v345 = v303;
  v346 = v52;
  v347 = a12;
  v348 = v53;
  v59 = v54;
  v349 = v54;
  v350 = v291;
  v60 = v308;
  v351 = v308;
  v352 = v298;
  v61 = v319;
  v353 = v319;
  v354 = v55;
  v355 = v297;
  v62 = v300;
  v356 = v300;
  v357 = v314;
  v358 = v313;
  v359 = v305;
  v360 = v292;
  v361 = v294;
  v362 = v309;
  v363 = WitnessTable;
  v277 = type metadata accessor for CarouselView();
  v340 = v316;
  v341 = v310;
  v342 = v317;
  v343 = v56;
  v344 = v57;
  v345 = v58;
  v346 = v52;
  v347 = v302;
  v63 = v298;
  v348 = v299;
  v349 = v53;
  v350 = v59;
  v64 = v307;
  v351 = v307;
  v352 = v301;
  v353 = v60;
  v354 = v298;
  v355 = v61;
  v356 = v278;
  v66 = v296;
  v65 = v297;
  v357 = v297;
  v358 = v62;
  v67 = v314;
  v359 = v314;
  v68 = v313;
  v360 = v313;
  v70 = v304;
  v69 = v305;
  v361 = v304;
  v362 = v305;
  v363 = v296;
  v71 = v294;
  v364 = v293;
  v365 = v294;
  v366 = v309;
  v367 = WitnessTable;
  v276 = type metadata accessor for HorizontalGridView();
  v340 = v316;
  v341 = v310;
  v342 = v317;
  v343 = v315;
  v344 = v312;
  v345 = v303;
  v346 = v318;
  v347 = v302;
  v348 = v299;
  v349 = v306;
  v350 = v311;
  v351 = v64;
  v352 = v301;
  v353 = v308;
  v354 = v63;
  v355 = v319;
  v356 = v278;
  v357 = v65;
  v358 = v300;
  v359 = v67;
  v360 = v68;
  v361 = v70;
  v362 = v69;
  v363 = v66;
  v72 = v293;
  v364 = v293;
  v365 = v71;
  v366 = v309;
  v367 = WitnessTable;
  v262 = type metadata accessor for VerticalGridView();
  v263 = sub_1E68B2220();
  v261 = sub_1E68B2220();
  v73 = v316;
  v340 = v316;
  v74 = v310;
  v341 = v310;
  v342 = v317;
  v343 = v315;
  v344 = v312;
  v76 = v302;
  v75 = v303;
  v345 = v303;
  v346 = v318;
  v347 = v302;
  v78 = v299;
  v77 = v300;
  v348 = v299;
  v349 = v306;
  v350 = v311;
  v351 = v307;
  v79 = v301;
  v352 = v301;
  v353 = v308;
  v354 = v298;
  v355 = v319;
  v356 = v278;
  v357 = v297;
  v358 = v300;
  v359 = v314;
  v360 = v313;
  v361 = v304;
  v362 = v305;
  v363 = v296;
  v364 = v72;
  v365 = v71;
  v80 = v309;
  v366 = v309;
  v367 = WitnessTable;
  v260 = type metadata accessor for ListView();
  v340 = v73;
  v341 = v74;
  v342 = v317;
  v343 = v315;
  v344 = v312;
  v345 = v75;
  v346 = v318;
  v347 = v76;
  v348 = v78;
  v349 = v306;
  v350 = v311;
  v351 = v307;
  v352 = v79;
  v353 = v308;
  v354 = v298;
  v355 = v319;
  v356 = v278;
  v357 = v297;
  v358 = v77;
  v359 = v314;
  v360 = v313;
  v81 = v305;
  v361 = v304;
  v362 = v305;
  v363 = v296;
  v364 = v293;
  v365 = v71;
  v366 = v80;
  v367 = WitnessTable;
  type metadata accessor for OrthogonalView();
  sub_1E68B2220();
  sub_1E68B2220();
  WitnessTable = sub_1E68B2220();
  v268 = sub_1E68B2220();
  v264 = *(v268 - 8);
  MEMORY[0x1EEE9AC00](v268);
  v271 = &v245 - v82;
  v338 = v81;
  v339 = MEMORY[0x1E6981E60];
  v278 = swift_getWitnessTable();
  v83 = swift_getWitnessTable();
  v84 = swift_getWitnessTable();
  v85 = swift_getWitnessTable();
  v336 = v84;
  v337 = v85;
  v86 = swift_getWitnessTable();
  v334 = v83;
  v335 = v86;
  v87 = swift_getWitnessTable();
  v88 = swift_getWitnessTable();
  v89 = swift_getWitnessTable();
  v332 = v88;
  v333 = v89;
  v90 = swift_getWitnessTable();
  v330 = v87;
  v331 = v90;
  v328 = swift_getWitnessTable();
  v91 = v305;
  v329 = v305;
  v92 = swift_getWitnessTable();
  v326 = v278;
  v327 = v92;
  v93 = v268;
  v94 = swift_getWitnessTable();
  v340 = *&v93;
  v341 = v94;
  v95 = v94;
  swift_getOpaqueTypeMetadata2();
  *&v96 = COERCE_DOUBLE(sub_1E68B2220());
  v256 = v96;
  v263 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v257 = &v245 - v97;
  v340 = *&v93;
  v253 = v95;
  v341 = v95;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v325 = v95;
  v254 = swift_getWitnessTable();
  v340 = *&v96;
  v341 = v254;
  v259 = MEMORY[0x1E699DCA0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v260 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v251 = &v245 - v98;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8);
  v99 = sub_1E68B1E40();
  v100 = *(v99 - 8);
  v261 = v99;
  v262 = v100;
  MEMORY[0x1EEE9AC00](v99);
  v252 = &v245 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = MEMORY[0x1EEE9AC00](v102);
  v258 = &v245 - v104;
  v105 = v286;
  v250 = *(v287 + 336);
  v274 = *(v286 + 16);
  WitnessTable = v286 + 16;
  v106 = v287;
  v274(v267, v295, v103);
  v107 = (*(v105 + 80) + 304) & ~*(v105 + 80);
  v278 = *(v105 + 80);
  v249 = v107 + v275;
  v108 = v107;
  v275 = (v107 + v275 + 7) & 0xFFFFFFFFFFFFFFF8;
  v276 = v107;
  v109 = swift_allocObject();
  v110 = v317;
  v109[2] = v316;
  *(v109 + 3) = v110;
  v111 = v312;
  *(v109 + 4) = v315;
  *(v109 + 5) = v111;
  v112 = v318;
  *(v109 + 6) = v303;
  *(v109 + 7) = v112;
  v113 = v299;
  *(v109 + 8) = v302;
  *(v109 + 9) = v113;
  v114 = v306;
  *(v109 + 10) = v310;
  *(v109 + 11) = v114;
  v115 = v307;
  *(v109 + 12) = v311;
  *(v109 + 13) = v115;
  v116 = v308;
  *(v109 + 14) = v301;
  *(v109 + 15) = v116;
  v118 = v290;
  v117 = v291;
  *(v109 + 16) = v298;
  *(v109 + 17) = v117;
  v119 = v283;
  *(v109 + 18) = v319;
  *(v109 + 19) = v119;
  v120 = v300;
  *(v109 + 20) = v118;
  *(v109 + 21) = v120;
  v121 = v313;
  *(v109 + 22) = v314;
  *(v109 + 23) = v121;
  v122 = v304;
  *(v109 + 24) = v288;
  *(v109 + 25) = v122;
  v123 = v297;
  *(v109 + 26) = v91;
  *(v109 + 27) = v123;
  v124 = v285;
  v125 = v289;
  *(v109 + 28) = v285;
  *(v109 + 29) = v125;
  v126 = v282;
  *(v109 + 30) = v284;
  *(v109 + 31) = v126;
  v128 = v293;
  v127 = v294;
  *(v109 + 32) = v296;
  *(v109 + 33) = v128;
  *(v109 + 34) = v127;
  v129 = v292;
  *(v109 + 35) = v309;
  *(v109 + 36) = v129;
  *(v109 + 37) = v281;
  v130 = *(v105 + 32);
  v286 = v105 + 32;
  v277 = v130;
  v131 = v109 + v108;
  v132 = v106;
  v130(v131, v267, v106);
  v133 = v280;
  v134 = v274;
  *(v109 + v275) = v280;
  v134(v269, v295, v132);
  v135 = swift_allocObject();
  v135[2] = v316;
  *(v135 + 3) = v110;
  v136 = v312;
  *(v135 + 4) = v315;
  *(v135 + 5) = v136;
  v137 = v318;
  *(v135 + 6) = v303;
  *(v135 + 7) = v137;
  v138 = v299;
  *(v135 + 8) = v302;
  *(v135 + 9) = v138;
  *(v135 + 10) = v310;
  *(v135 + 11) = v114;
  v139 = v307;
  *(v135 + 12) = v311;
  *(v135 + 13) = v139;
  v140 = v308;
  *(v135 + 14) = v301;
  *(v135 + 15) = v140;
  v141 = v291;
  *(v135 + 16) = v298;
  *(v135 + 17) = v141;
  *(v135 + 18) = v319;
  *(v135 + 19) = v119;
  v142 = v300;
  *(v135 + 20) = v118;
  *(v135 + 21) = v142;
  v143 = v313;
  *(v135 + 22) = v314;
  *(v135 + 23) = v143;
  v144 = v288;
  v145 = v304;
  v146 = v305;
  *(v135 + 24) = v288;
  *(v135 + 25) = v145;
  v147 = v297;
  *(v135 + 26) = v146;
  *(v135 + 27) = v147;
  *(v135 + 28) = v124;
  v148 = v289;
  v149 = v284;
  *(v135 + 29) = v289;
  *(v135 + 30) = v149;
  v150 = v281;
  v151 = v296;
  *(v135 + 31) = v282;
  *(v135 + 32) = v151;
  v153 = v293;
  v152 = v294;
  *(v135 + 33) = v293;
  *(v135 + 34) = v152;
  v154 = v292;
  *(v135 + 35) = v309;
  *(v135 + 36) = v154;
  *(v135 + 37) = v150;
  v155 = v287;
  v277(v135 + v276, v269, v287);
  *(v135 + v275) = v133;
  v156 = v274;
  (v274)(v270, v295, v155);
  v157 = swift_allocObject();
  v158 = v317;
  v157[2] = v316;
  *(v157 + 3) = v158;
  v159 = v312;
  *(v157 + 4) = v315;
  *(v157 + 5) = v159;
  v160 = v318;
  *(v157 + 6) = v303;
  *(v157 + 7) = v160;
  v161 = v299;
  *(v157 + 8) = v302;
  *(v157 + 9) = v161;
  v162 = v306;
  *(v157 + 10) = v310;
  *(v157 + 11) = v162;
  v163 = v307;
  *(v157 + 12) = v311;
  *(v157 + 13) = v163;
  v164 = v308;
  *(v157 + 14) = v301;
  *(v157 + 15) = v164;
  *(v157 + 16) = v298;
  *(v157 + 17) = v141;
  v165 = v283;
  *(v157 + 18) = v319;
  *(v157 + 19) = v165;
  v166 = v300;
  *(v157 + 20) = v290;
  *(v157 + 21) = v166;
  v167 = v313;
  *(v157 + 22) = v314;
  *(v157 + 23) = v167;
  v169 = v304;
  v168 = v305;
  *(v157 + 24) = v144;
  *(v157 + 25) = v169;
  v170 = v297;
  *(v157 + 26) = v168;
  *(v157 + 27) = v170;
  v171 = v284;
  *(v157 + 28) = v285;
  *(v157 + 29) = v148;
  v172 = v282;
  *(v157 + 30) = v171;
  *(v157 + 31) = v172;
  *(v157 + 32) = v296;
  *(v157 + 33) = v153;
  v173 = v309;
  *(v157 + 34) = v294;
  *(v157 + 35) = v173;
  *(v157 + 36) = v292;
  *(v157 + 37) = v150;
  v277(v157 + v276, v270, v287);
  v174 = v295[3];
  v175 = v295[4];
  v176 = v295[6];
  v248 = v295[5];
  v249 = v174;
  v269 = v176;
  v270 = v175;
  v177 = v295[8];
  v247 = v295[7];
  v267 = v177;
  v156(v272);
  v178 = v275;
  v179 = swift_allocObject();
  v180 = v317;
  v179[2] = v316;
  *(v179 + 3) = v180;
  v181 = v312;
  *(v179 + 4) = v315;
  *(v179 + 5) = v181;
  v182 = v318;
  *(v179 + 6) = v303;
  *(v179 + 7) = v182;
  v184 = v298;
  v183 = v299;
  *(v179 + 8) = v302;
  *(v179 + 9) = v183;
  v185 = v306;
  *(v179 + 10) = v310;
  *(v179 + 11) = v185;
  v186 = v307;
  v187 = v308;
  *(v179 + 12) = v311;
  *(v179 + 13) = v186;
  *(v179 + 14) = v301;
  *(v179 + 15) = v187;
  v188 = v291;
  *(v179 + 16) = v184;
  *(v179 + 17) = v188;
  v189 = v283;
  *(v179 + 18) = v319;
  *(v179 + 19) = v189;
  v190 = v300;
  *(v179 + 20) = v290;
  *(v179 + 21) = v190;
  v191 = v313;
  *(v179 + 22) = v314;
  *(v179 + 23) = v191;
  v193 = v304;
  v192 = v305;
  *(v179 + 24) = v288;
  *(v179 + 25) = v193;
  *(v179 + 26) = v192;
  *(v179 + 27) = v170;
  v194 = v289;
  *(v179 + 28) = v285;
  *(v179 + 29) = v194;
  *(v179 + 30) = v284;
  *(v179 + 31) = v172;
  v195 = v293;
  v196 = v294;
  *(v179 + 32) = v296;
  *(v179 + 33) = v195;
  v197 = v309;
  *(v179 + 34) = v196;
  *(v179 + 35) = v197;
  v198 = v292;
  v199 = v281;
  *(v179 + 36) = v292;
  *(v179 + 37) = v199;
  v277(v179 + v276, v272, v287);
  *(v179 + v178) = v280;
  v200 = v295[10];
  v246 = v295[9];
  v272 = v200;
  (v274)(v273);
  v201 = swift_allocObject();
  v202 = v317;
  v201[2] = v316;
  *(v201 + 3) = v202;
  v203 = v312;
  *(v201 + 4) = v315;
  *(v201 + 5) = v203;
  v204 = v318;
  *(v201 + 6) = v303;
  *(v201 + 7) = v204;
  v205 = v299;
  *(v201 + 8) = v302;
  *(v201 + 9) = v205;
  v207 = v306;
  v206 = v307;
  *(v201 + 10) = v310;
  *(v201 + 11) = v207;
  v208 = v311;
  *(v201 + 12) = v311;
  *(v201 + 13) = v206;
  *(v201 + 14) = v301;
  *(v201 + 15) = v187;
  v209 = v291;
  *(v201 + 16) = v184;
  *(v201 + 17) = v209;
  v210 = v283;
  *(v201 + 18) = v319;
  *(v201 + 19) = v210;
  v211 = v300;
  *(v201 + 20) = v290;
  *(v201 + 21) = v211;
  v212 = v313;
  *(v201 + 22) = v314;
  *(v201 + 23) = v212;
  v213 = v304;
  v214 = v305;
  *(v201 + 24) = v288;
  *(v201 + 25) = v213;
  v215 = v297;
  *(v201 + 26) = v214;
  *(v201 + 27) = v215;
  v216 = v289;
  *(v201 + 28) = v285;
  *(v201 + 29) = v216;
  v217 = v282;
  *(v201 + 30) = v284;
  *(v201 + 31) = v217;
  v218 = v293;
  v219 = v294;
  *(v201 + 32) = v296;
  *(v201 + 33) = v218;
  v220 = v309;
  *(v201 + 34) = v219;
  *(v201 + 35) = v220;
  v221 = v281;
  *(v201 + 36) = v198;
  *(v201 + 37) = v221;
  v222 = v287;
  v277(v201 + v276, v273, v287);
  *(v201 + v275) = v280;
  v223 = v295[14];
  v286 = v295[13];
  WitnessTable = v295 + *(v222 + 356);

  v224 = v272;

  v278 = v223;

  v340 = v316;
  v341 = v317;
  v342 = v318;
  v343 = v306;
  v344 = v208;
  v345 = v308;
  v346 = v209;
  v347 = v307;
  v348 = v319;
  v349 = v283;
  v350 = v290;
  v351 = v288;
  v352 = v285;
  v353 = v289;
  v354 = v284;
  v355 = v282;
  v356 = v294;
  v357 = v292;
  v358 = v296;
  v359 = v281;
  v225 = type metadata accessor for CanvasSectionDescriptor();
  v294 = v225;
  v296 = swift_getWitnessTable();
  v244 = v224;
  v226 = v265;
  sub_1E67EB0B4(v295 + v250, sub_1E68AB808, v109, sub_1E68AB80C, v135, sub_1E68AB810, v157, v249, v271, v270, v248, v269, v247, v267, sub_1E68AB800, v179, v246, v244, sub_1E68AB804, v201, v286, v223, WitnessTable, v225, v298, v315, v312, v303, v310, v302, v299, v301, v296, v309, v300, v314, v313, v297, v304, v305, v293);

  v227 = v257;
  v228 = v226;
  v229 = v268;
  v230 = v271;
  sub_1E6814ED8(v228, v280, v268, v257, v308, v291, v307, v319, v294, v253, v296);
  (*(v264 + 8))(v230, v229);
  v231 = v251;
  v232 = v256;
  v233 = v254;
  sub_1E68B2700();
  (*(v263 + 8))(v227, v232);
  swift_getKeyPath();
  v340 = sub_1E689DC74();
  v341 = v234;
  v322 = v232;
  v323 = v233;
  v235 = swift_getOpaqueTypeConformance2();
  v236 = v252;
  v237 = OpaqueTypeMetadata2;
  sub_1E68B27B0();

  (*(v260 + 8))(v231, v237);
  v238 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8);
  v320 = v235;
  v321 = v238;
  v239 = v261;
  v240 = swift_getWitnessTable();
  v241 = v258;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v236, v239, v240);
  v242 = *(v262 + 8);
  v242(v236, v239);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v241, v239, v240);
  return (v242)(v241, v239);
}

uint64_t sub_1E68A3E5C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, char *a13, char *a14, uint64_t a15, char *a16, uint64_t a17, char *a18, uint64_t a19, char *a20, char *a21, uint64_t a22, char *a23, char *a24, char *a25, char *a26, char *a27, char *a28, char *a29, char *a30, uint64_t a31, uint64_t a32, char *a33, char *a34, uint64_t a35, char *a36, char *a37, char *a38)
{
  v135 = a8;
  v170 = a7;
  v152 = a6;
  v148 = a4;
  v149 = a5;
  v166 = a2;
  v167 = a3;
  v129 = a1;
  v131 = a9;
  v154 = a26;
  v156 = a27;
  v160 = a23;
  v164 = a22;
  v150 = a11;
  v165 = a10;
  v139 = a38;
  v168 = a36;
  v146 = a37;
  v155 = a34;
  v169 = a35;
  v162 = a33;
  v138 = a32;
  v137 = a31;
  v136 = a30;
  v151 = a28;
  v147 = a29;
  v161 = a24;
  v143 = a25;
  v141 = a21;
  v140 = a20;
  v145 = a15;
  v153 = a14;
  v142 = a18;
  v157 = a17;
  v159 = a16;
  v171 = a12;
  v38 = sub_1E68B22C0();
  MEMORY[0x1EEE9AC00](v38 - 8);
  v130 = &v120 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = v166;
  v213 = v167;
  v214 = v170;
  v215 = a12;
  v216 = a13;
  v217 = a16;
  v218 = a18;
  v219 = a14;
  v220 = a19;
  v158 = a19;
  v221 = a20;
  v222 = a21;
  v223 = a25;
  v224 = a29;
  v225 = a30;
  v226 = a31;
  v227 = a32;
  v228 = a35;
  v229 = a37;
  v230 = a33;
  v231 = a38;
  type metadata accessor for CanvasSectionDescriptor();
  swift_getTupleTypeMetadata2();
  v128 = sub_1E68B33B0();
  v127 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E8);
  v126 = sub_1E68B2220();
  v41 = v166;
  v40 = v167;
  v212 = v166;
  v213 = v167;
  v42 = v170;
  v214 = v170;
  v215 = v171;
  v163 = a13;
  v216 = a13;
  v217 = a19;
  v218 = v140;
  v219 = v141;
  v220 = v143;
  v221 = v147;
  v222 = v136;
  v223 = a31;
  v224 = a32;
  v225 = a38;
  v43 = type metadata accessor for CanvasItemDescriptor();
  v144 = v43;
  WitnessTable = swift_getWitnessTable();
  v212 = v41;
  v45 = v149;
  v44 = v150;
  v213 = v150;
  v214 = v40;
  v46 = v148;
  v215 = v148;
  v216 = v149;
  v47 = v151;
  v48 = v152;
  v217 = v152;
  v218 = v42;
  v49 = v164;
  v50 = v165;
  v219 = v165;
  v220 = v171;
  v221 = a13;
  v222 = v142;
  v51 = v160;
  v223 = v159;
  v224 = v157;
  v225 = v158;
  v226 = v43;
  v227 = v151;
  v228 = v164;
  v229 = v160;
  v230 = v161;
  v52 = v156;
  v231 = v156;
  v232 = v146;
  v233 = v169;
  v234 = v168;
  v235 = WitnessTable;
  v133 = type metadata accessor for CarouselView();
  v212 = v166;
  v213 = v44;
  v214 = v167;
  v215 = v46;
  v216 = v45;
  v217 = v48;
  v218 = v170;
  v53 = v135;
  v219 = v135;
  v220 = v50;
  v221 = v171;
  v222 = v163;
  v54 = v153;
  v223 = v153;
  v55 = v145;
  v224 = v145;
  v225 = v159;
  v226 = v157;
  v227 = v158;
  v228 = v144;
  v229 = v47;
  v230 = v49;
  v231 = v51;
  v57 = v161;
  v56 = v162;
  v232 = v161;
  v58 = v154;
  v59 = v155;
  v233 = v154;
  v234 = v52;
  v235 = v162;
  v236 = v155;
  v60 = v169;
  v237 = v169;
  v238 = v168;
  v61 = WitnessTable;
  v239 = WitnessTable;
  v132 = type metadata accessor for HorizontalGridView();
  v212 = v166;
  v213 = v150;
  v214 = v167;
  v215 = v148;
  v216 = v149;
  v217 = v152;
  v218 = v170;
  v219 = v53;
  v220 = v165;
  v221 = v171;
  v222 = v163;
  v223 = v54;
  v224 = v55;
  v62 = v159;
  v225 = v159;
  v226 = v157;
  v227 = v158;
  v228 = v144;
  v229 = v151;
  v230 = v164;
  v231 = v160;
  v232 = v57;
  v233 = v58;
  v234 = v156;
  v235 = v56;
  v236 = v59;
  v237 = v60;
  v238 = v168;
  v239 = v61;
  v124 = type metadata accessor for VerticalGridView();
  v125 = sub_1E68B2220();
  v122 = sub_1E68B2220();
  v63 = v167;
  v212 = v166;
  v64 = v149;
  v65 = v150;
  v213 = v150;
  v214 = v167;
  v66 = v148;
  v215 = v148;
  v216 = v149;
  v217 = v152;
  v218 = v170;
  v67 = v135;
  v219 = v135;
  v220 = v165;
  v221 = v171;
  v222 = v163;
  v223 = v153;
  v68 = v145;
  v224 = v145;
  v225 = v62;
  v69 = v157;
  v70 = v158;
  v226 = v157;
  v227 = v158;
  v228 = v144;
  v71 = v151;
  v229 = v151;
  v230 = v164;
  v231 = v160;
  v232 = v161;
  v233 = v154;
  v234 = v156;
  v235 = v162;
  v236 = v155;
  v237 = v169;
  v238 = v168;
  v239 = WitnessTable;
  v121 = type metadata accessor for ListView();
  v212 = v166;
  v213 = v65;
  v214 = v63;
  v215 = v66;
  v216 = v64;
  v217 = v152;
  v218 = v170;
  v219 = v67;
  v220 = v165;
  v221 = v171;
  v222 = v163;
  v223 = v153;
  v224 = v68;
  v225 = v159;
  v226 = v69;
  v227 = v70;
  v228 = v144;
  v229 = v71;
  v230 = v164;
  v231 = v160;
  v232 = v161;
  v233 = v154;
  v72 = v156;
  v234 = v156;
  v235 = v162;
  v236 = v155;
  v237 = v169;
  v238 = v168;
  v239 = WitnessTable;
  type metadata accessor for OrthogonalView();
  v123 = sub_1E68B2220();
  WitnessTable = sub_1E68B2220();
  v144 = sub_1E68B2220();
  v73 = sub_1E68B2220();
  v267 = v72;
  v268 = MEMORY[0x1E6981E60];
  v74 = v72;
  v126 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v76 = swift_getWitnessTable();
  v77 = swift_getWitnessTable();
  v265 = v76;
  v266 = v77;
  v78 = swift_getWitnessTable();
  v263 = v75;
  v264 = v78;
  v79 = swift_getWitnessTable();
  v80 = swift_getWitnessTable();
  v81 = swift_getWitnessTable();
  v261 = v80;
  v262 = v81;
  v82 = swift_getWitnessTable();
  v259 = v79;
  v260 = v82;
  v257 = swift_getWitnessTable();
  v258 = v74;
  v83 = swift_getWitnessTable();
  v255 = v126;
  v256 = v83;
  v84 = swift_getWitnessTable();
  v212 = v73;
  v213 = v84;
  swift_getOpaqueTypeMetadata2();
  v85 = sub_1E68B2220();
  v212 = v73;
  v213 = v84;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v254 = v84;
  v86 = swift_getWitnessTable();
  v212 = v85;
  v213 = v86;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8);
  sub_1E68B1E40();
  v87 = sub_1E68B2220();
  v88 = v128;
  v89 = swift_getWitnessTable();
  v212 = v88;
  v213 = MEMORY[0x1E69E6158];
  v214 = v87;
  v215 = v89;
  v216 = MEMORY[0x1E69E6168];
  v90 = sub_1E68B2D40();
  v91 = sub_1E68AA77C(&qword_1EE2EA7B8, &qword_1ED0995E8);
  v212 = v85;
  v213 = v86;
  v92 = swift_getOpaqueTypeConformance2();
  v93 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8);
  v251 = v92;
  v252 = v93;
  v94 = swift_getWitnessTable();
  v249 = v91;
  v250 = v94;
  v248 = swift_getWitnessTable();
  v127 = v90;
  v126 = swift_getWitnessTable();
  v95 = sub_1E68B1B70();
  v96 = *(v95 - 8);
  v132 = v95;
  v133 = v96;
  MEMORY[0x1EEE9AC00](v95);
  v125 = &v120 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v98);
  v128 = &v120 - v99;
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  v100 = sub_1E68B2F00();
  v144 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v120 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v103);
  WitnessTable = &v120 - v104;
  v105 = v166;
  v212 = v166;
  v213 = v167;
  v214 = v148;
  v215 = v149;
  v106 = v152;
  v216 = v152;
  v217 = v170;
  v107 = v135;
  v218 = v135;
  v219 = v165;
  v220 = v150;
  v221 = v171;
  v222 = v163;
  v223 = v153;
  v224 = v145;
  v225 = v159;
  v226 = v157;
  v227 = v142;
  v228 = v158;
  v229 = v140;
  v230 = v141;
  v231 = v164;
  v232 = v160;
  v233 = v161;
  v234 = v143;
  v235 = v154;
  v236 = v156;
  v237 = v151;
  v238 = v147;
  v108 = v136;
  v239 = v136;
  v240 = v137;
  v241 = v138;
  v242 = v162;
  v243 = v155;
  v244 = v169;
  v245 = v168;
  v246 = v146;
  v247 = v139;
  v109 = type metadata accessor for CanvasContainerView();
  v110 = v129;
  sub_1E689E988(0, v109, v102);
  v121 = v100;
  v122 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v102, v100, v122);
  v123 = *(v144 + 8);
  v124 = v144 + 8;
  v123(v102, v100);
  sub_1E68B21D0();
  v172 = v105;
  v173 = v167;
  v174 = v148;
  v175 = v149;
  v176 = v106;
  v177 = v170;
  v178 = v107;
  v179 = v165;
  v180 = v150;
  v181 = v171;
  v182 = v163;
  v183 = v153;
  v184 = v145;
  v185 = v159;
  v186 = v157;
  v187 = v142;
  v188 = v158;
  v189 = v140;
  v190 = v141;
  v191 = v164;
  v192 = v160;
  v193 = v161;
  v194 = v143;
  v195 = v154;
  v196 = v156;
  v197 = v151;
  v198 = v147;
  v199 = v108;
  v200 = v137;
  v201 = v138;
  v202 = v162;
  v203 = v155;
  v204 = v169;
  v205 = v168;
  v206 = v146;
  v207 = v139;
  v208 = v110;
  sub_1E689D740();
  v111 = v125;
  sub_1E68B1B60();
  v112 = v132;
  v113 = swift_getWitnessTable();
  v114 = v128;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v111, v112, v113);
  v115 = v133;
  v116 = *(v133 + 8);
  v116(v111, v112);
  v117 = v121;
  (*(v144 + 16))(v102, WitnessTable, v121);
  v212 = v102;
  (*(v115 + 16))(v111, v114, v112);
  v213 = v111;
  v211[0] = v117;
  v211[1] = v112;
  v209 = v122;
  v210 = v113;
  sub_1E6848F14(&v212, 2uLL, v211);
  v116(v114, v112);
  v118 = v123;
  v123(WitnessTable, v117);
  v116(v111, v112);
  return v118(v102, v117);
}

uint64_t sub_1E68A4E44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v159 = a8;
  v174 = a7;
  v169 = a5;
  v170 = a6;
  v168 = a4;
  v163 = a3;
  v176 = a2;
  v140 = a1;
  v141 = a9;
  v151 = a31;
  v152 = a29;
  v157 = a28;
  v162 = a27;
  v155 = a26;
  v158 = a24;
  v167 = a23;
  v166 = a22;
  v150 = a21;
  v149 = a20;
  v148 = a18;
  v171 = a17;
  v154 = a15;
  v164 = a14;
  v179 = a13;
  v175 = a12;
  v165 = a11;
  v173 = a10;
  v201 = a2;
  v202 = a3;
  v203 = a4;
  v204 = a5;
  v205 = a6;
  v206 = a7;
  v207 = a8;
  v208 = a10;
  v209 = a11;
  v210 = a12;
  v211 = a13;
  v212 = a14;
  v213 = a15;
  v214 = a16;
  v160 = a16;
  v215 = a17;
  v216 = a18;
  v217 = a19;
  v178 = a19;
  v218 = a20;
  v219 = a21;
  v220 = a22;
  v221 = a23;
  v222 = a24;
  v223 = a25;
  v224 = a26;
  v225 = a27;
  v226 = a28;
  v227 = a29;
  v228 = a30;
  v144 = a32;
  v229 = a31;
  v230 = a32;
  v161 = a34;
  v231 = a33;
  v156 = a33;
  v232 = a34;
  v172 = a36;
  v233 = a35;
  v177 = a35;
  v234 = a36;
  v145 = a38;
  v146 = a37;
  v235 = a37;
  v236 = a38;
  v138 = type metadata accessor for CanvasContainerView();
  v136 = *(v138 - 8);
  v137 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v135 = v129 - v38;
  v201 = v176;
  v39 = v163;
  v202 = v163;
  v203 = v174;
  v204 = a12;
  v205 = a13;
  v206 = a16;
  v207 = a18;
  v208 = a14;
  v209 = a19;
  v210 = a20;
  v211 = a21;
  v133 = a25;
  v134 = a30;
  v212 = a25;
  v213 = a29;
  v214 = a30;
  v215 = a31;
  v216 = a32;
  v217 = a35;
  v218 = a37;
  v219 = a33;
  v220 = a38;
  v139 = type metadata accessor for CanvasSectionDescriptor();
  swift_getTupleTypeMetadata2();
  v132 = sub_1E68B33B0();
  v131 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E8);
  v40 = v173;
  v130 = sub_1E68B2220();
  v41 = v176;
  v201 = v176;
  v202 = v39;
  v42 = v39;
  v43 = v174;
  v44 = v175;
  v203 = v174;
  v204 = v175;
  v205 = v179;
  v206 = v178;
  v207 = v149;
  v208 = v150;
  v209 = a25;
  v210 = v152;
  v211 = a30;
  v212 = v151;
  v213 = a32;
  v214 = a38;
  v45 = type metadata accessor for CanvasItemDescriptor();
  v153 = v45;
  WitnessTable = swift_getWitnessTable();
  v201 = v41;
  v46 = v165;
  v202 = v165;
  v203 = v42;
  v48 = v168;
  v47 = v169;
  v204 = v168;
  v205 = v169;
  v49 = v170;
  v206 = v170;
  v207 = v43;
  v208 = v40;
  v209 = v44;
  v50 = v179;
  v210 = v179;
  v211 = v148;
  v51 = v160;
  v212 = v160;
  v53 = v171;
  v52 = v172;
  v213 = v171;
  v214 = v178;
  v215 = v45;
  v54 = v157;
  v216 = v157;
  v217 = v166;
  v218 = v167;
  v219 = v158;
  v220 = v162;
  v221 = v146;
  v222 = v177;
  v223 = v172;
  v224 = WitnessTable;
  v143 = type metadata accessor for CarouselView();
  v201 = v176;
  v202 = v46;
  v203 = v163;
  v204 = v48;
  v205 = v47;
  v206 = v49;
  v207 = v174;
  v55 = v159;
  v208 = v159;
  v209 = v173;
  v210 = v175;
  v211 = v50;
  v212 = v164;
  v213 = v154;
  v214 = v51;
  v215 = v53;
  v56 = v178;
  v216 = v178;
  v217 = v153;
  v218 = v54;
  v58 = v166;
  v57 = v167;
  v219 = v166;
  v220 = v167;
  v59 = v158;
  v221 = v158;
  v222 = v155;
  v60 = v161;
  v61 = v162;
  v223 = v162;
  v224 = v156;
  v225 = v161;
  v226 = v177;
  v227 = v52;
  v62 = WitnessTable;
  v228 = WitnessTable;
  v142 = type metadata accessor for HorizontalGridView();
  v201 = v176;
  v202 = v165;
  v203 = v163;
  v204 = v168;
  v205 = v169;
  v206 = v170;
  v207 = v174;
  v208 = v55;
  v209 = v173;
  v210 = v175;
  v211 = v179;
  v212 = v164;
  v213 = v154;
  v214 = v51;
  v215 = v171;
  v216 = v56;
  v217 = v153;
  v218 = v157;
  v219 = v58;
  v220 = v57;
  v221 = v59;
  v63 = v59;
  v222 = v155;
  v223 = v61;
  v224 = v156;
  v225 = v60;
  v226 = v177;
  v227 = v172;
  v228 = v62;
  v129[2] = type metadata accessor for VerticalGridView();
  v129[3] = sub_1E68B2220();
  v129[1] = sub_1E68B2220();
  v65 = v175;
  v64 = v176;
  v201 = v176;
  v66 = v164;
  v202 = v165;
  v67 = v163;
  v203 = v163;
  v204 = v168;
  v205 = v169;
  v206 = v170;
  v68 = v174;
  v207 = v174;
  v208 = v159;
  v209 = v173;
  v210 = v175;
  v211 = v179;
  v212 = v164;
  v69 = v154;
  v213 = v154;
  v214 = v160;
  v215 = v171;
  v216 = v178;
  v217 = v153;
  v70 = v156;
  v71 = v157;
  v218 = v157;
  v219 = v166;
  v220 = v167;
  v221 = v63;
  v72 = v155;
  v222 = v155;
  v223 = v162;
  v224 = v156;
  v225 = v161;
  v226 = v177;
  v227 = v172;
  v228 = WitnessTable;
  v129[0] = type metadata accessor for ListView();
  v201 = v64;
  v202 = v165;
  v203 = v67;
  v204 = v168;
  v205 = v169;
  v206 = v170;
  v207 = v68;
  v208 = v159;
  v209 = v173;
  v210 = v65;
  v211 = v179;
  v212 = v66;
  v213 = v69;
  v214 = v160;
  v215 = v171;
  v216 = v178;
  v217 = v153;
  v218 = v71;
  v219 = v166;
  v220 = v167;
  v221 = v158;
  v222 = v72;
  v73 = v162;
  v223 = v162;
  v224 = v70;
  v225 = v161;
  v226 = v177;
  v227 = v172;
  v228 = WitnessTable;
  type metadata accessor for OrthogonalView();
  sub_1E68B2220();
  WitnessTable = sub_1E68B2220();
  v153 = sub_1E68B2220();
  v74 = sub_1E68B2220();
  v199 = v73;
  v200 = MEMORY[0x1E6981E60];
  v130 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v76 = swift_getWitnessTable();
  v77 = swift_getWitnessTable();
  v197 = v76;
  v198 = v77;
  v78 = swift_getWitnessTable();
  v195 = v75;
  v196 = v78;
  v79 = swift_getWitnessTable();
  v80 = swift_getWitnessTable();
  v81 = swift_getWitnessTable();
  v193 = v80;
  v194 = v81;
  v82 = swift_getWitnessTable();
  v191 = v79;
  v192 = v82;
  v189 = swift_getWitnessTable();
  v190 = v73;
  v83 = swift_getWitnessTable();
  v187 = v130;
  v188 = v83;
  v84 = swift_getWitnessTable();
  v201 = v74;
  v202 = v84;
  swift_getOpaqueTypeMetadata2();
  v85 = sub_1E68B2220();
  v201 = v74;
  v202 = v84;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v186 = v84;
  WitnessTable = v85;
  v142 = swift_getWitnessTable();
  v201 = v85;
  v202 = v142;
  v130 = MEMORY[0x1E699DCA0];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8);
  v143 = sub_1E68B1E40();
  v86 = sub_1E68B2220();
  v131 = v86;
  v87 = v132;
  v88 = swift_getWitnessTable();
  v201 = v87;
  v202 = MEMORY[0x1E69E6158];
  v203 = v86;
  v204 = v88;
  v205 = MEMORY[0x1E69E6168];
  v89 = sub_1E68B2D40();
  v153 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v91 = v129 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = MEMORY[0x1EEE9AC00](v92);
  v95 = v129 - v94;
  v132 = *v140;
  v97 = v135;
  v96 = v136;
  v98 = v138;
  (*(v136 + 16))(v135, v93);
  v99 = (*(v96 + 80) + 304) & ~*(v96 + 80);
  v100 = swift_allocObject();
  v101 = v163;
  *(v100 + 2) = v176;
  *(v100 + 3) = v101;
  v102 = v169;
  *(v100 + 4) = v168;
  *(v100 + 5) = v102;
  v103 = v174;
  *(v100 + 6) = v170;
  *(v100 + 7) = v103;
  v104 = v173;
  *(v100 + 8) = v159;
  *(v100 + 9) = v104;
  v105 = v175;
  *(v100 + 10) = v165;
  *(v100 + 11) = v105;
  v106 = v164;
  *(v100 + 12) = v179;
  *(v100 + 13) = v106;
  v107 = v160;
  *(v100 + 14) = v154;
  *(v100 + 15) = v107;
  v108 = v148;
  *(v100 + 16) = v171;
  *(v100 + 17) = v108;
  v109 = v149;
  v110 = v150;
  *(v100 + 18) = v178;
  *(v100 + 19) = v109;
  v111 = v166;
  v112 = v167;
  *(v100 + 20) = v110;
  *(v100 + 21) = v111;
  v113 = v158;
  *(v100 + 22) = v112;
  *(v100 + 23) = v113;
  v114 = v155;
  *(v100 + 24) = v133;
  *(v100 + 25) = v114;
  v115 = v157;
  *(v100 + 26) = v162;
  *(v100 + 27) = v115;
  v116 = v134;
  *(v100 + 28) = v152;
  *(v100 + 29) = v116;
  v117 = v144;
  *(v100 + 30) = v151;
  *(v100 + 31) = v117;
  v118 = v161;
  *(v100 + 32) = v156;
  *(v100 + 33) = v118;
  v119 = v172;
  *(v100 + 34) = v177;
  *(v100 + 35) = v119;
  v120 = v145;
  *(v100 + 36) = v146;
  *(v100 + 37) = v120;
  (*(v96 + 32))(&v100[v99], v97, v98);
  v121 = sub_1E68AA77C(&qword_1EE2EA7B8, &qword_1ED0995E8);

  v201 = WitnessTable;
  v202 = v142;
  v122 = swift_getOpaqueTypeConformance2();
  v123 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8);
  v183 = v122;
  v184 = v123;
  v124 = swift_getWitnessTable();
  v181 = v121;
  v182 = v124;
  v125 = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2D20();
  v180 = v125;
  v126 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v91, v89, v126);
  v127 = *(v153 + 8);
  v127(v91, v89);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v95, v89, v126);
  return (v127)(v95, v89);
}

uint64_t sub_1E68A5C70@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, void *a3@<X2>, double a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, void (*a12)(void, void), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v349 = a8;
  v339 = a6;
  v340 = a7;
  v358 = a4;
  v325 = a3;
  v313 = a2;
  v319 = a1;
  v304 = a9;
  v338 = a29;
  v348 = a28;
  v337 = a27;
  v329 = a26;
  v347 = a25;
  v346 = a24;
  v356 = a23;
  v328 = a22;
  v327 = a21;
  v342 = a20;
  v334 = *&a19;
  v353 = a18;
  v355 = a17;
  v336 = a16;
  v350 = a15;
  v357 = a14;
  v345 = a12;
  v344 = a11;
  v335 = *(&a10 + 1);
  v354 = a10;
  v385 = a4;
  v386 = *&a5;
  v387 = a6;
  v388 = a7;
  v389 = a8;
  v390 = a10;
  v391 = a11;
  v392 = a12;
  v393 = a13;
  v343 = a13;
  v394 = a14;
  v395 = a15;
  v396 = a16;
  v397 = a17;
  v398 = a18;
  v399 = a19;
  v400 = a20;
  v401 = a21;
  v402 = a22;
  v403 = a23;
  v404 = a24;
  v405 = a25;
  v406 = a26;
  v407 = a27;
  v408 = a28;
  v409 = a29;
  v326 = a31;
  v410 = a30;
  v324 = a30;
  v411 = a31;
  v412 = a32;
  v321 = a32;
  v413 = a33;
  v323 = a33;
  v330 = a34;
  v333 = a35;
  v414 = a34;
  v415 = a35;
  v341 = a36;
  v352 = a37;
  v416 = a36;
  v417 = a37;
  v332 = a38;
  v418 = a38;
  v419 = a39;
  v320 = a39;
  v331 = type metadata accessor for CanvasContainerView();
  v322 = *(v331 - 8);
  MEMORY[0x1EEE9AC00](v331);
  v295 = &v278 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v312 = (&v278 - v42);
  MEMORY[0x1EEE9AC00](v43);
  v311 = &v278 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v291 = &v278 - v46;
  v280 = v47;
  MEMORY[0x1EEE9AC00](v48);
  v285 = &v278 - v49;
  v50 = v344;
  v314 = sub_1E68B2220();
  v51 = v358;
  v385 = v358;
  v52 = a5;
  v351 = a5;
  v386 = *&a5;
  v53 = v354;
  v387 = v354;
  v388 = a13;
  v54 = v357;
  v389 = v357;
  *&v390 = v342;
  *(&v390 + 1) = v327;
  v391 = v328;
  v392 = v329;
  v393 = a30;
  v394 = v326;
  v395 = a32;
  v396 = a33;
  v397 = a39;
  v55 = type metadata accessor for CanvasItemDescriptor();
  v318 = v55;
  WitnessTable = swift_getWitnessTable();
  v385 = v51;
  v56 = v345;
  v386 = *&v345;
  v387 = v52;
  v58 = v339;
  v57 = v340;
  v388 = v339;
  v389 = v340;
  v59 = v349;
  *&v390 = v349;
  *(&v390 + 1) = v53;
  v391 = v50;
  v60 = v343;
  v392 = v343;
  v393 = v54;
  v394 = *&v334;
  v395 = v355;
  v61 = v353;
  v396 = v353;
  v397 = v342;
  v398 = v55;
  v62 = v338;
  v399 = v338;
  v400 = v356;
  v401 = v346;
  v402 = v347;
  v63 = v348;
  v403 = v348;
  v404 = v332;
  v405 = v341;
  v406 = v352;
  v407 = WitnessTable;
  v317 = type metadata accessor for CarouselView();
  v385 = v358;
  v386 = *&v56;
  v387 = v351;
  v388 = v58;
  v389 = v57;
  *&v390 = v59;
  *(&v390 + 1) = v53;
  v65 = v335;
  v64 = v336;
  v391 = v335;
  v66 = v344;
  v392 = v344;
  v393 = v60;
  v394 = v357;
  v67 = v350;
  v395 = v350;
  v396 = v336;
  v397 = v355;
  v398 = v61;
  v399 = v342;
  v400 = v318;
  v401 = v62;
  v402 = v356;
  v403 = v346;
  v404 = v347;
  v405 = v337;
  v406 = v63;
  v68 = v330;
  v407 = v330;
  v69 = v333;
  v408 = v333;
  v409 = v341;
  v70 = v352;
  v410 = v352;
  v71 = WitnessTable;
  v411 = WitnessTable;
  v316 = type metadata accessor for HorizontalGridView();
  v385 = v358;
  v386 = *&v345;
  v387 = v351;
  v388 = v339;
  v389 = v340;
  *&v390 = v349;
  *(&v390 + 1) = v354;
  v391 = v65;
  v392 = v66;
  v393 = v343;
  v394 = v357;
  v395 = v67;
  v396 = v64;
  v72 = v355;
  v397 = v355;
  v398 = v353;
  v399 = v342;
  v73 = v318;
  v400 = v318;
  v401 = v62;
  v402 = v356;
  v74 = v346;
  v403 = v346;
  v404 = v347;
  v75 = v337;
  v405 = v337;
  v406 = v348;
  v407 = v68;
  v408 = v69;
  v409 = v341;
  v410 = v70;
  v411 = v71;
  v309 = type metadata accessor for VerticalGridView();
  v310 = sub_1E68B2220();
  v308 = sub_1E68B2220();
  v385 = v358;
  v386 = *&v345;
  v387 = v351;
  v76 = v339;
  v388 = v339;
  v389 = v340;
  *&v390 = v349;
  *(&v390 + 1) = v354;
  v391 = v335;
  v392 = v344;
  v77 = v343;
  v393 = v343;
  v78 = v357;
  v394 = v357;
  v395 = v350;
  v396 = v336;
  v397 = v72;
  v398 = v353;
  v80 = v341;
  v79 = v342;
  v399 = v342;
  v400 = v73;
  v401 = v338;
  v402 = v356;
  v403 = v74;
  v81 = v347;
  v404 = v347;
  v405 = v75;
  v82 = v348;
  v406 = v348;
  v83 = v330;
  v407 = v330;
  v408 = v333;
  v409 = v341;
  v410 = v352;
  v84 = WitnessTable;
  v411 = WitnessTable;
  v307 = type metadata accessor for ListView();
  v385 = v358;
  v386 = *&v345;
  v387 = v351;
  v388 = v76;
  v389 = v340;
  *&v390 = v349;
  *(&v390 + 1) = v354;
  v391 = v335;
  v392 = v344;
  v393 = v77;
  v394 = v78;
  v395 = v350;
  v396 = v336;
  v397 = v355;
  v398 = v353;
  v399 = v79;
  v400 = v318;
  v401 = v338;
  v402 = v356;
  v403 = v346;
  v404 = v81;
  v405 = v337;
  v406 = v82;
  v407 = v83;
  v408 = v333;
  v409 = v80;
  v410 = v352;
  v411 = v84;
  type metadata accessor for OrthogonalView();
  sub_1E68B2220();
  WitnessTable = sub_1E68B2220();
  v318 = sub_1E68B2220();
  *&v85 = COERCE_DOUBLE(sub_1E68B2220());
  v293 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v292 = &v278 - v86;
  v383 = v82;
  v384 = MEMORY[0x1E6981E60];
  v314 = swift_getWitnessTable();
  v87 = swift_getWitnessTable();
  v88 = swift_getWitnessTable();
  v89 = swift_getWitnessTable();
  v381 = v88;
  v382 = v89;
  v90 = swift_getWitnessTable();
  v379 = v87;
  v380 = v90;
  v91 = swift_getWitnessTable();
  v92 = swift_getWitnessTable();
  v93 = swift_getWitnessTable();
  v377 = v92;
  v378 = v93;
  v94 = swift_getWitnessTable();
  v375 = v91;
  v376 = v94;
  v373 = swift_getWitnessTable();
  v374 = v348;
  v95 = swift_getWitnessTable();
  v371 = v314;
  v372 = v95;
  v96 = swift_getWitnessTable();
  v385 = *&v85;
  v386 = *&v96;
  swift_getOpaqueTypeMetadata2();
  *&v97 = COERCE_DOUBLE(sub_1E68B2220());
  v286 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v282 = &v278 - v98;
  v294 = v85;
  v385 = *&v85;
  v386 = *&v96;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v283 = v96;
  v370 = v96;
  v302 = swift_getWitnessTable();
  v303 = v97;
  v385 = *&v97;
  v386 = *&v302;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v284 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v281 = &v278 - v100;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8);
  v287 = OpaqueTypeMetadata2;
  v101 = sub_1E68B1E40();
  v290 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v289 = &v278 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v103);
  v288 = &v278 - v104;
  v105 = *&v334;
  v385 = v334;
  v106 = v342;
  v386 = *&v342;
  v107 = v332;
  v387 = v332;
  v108 = v320;
  v388 = v320;
  v109 = type metadata accessor for CanvasSectionLayout();
  v110 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v278 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v113);
  v115 = &v278 - v114;
  v296 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E8);
  v299 = v101;
  v116 = sub_1E68B2220();
  v300 = *(v116 - 8);
  v301 = v116;
  MEMORY[0x1EEE9AC00](v116);
  v297 = &v278 - v117;
  v385 = v358;
  v386 = *&v351;
  v387 = v354;
  v388 = v343;
  v389 = v357;
  *&v390 = v355;
  *(&v390 + 1) = v105;
  v391 = v350;
  v392 = v106;
  v393 = v327;
  v394 = v328;
  v395 = v329;
  v396 = v324;
  v397 = v326;
  v398 = v321;
  v399 = v323;
  v400 = v341;
  v401 = v107;
  v402 = v330;
  v403 = v108;
  v310 = type metadata accessor for CanvasSectionDescriptor();
  v118 = *(v310 + 180);
  v298 = v110;
  v119 = *(v110 + 16);
  v119(v115, v313 + v118, v109);
  v305 = v115;
  v306 = v109;
  if (swift_getEnumCaseMultiPayload() || (v119(v112, v305, v306), v385 = v334, v120 = v353, v386 = *&v353, v387 = v332, v121 = v352, v388 = v352, type metadata accessor for CanvasLayout(), v122 = sub_1E689DC74(), ((*(v121 + 56))(v120, v121, v122) & 1) == 0))
  {
    v279 = *(v331 + 336);
    v129 = v322;
    v130 = v322 + 16;
    v307 = *(v322 + 16);
    v131 = v285;
    v132 = v325;
    (v307)(v285, v325);
    v133 = v129;
    v134 = (*(v129 + 80) + 304) & ~*(v129 + 80);
    WitnessTable = *(v129 + 80);
    v316 = v134 + v280;
    v135 = v134;
    v314 = v134;
    v136 = v343;
    v317 = (v134 + v280 + 7) & 0xFFFFFFFFFFFFFFF8;
    v137 = swift_allocObject();
    v138 = v351;
    v137[2] = v358;
    *(v137 + 3) = v138;
    v139 = v340;
    *(v137 + 4) = v339;
    *(v137 + 5) = v139;
    v140 = v139;
    v141 = v354;
    *(v137 + 6) = v349;
    *(v137 + 7) = v141;
    v142 = v344;
    *(v137 + 8) = v335;
    *(v137 + 9) = v142;
    *(v137 + 10) = v345;
    *(v137 + 11) = v136;
    v143 = v350;
    *(v137 + 12) = v357;
    *(v137 + 13) = v143;
    v144 = v355;
    *(v137 + 14) = v336;
    *(v137 + 15) = v144;
    v145 = *&v334;
    *(v137 + 16) = v353;
    *(v137 + 17) = v145;
    v146 = v327;
    v147 = v328;
    *(v137 + 18) = v342;
    *(v137 + 19) = v146;
    v148 = v356;
    *(v137 + 20) = v147;
    *(v137 + 21) = v148;
    v149 = v347;
    *(v137 + 22) = v346;
    *(v137 + 23) = v149;
    v150 = v337;
    *(v137 + 24) = v329;
    *(v137 + 25) = v150;
    v151 = v338;
    *(v137 + 26) = v348;
    *(v137 + 27) = v151;
    v152 = v326;
    *(v137 + 28) = v324;
    *(v137 + 29) = v152;
    v153 = v323;
    *(v137 + 30) = v321;
    *(v137 + 31) = v153;
    v154 = v333;
    *(v137 + 32) = v330;
    *(v137 + 33) = v154;
    v155 = v352;
    *(v137 + 34) = v341;
    *(v137 + 35) = v155;
    v156 = v320;
    *(v137 + 36) = v332;
    *(v137 + 37) = v156;
    v318 = *(v133 + 32);
    v322 = v133 + 32;
    v157 = v137 + v135;
    v158 = v331;
    v318(v157, v131, v331);
    *(v137 + v317) = v319;
    v159 = v291;
    v160 = v158;
    v161 = v307;
    v308 = v130;
    (v307)(v291, v132, v160);
    v162 = swift_allocObject();
    v163 = v138;
    v164 = v162;
    v162[2] = v358;
    *(v162 + 3) = v163;
    *(v162 + 4) = v339;
    *(v162 + 5) = v140;
    v165 = v354;
    *(v162 + 6) = v349;
    *(v162 + 7) = v165;
    v166 = v344;
    *(v162 + 8) = v335;
    *(v162 + 9) = v166;
    v167 = v343;
    *(v162 + 10) = v345;
    *(v162 + 11) = v167;
    v168 = v350;
    *(v162 + 12) = v357;
    *(v162 + 13) = v168;
    v169 = v355;
    *(v162 + 14) = v336;
    *(v162 + 15) = v169;
    v170 = *&v334;
    *(v162 + 16) = v353;
    *(v162 + 17) = v170;
    v171 = v342;
    v172 = v327;
    v173 = v328;
    *(v162 + 18) = v342;
    *(v162 + 19) = v172;
    v174 = v356;
    *(v162 + 20) = v173;
    *(v162 + 21) = v174;
    v175 = v347;
    *(v162 + 22) = v346;
    *(v162 + 23) = v175;
    v176 = v337;
    *(v162 + 24) = v329;
    *(v162 + 25) = v176;
    v177 = v338;
    *(v162 + 26) = v348;
    *(v162 + 27) = v177;
    v178 = v326;
    *(v162 + 28) = v324;
    *(v162 + 29) = v178;
    v179 = v321;
    v180 = v323;
    *(v162 + 30) = v321;
    *(v162 + 31) = v180;
    v181 = v333;
    *(v162 + 32) = v330;
    *(v162 + 33) = v181;
    v182 = v352;
    *(v162 + 34) = v341;
    *(v162 + 35) = v182;
    v183 = v320;
    *(v162 + 36) = v332;
    *(v162 + 37) = v183;
    v184 = v159;
    v185 = v331;
    v318(v162 + v314, v184, v331);
    *(v164 + v317) = v319;
    (v161)(v311, v132, v185);
    v186 = swift_allocObject();
    v187 = v351;
    v186[2] = v358;
    *(v186 + 3) = v187;
    v188 = v340;
    *(v186 + 4) = v339;
    *(v186 + 5) = v188;
    v189 = v354;
    *(v186 + 6) = v349;
    *(v186 + 7) = v189;
    v190 = v344;
    *(v186 + 8) = v335;
    *(v186 + 9) = v190;
    v191 = v343;
    *(v186 + 10) = v345;
    *(v186 + 11) = v191;
    v192 = v350;
    *(v186 + 12) = v357;
    *(v186 + 13) = v192;
    v193 = v355;
    *(v186 + 14) = v336;
    *(v186 + 15) = v193;
    v194 = *&v334;
    *(v186 + 16) = v353;
    *(v186 + 17) = v194;
    v195 = v327;
    v196 = v328;
    *(v186 + 18) = v171;
    *(v186 + 19) = v195;
    v197 = v356;
    *(v186 + 20) = v196;
    *(v186 + 21) = v197;
    v198 = v347;
    *(v186 + 22) = v346;
    *(v186 + 23) = v198;
    v199 = v337;
    *(v186 + 24) = v329;
    *(v186 + 25) = v199;
    v200 = v338;
    *(v186 + 26) = v348;
    *(v186 + 27) = v200;
    v201 = v326;
    *(v186 + 28) = v324;
    *(v186 + 29) = v201;
    v202 = v323;
    *(v186 + 30) = v179;
    *(v186 + 31) = v202;
    v204 = v330;
    v203 = v331;
    v205 = v333;
    *(v186 + 32) = v330;
    *(v186 + 33) = v205;
    v206 = v352;
    *(v186 + 34) = v341;
    *(v186 + 35) = v206;
    v207 = v320;
    *(v186 + 36) = v332;
    *(v186 + 37) = v207;
    v208 = v314;
    v318(v186 + v314, v311, v203);
    v209 = v325[4];
    v291 = v325[3];
    v311 = v209;
    v210 = v325[6];
    v285 = v325[5];
    v309 = v210;
    v211 = v325[8];
    v280 = v325[7];
    v316 = v211;
    v161(v312);
    v212 = v317;
    v213 = swift_allocObject();
    v214 = v351;
    v213[2] = v358;
    *(v213 + 3) = v214;
    v215 = v340;
    *(v213 + 4) = v339;
    *(v213 + 5) = v215;
    v216 = v354;
    *(v213 + 6) = v349;
    *(v213 + 7) = v216;
    v217 = v344;
    *(v213 + 8) = v335;
    *(v213 + 9) = v217;
    v218 = v343;
    *(v213 + 10) = v345;
    *(v213 + 11) = v218;
    v219 = v350;
    *(v213 + 12) = v357;
    *(v213 + 13) = v219;
    v220 = v355;
    *(v213 + 14) = v336;
    *(v213 + 15) = v220;
    v221 = *&v334;
    *(v213 + 16) = v353;
    *(v213 + 17) = v221;
    v222 = v327;
    v223 = v328;
    *(v213 + 18) = v171;
    *(v213 + 19) = v222;
    v224 = v356;
    *(v213 + 20) = v223;
    *(v213 + 21) = v224;
    v225 = v347;
    *(v213 + 22) = v346;
    *(v213 + 23) = v225;
    v226 = v337;
    *(v213 + 24) = v329;
    *(v213 + 25) = v226;
    v227 = v338;
    *(v213 + 26) = v348;
    *(v213 + 27) = v227;
    v228 = v326;
    *(v213 + 28) = v324;
    *(v213 + 29) = v228;
    v229 = v323;
    *(v213 + 30) = v321;
    *(v213 + 31) = v229;
    v230 = v333;
    *(v213 + 32) = v204;
    *(v213 + 33) = v230;
    v231 = v341;
    v232 = v352;
    *(v213 + 34) = v341;
    *(v213 + 35) = v232;
    *(v213 + 36) = v332;
    *(v213 + 37) = v207;
    v318(v213 + v208, v312, v331);
    *(v213 + v212) = v319;
    v233 = v325[10];
    v278 = v325[9];
    v312 = v233;
    v234 = v295;
    v307(v295);
    v235 = swift_allocObject();
    v236 = v328;
    *(v235 + 19) = v327;
    *(v235 + 20) = v236;
    *(v235 + 24) = v329;
    v237 = v326;
    *(v235 + 28) = v324;
    *(v235 + 29) = v237;
    v238 = v323;
    *(v235 + 30) = v321;
    *(v235 + 31) = v238;
    *(v235 + 32) = v330;
    *(v235 + 34) = v231;
    v239 = v320;
    *(v235 + 36) = v332;
    *(v235 + 37) = v239;
    *(v235 + 18) = v171;
    v240 = v351;
    v235[2] = v358;
    *(v235 + 3) = v240;
    v241 = v340;
    *(v235 + 4) = v339;
    *(v235 + 5) = v241;
    v242 = v354;
    *(v235 + 6) = v349;
    *(v235 + 7) = v242;
    v243 = v344;
    *(v235 + 8) = v335;
    *(v235 + 9) = v243;
    v244 = v343;
    *(v235 + 10) = v345;
    *(v235 + 11) = v244;
    v245 = v350;
    *(v235 + 12) = v357;
    *(v235 + 13) = v245;
    v246 = v355;
    *(v235 + 14) = v336;
    *(v235 + 15) = v246;
    v248 = v333;
    v247 = *&v334;
    *(v235 + 16) = v353;
    *(v235 + 17) = v247;
    v249 = v346;
    *(v235 + 21) = v356;
    *(v235 + 22) = v249;
    *(v235 + 23) = v347;
    v250 = v348;
    *(v235 + 25) = v337;
    *(v235 + 26) = v250;
    *(v235 + 27) = v338;
    *(v235 + 33) = v248;
    *(v235 + 35) = v352;
    v251 = v331;
    v318(v235 + v314, v234, v331);
    *(v235 + v317) = v319;
    v252 = v325[14];
    v332 = v325[13];
    v330 = v325 + *(v251 + 356);

    v253 = v312;

    v329 = v252;

    v254 = v310;
    v341 = swift_getWitnessTable();
    v277 = v254;
    v276 = v252;
    v255 = v292;
    v256 = v313;
    sub_1E67EB0B4(v325 + v279, sub_1E68AB808, v137, sub_1E68AB80C, v164, sub_1E68AB810, v186, v291, v292, v311, v285, v309, v280, v316, sub_1E68AB800, v213, v278, v253, sub_1E68AB804, v235, v332, v276, v330, v277, v353, v339, v340, v349, v345, v335, v344, v336, v341, v352, v356, v346, v347, v338, v337, v348, v248);

    v257 = v282;
    v258 = v294;
    sub_1E6814ED8(v256, v319, v294, v282, v355, *&v334, v350, v342, v310, v283, v341);
    (*(v293 + 8))(v255, v258);
    v259 = v281;
    v125 = v302;
    v124 = *&v303;
    sub_1E68B2700();
    (*(v286 + 8))(v257, COERCE_DOUBLE(*&v124));
    swift_getKeyPath();
    v385 = sub_1E689DC74();
    v386 = *&v260;
    v420 = v124;
    v421 = v125;
    v261 = swift_getOpaqueTypeConformance2();
    v262 = v289;
    v263 = v287;
    sub_1E68B27B0();

    (*(v284 + 8))(v259, v263);
    v264 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8);
    v367 = v261;
    v368 = v264;
    v265 = v299;
    v266 = swift_getWitnessTable();
    v267 = v288;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v262, v265, v266);
    v268 = *(v290 + 8);
    v268(v262, v265);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v267, v265, v266);
    sub_1E68AA77C(&qword_1EE2EA7B8, &qword_1ED0995E8);
    v128 = v297;
    sub_1E6744DB8(v262, v296, v265);
    v268(v262, v265);
    v268(v267, v265);
  }

  else
  {
    *&v123 = COERCE_DOUBLE(sub_1E68B2B20());
    sub_1E689DC74();
    sub_1E68B2E80();
    sub_1E68B1C50();
    v385 = *&v123;
    v386 = v420;
    LOBYTE(v387) = v421;
    v388 = v422;
    LOBYTE(v389) = v423;
    v390 = v424;
    sub_1E68AA77C(&qword_1EE2EA7B8, &qword_1ED0995E8);
    v125 = v302;
    v124 = *&v303;
    v361 = v303;
    v362 = v302;
    v126 = swift_getOpaqueTypeConformance2();
    v127 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8);
    v359 = v126;
    v360 = v127;
    swift_getWitnessTable();
    v128 = v297;
    sub_1E6744CC0(&v385, v296);
  }

  (*(v298 + 8))(v305, v306);
  v269 = sub_1E68AA77C(&qword_1EE2EA7B8, &qword_1ED0995E8);
  v385 = v124;
  v386 = *&v125;
  v270 = swift_getOpaqueTypeConformance2();
  v271 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8);
  v365 = v270;
  v366 = v271;
  v272 = swift_getWitnessTable();
  v363 = v269;
  v364 = v272;
  v273 = v301;
  v274 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v128, v273, v274);
  return (*(v300 + 8))(v128, v273);
}

uint64_t sub_1E68A78E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, uint64_t a24)
{
  v41 = a1;
  v42 = a3;
  v40 = a2;
  v39 = a24;
  v38[14] = a23;
  v38[13] = a22;
  v38[12] = a21;
  v38[11] = a20;
  v38[10] = a19;
  v38[9] = a18;
  v38[8] = a17;
  v38[7] = a16;
  v38[6] = a15;
  v38[5] = a14;
  v38[4] = a13;
  v38[3] = a12;
  v38[2] = a11;
  v38[1] = a10;
  v38[0] = a9;
  v29 = sub_1E68B19A0();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v38 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v47 = a8;
  v48 = a9;
  v49 = a10;
  v50 = a11;
  v51 = a12;
  v52 = a13;
  v53 = a14;
  v54 = a15;
  v55 = a16;
  v56 = a17;
  v57 = a18;
  v58 = a19;
  v59 = a20;
  v60 = a21;
  v61 = a22;
  v62 = a23;
  v63 = a24;
  v33 = v40 + *(type metadata accessor for CanvasContainerView() + 340);
  v35 = *v33;
  v34 = *(v33 + 8);
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v34;

  MEMORY[0x1E69501B0](v41, v42);
  v35(v32);

  return (*(v30 + 8))(v32, v29);
}

uint64_t sub_1E68A7B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, uint64_t a24)
{
  v41 = a1;
  v42 = a3;
  v40 = a2;
  v39 = a24;
  v38[14] = a23;
  v38[13] = a22;
  v38[12] = a21;
  v38[11] = a20;
  v38[10] = a19;
  v38[9] = a18;
  v38[8] = a17;
  v38[7] = a16;
  v38[6] = a15;
  v38[5] = a14;
  v38[4] = a13;
  v38[3] = a12;
  v38[2] = a11;
  v38[1] = a10;
  v38[0] = a9;
  v29 = sub_1E68B19A0();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v38 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v47 = a8;
  v48 = a9;
  v49 = a10;
  v50 = a11;
  v51 = a12;
  v52 = a13;
  v53 = a14;
  v54 = a15;
  v55 = a16;
  v56 = a17;
  v57 = a18;
  v58 = a19;
  v59 = a20;
  v60 = a21;
  v61 = a22;
  v62 = a23;
  v63 = a24;
  v33 = v40 + *(type metadata accessor for CanvasContainerView() + 344);
  v35 = *v33;
  v34 = *(v33 + 8);
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v34;

  MEMORY[0x1E69501B0](v41, v42);
  v35(v32);

  return (*(v30 + 8))(v32, v29);
}

uint64_t sub_1E68A7DAC(uint64_t a1)
{
  v2 = type metadata accessor for CanvasContainerView();
  sub_1E689DBB8(v2);
  (*(v3 + 304))(a1);
}

uint64_t sub_1E68A7E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v64 = a4;
  v65 = a1;
  v66 = a5;
  v30 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](a26);
  v32 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v63 - v35;
  v67 = v37;
  v68 = v38;
  v69 = v39;
  v70 = v40;
  v71 = v41;
  v72 = v42;
  v73 = a11;
  v74 = v43;
  v75 = v44;
  v76 = v45;
  v77 = v46;
  *(v47 + 136) = v48;
  *(v47 + 152) = v49;
  *(v47 + 168) = v50;
  v78 = v51;
  v79 = v52;
  v80 = a28;
  v81 = v54;
  v82 = v53;
  v83 = v55;
  v84 = v34;
  v85 = v57;
  v86 = v56;
  v58 = type metadata accessor for CanvasContainerView();
  sub_1E689D98C(v58);
  v60 = *(v59 + 304);
  v67 = a2;
  LOBYTE(v68) = a3 & 1;
  v87 = v64;
  v60(v65, &v67, &v87);

  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v32, a11, a28);
  v61 = *(v30 + 8);
  v61(v32, a11);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v36, a11, a28);
  return (v61)(v36, a11);
}

uint64_t sub_1E68A8058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29)
{
  v60 = a8;
  v58 = a7;
  v56 = a6;
  v64 = a2;
  v65 = a5;
  v63 = a4;
  v66 = a1;
  v67 = a3;
  v68 = a9;
  v61 = a29;
  v59 = a28;
  v57 = a27;
  v55 = a26;
  v54 = a25;
  v53 = a24;
  v52 = a22;
  v51 = a21;
  v50 = a20;
  v49 = a19;
  v48 = a18;
  v47 = a17;
  v46 = a16;
  v45 = a15;
  v44 = a14;
  v43 = a12;
  v42 = a10;
  v62 = sub_1E68B19A0();
  v29 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a13 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v42 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v42 - v37;
  v69 = v56;
  v70 = v58;
  v71 = v60;
  v72 = v42;
  v73 = a11;
  v74 = v43;
  v75 = a13;
  v76 = v44;
  v77 = v45;
  v78 = v46;
  v79 = v47;
  v80 = v48;
  v81 = v49;
  v82 = v50;
  v83 = v51;
  v84 = v52;
  v86 = v53;
  v87 = v54;
  v88 = v55;
  v89 = v57;
  v90 = v59;
  v85 = a23;
  v91 = v61;
  type metadata accessor for CanvasContainerView();
  v39 = *(v63 + 88);

  MEMORY[0x1E69501B0](v64, v65);
  v39(v66, v31, v67);

  (*(v29 + 8))(v31, v62);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v35, a13, a23);
  v40 = *(v32 + 8);
  v40(v35, a13);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v38, a13, a23);
  return (v40)(v38, a13);
}

uint64_t sub_1E68A83B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v98 = a8;
  v96 = a7;
  v94 = a6;
  v92 = a5;
  v90 = a4;
  v88 = a3;
  v86 = a2;
  v101 = a1;
  v102 = a9;
  v103 = a31;
  v100 = a30;
  v99 = a29;
  v97 = a28;
  v95 = a27;
  v93 = a26;
  v91 = a25;
  v89 = a24;
  v87 = a23;
  v85 = a22;
  v84 = a21;
  v83 = a20;
  v82 = a19;
  v81 = a18;
  v80 = a17;
  v79 = a16;
  v78 = a15;
  v77 = a14;
  v76 = a13;
  v75 = a12;
  v74 = a11;
  v73 = a10;
  v104 = a2;
  v105 = a3;
  v106 = a4;
  v107 = a5;
  v108 = a6;
  v109 = a7;
  v110 = a8;
  v111 = a10;
  v112 = a11;
  v113 = a12;
  v114 = a13;
  v115 = a14;
  v116 = a15;
  v117 = a16;
  v118 = a17;
  v119 = a18;
  v120 = a19;
  v121 = a20;
  v122 = a21;
  v123 = a22;
  v124 = a23;
  v125 = a24;
  v126 = a25;
  v127 = a26;
  v128 = a27;
  v129 = a28;
  v130 = a29;
  v131 = a30;
  v72 = a32;
  v132 = a31;
  v133 = a32;
  v70 = a33;
  v71 = a34;
  v134 = a33;
  v135 = a34;
  v136 = a35;
  v137 = a36;
  v138 = a37;
  v139 = a38;
  v38 = type metadata accessor for CanvasContainerView();
  v39 = *(v38 - 8);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v69 - v41;
  (*(v39 + 16))(&v69 - v41, v101, v38, v40);
  v43 = (*(v39 + 80) + 304) & ~*(v39 + 80);
  v44 = swift_allocObject();
  v45 = v88;
  *(v44 + 2) = v86;
  *(v44 + 3) = v45;
  v46 = v92;
  *(v44 + 4) = v90;
  *(v44 + 5) = v46;
  v47 = v96;
  *(v44 + 6) = v94;
  *(v44 + 7) = v47;
  v48 = v73;
  v49 = v74;
  *(v44 + 8) = v98;
  *(v44 + 9) = v48;
  v50 = v75;
  v51 = v76;
  *(v44 + 10) = v49;
  *(v44 + 11) = v50;
  v52 = v77;
  v53 = v78;
  *(v44 + 12) = v51;
  *(v44 + 13) = v52;
  v54 = v79;
  v55 = v80;
  *(v44 + 14) = v53;
  *(v44 + 15) = v54;
  v56 = v81;
  v57 = v82;
  *(v44 + 16) = v55;
  *(v44 + 17) = v56;
  v58 = v83;
  v59 = v84;
  *(v44 + 18) = v57;
  *(v44 + 19) = v58;
  v60 = v85;
  *(v44 + 20) = v59;
  *(v44 + 21) = v60;
  v61 = v89;
  *(v44 + 22) = v87;
  *(v44 + 23) = v61;
  v62 = v93;
  *(v44 + 24) = v91;
  *(v44 + 25) = v62;
  v63 = v97;
  *(v44 + 26) = v95;
  *(v44 + 27) = v63;
  v64 = v100;
  *(v44 + 28) = v99;
  *(v44 + 29) = v64;
  v65 = v72;
  *(v44 + 30) = v103;
  *(v44 + 31) = v65;
  v66 = v71;
  *(v44 + 32) = v70;
  *(v44 + 33) = v66;
  *(v44 + 34) = a35;
  *(v44 + 35) = a36;
  *(v44 + 36) = a37;
  *(v44 + 37) = a38;
  result = (*(v39 + 32))(&v44[v43], v42, v38);
  v68 = v102;
  *v102 = sub_1E68AA0E0;
  v68[1] = v44;
  return result;
}

uint64_t sub_1E68A86E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)()@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v147 = a8;
  v144 = a6;
  v145 = a7;
  v119 = a9;
  v120 = a5;
  v157 = a4;
  v131 = a3;
  v132 = a1;
  v133 = a2;
  v156 = a39;
  v155 = a38;
  v154 = a37;
  v153 = a36;
  v152 = a35;
  v151 = a34;
  v121 = a33;
  v159 = a32;
  v150 = a31;
  v149 = a30;
  v148 = a29;
  v146 = a28;
  v134 = a27;
  v158 = a26;
  v136 = a25;
  v135 = a24;
  v143 = a23;
  v142 = a22;
  v141 = a21;
  v140 = a20;
  v139 = a19;
  v138 = a18;
  v137 = a17;
  v130 = a16;
  v129 = a15;
  v128 = a14;
  v127 = a13;
  v126 = a12;
  v125 = a11;
  v124 = a10;
  v40 = sub_1E68B2240();
  v117 = *(v40 - 8);
  v118 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v116 = &v109 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1E68B1C90();
  v42 = *(v123 - 8);
  v112 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v109 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = a3;
  v164 = v157;
  v44 = v120;
  v165 = v120;
  v166 = v144;
  v167 = v145;
  v168 = v147;
  v169 = a10;
  v170 = a11;
  v171 = a12;
  v172 = a13;
  v173 = a14;
  v174 = a15;
  v175 = a16;
  v176 = v137;
  v177 = v138;
  v178 = v139;
  v179 = v140;
  v180 = v141;
  v181 = v142;
  v182 = v143;
  v183 = v135;
  v184 = v136;
  v185 = v158;
  v186 = v134;
  v187 = v146;
  v188 = v148;
  v189 = v149;
  v190 = v150;
  v191 = v159;
  v45 = v121;
  v192 = v121;
  v193 = v151;
  v194 = v152;
  v195 = v153;
  v196 = v154;
  v197 = v155;
  v198 = v156;
  v46 = type metadata accessor for CanvasContainerView();
  v110 = v46;
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v109 - v49;
  v111 = sub_1E68B2B20();
  v115 = *(v47 + 16);
  v115(v50, v133, v46);
  (*(v42 + 16))(v122, v132, v123);
  v51 = *(v47 + 80);
  v52 = ((v51 + 304) & ~v51) + v48;
  v53 = (v51 + 304) & ~v51;
  v113 = v51 | 7;
  v114 = v52;
  v54 = (v52 + *(v42 + 80)) & ~*(v42 + 80);
  v55 = swift_allocObject();
  v56 = v157;
  *(v55 + 2) = v131;
  *(v55 + 3) = v56;
  v57 = v144;
  v58 = v145;
  *(v55 + 4) = v44;
  *(v55 + 5) = v57;
  v59 = v147;
  *(v55 + 6) = v58;
  *(v55 + 7) = v59;
  v60 = v125;
  *(v55 + 8) = v124;
  *(v55 + 9) = v60;
  v61 = v127;
  *(v55 + 10) = v126;
  *(v55 + 11) = v61;
  v62 = v129;
  *(v55 + 12) = v128;
  *(v55 + 13) = v62;
  v63 = v137;
  v64 = v138;
  *(v55 + 14) = v130;
  *(v55 + 15) = v63;
  v65 = v139;
  v66 = v140;
  *(v55 + 16) = v64;
  *(v55 + 17) = v65;
  v67 = v141;
  v68 = v142;
  *(v55 + 18) = v66;
  *(v55 + 19) = v67;
  v69 = v143;
  *(v55 + 20) = v68;
  *(v55 + 21) = v69;
  v70 = v136;
  *(v55 + 22) = v135;
  *(v55 + 23) = v70;
  v71 = v134;
  *(v55 + 24) = v158;
  *(v55 + 25) = v71;
  v72 = v148;
  v73 = v149;
  *(v55 + 26) = v146;
  *(v55 + 27) = v72;
  v74 = v150;
  *(v55 + 28) = v73;
  *(v55 + 29) = v74;
  *(v55 + 30) = v159;
  *(v55 + 31) = v45;
  v75 = v152;
  *(v55 + 32) = v151;
  *(v55 + 33) = v75;
  v76 = v154;
  *(v55 + 34) = v153;
  *(v55 + 35) = v76;
  v77 = v156;
  *(v55 + 36) = v155;
  *(v55 + 37) = v77;
  v112 = *(v47 + 32);
  v78 = v50;
  v79 = v50;
  v80 = v110;
  v112(&v55[v53], v78, v110);
  (*(v42 + 32))(&v55[v54], v122, v123);
  v163 = v111;
  v164 = sub_1E68AA2EC;
  v165 = v55;
  v166 = 0;
  v167 = 0;
  v81 = v116;
  sub_1E68B2370();
  sub_1E68B1C80();
  (*(v117 + 8))(v81, v118);
  v82 = v199;
  v83 = v200;
  if (v201)
  {
    v82 = 0;
    v83 = 0;
  }

  v160 = v82;
  v161 = v83;
  v162 = v201 & 1;
  v115(v79, v133, v80);
  v84 = swift_allocObject();
  v85 = v157;
  *(v84 + 2) = v131;
  *(v84 + 3) = v85;
  v86 = v144;
  v87 = v145;
  *(v84 + 4) = v120;
  *(v84 + 5) = v86;
  v88 = v147;
  *(v84 + 6) = v87;
  *(v84 + 7) = v88;
  v89 = v125;
  *(v84 + 8) = v124;
  *(v84 + 9) = v89;
  v90 = v127;
  *(v84 + 10) = v126;
  *(v84 + 11) = v90;
  v91 = v129;
  *(v84 + 12) = v128;
  *(v84 + 13) = v91;
  v92 = v137;
  v93 = v138;
  *(v84 + 14) = v130;
  *(v84 + 15) = v92;
  v94 = v139;
  v95 = v140;
  *(v84 + 16) = v93;
  *(v84 + 17) = v94;
  v96 = v141;
  v97 = v142;
  *(v84 + 18) = v95;
  *(v84 + 19) = v96;
  v98 = v143;
  *(v84 + 20) = v97;
  *(v84 + 21) = v98;
  v99 = v136;
  *(v84 + 22) = v135;
  *(v84 + 23) = v99;
  v100 = v134;
  *(v84 + 24) = v158;
  *(v84 + 25) = v100;
  v101 = v148;
  v102 = v149;
  *(v84 + 26) = v146;
  *(v84 + 27) = v101;
  v103 = v150;
  *(v84 + 28) = v102;
  *(v84 + 29) = v103;
  v104 = v121;
  *(v84 + 30) = v159;
  *(v84 + 31) = v104;
  v105 = v152;
  *(v84 + 32) = v151;
  *(v84 + 33) = v105;
  v106 = v154;
  *(v84 + 34) = v153;
  *(v84 + 35) = v106;
  v107 = v156;
  *(v84 + 36) = v155;
  *(v84 + 37) = v107;
  v112(&v84[v53], v79, v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A040);
  sub_1E68AA77C(&qword_1ED096ED8, &qword_1ED096ED0);
  sub_1E68AA7EC();
  sub_1E68B2AB0();
}

uint64_t sub_1E68A8DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, uint64_t a23, uint64_t a24)
{
  v46 = a8;
  v51 = a1;
  v50 = a24;
  v49 = a23;
  v48 = a22;
  v47 = a21;
  v45 = a20;
  v44 = a19;
  v43 = a18;
  v42 = a17;
  v41 = a16;
  v40 = a15;
  v39 = a14;
  v38 = a13;
  v37 = a12;
  v36 = a11;
  v35 = a10;
  v34 = a9;
  v29 = sub_1E68B2240();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E68B2370();
  sub_1E68B1C80();
  (*(v30 + 8))(v32, v29);
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v55 = a6;
  v56 = a7;
  v57 = v46;
  v58 = v34;
  v59 = v35;
  v60 = v36;
  v61 = v37;
  v62 = v38;
  v63 = v39;
  v64 = v40;
  v65 = v41;
  v66 = v42;
  v67 = v43;
  v68 = v44;
  v69 = v45;
  v70 = v47;
  v71 = v48;
  v72 = v49;
  v73 = v50;
  type metadata accessor for CanvasContainerView();
  return sub_1E689DCD4();
}

uint64_t sub_1E68A9130@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v5 = *(v1 + 264);
  v6 = *(v1 + 280);
  v3 = *(v1 + 232);
  v4 = *(v1 + 248);
  return sub_1E68A83B8(*(v1 + 304), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), a1, *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160), *(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224), v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), *(v1 + 296));
}

void sub_1E68A9278()
{
  type metadata accessor for CanvasSectionDescriptor();
  sub_1E68B33B0();
  if (v0 <= 0x3F)
  {
    sub_1E68B3750();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098208);
    swift_getFunctionTypeMetadata3();
    type metadata accessor for AssumeEquatable();
    if (v1 <= 0x3F)
    {
      swift_getFunctionTypeMetadata1();
      type metadata accessor for AssumeEquatable();
      if (v2 <= 0x3F)
      {
        swift_getFunctionTypeMetadata1();
        type metadata accessor for AssumeEquatable();
        if (v3 <= 0x3F)
        {
          swift_getFunctionTypeMetadata1();
          type metadata accessor for AssumeEquatable();
          if (v4 <= 0x3F)
          {
            swift_getFunctionTypeMetadata1();
            type metadata accessor for AssumeEquatable();
            if (v5 <= 0x3F)
            {
              sub_1E68B19A0();
              type metadata accessor for CanvasLayout();
              v7 = v6;
              swift_getFunctionTypeMetadata3();
              type metadata accessor for AssumeEquatable();
              if (v8 <= 0x3F)
              {
                swift_getFunctionTypeMetadata1();
                type metadata accessor for AssumeEquatable();
                if (v9 <= 0x3F && v7 <= 0x3F)
                {
                  sub_1E68A9D60();
                  if (v10 <= 0x3F)
                  {
                    swift_getFunctionTypeMetadata1();
                    type metadata accessor for AssumeEquatable();
                    if (v11 <= 0x3F)
                    {
                      sub_1E68A9DC4();
                      if (v12 <= 0x3F)
                      {
                        sub_1E68B1950();
                        if (v13 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1E68A95DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 128);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = sub_1E68B1950();
  v11 = *(v10 - 8);
  v12 = *(v6 + 80);
  v13 = *(v11 + 80);
  if (*(v11 + 84) <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v12 | 7;
  v16 = ((v12 + 96) & ~v12) + *(v6 + 64) + 7;
  v17 = v13 + 24;
  if (a2 <= v14)
  {
    goto LABEL_34;
  }

  v18 = ((v17 + ((((((((v16 + ((v12 + 120) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + *(*(v10 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v14 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 < 2)
    {
LABEL_34:
      if (v14 == 0x7FFFFFFF)
      {
        v26 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v26) = -1;
        }

        return (v26 + 1);
      }

      else
      {
        v27 = (((((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15;
        if (v8 == v14)
        {
          v28 = *(v6 + 48);

          return v28((v12 + ((((((v27 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12, v7, v5);
        }

        else
        {
          v29 = *(v11 + 48);

          return v29((v17 + ((((((((v16 + v27) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13);
        }
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_34;
  }

LABEL_21:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v14 + (v25 | v23) + 1;
}

void sub_1E68A9954(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 128);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  if (v9 >= 0)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(sub_1E68B1950() - 8);
  v13 = v12;
  if (*(v12 + 84) <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(v8 + 80);
  v16 = ((v15 + 96) & ~v15) + *(v8 + 64) + 7;
  v17 = *(v12 + 80);
  v18 = ((v17 + 24 + ((((((((v16 + ((v15 + 120) & ~(v15 | 7))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + *(v12 + 64);
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_57:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v14 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v25 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v25 = (a2 - 1);
    }

    *a1 = v25;
  }

  else
  {
    v26 = (((((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + (v15 | 7) + 16) & ~(v15 | 7);
    if (v10 == v14)
    {
      v27 = *(v29 + 56);

      v27((v15 + ((((((v26 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15, a2, v9, v7);
    }

    else
    {
      v28 = *(v13 + 56);

      v28((v17 + 24 + ((((((((v16 + v26) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17, a2);
    }
  }
}

void sub_1E68A9D60()
{
  if (!qword_1EE2EBE80[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED09A038);
    v0 = type metadata accessor for AssumeEquatable();
    if (!v1)
    {
      atomic_store(v0, qword_1EE2EBE80);
    }
  }
}

void sub_1E68A9DC4()
{
  if (!qword_1EE2EA548)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_1E68B2C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2EA548);
    }
  }
}

uint64_t sub_1E68A9E34(uint64_t a1, uint64_t (*a2)(uint64_t, char *, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v40 = *(v2 + 3);
  v41 = *(v2 + 2);
  v38 = *(v2 + 5);
  v39 = *(v2 + 4);
  v36 = *(v2 + 7);
  v37 = *(v2 + 6);
  v34 = *(v2 + 9);
  v35 = *(v2 + 8);
  v32 = *(v2 + 11);
  v33 = *(v2 + 10);
  v30 = *(v2 + 13);
  v31 = *(v2 + 12);
  v28 = *(v2 + 15);
  v29 = *(v2 + 14);
  v26 = *(v2 + 17);
  v27 = *(v2 + 16);
  v24 = *(v2 + 19);
  v25 = *(v2 + 18);
  v22 = *(v2 + 21);
  v23 = *(v2 + 20);
  v20 = *(v2 + 23);
  v21 = *(v2 + 22);
  v18 = *(v2 + 25);
  v19 = *(v2 + 24);
  v16 = *(v2 + 27);
  v17 = *(v2 + 26);
  v3 = *(v2 + 29);
  v15 = *(v2 + 28);
  v4 = *(v2 + 30);
  v5 = *(v2 + 31);
  v6 = *(v2 + 32);
  v7 = *(v2 + 33);
  v8 = *(v2 + 34);
  v9 = *(v2 + 35);
  v10 = *(v2 + 36);
  v11 = *(v2 + 37);
  v12 = *(type metadata accessor for CanvasContainerView() - 8);
  v13 = (*(v12 + 80) + 304) & ~*(v12 + 80);
  return a2(a1, &v2[v13], *&v2[(*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8], v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1E68AA074(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = *(v4 + 304);
  v7 = a4;
  v8 = a2;
  v9 = a3 & 1;
  return v5(a1, &v8, &v7);
}

uint64_t sub_1E68AA0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = v2[3];
  v40 = v2[2];
  v37 = v2[5];
  v38 = v2[4];
  v35 = v2[7];
  v36 = v2[6];
  v33 = v2[9];
  v34 = v2[8];
  v31 = v2[11];
  v32 = v2[10];
  v29 = v2[13];
  v30 = v2[12];
  v27 = v2[15];
  v28 = v2[14];
  v25 = v2[17];
  v26 = v2[16];
  v23 = v2[19];
  v24 = v2[18];
  v21 = v2[21];
  v22 = v2[20];
  v19 = v2[23];
  v20 = v2[22];
  v17 = v2[25];
  v18 = v2[24];
  v15 = v2[27];
  v16 = v2[26];
  v3 = v2[29];
  v14 = v2[28];
  v4 = v2[30];
  v5 = v2[31];
  v6 = v2[32];
  v7 = v2[33];
  v8 = v2[34];
  v9 = v2[35];
  v10 = v2[36];
  v11 = v2[37];
  v12 = *(type metadata accessor for CanvasContainerView() - 8);
  return sub_1E68A86E4(a1, v2 + ((*(v12 + 80) + 304) & ~*(v12 + 80)), v40, v39, v38, v37, v36, v35, a2, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1E68AA2EC()
{
  v55 = v0[2];
  v52 = v0[4];
  v53 = v0[3];
  v50 = v0[6];
  v51 = v0[5];
  v48 = v0[8];
  v49 = v0[7];
  v46 = v0[10];
  v47 = v0[9];
  v44 = v0[12];
  v45 = v0[11];
  v42 = v0[14];
  v43 = v0[13];
  v40 = v0[16];
  v41 = v0[15];
  v38 = v0[18];
  v39 = v0[17];
  v36 = v0[20];
  v37 = v0[19];
  v34 = v0[22];
  v35 = v0[21];
  v32 = v0[24];
  v33 = v0[23];
  v30 = v0[26];
  v31 = v0[25];
  v28 = v0[28];
  v29 = v0[27];
  v27 = v0[29];
  v54 = v0[31];
  v1 = v0[30];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[36];
  v7 = v0[37];
  v8 = *(type metadata accessor for CanvasContainerView() - 8);
  v9 = (*(v8 + 80) + 304) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1E68B1C90() - 8);
  *&v26 = v4;
  *(&v26 + 1) = v5;
  *&v25 = v2;
  *(&v25 + 1) = v3;
  *&v24 = v1;
  *(&v24 + 1) = v54;
  *&v23 = v28;
  *(&v23 + 1) = v27;
  *&v22 = v30;
  *(&v22 + 1) = v29;
  *&v21 = v32;
  *(&v21 + 1) = v31;
  *&v20 = v34;
  *(&v20 + 1) = v33;
  *&v19 = v36;
  *(&v19 + 1) = v35;
  *&v18 = v38;
  *(&v18 + 1) = v37;
  *&v17 = v40;
  *(&v17 + 1) = v39;
  *&v16 = v42;
  *(&v16 + 1) = v41;
  *&v15 = v44;
  *(&v15 + 1) = v43;
  *&v14 = v46;
  *(&v14 + 1) = v45;
  *&v13 = v48;
  *(&v13 + 1) = v47;
  return sub_1E68A8DF8(v0 + v9, v0 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80)), v55, v53, v52, v51, v50, v49, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v6, v7);
}

uint64_t sub_1E68AA77C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E68AA7EC()
{
  result = qword_1ED09A048;
  if (!qword_1ED09A048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED09A040);
    sub_1E68AA8A0(&qword_1EE2EA440, type metadata accessor for CGSize);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A048);
  }

  return result;
}

uint64_t sub_1E68AA8A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E68AA900(uint64_t (*a1)(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void))
{
  v5 = *(v1 + 264);
  v6 = *(v1 + 280);
  v3 = *(v1 + 232);
  v4 = *(v1 + 248);
  return a1(*(v1 + 304), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160), *(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224), v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), *(v1 + 296));
}

uint64_t sub_1E68AA9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v40 = *(v3 + 3);
  v41 = *(v3 + 2);
  v38 = *(v3 + 5);
  v39 = *(v3 + 4);
  v36 = *(v3 + 7);
  v37 = *(v3 + 6);
  v34 = *(v3 + 9);
  v35 = *(v3 + 8);
  v32 = *(v3 + 11);
  v33 = *(v3 + 10);
  v30 = *(v3 + 13);
  v31 = *(v3 + 12);
  v28 = *(v3 + 15);
  v29 = *(v3 + 14);
  v26 = *(v3 + 17);
  v27 = *(v3 + 16);
  v24 = *(v3 + 19);
  v25 = *(v3 + 18);
  v22 = *(v3 + 21);
  v23 = *(v3 + 20);
  v20 = *(v3 + 23);
  v21 = *(v3 + 22);
  v18 = *(v3 + 25);
  v19 = *(v3 + 24);
  v16 = *(v3 + 27);
  v17 = *(v3 + 26);
  v4 = *(v3 + 29);
  v15 = *(v3 + 28);
  v5 = *(v3 + 30);
  v6 = *(v3 + 31);
  v7 = *(v3 + 32);
  v8 = *(v3 + 33);
  v9 = *(v3 + 34);
  v10 = *(v3 + 35);
  v11 = *(v3 + 36);
  v12 = *(v3 + 37);
  v13 = *(type metadata accessor for CanvasContainerView() - 8);
  return a3(a1, a2, &v3[(*(v13 + 80) + 304) & ~*(v13 + 80)], v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v4, v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1E68AADE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v29 = v4[5];
  v27 = v4[7];
  v28 = v4[6];
  v25 = v4[9];
  v26 = v4[8];
  v23 = v4[11];
  v24 = v4[10];
  v21 = v4[13];
  v22 = v4[12];
  v19 = v4[15];
  v20 = v4[14];
  v17 = v4[17];
  v18 = v4[16];
  v15 = v4[19];
  v16 = v4[18];
  v13 = v4[21];
  v14 = v4[20];
  v11 = v4[23];
  v12 = v4[22];
  v9 = v4[25];
  v10 = v4[24];
  v7 = v4[27];
  v8 = v4[26];
  v5 = *(type metadata accessor for CanvasContainerView() - 8);
  return sub_1E68A7E58(a1, a2, a3 & 1, *(v4 + ((*(v5 + 64) + ((*(v5 + 80) + 304) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)), a4, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v12, v11, v10, v9, v8, v7);
}

uint64_t sub_1E68AB040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = v4[3];
  v56 = v4[2];
  v53 = v4[5];
  v54 = v4[4];
  v51 = v4[7];
  v52 = v4[6];
  v49 = v4[9];
  v50 = v4[8];
  v47 = v4[11];
  v48 = v4[10];
  v45 = v4[13];
  v46 = v4[12];
  v43 = v4[15];
  v44 = v4[14];
  v41 = v4[17];
  v42 = v4[16];
  v39 = v4[19];
  v40 = v4[18];
  v37 = v4[21];
  v38 = v4[20];
  v35 = v4[23];
  v36 = v4[22];
  v33 = v4[25];
  v34 = v4[24];
  v31 = v4[27];
  v32 = v4[26];
  v5 = v4[29];
  v30 = v4[28];
  v6 = v4[30];
  v7 = v4[31];
  v8 = v4[32];
  v9 = v4[33];
  v10 = v4[34];
  v11 = v4[35];
  v12 = v4[36];
  v13 = v4[37];
  v14 = *(type metadata accessor for CanvasContainerView() - 8);
  v15 = (*(v14 + 80) + 304) & ~*(v14 + 80);
  *(&v29 + 1) = v12;
  *(&v28 + 1) = v10;
  *&v29 = v11;
  *(&v27 + 1) = v8;
  *&v28 = v9;
  *(&v26 + 1) = v6;
  *&v27 = v7;
  *(&v25 + 1) = v30;
  *&v26 = v5;
  *&v25 = v31;
  *(&v24 + 1) = v35;
  *(&v23 + 1) = v37;
  *&v24 = v36;
  *(&v22 + 1) = v39;
  *&v23 = v38;
  *(&v21 + 1) = v41;
  *&v22 = v40;
  *(&v20 + 1) = v43;
  *&v21 = v42;
  *(&v19 + 1) = v45;
  *&v20 = v44;
  *(&v18 + 1) = v47;
  *&v19 = v46;
  *&v18 = v48;
  *&v17 = v53;
  *(&v17 + 1) = v52;
  return sub_1E68A8058(a1, a2, a3, v4 + v15, *(v4 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8)), v56, v55, v54, a4, v17, v51, v50, v49, v18, v19, v20, v21, v22, v23, v24, v34, v33, v32, v25, v26, v27, v28, v29, v13);
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 128);
  v2 = (type metadata accessor for CanvasContainerView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 304) & ~*(*v2 + 80));

  v4 = v3 + v2[86];

  v5 = type metadata accessor for CanvasLayout();
  (*(*(v1 - 8) + 8))(v4 + *(v5 + 72), v1);

  v6 = v2[91];
  v7 = sub_1E68B1950();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  return swift_deallocObject();
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 128);
  v2 = (type metadata accessor for CanvasContainerView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 304) & ~*(*v2 + 80));

  v4 = v3 + v2[86];

  v5 = type metadata accessor for CanvasLayout();
  (*(*(v1 - 8) + 8))(v4 + *(v5 + 72), v1);

  v6 = v2[91];
  v7 = sub_1E68B1950();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  return swift_deallocObject();
}

uint64_t sub_1E68AB82C(uint64_t a1)
{
  v2 = sub_1E68ABDA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68AB868(uint64_t a1)
{
  v2 = sub_1E68ABDA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E68AB8A4()
{
  if (*v0)
  {
    return 0x7265746E6563;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_1E68AB8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E696461656CLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1E68B3B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E68B3B00();

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

uint64_t sub_1E68AB9B4(uint64_t a1)
{
  v2 = sub_1E68ABD54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68AB9F0(uint64_t a1)
{
  v2 = sub_1E68ABD54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E68ABA2C(uint64_t a1)
{
  v2 = sub_1E68ABDFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68ABA68(uint64_t a1)
{
  v2 = sub_1E68ABDFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VerticalStackHorizontalAlignment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A050);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A058);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A060);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68ABD54();
  sub_1E68B3BD0();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1E68ABDA8();
    v14 = v18;
    sub_1E68B3A30();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1E68ABDFC();
    sub_1E68B3A30();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1E68ABD54()
{
  result = qword_1EE2EAB70;
  if (!qword_1EE2EAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB70);
  }

  return result;
}

unint64_t sub_1E68ABDA8()
{
  result = qword_1ED09A068;
  if (!qword_1ED09A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A068);
  }

  return result;
}

unint64_t sub_1E68ABDFC()
{
  result = qword_1EE2EAB48;
  if (!qword_1EE2EAB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB48);
  }

  return result;
}

uint64_t VerticalStackHorizontalAlignment.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A070);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A078);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A080);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68ABD54();
  v12 = v31;
  sub_1E68B3BC0();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1E68B3A10();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1E676F5C8();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1E68B3870();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
      *v22 = &type metadata for VerticalStackHorizontalAlignment;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1E68ABDA8();
        sub_1E68B3970();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1E68ABDFC();
        sub_1E68B3970();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t VerticalStackHorizontalAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E68AC3B4()
{
  result = qword_1ED09A088;
  if (!qword_1ED09A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A088);
  }

  return result;
}

unint64_t sub_1E68AC44C()
{
  result = qword_1ED09A090[0];
  if (!qword_1ED09A090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED09A090);
  }

  return result;
}

unint64_t sub_1E68AC4A4()
{
  result = qword_1EE2EAB38;
  if (!qword_1EE2EAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB38);
  }

  return result;
}

unint64_t sub_1E68AC4FC()
{
  result = qword_1EE2EAB40;
  if (!qword_1EE2EAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB40);
  }

  return result;
}

unint64_t sub_1E68AC554()
{
  result = qword_1EE2EAB50;
  if (!qword_1EE2EAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB50);
  }

  return result;
}

unint64_t sub_1E68AC5AC()
{
  result = qword_1EE2EAB58;
  if (!qword_1EE2EAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB58);
  }

  return result;
}

unint64_t sub_1E68AC604()
{
  result = qword_1EE2EAB60;
  if (!qword_1EE2EAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB60);
  }

  return result;
}

unint64_t sub_1E68AC65C()
{
  result = qword_1EE2EAB68;
  if (!qword_1EE2EAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB68);
  }

  return result;
}

uint64_t static CanvasHorizontalGridLayout.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v43 = a2;
  v40 = *(a3 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v38 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v39 = v37 - v6;
  v37[1] = v7;
  v8 = type metadata accessor for CanvasHorizontalGridLayout();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v37 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = v37 - v18;
  v20 = (v37 + *(v17 + 48) - v18);
  v41 = v9;
  v21 = *(v9 + 16);
  v21(v37 - v18, v42, v8);
  v21(v20, v43, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21(v12, v19, v8);
    v22 = *(swift_getTupleTypeMetadata2() + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = *v12;
      v23 = *v20;
      v24 = v40;
      v25 = *(v40 + 32);
      v26 = &v12[v22];
      v27 = v39;
      v25(v39, v26, a3);
      v28 = v20 + v22;
      v29 = v38;
      v25(v38, v28, a3);
      if (v43 == v23)
      {
        v30 = sub_1E68B3190();
        v31 = *(v24 + 8);
        v31(v29, a3);
        v31(v27, a3);
LABEL_17:
        v16 = v41;
        TupleTypeMetadata2 = v8;
        goto LABEL_18;
      }

      v35 = *(v24 + 8);
      v35(v29, a3);
      v35(v27, a3);
LABEL_16:
      v30 = 0;
      goto LABEL_17;
    }

    (*(v40 + 8))(&v12[v22], a3);
  }

  else
  {
    v21(v14, v19, v8);
    v32 = *(v14 + 1);
    v33 = *(v14 + 2);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (*v14 == *v20)
      {
        v30 = v33 == v20[2] && v32 == *(v20 + 1);
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  v30 = 0;
LABEL_18:
  (*(v16 + 8))(v19, TupleTypeMetadata2);
  return v30 & 1;
}

uint64_t CanvasHorizontalGridLayout.rowCount.getter(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, v2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *(v4 + 1);
  }

  v6 = *v4;
  v7 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(v7 - 8) + 8))(&v4[*(TupleTypeMetadata2 + 48)], v7);
  return v6;
}

uint64_t sub_1E68ACC14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F74737563 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x46797469736E6564 && a2 == 0xED0000726F746361)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E68ACCE4(char a1)
{
  if (a1)
  {
    return 0x46797469736E6564;
  }

  else
  {
    return 0x6D6F74737563;
  }
}

uint64_t sub_1E68ACD24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F436E6D756C6F63 && a2 == 0xEB00000000746E75;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F43776F72 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E6963617073 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

uint64_t sub_1E68ACE40(char a1)
{
  if (!a1)
  {
    return 0x6F436E6D756C6F63;
  }

  if (a1 == 1)
  {
    return 0x746E756F43776F72;
  }

  return 0x676E6963617073;
}

uint64_t sub_1E68ACEA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F43776F72 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x46797469736E6564 && a2 == 0xED0000726F746361)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E68ACF74(char a1)
{
  if (a1)
  {
    return 0x46797469736E6564;
  }

  else
  {
    return 0x746E756F43776F72;
  }
}

uint64_t sub_1E68ACFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E68ACC14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E68AD010(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E68AD064(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E68AD0C4()
{
  sub_1E68B3B70();
  sub_1E6739CF4(v2, *v0);
  return sub_1E68B3BB0();
}

uint64_t sub_1E68AD118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E68ACD24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E68AD148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E68AD19C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E68AD1F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  sub_1E68B3B70();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1E68B3BB0();
}

uint64_t sub_1E68AD258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E68ACEA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E68AD288(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E68AD2DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasHorizontalGridLayout.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = type metadata accessor for CanvasHorizontalGridLayout.DensityFactorCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v38 = v6;
  v7 = sub_1E68B3AC0();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v39 = v33 - v8;
  v45 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v48 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CanvasHorizontalGridLayout.CustomCodingKeys();
  v33[1] = swift_getWitnessTable();
  v33[2] = v11;
  v12 = sub_1E68B3AC0();
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v34 = v33 - v13;
  v14 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v4;
  v33[0] = v5;
  type metadata accessor for CanvasHorizontalGridLayout.CodingKeys();
  swift_getWitnessTable();
  v43 = sub_1E68B3AC0();
  v47 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v19 = v33 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68B3BD0();
  (*(v14 + 16))(v17, v44, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v42;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v45 + 32))(v48, &v17[*(TupleTypeMetadata2 + 48)], v20);
    v56 = 1;
    v22 = v39;
    v23 = v43;
    sub_1E68B3A30();
    v55 = 0;
    v24 = v41;
    v25 = v46;
    sub_1E68B3AA0();
    if (v25)
    {
      (*(v40 + 8))(v22, v24);
      (*(v45 + 8))(v48, v20);
    }

    else
    {
      v31 = v45;
      v54 = 1;
      sub_1E68B3AB0();
      (*(v40 + 8))(v22, v24);
      (*(v31 + 8))(v48, v20);
    }

    return (*(v47 + 8))(v19, v23);
  }

  else
  {
    v26 = *(v17 + 2);
    v53 = 0;
    v27 = v34;
    v28 = v43;
    sub_1E68B3A30();
    v52 = 0;
    v29 = v36;
    v30 = v46;
    sub_1E68B3AA0();
    if (!v30)
    {
      v51 = 1;
      sub_1E68B3AA0();
      v50 = v26;
      v49 = 2;
      sub_1E67621E8();
      sub_1E68B3AB0();
    }

    (*(v35 + 8))(v27, v29);
    return (*(v47 + 8))(v19, v28);
  }
}

uint64_t CanvasHorizontalGridLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v55 = a4;
  v7 = type metadata accessor for CanvasHorizontalGridLayout.DensityFactorCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v64 = v7;
  v59 = sub_1E68B3A20();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v66 = &v51 - v8;
  v9 = type metadata accessor for CanvasHorizontalGridLayout.CustomCodingKeys();
  v61 = swift_getWitnessTable();
  v62 = v9;
  v57 = sub_1E68B3A20();
  v60 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v65 = &v51 - v10;
  type metadata accessor for CanvasHorizontalGridLayout.CodingKeys();
  swift_getWitnessTable();
  v68 = sub_1E68B3A20();
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v12 = &v51 - v11;
  v69 = a2;
  v56 = a3;
  v13 = type metadata accessor for CanvasHorizontalGridLayout();
  v54 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v51 - v20;
  v22 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v67 = v12;
  v23 = v71;
  sub_1E68B3BC0();
  if (!v23)
  {
    v71 = v15;
    v52 = v18;
    v53 = v21;
    v24 = v67;
    v25 = v68;
    *&v73 = sub_1E68B3A10();
    sub_1E68B33B0();
    swift_getWitnessTable();
    *&v75 = sub_1E68B37A0();
    *(&v75 + 1) = v26;
    *&v76 = v27;
    *(&v76 + 1) = v28;
    sub_1E68B3790();
    swift_getWitnessTable();
    sub_1E68B36B0();
    v29 = v73;
    if (v73 == 2 || (v51 = v75, v73 = v75, v74 = v76, (sub_1E68B36E0() & 1) == 0))
    {
      v35 = sub_1E68B3870();
      swift_allocError();
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
      *v37 = v13;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
      swift_willThrow();
      (*(v70 + 8))(v24, v25);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29)
      {
        LOBYTE(v73) = 1;
        v30 = v66;
        sub_1E68B3970();
        LOBYTE(v73) = 0;
        v31 = v59;
        v32 = sub_1E68B39F0();
        v33 = v70;
        v65 = v32;
        swift_getTupleTypeMetadata2();
        v34 = v71;
        *v71 = v65;
        LOBYTE(v73) = 1;
        sub_1E68B3A00();
        (*(v58 + 8))(v30, v31);
        (*(v33 + 8))(v24, v25);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v45 = *(v54 + 32);
        v46 = v53;
        v45(v53, v34, v13);
      }

      else
      {
        LOBYTE(v73) = 0;
        v38 = v65;
        sub_1E68B3970();
        v39 = v24;
        LOBYTE(v73) = 0;
        v40 = v57;
        v41 = sub_1E68B39F0();
        v42 = v70;
        v43 = v41;
        LOBYTE(v73) = 1;
        v47 = v38;
        v48 = sub_1E68B39F0();
        v77 = 2;
        sub_1E6762A60();
        sub_1E68B3A00();
        (*(v60 + 8))(v47, v40);
        (*(v42 + 8))(v39, v25);
        swift_unknownObjectRelease();
        v49 = v73;
        v50 = v52;
        *v52 = v43;
        v50[1] = v48;
        v50[2] = v49;
        swift_storeEnumTagMultiPayload();
        v45 = *(v54 + 32);
        v46 = v53;
        v45(v53, v50, v13);
      }

      v45(v55, v46, v13);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v72);
}

uint64_t CanvasHorizontalGridLayout.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *v9;
  if (EnumCaseMultiPayload == 1)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v4 + 32))(v7, &v9[*(TupleTypeMetadata2 + 48)], v3);
    MEMORY[0x1E69523D0](1);
    MEMORY[0x1E69523D0](v13);
    sub_1E68B3140();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v16 = *(v9 + 1);
    v17 = *(v9 + 2);
    MEMORY[0x1E69523D0](0);
    MEMORY[0x1E69523D0](v13);
    MEMORY[0x1E69523D0](v16);
    v18 = 0.0;
    if (v17 != 0.0)
    {
      v18 = v17;
    }

    return MEMORY[0x1E69523F0](*&v18);
  }
}

uint64_t CanvasHorizontalGridLayout.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  CanvasHorizontalGridLayout.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E68AE50C(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  CanvasHorizontalGridLayout.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E68AE578(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = 24;
  if (((*(*(*(a3 + 16) - 8) + 80) + 8) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64) > 0x18)
  {
    v3 = ((*(*(*(a3 + 16) - 8) + 80) + 8) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1E68AE6CC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 80) + 8) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x18)
  {
    v5 = 24;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1E68AE9D4(uint64_t a1)
{
  v2 = sub_1E68AEF40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68AEA10(uint64_t a1)
{
  v2 = sub_1E68AEF40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E68AEA4C()
{
  if (*v0)
  {
    return 1920298082;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1E68AEA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E68B3B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1920298082 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E68B3B00();

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

uint64_t sub_1E68AEB4C(uint64_t a1)
{
  v2 = sub_1E68AEEEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68AEB88(uint64_t a1)
{
  v2 = sub_1E68AEEEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E68AEBC4(uint64_t a1)
{
  v2 = sub_1E68AEF94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68AEC00(uint64_t a1)
{
  v2 = sub_1E68AEF94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Overlay.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A218);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A220);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A228);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68AEEEC();
  sub_1E68B3BD0();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1E68AEF40();
    v14 = v18;
    sub_1E68B3A30();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1E68AEF94();
    sub_1E68B3A30();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1E68AEEEC()
{
  result = qword_1EE2EA9F8;
  if (!qword_1EE2EA9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA9F8);
  }

  return result;
}

unint64_t sub_1E68AEF40()
{
  result = qword_1EE2EA9E0;
  if (!qword_1EE2EA9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA9E0);
  }

  return result;
}

unint64_t sub_1E68AEF94()
{
  result = qword_1ED09A230;
  if (!qword_1ED09A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A230);
  }

  return result;
}

uint64_t Overlay.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A238);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A240);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A248);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68AEEEC();
  v12 = v31;
  sub_1E68B3BC0();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1E68B3A10();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1E676F5C8();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1E68B3870();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
      *v22 = &type metadata for Overlay;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1E68AEF40();
        sub_1E68B3970();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1E68AEF94();
        sub_1E68B3970();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t Overlay.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E68AF54C()
{
  result = qword_1ED09A250;
  if (!qword_1ED09A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A250);
  }

  return result;
}

unint64_t sub_1E68AF5E4()
{
  result = qword_1ED09A258;
  if (!qword_1ED09A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A258);
  }

  return result;
}

unint64_t sub_1E68AF63C()
{
  result = qword_1EE2EA9C0;
  if (!qword_1EE2EA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA9C0);
  }

  return result;
}

unint64_t sub_1E68AF694()
{
  result = qword_1EE2EA9C8;
  if (!qword_1EE2EA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA9C8);
  }

  return result;
}

unint64_t sub_1E68AF6EC()
{
  result = qword_1EE2EA9D0;
  if (!qword_1EE2EA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA9D0);
  }

  return result;
}

unint64_t sub_1E68AF744()
{
  result = qword_1EE2EA9D8;
  if (!qword_1EE2EA9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA9D8);
  }

  return result;
}

unint64_t sub_1E68AF79C()
{
  result = qword_1EE2EA9E8;
  if (!qword_1EE2EA9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA9E8);
  }

  return result;
}

unint64_t sub_1E68AF7F4()
{
  result = qword_1EE2EA9F0;
  if (!qword_1EE2EA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA9F0);
  }

  return result;
}

uint64_t sub_1E68AF848@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, double *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v88 = a6;
  v80 = a4;
  v79 = a3;
  v84 = a2;
  v83 = a1;
  v95 = a9;
  v16 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v82 = &v73 - v17;
  v18 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v75 = &v73 - v19;
  v74 = sub_1E68B17F0();
  v20 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a8;
  v99 = a8;
  v86 = a10;
  v100 = a10;
  v87 = a11;
  v101 = a11;
  v85 = a12;
  v102 = a12;
  v23 = type metadata accessor for CanvasSectionHeaderView();
  v77 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v76 = &v73 - v24;
  sub_1E68B2390();
  v90 = v23;
  v25 = sub_1E68B1E40();
  v81 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v73 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v78 = &v73 - v28;
  v96 = a7;
  v29 = *(a7 + 24);
  v30 = sub_1E68B3750();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v73 - v32;
  v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  v94 = sub_1E68B2220();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v73 - v34;
  v35 = *a5;
  v36 = a5[1];
  v37 = a5[2];
  v38 = a5[3];
  v39 = v12;
  if ((sub_1E68B1790() & 1) == 0)
  {
    goto LABEL_5;
  }

  (*(v31 + 16))(v33, v12 + *(v96 + 52), v30);
  if ((*(*(v29 - 8) + 48))(v33, 1, v29) != 1)
  {
    (*(v31 + 8))(v33, v30);
LABEL_5:
    sub_1E68B2150();
    v99 = sub_1E68B26C0();
    v100 = v43;
    LOBYTE(v101) = v44;
    v102 = v45;
    v46 = sub_1E68B1800();
    MEMORY[0x1EEE9AC00](v46);
    v71 = &v99;
    v72 = v12;
    sub_1E689B350(sub_1E67611A0, v70);
    (*(v20 + 8))(v22, v74);
    v47 = v99;
    v48 = v100;
    v49 = v101;
    v50 = v102;
    v51 = v96;
    v52 = v75;
    v53 = v86;
    sub_1E6748AE4(v79, v39 + *(v96 + 52), v86, v29, v75);
    v54 = v82;
    sub_1E6748AE4(v83, v39 + *(v51 + 56), v89, *(v51 + 16), v82);
    v71 = v85;
    v70[0] = v53;
    v70[1] = v87;
    v55 = v76;
    sub_1E6844258(v88, v47, v48, v49, v50, v52, v54, v76, 5.0);
    v56 = v90;
    WitnessTable = swift_getWitnessTable();
    v58 = v73;
    sub_1E6883E9C(v56, WitnessTable, v37, v36, v35, v38);
    (*(v77 + 8))(v55, v56);
    v59 = sub_1E68B0284();
    v117 = WitnessTable;
    v118 = v59;
    v60 = swift_getWitnessTable();
    v61 = v78;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v58, v25, v60);
    v62 = *(v81 + 8);
    v62(v58, v25);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v61, v25, v60);
    sub_1E673F2EC();
    v42 = v91;
    sub_1E6744DB8(v58, v92, v25);
    v62(v58, v25);
    v62(v61, v25);
    goto LABEL_6;
  }

  (*(v31 + 8))(v33, v30);
  sub_1E68B2E80();
  sub_1E68B1C50();
  v112 = 1;
  v110 = v120;
  v108 = v122;
  v99 = 0;
  LOBYTE(v100) = 1;
  *(&v100 + 1) = *v111;
  HIDWORD(v100) = *&v111[3];
  v101 = v119;
  LOBYTE(v102) = v120;
  *(&v102 + 1) = *v109;
  HIDWORD(v102) = *&v109[3];
  v103 = v121;
  v104 = v122;
  *&v105[3] = *&v107[3];
  *v105 = *v107;
  v106 = v123;
  sub_1E673F2EC();
  v40 = swift_getWitnessTable();
  v41 = sub_1E68B0284();
  v97 = v40;
  v98 = v41;
  swift_getWitnessTable();
  v42 = v91;
  sub_1E6744CC0(&v99, v92);
LABEL_6:
  v63 = sub_1E673F2EC();
  v64 = swift_getWitnessTable();
  v65 = sub_1E68B0284();
  v115 = v64;
  v116 = v65;
  v66 = swift_getWitnessTable();
  v113 = v63;
  v114 = v66;
  v67 = v94;
  v68 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v42, v67, v68);
  return (*(v93 + 8))(v42, v67);
}

unint64_t sub_1E68B0284()
{
  result = qword_1EE2EA5E8;
  if (!qword_1EE2EA5E8)
  {
    sub_1E68B2390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA5E8);
  }

  return result;
}

uint64_t sub_1E68B02DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E68B1BC0();
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_1E68B1BD0();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_1E68B1D30();
}

uint64_t View.containerAspectRatio(_:contentMode:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = a1 & 1;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;
  *(v13 + 48) = v12;
  v15[2] = a2;
  v15[3] = a3;
  v16 = v6;
  sub_1E68B165C(sub_1E68B0618, v15, a4);
}

uint64_t sub_1E68B053C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v6, v9, v10);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v8, a2, a3);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_1E68B0624(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED09A260);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContainerAspectRatioLayout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ContainerAspectRatioLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E68B070C(uint64_t result, char a2, uint64_t a3, char a4, char a5, double a6, double a7)
{
  if (a2)
  {
    if (a4)
    {
      return result;
    }

    v7 = a6 / a7 * *&a3;
LABEL_9:
    *&result = v7;
    return result;
  }

  if ((a4 & 1) == 0)
  {
    v8 = a6 / a7;
    if (*&result / *&a3 < v8 != (a5 & 1))
    {
      v7 = v8 * *&a3;
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t sub_1E68B0798(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, uint64_t a12, int a13)
{
  LODWORD(v50) = a13;
  v48 = a5;
  v51 = sub_1E68B1CD0();
  v47 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E68B1D80();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097658);
  v30 = v29 - 8;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v47 - v31;
  LOBYTE(v52[0]) = a2 & 1;
  v53 = a4 & 1;
  v33 = sub_1E68B070C(a1, a2 & 1, a3, a4 & 1, v50 & 1, a10, a11);
  v49 = v34;
  v50 = v33;
  v36 = v35;
  v38 = v37;
  (*(v26 + 16))(v28, v48, v25);
  sub_1E6776634(&qword_1EE2EA860);
  sub_1E68B32C0();
  v39 = *(v30 + 44);
  sub_1E6776634(&qword_1EE2EA858);
  sub_1E68B3690();
  if (*&v32[v39] != v52[0])
  {
    v40 = v38;
    v41 = (v47 + 16);
    v42 = (v47 + 8);
    v43 = v36 & 1;
    LODWORD(v48) = v40 & 1;
    do
    {
      v44 = sub_1E68B36F0();
      v45 = v51;
      (*v41)(v24);
      v44(v52, 0);
      sub_1E68B36A0();
      v54.origin.x = a6;
      v54.origin.y = a7;
      v54.size.width = a8;
      v54.size.height = a9;
      CGRectGetMidX(v54);
      v55.origin.x = a6;
      v55.origin.y = a7;
      v55.size.width = a8;
      v55.size.height = a9;
      CGRectGetMidY(v55);
      sub_1E68B2F50();
      LOBYTE(v52[0]) = v43;
      v53 = v48;
      sub_1E68B1CC0();
      (*v42)(v24, v45);
      sub_1E68B3690();
    }

    while (*&v32[v39] != v52[0]);
  }

  return sub_1E68B0D10(v32);
}

void (*sub_1E68B0C2C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E68B1AF0();
  return sub_1E67768A4;
}

unint64_t sub_1E68B0CBC()
{
  result = qword_1ED09A278;
  if (!qword_1ED09A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A278);
  }

  return result;
}

uint64_t sub_1E68B0D10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E68B0D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v17 - v13;
  v12();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v14, a4, a6);
  return (v15)(v14, a4);
}

char *sub_1E68B0EAC(char *a1, int64_t a2, char a3)
{
  result = sub_1E68B0FB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E68B0ECC(char *a1, int64_t a2, char a3)
{
  result = sub_1E68B10BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E68B0EEC(size_t a1, int64_t a2, char a3)
{
  result = sub_1E68B11C0(a1, a2, a3, *v3, &qword_1ED09A298, &unk_1E68C7690, MEMORY[0x1E697E168]);
  *v3 = result;
  return result;
}

size_t sub_1E68B0F30(size_t a1, int64_t a2, char a3)
{
  result = sub_1E68B11C0(a1, a2, a3, *v3, &qword_1ED097870, &unk_1E68B8910, type metadata accessor for TextContent.Component);
  *v3 = result;
  return result;
}

size_t sub_1E68B0F74(size_t a1, int64_t a2, char a3)
{
  result = sub_1E68B11C0(a1, a2, a3, *v3, &qword_1ED09A290, &unk_1E68C7688, MEMORY[0x1E697D750]);
  *v3 = result;
  return result;
}

char *sub_1E68B0FB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097DD8);
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

char *sub_1E68B10BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A280);
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

size_t sub_1E68B11C0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

uint64_t sub_1E68B139C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v34 = a1;
  *&v35.f64[0] = a3;
  v33 = sub_1E68B1CD0();
  v6 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E68B1D80();
  sub_1E6776634(&qword_1EE2EA858);
  v10 = sub_1E68B3670();
  v12 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v13 = v10;
    v38 = MEMORY[0x1E69E7CC0];
    sub_1E68B0ECC(0, v10 & ~(v10 >> 63), 0);
    v12 = v38;
    result = sub_1E68B3660();
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    v31 = (v6 + 8);
    v32 = (v6 + 16);
    v30 = a4 & 1;
    do
    {
      v15 = sub_1E68B36F0();
      v16 = v9;
      v17 = v33;
      (*v32)(v8);
      v15(v37, 0);
      v37[0] = a2 & 1;
      v36 = v30;
      sub_1E68B1CB0();
      v19 = v18;
      v21 = v20;
      (*v31)(v8, v17);
      v38 = v12;
      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1E68B0ECC((v22 > 1), v23 + 1, 1);
        v12 = v38;
      }

      *(v12 + 16) = v23 + 1;
      v24 = v12 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      sub_1E68B36A0();
      --v13;
      v9 = v16;
    }

    while (v13);
  }

  v25 = *(v12 + 16);
  if (v25)
  {
    v26 = (v12 + 32);
    v27 = 0uLL;
    do
    {
      v28 = *v26++;
      v27 = vbslq_s8(vcgeq_f64(v28, v27), v28, v27);
      --v25;
    }

    while (v25);
    v35 = v27;
  }

  else
  {
    v11.f64[0] = 0.0;
    v35 = v11;
  }
}

uint64_t sub_1E68B165C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = sub_1E68B16DC();
  return sub_1E68B02DC(a1, a2, &type metadata for ContainerAspectRatioLayout, v7, v9, v8, a3);
}

unint64_t sub_1E68B16DC()
{
  result = qword_1ED09A288;
  if (!qword_1ED09A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A288);
  }

  return result;
}