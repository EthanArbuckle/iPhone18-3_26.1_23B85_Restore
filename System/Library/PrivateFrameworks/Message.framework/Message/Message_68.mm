uint64_t sub_1B0BF87C0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v21[2] = *(a1 + 32);
  v21[3] = v2;
  v21[4] = *(a1 + 64);
  v3 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v3;
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v7 = *(a1 + 104);
  v19 = *(a1 + 120);
  v20 = *(a1 + 112);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[4];
  v22[3] = a2[3];
  v22[4] = v10;
  v11 = a2[2];
  v22[1] = v9;
  v22[2] = v11;
  v22[0] = v8;
  v13 = *(a2 + 10);
  v12 = *(a2 + 11);
  v14 = *(a2 + 12);
  v15 = *(a2 + 13);
  v16 = *(a2 + 14);
  v17 = *(a2 + 15);
  if ((sub_1B0C0FEBC(v21, v22) & 1) == 0)
  {
    return 0;
  }

  if (v5 >> 60 == 11)
  {
    if (v12 >> 60 != 11)
    {
      return 0;
    }
  }

  else if (v5 >> 60 == 15)
  {
    if (v12 >> 60 != 15)
    {
      return 0;
    }
  }

  else if (((v12 >> 60) | 4) == 0xF || (sub_1B0AB8858(v4, v5, v13, v12) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B0AB8858(v6, v7, v14, v15) & 1) == 0)
  {
    return 0;
  }

  return sub_1B0AB8858(v20, v19, v16, v17);
}

uint64_t sub_1B0BF8914()
{
  v1 = v0[11];
  if (v1 >> 60 == 11)
  {
    sub_1B0BCD47C();
    swift_allocError();
    *v3 = xmmword_1B0ECE570;
    *(v3 + 16) = 1;
    return swift_willThrow();
  }

  else if (v1 >> 60 == 15)
  {
    return 0;
  }

  else
  {
    v4 = v0[10];
    sub_1B03B2000(v4, v0[11]);
    sub_1B0BD1354(v4, v1);
    *(v0 + 5) = xmmword_1B0ECD820;
    v5 = sub_1B0BF8AAC(v0[12], v0[13], v0[14], v0[15], v4, v1);
    sub_1B0BD1354(v4, v1);
    return v5;
  }
}

uint64_t sub_1B0BF8A08(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 88);
  if (v3 >> 60 == 15)
  {
    v4 = *(v2 + 80);
    sub_1B03B2000(a1, a2);
    result = sub_1B0BD1354(v4, v3);
    *(v2 + 80) = a1;
    *(v2 + 88) = a2;
  }

  else
  {
    sub_1B0BCD47C();
    swift_allocError();
    *v8 = xmmword_1B0ECE570;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0BF8AAC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v49 = a1;
  v50 = a2;
  v10 = sub_1B0E44508();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55B0, &qword_1B0ED3120);
  v48 = *(v15 - 8);
  v16 = v48;
  v17 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - v18;
  v53 = a5;
  v54 = a6;
  v57 = a3;
  v58 = a4;
  sub_1B03B2000(a5, a6);
  sub_1B03B2000(a3, a4);
  sub_1B0E444F8();
  sub_1B0E44568();
  sub_1B0BF8F04();
  sub_1B08DEFE0();
  v47 = v19;
  sub_1B0E44518();
  (*(v11 + 8))(v14, v10);
  sub_1B0391D50(v53, v54);
  v55 = v15;
  v56 = sub_1B039E3F8(&qword_1EB6E55C0, &qword_1EB6E55B0, &qword_1B0ED3120);
  v20 = __swift_allocate_boxed_opaque_existential_1(&v53);
  v21 = *(v16 + 16);
  v46 = v15;
  v21(v20, v19, v15);
  __swift_project_boxed_opaque_existential_0(&v53, v55);
  sub_1B0E42B88();
  v22 = v57;
  v23 = v58;
  __swift_destroy_boxed_opaque_existential_0(&v53);
  v53 = sub_1B0BF8444(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
  v24 = sub_1B0E448E8();
  v26 = v25;
  sub_1B0391D50(v22, v23);

  v27 = sub_1B0C01268(32, 0xE100000000000000);
  v29 = v28;
  v30 = v49;
  v31 = v50;
  v51 = v49;
  v52 = v50;
  v55 = MEMORY[0x1E6969080];
  v56 = MEMORY[0x1E6969078];
  v53 = v27;
  v54 = v28;
  v32 = MEMORY[0x1E6969080];
  v33 = __swift_project_boxed_opaque_existential_0(&v53, MEMORY[0x1E6969080]);
  v34 = *v33;
  v35 = v33[1];
  sub_1B03B2000(v30, v31);
  sub_1B03B2000(v27, v29);
  sub_1B0C05070(v34, v35);
  sub_1B0391D50(v27, v29);
  __swift_destroy_boxed_opaque_existential_0(&v53);
  v36 = v51;
  v37 = v52;
  v38 = sub_1B0C01268(v24, v26);
  v40 = v39;
  v57 = v36;
  v58 = v37;
  v55 = v32;
  v56 = MEMORY[0x1E6969078];
  v53 = v38;
  v54 = v39;
  v41 = __swift_project_boxed_opaque_existential_0(&v53, v32);
  v42 = *v41;
  v43 = v41[1];
  sub_1B03B2000(v36, v37);
  sub_1B03B2000(v38, v40);
  sub_1B0C05070(v42, v43);
  sub_1B0391D50(v38, v40);
  sub_1B0391D50(v36, v37);
  (*(v48 + 8))(v47, v46);
  __swift_destroy_boxed_opaque_existential_0(&v53);
  return v57;
}

unint64_t sub_1B0BF8F04()
{
  result = qword_1EB6E55B8;
  if (!qword_1EB6E55B8)
  {
    sub_1B0E44568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E55B8);
  }

  return result;
}

uint64_t sub_1B0BF8F6C()
{
  v1 = v0;
  v2 = *(v0 + 72);
  if (v2)
  {
    v3 = *(v1 + 64);
    v4 = *(v1 + 24);
    v6 = *(v1 + 40);
    v5 = *(v1 + 48);
    v7 = *(v1 + 32);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v2;
    *(v8 + 32) = v6;
    *(v8 + 40) = v5;
    *(v8 + 48) = v4;
    swift_retain_n();

    sub_1B0E43DA8();
  }

  v9 = *(v1 + 16);

  v10 = *(v1 + 48);

  v11 = *(v1 + 72);

  return swift_deallocClassInstance();
}

uint64_t DataTransferReport.receivedTransportByteCount.setter(uint64_t result)
{
  *(v1 + 24) = result;
  return result;
}

{
  *v1 = result;
  return result;
}

double (*DataTransferReport.receivedTransportByteCount.modify())(void)
{
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

{
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

uint64_t DataTransferReport.sentTransportByteCount.setter(uint64_t result)
{
  *(v1 + 32) = result;
  return result;
}

{
  *(v1 + 8) = result;
  return result;
}

double (*DataTransferReport.sentTransportByteCount.modify())(void)
{
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

{
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

uint64_t DataTransferReport.init(connection:start:duration:receivedTransportByteCount:sentTransportByteCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

unint64_t DataTransferReport.receivedApplicationBitrate.getter()
{
  v1 = *(v0 + 16);
  if (v1 <= 0.0)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  if ((v2 - 0x1000000000000000) >> 61 == 7)
  {
    v3 = (8 * v2) / v1;
    v4 = round(v3);
    v5 = v4 >= 9.22337204e18 || v4 <= -9.22337204e18;
    v6 = llround(v3);
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t DataTransferReport.sentApplicationBitrate.getter()
{
  v1 = *(v0 + 16);
  if (v1 <= 0.0)
  {
    return 0;
  }

  v2 = *(v0 + 32);
  if ((v2 - 0x1000000000000000) >> 61 == 7)
  {
    v3 = (8 * v2) / v1;
    v4 = round(v3);
    v5 = v4 >= 9.22337204e18 || v4 <= -9.22337204e18;
    v6 = llround(v3);
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BF92E4(uint64_t a1, int a2)
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

uint64_t sub_1B0BF9304(uint64_t result, int a2, int a3)
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

ValueMetadata *type metadata accessor for DataTransferReport()
{
  return &type metadata for DataTransferReport;
}

{
  return &type metadata for DataTransferReport;
}

uint64_t sub_1B0BF9348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B0BF9390(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int *sub_1B0BF93DC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  LODWORD(v117) = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55E8, &qword_1B0ED3430);
  v9 = *(*(v108 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v108);
  v105 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v118 = &v96 - v12;
  v104 = type metadata accessor for Deflate.PartialResult(0);
  v13 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for Deflate.InputBuffer(0);
  v16 = *(*(v116 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v116);
  v98 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v103 = (&v96 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v100 = (&v96 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v107 = (&v96 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v106 = (&v96 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = (&v96 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v96 - v30;
  v119 = sub_1B0E443C8();
  v99 = *(v119 - 8);
  v32 = *(v99 + 64);
  v33 = MEMORY[0x1EEE9AC00](v119);
  v114 = &v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v96 - v35;
  if (sub_1B0BF9E98())
  {
    sub_1B0E44378();
    v37 = *(v3 + 16);
    result = swift_beginAccess();
    v39 = *(v37 + 32);
    if (v39 < 0)
    {
LABEL_57:
      __break(1u);
    }

    else
    {
      v40 = *(v37 + 56);
      if ((v40 & 0x8000000000000000) == 0)
      {
        result = type metadata accessor for Deflate.Result(0);
        v41 = 0;
        v42 = (a3 + result[5]);
        *v42 = 0;
        v42[1] = 0;
LABEL_5:
        v43 = (a3 + result[6]);
        *v43 = v39;
        v43[1] = v40;
        *(a3 + result[7]) = v41;
        return result;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  result = sub_1B0BFA03C(v117 & 1, v36);
  if (v4)
  {
    return result;
  }

  v97 = a3;
  v96 = a1;
  sub_1B0BFBC60(a1, v31);
  v44 = (v99 + 32);
  v109 = v36;
  v110 = (v99 + 8);
  v45 = 1;
  v46 = v119;
  v115 = (v99 + 32);
  v102 = v29;
  v101 = v3;
  v113 = v15;
  while (1)
  {
    v112 = v45;
    sub_1B0BFBC60(v31, v29);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      if (!*v29)
      {
        v48 = 0;
        goto LABEL_15;
      }

      v48 = v29[1] - *v29;
    }

    else
    {
      v49 = *v44;
      v50 = v114;
      v49(v114, v29, v46);
      v48 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      v51 = v50;
      v44 = v115;
      result = (*v110)(v51, v46);
    }

    if ((v48 & 0x8000000000000000) != 0)
    {
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
      goto LABEL_57;
    }

LABEL_15:
    v52 = *(v6 + 16);
    swift_beginAccess();

    v53 = deflateBound((v52 + 16), v48);
    swift_endAccess();

    if ((v53 & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    v54 = __OFADD__(v53, 20);
    v55 = v53 + 20;
    if (v54)
    {
      goto LABEL_52;
    }

    if (qword_1EB6E5368 != -1)
    {
      result = swift_once();
    }

    if (v55 >= qword_1EB6E55D0 / 2)
    {
      if (!qword_1EB6E55D0)
      {
        goto LABEL_55;
      }

      v56 = (v55 >> 1) / qword_1EB6E55D0 + 1;
      v55 = qword_1EB6E55D0 * v56;
      if ((qword_1EB6E55D0 * v56) >> 64 != (qword_1EB6E55D0 * v56) >> 63)
      {
        goto LABEL_56;
      }
    }

    v57 = *(v6 + 16);
    v120[0] = 0;
    MEMORY[0x1EEE9AC00](result);
    *(&v96 - 6) = v31;
    *(&v96 - 5) = v57;
    *(&v96 - 4) = sub_1B0BFC6F4;
    *(&v96 - 3) = v58;
    *(&v96 - 2) = v120;

    v59 = v118;
    v60 = sub_1B0BFA830(v118, v55, sub_1B0BFC710);
    if (v5)
    {
      (*v110)(v109, v119);

      return sub_1B0BFC7FC(v31, type metadata accessor for Deflate.InputBuffer);
    }

    v111 = 0;
    v61 = *(v108 + 48);
    LODWORD(v117) = v60 & 1;
    *(v59 + v61) = v60 & 1;
    v62 = v120[0];
    v63 = v107;
    sub_1B0BFBC60(v31, v107);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v66 = v114;
      v67 = v63;
      v65 = v119;
      (*v44)(v114, v67, v119);
      v64 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (*v110)(v66, v65);
LABEL_27:
      v68 = v62 == v64;
      v69 = v118;
      if (v68)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }

    if (*v63)
    {
      v64 = v63[1] - *v63;
      v65 = v119;
      goto LABEL_27;
    }

    v69 = v59;
    v65 = v119;
    if (!v62)
    {
LABEL_29:
      v70 = v106;
      sub_1B0E44378();

      swift_storeEnumTagMultiPayload();
      goto LABEL_39;
    }

LABEL_32:
    v71 = v100;
    sub_1B0BFBC60(v31, v100);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      if (*v71)
      {
        v72 = v71[1] - *v71;
      }

      else
      {
        v72 = 0;
      }
    }

    else
    {
      v73 = v114;
      (*v44)(v114, v71, v65);
      v72 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      result = (*v110)(v73, v65);
    }

    v70 = v106;
    if (v72 < v62)
    {
      goto LABEL_54;
    }

    sub_1B0BFB8B4(v62, v72, v106);

    v69 = v118;
LABEL_39:
    v74 = v69;
    v75 = v105;
    sub_1B0BFC728(v74, v105);
    v44 = v115;
    v76 = *v115;
    v77 = v113;
    v78 = v119;
    (*v115)(v113, v75, v119);
    v79 = v104;
    v80 = *(v104 + 20);
    sub_1B0BFC798(v70, v77 + v80);
    *(v77 + *(v79 + 24)) = v117;
    sub_1B0E44388();
    sub_1B0BFC7FC(v31, type metadata accessor for Deflate.InputBuffer);
    sub_1B0BFBC60(v77 + v80, v31);
    v81 = v31;
    v82 = v31;
    v83 = v103;
    sub_1B0BFBC60(v82, v103);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v84 = v101;
      v29 = v102;
      if (*v83 && v83[1] != *v83)
      {
LABEL_44:
        result = sub_1B0BFC7FC(v113, type metadata accessor for Deflate.PartialResult);
        v31 = v81;
        goto LABEL_9;
      }
    }

    else
    {
      v85 = v114;
      v76(v114, v83, v78);
      sub_1B075CEE0();
      sub_1B0E45668();
      sub_1B0E456C8();
      (*v110)(v85, v78);
      v84 = v101;
      v29 = v102;
      if (v120[0] != v120[5])
      {
        goto LABEL_44;
      }
    }

    result = sub_1B0BFC7FC(v113, type metadata accessor for Deflate.PartialResult);
    v47 = v109;
    v31 = v81;
    if (!v117)
    {
      break;
    }

LABEL_9:
    v5 = v111;
    v45 = v112 + 1;
    v6 = v84;
    v46 = v119;
    if (__OFADD__(v112, 1))
    {
      goto LABEL_53;
    }
  }

  v87 = v99 + 16;
  v86 = *(v99 + 16);
  a3 = v97;
  v88 = v119;
  v86(v97, v109, v119);
  v89 = v98;
  sub_1B0BFBC60(v96, v98);
  v90 = v114;
  v86(v114, v47, v88);
  v118 = sub_1B0BFA4B0();
  v117 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v91 = v84;
  v92 = *(v87 - 8);
  v92(v90, v88);
  sub_1B0BFC7FC(v89, type metadata accessor for Deflate.InputBuffer);
  v92(v47, v88);
  sub_1B0BFC7FC(v31, type metadata accessor for Deflate.InputBuffer);
  v93 = *(v91 + 16);
  result = swift_beginAccess();
  v39 = *(v93 + 32);
  if (v39 < 0)
  {
    goto LABEL_59;
  }

  v40 = *(v93 + 56);
  if ((v40 & 0x8000000000000000) == 0)
  {
    result = type metadata accessor for Deflate.Result(0);
    v94 = (a3 + result[5]);
    v95 = v117;
    *v94 = v118;
    v94[1] = v95;
    v41 = v112;
    goto LABEL_5;
  }

LABEL_60:
  __break(1u);
  return result;
}

BOOL sub_1B0BF9E98()
{
  v1 = v0;
  v2 = sub_1B0E443C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Deflate.InputBuffer(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0BFBC60(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!*v10)
    {
      return 1;
    }

    return v10[1] == *v10;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1B075CEE0();
    sub_1B0E45668();
    sub_1B0E456C8();
    (*(v3 + 8))(v6, v2);
    return v13[1] == v13[0];
  }
}

uint64_t sub_1B0BFA03C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46[4] = *MEMORY[0x1E69E9840];
  v42 = sub_1B0E442E8();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55E8, &qword_1B0ED3430);
  v10 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v12 = &v34 - v11;
  v13 = sub_1B0E443C8();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 24) == (a1 & 1))
  {
    result = sub_1B0E44378();
LABEL_13:
    v33 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v36 = v16;
    v37 = v15;
    v35 = a2;
    *(v3 + 24) = a1 & 1;
    sub_1B0E44378();
    v40 = v46;
    v39 = *MEMORY[0x1E69E7FC8];
    v38 = (v6 + 104);
    while (1)
    {
      v19 = *(v3 + 16);
      pending = 0;
      swift_beginAccess();

      v20 = deflatePending((v19 + 16), &pending, 0);
      swift_endAccess();
      if (v20)
      {

        v21 = 1044;
      }

      else
      {
        v22 = pending;

        v21 = v22 + 21;
      }

      v23 = *(v3 + 16);

      v24 = swift_slowAlloc();
      v25 = v24 + v21;
      v26 = v43;
      v27 = sub_1B0BFC1C8(&pending, v24, v24 + v21, v23, v3);
      v43 = v26;
      if (v26)
      {
        MEMORY[0x1B272C230](v24, -1, -1);
        swift_willThrow();

        result = (*(v36 + 8))(v18, v37);
        goto LABEL_13;
      }

      if (v27 < 0 || v21 < v27)
      {
        break;
      }

      v28 = *(v41 + 48);
      v29 = swift_allocObject();
      *(v29 + 16) = v24;
      *(v29 + 24) = v25;
      v46[2] = sub_1B0BFCD70;
      v46[3] = v29;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v46[0] = sub_1B038C908;
      v46[1] = &block_descriptor_28_0;
      v30 = _Block_copy(aBlock);
      *v9 = 0;
      v9[1] = v30;
      (*v38)(v9, v39, v42);
      sub_1B0E442F8();

      v31 = pending;
      v12[v28] = pending;
      sub_1B0E44388();
      sub_1B0BFCA28(v12);
      if ((v31 & 1) == 0)
      {
        result = (*(v36 + 32))(v35, v18, v37);
        goto LABEL_13;
      }
    }

    result = sub_1B0E465B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BFA4B0()
{
  v1 = v0;
  v2 = sub_1B0E443C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Deflate.InputBuffer(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0BFBC60(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (*v10)
    {
      return v10[1] - *v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v12 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    (*(v3 + 8))(v6, v2);
    return v12;
  }
}

uint64_t sub_1B0BFA628(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  swift_beginAccess();

  v4 = deflate((v3 + 16), a1 & 1);
  swift_endAccess();
  if (v4 && v4 != -5)
  {
    sub_1B0BFC8A0();
    swift_allocError();
    *v5 = "deflate";
    *(v5 + 8) = 7;
    *(v5 + 16) = 2;
    *(v5 + 20) = v4;
    swift_willThrow();
  }
}

uint64_t sub_1B0BFA6F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_beginAccess();

  v3 = deflate((v2 + 16), 5);
  swift_endAccess();
  if (v3)
  {
    v4 = v3 == -5;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v8 = "deflate";
    v9 = 7;
LABEL_14:
    sub_1B0BFC8A0();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = v9;
    *(v10 + 16) = 2;
    *(v10 + 20) = v3;
    swift_willThrow();
  }

  v5 = *(a1 + 16);
  if (*(a1 + 24))
  {
    v6 = 5;
  }

  else
  {
    v6 = 1;
  }

  if (*(a1 + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = 4;
  }

  swift_beginAccess();

  v3 = deflateParams((v5 + 16), v6, v7);
  swift_endAccess();
  if (v3)
  {
    v8 = "deflateParams";
    v9 = 13;
    goto LABEL_14;
  }
}

uint64_t sub_1B0BFA830(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v17[1] = a1;
  v7 = sub_1B0E442E8();
  v17[0] = *(v7 - 8);
  v8 = *(v17[0] + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_slowAlloc();
  v12 = sub_1B0BFC290(&v19, v11, v11 + a2, v3, a3);
  if (v4)
  {
    MEMORY[0x1B272C230](v11, -1, -1);
    return swift_willThrow();
  }

  v14 = v17[0];
  if (a2 < 0)
  {
    __break(1u);
LABEL_9:
    result = sub_1B0E465B8();
    __break(1u);
    return result;
  }

  if (v12 < 0 || v12 > a2)
  {
    goto LABEL_9;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = v11 + a2;
  aBlock[4] = sub_1B0BFC85C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B038C908;
  aBlock[3] = &block_descriptor_27;
  v16 = _Block_copy(aBlock);
  *v10 = 0;
  v10[1] = v16;
  (*(v14 + 104))(v10, *MEMORY[0x1E69E7FC8], v7);
  sub_1B0E442F8();

  return v19;
}

uint64_t sub_1B0BFAA84()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

int *sub_1B0BFAAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = sub_1B0E442E8();
  v126 = *(v116 - 8);
  v6 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = (&v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55E8, &qword_1B0ED3430);
  v8 = *(*(v114 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v114);
  v111 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v123 = &v99 - v11;
  v110 = type metadata accessor for Deflate.PartialResult(0);
  v12 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v122 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for Deflate.InputBuffer(0);
  v14 = *(*(v127 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v127);
  v17 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v109 = (&v99 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v103 = (&v99 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v113 = (&v99 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v112 = &v99 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v117 = &v99 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v99 - v28;
  v118 = sub_1B0E443C8();
  v30 = *(v118 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v118);
  v120 = &v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v99 - v34;
  v36 = sub_1B0BF9E98();
  v124 = v3;
  if (v36)
  {
    sub_1B0E44378();
    v37 = *(v2 + 16);
    swift_beginAccess();
    v38 = *(v37 + 32);
    if (v38 < 0)
    {
LABEL_67:
      __break(1u);
    }

    else
    {
      v39 = *(v37 + 56);
      if ((v39 & 0x8000000000000000) == 0)
      {
        result = type metadata accessor for Deflate.Result(0);
        v41 = 0;
        v42 = (a2 + result[5]);
        *v42 = 0;
        v42[1] = 0;
LABEL_57:
        v96 = (a2 + result[6]);
        *v96 = v38;
        v96[1] = v39;
        *(a2 + result[7]) = v41;
        return result;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v101 = v17;
  v108 = v2;
  v102 = a2;
  sub_1B0E44378();
  sub_1B0BFBC60(a1, v29);
  v125 = (v30 + 32);
  v119 = (v30 + 8);
  v106 = v129;
  v105 = *MEMORY[0x1E69E7FC8];
  v104 = (v126 + 104);
  v43 = 1;
  v44 = v117;
  v45 = v118;
  v100 = a1;
  v99 = v30;
  v107 = v35;
  while (1)
  {
    v121 = v43;
    sub_1B0BFBC60(v29, v44);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      if (*v44)
      {
        v47 = v44[1] - *v44;
      }

      else
      {
        v47 = 0;
      }
    }

    else
    {
      v48 = v120;
      (*v125)(v120, v44, v45);
      v47 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      EnumCaseMultiPayload = (*v119)(v48, v45);
    }

    v49 = v108;
    v50 = (v47 * 3) >> 64;
    v51 = 3 * v47;
    if (v50 != v51 >> 63)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (qword_1EB6E5368 != -1)
    {
      EnumCaseMultiPayload = swift_once();
    }

    if (v51 >= qword_1EB6E55D0 / 2)
    {
      v53 = v51 + qword_1EB6E55D0;
      if (__OFADD__(v51, qword_1EB6E55D0))
      {
        goto LABEL_62;
      }

      v54 = __OFSUB__(v53, 1);
      v55 = v53 - 1;
      if (v54)
      {
        goto LABEL_63;
      }

      if (!qword_1EB6E55D0)
      {
        goto LABEL_64;
      }

      if (qword_1EB6E55D0 == -1 && v55 == 0x8000000000000000)
      {
        goto LABEL_66;
      }

      v56 = v55 / qword_1EB6E55D0;
      if (v56 >= 4)
      {
        v56 = 4;
      }

      v52 = v56 * qword_1EB6E55D0;
      if ((v56 * qword_1EB6E55D0) >> 64 != (v56 * qword_1EB6E55D0) >> 63)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v52 = v51 <= 20 ? 20 : v51;
    }

    v57 = *(v49 + 16);
    v131 = 0;
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    *(&v99 - 6) = v29;
    *(&v99 - 5) = v57;
    *(&v99 - 4) = sub_1B0BFCA90;
    *(&v99 - 3) = v49;
    v97 = &v131;

    v58 = swift_slowAlloc();
    v59 = v58 + v52;
    v60 = v124;
    v61 = sub_1B0BFC290(&v130, v58, v58 + v52, v57, sub_1B0BFCD7C);
    v124 = v60;
    if (v60)
    {
      MEMORY[0x1B272C230](v58, -1, -1);
      swift_willThrow();

      (*v119)(v107, v118);
      return sub_1B0BFC7FC(v29, type metadata accessor for Deflate.InputBuffer);
    }

    if (v52 < 0)
    {
      goto LABEL_59;
    }

    if (v61 < 0 || v52 < v61)
    {
      goto LABEL_71;
    }

    v62 = *(v114 + 48);
    v63 = swift_allocObject();
    *(v63 + 16) = v58;
    *(v63 + 24) = v59;
    v129[2] = sub_1B0BFCD70;
    v129[3] = v63;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v129[0] = sub_1B038C908;
    v129[1] = &block_descriptor_36;
    v64 = _Block_copy(aBlock);
    v66 = v115;
    v65 = v116;
    *v115 = 0;
    v66[1] = v64;
    (*v104)(v66, v105, v65);
    v67 = v123;
    sub_1B0E442F8();

    LODWORD(v126) = v130;
    *(v67 + v62) = v130;
    v68 = v131;
    v69 = v113;
    sub_1B0BFBC60(v29, v113);
    v70 = swift_getEnumCaseMultiPayload();
    v71 = v112;
    v72 = v125;
    if (v70 == 1)
    {
      v45 = v118;
      if (*v69)
      {
        if (v68 == v69[1] - *v69)
        {
          goto LABEL_40;
        }
      }

      else if (!v68)
      {
LABEL_40:
        sub_1B0E44378();

        v77 = v71;
        swift_storeEnumTagMultiPayload();
        goto LABEL_47;
      }
    }

    else
    {
      v75 = v120;
      v45 = v118;
      (*v125)(v120, v69, v118);
      v76 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (*v119)(v75, v45);
      if (v68 == v76)
      {
        goto LABEL_40;
      }
    }

    v73 = v103;
    sub_1B0BFBC60(v29, v103);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (*v73)
      {
        v74 = v73[1] - *v73;
        if (v74 < v68)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v74 = 0;
        if (v68 > 0)
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      v78 = v120;
      (*v72)(v120, v73, v45);
      v74 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (*v119)(v78, v45);
      if (v74 < v68)
      {
        goto LABEL_61;
      }
    }

    sub_1B0BFB8B4(v68, v74, v71);

    v77 = v71;
LABEL_47:
    v79 = v111;
    sub_1B0BFC728(v123, v111);
    v80 = *v125;
    v81 = v122;
    (*v125)(v122, v79, v45);
    v82 = v110;
    v83 = *(v110 + 20);
    sub_1B0BFC798(v77, v81 + v83);
    *(v81 + *(v82 + 24)) = v126;
    sub_1B0E44388();
    sub_1B0BFC7FC(v29, type metadata accessor for Deflate.InputBuffer);
    sub_1B0BFBC60(v81 + v83, v29);
    v84 = v109;
    sub_1B0BFBC60(v29, v109);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = v117;
      if (*v84 && v84[1] != *v84)
      {
LABEL_52:
        sub_1B0BFC7FC(v122, type metadata accessor for Deflate.PartialResult);
        goto LABEL_7;
      }
    }

    else
    {
      v85 = v120;
      v80(v120, v84, v45);
      sub_1B075CEE0();
      sub_1B0E45668();
      sub_1B0E456C8();
      (*v119)(v85, v45);
      v44 = v117;
      if (aBlock[0] != v131)
      {
        goto LABEL_52;
      }
    }

    sub_1B0BFC7FC(v122, type metadata accessor for Deflate.PartialResult);
    if ((v126 & 1) == 0)
    {
      break;
    }

LABEL_7:
    v43 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      goto LABEL_60;
    }
  }

  v87 = v99 + 16;
  v86 = *(v99 + 16);
  v88 = v45;
  a2 = v102;
  v89 = v107;
  v86(v102, v107, v88);
  v90 = v101;
  sub_1B0BFBC60(v100, v101);
  v91 = v120;
  v86(v120, v89, v88);
  v127 = sub_1B0BFA4B0();
  v92 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v93 = *(v87 - 8);
  v93(v91, v88);
  sub_1B0BFC7FC(v90, type metadata accessor for Deflate.InputBuffer);
  v93(v89, v88);
  sub_1B0BFC7FC(v29, type metadata accessor for Deflate.InputBuffer);
  v94 = *(v108 + 16);
  swift_beginAccess();
  v38 = *(v94 + 32);
  if (v38 < 0)
  {
    goto LABEL_69;
  }

  v39 = *(v94 + 56);
  if ((v39 & 0x8000000000000000) == 0)
  {
    result = type metadata accessor for Deflate.Result(0);
    v95 = (a2 + result[5]);
    *v95 = v127;
    v95[1] = v92;
    v41 = v121;
    goto LABEL_57;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  v98 = 0;
  v97 = 613;
  result = sub_1B0E465B8();
  __break(1u);
  return result;
}

uint64_t sub_1B0BFB794(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  swift_beginAccess();

  v3 = inflate((v2 + 16), 2);
  swift_endAccess();
  if (v3 && v3 != -5)
  {
    sub_1B0BFC8A0();
    swift_allocError();
    *v4 = "inflate";
    *(v4 + 8) = 7;
    *(v4 + 16) = 2;
    *(v4 + 20) = v3;
    swift_willThrow();
  }
}

uint64_t sub_1B0BFB858()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B0BFB8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B0E443C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Deflate.InputBuffer(0);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = (&v21 - v16);
  v18 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else
  {
    if (v18 < 1)
    {
      sub_1B0E44378();
    }

    else
    {
      sub_1B0BFBC60(v3, &v21 - v16);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = *v17 + a1;
        if (*v17)
        {
          v20 = v19 + v18;
        }

        else
        {
          v20 = 0;
        }

        if (!*v17)
        {
          v19 = 0;
        }

        *a3 = v19;
        a3[1] = v20;
      }

      else
      {
        (*(v8 + 32))(v11, v17, v7);
        sub_1B0E44398();
        (*(v8 + 8))(v11, v7);
      }
    }

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1B0BFBAC4()
{
  if (*(v0 + 128))
  {
    swift_beginAccess();
    inflateEnd((v0 + 16));
  }

  else
  {
    swift_beginAccess();
    deflateEnd((v0 + 16));
  }

  swift_endAccess();
  return swift_deallocClassInstance();
}

unint64_t sub_1B0BFBB94()
{
  result = qword_1EB6E55D8;
  if (!qword_1EB6E55D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E55D8);
  }

  return result;
}

unint64_t sub_1B0BFBBEC()
{
  result = qword_1EB6E55E0;
  if (!qword_1EB6E55E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E55E0);
  }

  return result;
}

uint64_t sub_1B0BFBC60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Deflate.InputBuffer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BFBCC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *a5)
{
  v44 = a5;
  v9 = sub_1B0E443C8();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v38 - v14;
  v16 = type metadata accessor for Deflate.InputBuffer(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v22 = (v38 - v21);
  v23 = sub_1B0BF9E98();
  if (v23)
  {
    swift_beginAccess();
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    return a3(1);
  }

  v41 = v38;
  MEMORY[0x1EEE9AC00](v23);
  v39 = a2;
  v40 = a3;
  v38[-4] = a2;
  v38[-3] = a3;
  v38[1] = a4;
  v25 = v44;
  v38[-2] = a4;
  v38[-1] = v25;
  sub_1B0BFBC60(a1, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v22;
    v26 = v22[1];
    sub_1B0BFBC60(a1, v20);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      v28 = v40;
      if (!*v20 || v20[1] == *v20)
      {
        return result;
      }
    }

    else
    {
      v33 = v42;
      v32 = v43;
      (*(v42 + 32))(v13, v20, v43);
      sub_1B075CEE0();
      sub_1B0E45668();
      sub_1B0E456C8();
      result = (*(v33 + 8))(v13, v32);
      v28 = v40;
      if (v46[0] == v46[4])
      {
        return result;
      }
    }

    v34 = v39;
    result = swift_beginAccess();
    *(v34 + 16) = v27;
    if (v27)
    {
      v35 = v26 - v27;
    }

    else
    {
      v35 = 0;
    }

    if ((v35 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v36 = v45;
      if (!HIDWORD(v35))
      {
        *(v34 + 24) = v35;
        result = v28(1);
        if (v36)
        {
          *(v34 + 16) = 0;
          *(v34 + 24) = 0;
        }

        else
        {
          v37 = *(v34 + 24);
          *(v34 + 16) = 0;
          *(v34 + 24) = 0;
          *v25 = v35 - v37;
        }

        return result;
      }
    }

    __break(1u);
    return result;
  }

  v30 = v42;
  v29 = v43;
  v31 = (*(v42 + 32))(v15, v22, v43);
  v46[0] = 0;
  MEMORY[0x1EEE9AC00](v31);
  v38[-4] = v15;
  v38[-3] = sub_1B0BFC874;
  v38[-2] = &v38[-6];
  v38[-1] = v46;
  sub_1B0E44318();
  if (v46[0])
  {
    swift_willThrow();
  }

  return (*(v30 + 8))(v15, v29);
}

uint64_t sub_1B0BFC0D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, void *a8)
{
  result = swift_beginAccess();
  *(a5 + 16) = a1;
  if (a1)
  {
    v17 = a2 - a1;
  }

  else
  {
    v17 = 0;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (HIDWORD(v17))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(a5 + 24) = v17;
  result = a6(a4 & 1);
  if (v8)
  {
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    return result;
  }

  v18 = *(a5 + 24);
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  v19 = a3 + v17;
  if (__OFADD__(a3, v17))
  {
    goto LABEL_14;
  }

  v20 = __OFSUB__(v19, v18);
  v21 = v19 - v18;
  if (v20)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *a8 = v21;
  return v18 != 0;
}

uint64_t sub_1B0BFC1C8(BOOL *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  *(a4 + 40) = a2;
  if (a2)
  {
    v12 = a3 - a2;
  }

  else
  {
    v12 = 0;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(v12))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  *(a4 + 48) = v12;
  sub_1B0BFA6F0(a5);
  if (!v5)
  {
    a3 = v12 - *(a4 + 48);
    *a1 = *(a4 + 48) == 0;
  }

  *(a4 + 40) = 0;
  *(a4 + 48) = 0;

  return a3;
}

uint64_t sub_1B0BFC290(BOOL *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = swift_beginAccess();
  *(a4 + 40) = a2;
  if (a2)
  {
    v12 = a3 - a2;
  }

  else
  {
    v12 = 0;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(v12))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  *(a4 + 48) = v12;
  result = a5(result);
  if (!v5)
  {
    result = v12 - *(a4 + 48);
    *a1 = *(a4 + 48) == 0;
  }

  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  return result;
}

unint64_t sub_1B0BFC350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46298();

  v6 = sub_1B0E462C8();
  MEMORY[0x1B2726E80](v6);

  MEMORY[0x1B2726E80](46, 0xE100000000000000);
  v7 = sub_1B0BFC478(a1, a2, a3 & 0xFFFFFFFF000000FFLL);
  MEMORY[0x1B2726E80](v7);

  MEMORY[0x1B2726E80](10272, 0xE200000000000000);
  v8 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v8);

  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t sub_1B0BFC478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (SHIDWORD(a3) <= -3)
  {
    if (SHIDWORD(a3) > -5)
    {
      if (HIDWORD(a3) != -4)
      {
        return 0x455F415441445F5ALL;
      }

      v3 = 0x5F4D454D5F5ALL;
    }

    else
    {
      if (HIDWORD(a3) == -6)
      {
        return 0x4F49535245565F5ALL;
      }

      if (HIDWORD(a3) != -5)
      {
        return sub_1B0E469C8();
      }

      v3 = 0x5F4655425F5ALL;
    }

    return v3 & 0xFFFFFFFFFFFFLL | 0x5245000000000000;
  }

  if (a3 < 0)
  {
    if (HIDWORD(a3) == -2)
    {
      return 0x4D41455254535F5ALL;
    }

    if (HIDWORD(a3) == -1)
    {
      return 0x4F4E5252455F5ALL;
    }
  }

  else
  {
    switch(HIDWORD(a3))
    {
      case 0:
        return 1263492954;
      case 2:
        return 0x445F4445454E5F5ALL;
      case 1:
        return 0x4D41455254535F5ALL;
    }
  }

  return sub_1B0E469C8();
}

uint64_t sub_1B0BFC61C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, BOOL))
{
  result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (__OFADD__(a2, a3))
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v12 = a2 + a1;
    }

    else
    {
      v12 = 0;
    }

    result = a6(a1, v12, a3, a2 + a3 >= result);
    if (result)
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t sub_1B0BFC6D4()
{
  result = sub_1B0BFC8F4();
  qword_1EB6E55D0 = result;
  return result;
}

uint64_t sub_1B0BFC728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55E8, &qword_1B0ED3430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BFC798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Deflate.InputBuffer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BFC7FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0BFC85C()
{
  result = *(v0 + 16);
  if (result)
  {
    JUMPOUT(0x1B272C230);
  }

  return result;
}

uint64_t sub_1B0BFC894(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  return sub_1B0BFC61C(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24));
}

unint64_t sub_1B0BFC8A0()
{
  result = qword_1EB6E55F0;
  if (!qword_1EB6E55F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E55F0);
  }

  return result;
}

uint64_t sub_1B0BFC8F4()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0x700000006;
  v5 = 0;
  v4 = 4;
  if (sysctl(v6, 2u, &v5, &v4, 0, 0))
  {
    sub_1B0E46298();

    MEMORY[0x1B2725C20](v2);
    v3 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v3);

    result = sub_1B0E465B8();
    __break(1u);
  }

  else
  {
    result = v5;
    v1 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t sub_1B0BFCA28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55E8, &qword_1B0ED3430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SearchRequest.Predicate.Day(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SearchRequest.Predicate.Day(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1B0BFCB54()
{
  result = sub_1B0E443C8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Deflate.InputBuffer(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B0BFCC18()
{
  result = sub_1B0E443C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0BFCCA8()
{
  result = sub_1B0E443C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B0BFCD14()
{
  result = qword_1EB6E5608;
  if (!qword_1EB6E5608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5608);
  }

  return result;
}

uint64_t sub_1B0BFCD94@<X0>(uint64_t a1@<X8>)
{
  v31 = type metadata accessor for Deflate.InputBuffer(0);
  v3 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Deflate.Result(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5610, &qword_1B0ED35A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - v11;
  v13 = _s12OutputHelperV5ChunkVMa(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s12OutputHelperVMa(0);
  v19 = v18[6];
  sub_1B0BFD154(v1 + v19, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B0BFD1C4(v12);
  }

  else
  {
    v30 = a1;
    sub_1B0BFD22C(v12, v17);
    v20 = v1;
    v21 = *(v1 + v18[7]);
    v22 = sub_1B0E443C8();
    (*(*(v22 - 8) + 16))(v5, v17, v22);
    swift_storeEnumTagMultiPayload();
    v23 = v33;
    sub_1B0BF93DC(v5, v17[*(v13 + 20)], v32);
    if (v23)
    {
      sub_1B0BFD290(v5, type metadata accessor for Deflate.InputBuffer);
      sub_1B0BFD290(v17, _s12OutputHelperV5ChunkVMa);
      sub_1B0BFD1C4(v20 + v19);
      return (*(v14 + 56))(v20 + v19, 1, 1, v13);
    }

    sub_1B0BFD290(v5, type metadata accessor for Deflate.InputBuffer);
    v25 = v20 + v18[5];
    v26 = v32;
    sub_1B0E44388();
    sub_1B0BFD290(v26, type metadata accessor for Deflate.Result);
    sub_1B0BFD290(v17, _s12OutputHelperV5ChunkVMa);
    sub_1B0BFD1C4(v20 + v19);
    (*(v14 + 56))(v20 + v19, 1, 1, v13);
    v1 = v20;
    a1 = v30;
  }

  v27 = v18[5];
  v28 = sub_1B0E443C8();
  return (*(*(v28 - 8) + 16))(a1, v1 + v27, v28);
}

uint64_t sub_1B0BFD154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5610, &qword_1B0ED35A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BFD1C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5610, &qword_1B0ED35A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0BFD22C(uint64_t a1, uint64_t a2)
{
  v4 = _s12OutputHelperV5ChunkVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BFD290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B0BFD318()
{
  sub_1B0E443C8();
  if (v0 <= 0x3F)
  {
    sub_1B0BFD3C4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Deflate.Compressor();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0BFD3C4()
{
  if (!qword_1EB6DCD28)
  {
    _s12OutputHelperV5ChunkVMa(255);
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DCD28);
    }
  }
}

uint64_t sub_1B0BFD444()
{
  result = sub_1B0E443C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1B0BFD4C8@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v7 = a7;
  if (a4)
  {
    *&v46 = a1;
    *(&v46 + 1) = a2;
    *&v47 = a3;
    BYTE8(v47) = a4 | 0x40;
    sub_1B0BD6CF8(&v46);
    v66 = v54;
    v67 = v55;
    v68 = v56;
    v69 = v57;
    v62 = v50;
    v63 = v51;
    v64 = v52;
    v65 = v53;
    v58 = v46;
    v59 = v47;
    v60 = v48;
    v61 = v49;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v58);
    sub_1B0A91FD0(a1, a2, a3, a4);
    v78 = v66;
    v79 = v67;
    v80 = v68;
    v81 = v69;
    v74 = v62;
    v75 = v63;
    v76 = v64;
    v77 = v65;
    v70 = v58;
    v71 = v59;
    v72 = v60;
    v73 = v61;
    goto LABEL_27;
  }

  v40 = *(a5 + 16);
  if (!v40)
  {
    goto LABEL_23;
  }

  v12 = a6;
  v13 = 0;
  v14 = a5 + 32;
  v15 = a6 + 56;
  v39 = a5 + 32;
LABEL_5:
  v16 = (v14 + 32 * v13);
  v18 = *v16;
  v17 = v16[1];
  if (*(v12 + 16))
  {
    v43 = v13;
    v19 = v16[2];
    v20 = *(v16 + 24);
    v21 = *(v12 + 40);
    sub_1B0E46C28();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v45 = v19;
    sub_1B0E46C68();
    if ((v20 & 1) == 0)
    {
      MEMORY[0x1B2728DB0](v19 >> 14);
    }

    v22 = sub_1B0E46CB8();
    v23 = -1 << *(v12 + 32);
    v24 = v22 & ~v23;
    if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      goto LABEL_25;
    }

    v44 = v43 + 1;
    v25 = ~v23;
    v26 = *(a6 + 48);
    while (1)
    {
      v27 = v26 + 32 * v24;
      v28 = *(v27 + 16);
      v29 = *(v27 + 24);
      v30 = *v27 == v18 && *(v27 + 8) == v17;
      if (v30 || (sub_1B0E46A78() & 1) != 0)
      {
        if (v29)
        {
          if (v20)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (((v28 ^ v45) & 0xFFFFFFFFFFFFC000) != 0)
          {
            v31 = 1;
          }

          else
          {
            v31 = v20;
          }

          if ((v31 & 1) == 0)
          {
LABEL_22:

            v14 = v39;
            v12 = a6;
            v13 = v44;
            if (v44 == v40)
            {
LABEL_23:
              sub_1B0BFD988(&v46);
              goto LABEL_26;
            }

            goto LABEL_5;
          }
        }
      }

      v24 = (v24 + 1) & v25;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  v32 = v16[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_25:
  *&v46 = v18;
  *(&v46 + 1) = v17;
  *&v47 = 0;
  BYTE8(v47) = 0x80;
  sub_1B0BD6CF8(&v46);
LABEL_26:
  v66 = v54;
  v67 = v55;
  v68 = v56;
  v69 = v57;
  v62 = v50;
  v63 = v51;
  v64 = v52;
  v65 = v53;
  v58 = v46;
  v59 = v47;
  v60 = v48;
  v61 = v49;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v58);
  v78 = v66;
  v79 = v67;
  v80 = v68;
  v81 = v69;
  v74 = v62;
  v75 = v63;
  v76 = v64;
  v77 = v65;
  v70 = v58;
  v71 = v59;
  v72 = v60;
  v73 = v61;
  v7 = a7;
LABEL_27:
  v33 = v79;
  *(v7 + 128) = v78;
  *(v7 + 144) = v33;
  *(v7 + 160) = v80;
  *(v7 + 176) = v81;
  v34 = v75;
  *(v7 + 64) = v74;
  *(v7 + 80) = v34;
  v35 = v77;
  *(v7 + 96) = v76;
  *(v7 + 112) = v35;
  v36 = v71;
  *v7 = v70;
  *(v7 + 16) = v36;
  result = *&v72;
  v38 = v73;
  *(v7 + 32) = v72;
  *(v7 + 48) = v38;
  return result;
}

uint64_t sub_1B0BFD838@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 8);
  *(a1 + 64) = 3;
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0BFD84C(uint64_t a1)
{
  v2 = type metadata accessor for UntaggedResponse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0B7EAA4(a1, v5);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    return sub_1B0B7EB08(v5);
  }

  sub_1B0C1BAB0(*v5);
}

double sub_1B0BFD908@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  sub_1B0BFD4C8(a1, a2, a3, a4, *(v5 + 8), *(v5 + 16), v13);
  v7 = v21;
  *(a5 + 128) = v20;
  *(a5 + 144) = v7;
  *(a5 + 160) = v22;
  *(a5 + 176) = v23;
  v8 = v17;
  *(a5 + 64) = v16;
  *(a5 + 80) = v8;
  v9 = v19;
  *(a5 + 96) = v18;
  *(a5 + 112) = v9;
  v10 = v13[1];
  *a5 = v13[0];
  *(a5 + 16) = v10;
  result = *&v14;
  v12 = v15;
  *(a5 + 32) = v14;
  *(a5 + 48) = v12;
  return result;
}

double sub_1B0BFD988(uint64_t a1)
{
  *a1 = 4;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 7;
  return result;
}

uint64_t sub_1B0BFD9CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v32 = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, v1, 0);
  v2 = v32;
  v4 = -1 << *(a1 + 32);
  v27 = a1 + 56;
  result = sub_1B0E460B8();
  v6 = result;
  v7 = 0;
  v26 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v27 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(a1 + 48) + 32 * v6;
    v28 = *v12;
    v29 = *(v12 + 8);
    v30 = *(v12 + 16);
    v31 = *(v12 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = sub_1B0E44B88();
    v15 = *(v32 + 16);
    v14 = *(v32 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = v13;
      v25 = result;
      sub_1B041D32C((v14 > 1), v15 + 1, 1);
      v13 = v24;
      result = v25;
    }

    *(v32 + 16) = v15 + 1;
    v16 = v32 + 16 * v15;
    *(v16 + 32) = result;
    *(v16 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v27 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v26;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v9 = v26;
      v21 = (a1 + 64 + 8 * v10);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1B0425168(v6, v11, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t Event.Payload.shortLogIdentifier.getter(unint64_t a1)
{
  v2 = type metadata accessor for UntaggedResponse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 >> 60;
  if ((a1 >> 60) > 3)
  {
    if (v6 > 5)
    {
      if (v6 == 6)
      {
        return 0xD00000000000001ALL;
      }

      if (v6 == 7)
      {
        return 0xD000000000000020;
      }

      v32 = 0x3E7974706D653CLL;
      if (a1 != 0x8000000000000008)
      {
        v32 = 0xD000000000000010;
      }

      if (a1 == 0x8000000000000000)
      {
        return 0xD000000000000014;
      }

      else
      {
        return v32;
      }
    }

    if (v6 != 4)
    {
      v33 = (a1 & 0xFFFFFFFFFFFFFFFLL);
      v34 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      if (!v34)
      {
        return 0xD000000000000018;
      }

      v36 = v33[4];
      v35 = v33[5];
      v37 = v33[2];
      *&v58 = 0;
      *(&v58 + 1) = 0xE000000000000000;
      sub_1B0B6DCB0(v36, v35, v34);
      sub_1B0B6DCB0(v36, v35, v34);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0E46298();

      *&v54[0] = 0xD000000000000019;
      *(&v54[0] + 1) = 0x80000001B0F2CE30;
      *&v58 = v36;
      *(&v58 + 1) = v35;
      *&v59 = v34;
      sub_1B04420D8(v36);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v38 = sub_1B0E44BA8();
      MEMORY[0x1B2726E80](v38);

      sub_1B0447F00(v36);

      sub_1B0B6DCF0(v36, v35, v34);
      return *&v54[0];
    }

    v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) | (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x14) << 32);
    if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30))
    {
      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30) != 1)
      {
        *&v58 = Tag.debugDescription.getter(v13);
        *(&v58 + 1) = v52;
        v15 = 1145127456;
        v42 = 0xE400000000000000;
        goto LABEL_42;
      }

      *&v58 = Tag.debugDescription.getter(v13);
      *(&v58 + 1) = v14;
      v15 = 5197344;
    }

    else
    {
      *&v58 = Tag.debugDescription.getter(v13);
      *(&v58 + 1) = v51;
      v15 = 4935456;
    }

    v42 = 0xE300000000000000;
LABEL_42:
    MEMORY[0x1B2726E80](v15, v42);
    return v58;
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v59 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v60 = v11;
      v61[0] = v12;
      *(v61 + 11) = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x4B);
      v58 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_1B0B37A20(&v58, v54);
      MEMORY[0x1B2726E80](0x656C657320646944, 0xEC00000027207463);
      v54[2] = v60;
      v55[0] = v61[0];
      *(v55 + 11) = *(v61 + 11);
      v54[0] = v58;
      v54[1] = v59;
      sub_1B0E46508();
      sub_1B0B37A7C(&v58);
      MEMORY[0x1B2726E80](39, 0xE100000000000000);
      return v56;
    }

    else
    {
      v29 = swift_projectBox();
      sub_1B0B7EAA4(v29, v5);
      *&v58 = 8234;
      *(&v58 + 1) = 0xE200000000000000;
      v30 = UntaggedResponse.name.getter();
      MEMORY[0x1B2726E80](v30);

      v31 = v58;
      sub_1B0B7EB08(v5);
      return v31;
    }
  }

  if (!v6)
  {
    *&v58 = sub_1B0BFD9CC(*(a1 + 16));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v8 = sub_1B0E448E8();
    v10 = v9;

    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;
    sub_1B0E46298();

    *&v58 = 0xD00000000000001ELL;
    *(&v58 + 1) = 0x80000001B0F2CE70;
    MEMORY[0x1B2726E80](v8, v10);
LABEL_32:

    v15 = 125;
    v42 = 0xE100000000000000;
    goto LABEL_42;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v17 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v18 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v19 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v20 = *(v18 + 16);
  *&v54[0] = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, v20, 0);
  v21 = *&v54[0];
  ConnectionCommandIDSet.makeIterator()(v17, v18, v19);
  if (!v20)
  {
LABEL_30:
    sub_1B0E466E8();
    if ((BYTE8(v58) & 1) == 0)
    {
      v43 = v58;
      do
      {
        LOBYTE(v58) = v43;
        DWORD1(v58) = HIDWORD(v43);
        v44 = sub_1B0E44B88();
        *&v54[0] = v21;
        v47 = *(v21 + 16);
        v46 = *(v21 + 24);
        if (v47 >= v46 >> 1)
        {
          v49 = v44;
          v50 = v45;
          sub_1B041D32C((v46 > 1), v47 + 1, 1);
          v45 = v50;
          v44 = v49;
          v21 = *&v54[0];
        }

        *(v21 + 16) = v47 + 1;
        v48 = v21 + 16 * v47;
        *(v48 + 32) = v44;
        *(v48 + 40) = v45;
        sub_1B0E466E8();
        v43 = v58;
      }

      while (BYTE8(v58) != 1);
    }

    *&v58 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v39 = sub_1B0E448E8();
    v41 = v40;

    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD000000000000015, 0x80000001B0F2CE50);
    *&v54[0] = v16;
    sub_1B0E46508();
    MEMORY[0x1B2726E80](8069161, 0xE300000000000000);
    MEMORY[0x1B2726E80](v39, v41);
    goto LABEL_32;
  }

  while (1)
  {
    result = sub_1B0E466E8();
    if (BYTE8(v58))
    {
      break;
    }

    v22 = sub_1B0E44B88();
    *&v54[0] = v21;
    v25 = *(v21 + 16);
    v24 = *(v21 + 24);
    if (v25 >= v24 >> 1)
    {
      v27 = v22;
      v28 = v23;
      sub_1B041D32C((v24 > 1), v25 + 1, 1);
      v23 = v28;
      v22 = v27;
      v21 = *&v54[0];
    }

    *(v21 + 16) = v25 + 1;
    v26 = v21 + 16 * v25;
    *(v26 + 32) = v22;
    *(v26 + 40) = v23;
    if (!--v20)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

unint64_t Event.payload.getter()
{
  v1 = *(v0 + 8);
  sub_1B044CD04(v1);
  return v1;
}

unint64_t Event.payload.setter(uint64_t a1)
{
  result = sub_1B044CEF8(*(v1 + 8));
  *(v1 + 8) = a1;
  return result;
}

uint64_t Event.runningCommandIDs.getter()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t Event.runningCommandIDs.setter(int a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);

  v8 = *(v3 + 32);

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

unint64_t Event.Payload.forEachCommand(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 4)
  {
    v4 = result;
    v5 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v6 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v7 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v8 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v9 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    sub_1B0A91FD0(v6, v7, v8, v9);
    v4(v5, v6, v7, v8, v9);

    return sub_1B0BB6FE0(v6, v7, v8, v9);
  }

  return result;
}

char *sub_1B0BFE554(char *a1, int64_t a2, char a3)
{
  result = sub_1B0BFE5F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0BFE574(char *a1, int64_t a2, char a3)
{
  result = sub_1B0BFE6F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0BFE594(char *a1, int64_t a2, char a3)
{
  result = sub_1B0BFE818(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0BFE5B4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0BFE90C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0BFE5D4(char *a1, int64_t a2, char a3)
{
  result = sub_1B0BFEA24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0BFE5F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4308, &qword_1B0EC5050);
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

char *sub_1B0BFE6F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5630, &qword_1B0ED5CF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0BFE818(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5640, &qword_1B0ED3868);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0BFE90C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5648, &qword_1B0ED3870);
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

char *sub_1B0BFEA24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5618, &qword_1B0ED3850);
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

uint64_t _s15IMAP2Connection5EventV7PayloadO21__derived_enum_equalsySbAE_AEtFZ_0(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for UntaggedResponse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57[-v9];
  v11 = a1 >> 60;
  if ((a1 >> 60) <= 3)
  {
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v25 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v60 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v61[0] = v25;
        *(v61 + 11) = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x4B);
        v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v58 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v59 = v26;
        if (a2 >> 60 == 2)
        {
          v27 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v63 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v64 = v27;
          v65[0] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          *(v65 + 11) = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x4B);
          v62 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          sub_1B0B37A20(&v62, v57);
          v12 = _s15IMAP2Connection15SelectedMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(&v58, &v62);
          sub_1B0B37A7C(&v62);
          return v12 & 1;
        }
      }

      else if (a2 >> 60 == 3)
      {
        v44 = swift_projectBox();
        v45 = swift_projectBox();
        sub_1B0B7EAA4(v44, v10);
        sub_1B0B7EAA4(v45, v7);
        v12 = static UntaggedResponse.__derived_enum_equals(_:_:)(v10, v7);
        sub_1B0B7EB08(v7);
        sub_1B0B7EB08(v10);
        return v12 & 1;
      }

      goto LABEL_54;
    }

    if (!v11)
    {
      v13 = *(a1 + 16);
      v14 = *(a1 + 136);
      v15 = *(a1 + 168);
      v61[5] = *(a1 + 152);
      v61[6] = v15;
      v61[7] = *(a1 + 184);
      v16 = *(a1 + 72);
      v17 = *(a1 + 104);
      v61[1] = *(a1 + 88);
      v61[2] = v17;
      v61[3] = *(a1 + 120);
      v61[4] = v14;
      v18 = *(a1 + 40);
      v58 = *(a1 + 24);
      v59 = v18;
      v60 = *(a1 + 56);
      v61[0] = v16;
      if (!(a2 >> 60))
      {
        v19 = *(a2 + 16);
        v20 = *(a2 + 152);
        v65[4] = *(a2 + 136);
        v65[5] = v20;
        v21 = *(a2 + 184);
        v65[6] = *(a2 + 168);
        v65[7] = v21;
        v22 = *(a2 + 88);
        v65[0] = *(a2 + 72);
        v65[1] = v22;
        v23 = *(a2 + 120);
        v65[2] = *(a2 + 104);
        v65[3] = v23;
        v24 = *(a2 + 40);
        v62 = *(a2 + 24);
        v63 = v24;
        v64 = *(a2 + 56);
        if (sub_1B0BE5360(v13, v19))
        {
          v12 = static ServerID.__derived_struct_equals(_:_:)(&v58, &v62);
          return v12 & 1;
        }
      }

LABEL_54:
      v12 = 0;
      return v12 & 1;
    }

    if (a2 >> 60 != 1)
    {
      goto LABEL_54;
    }

    v36 = a1 & 0xFFFFFFFFFFFFFFFLL;
    v37 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v39 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v38 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v40 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v41 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v43 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v42 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    if ((_s15IMAP2Connection07CommandB0C12RecentErrorsV23__derived_struct_equalsySbAE_AEtFZ_0(*(v36 + 16), v40) & 1) == 0 || v37 != v41 || (sub_1B0BE9028(v39, v43) & 1) == 0 || (sub_1B0BE9028(v38, v42) & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_52:
    v12 = 1;
    return v12 & 1;
  }

  if (v11 <= 5)
  {
    if (v11 == 4)
    {
      if (a2 >> 60 != 4)
      {
        goto LABEL_54;
      }

      v12 = 0;
      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) || *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x14) != *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x14))
      {
        return v12 & 1;
      }

      v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v29 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v30 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v31 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v32 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30))
      {
        if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30) == 1)
        {
          if (v32 != 1)
          {
            goto LABEL_54;
          }
        }

        else if (v32 != 2)
        {
          goto LABEL_54;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30))
      {
        goto LABEL_54;
      }

      if ((static ResponseText.__derived_struct_equals(_:_:)(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18), *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20)) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (a2 >> 60 != 5)
      {
        goto LABEL_54;
      }

      v47 = a2 & 0xFFFFFFFFFFFFFFFLL;
      if ((*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) << 32)) != (*((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) | (*((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) << 32)))
      {
        goto LABEL_54;
      }

      v48 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v49 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v50 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v51 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v52 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v53 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v54 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v55 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      if ((sub_1B04520BC(v48, *(v47 + 16)) & 1) == 0)
      {
        goto LABEL_54;
      }

      if (v51)
      {
        if (!v55)
        {
          goto LABEL_54;
        }

        sub_1B0B6DCB0(v53, v54, v55);
        sub_1B0B6DCB0(v53, v54, v55);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v56 = static ResponseText.__derived_struct_equals(_:_:)(v49, v50);

        sub_1B0B6DCF0(v53, v54, v55);
        sub_1B0447F00(v53);

        if ((v56 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else if (v55)
      {
        goto LABEL_54;
      }
    }

    goto LABEL_52;
  }

  if (v11 != 6)
  {
    if (v11 == 7)
    {
      if (a2 >> 60 == 7)
      {
        v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) ^ *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) ^ 1;
        return v12 & 1;
      }

      goto LABEL_54;
    }

    v46 = 0x8000000000000000;
    if (a1 == 0x8000000000000000 || (v46 = 0x8000000000000008, a1 == 0x8000000000000008))
    {
      if (a2 != v46)
      {
        goto LABEL_54;
      }
    }

    else if (a2 != 0x8000000000000010)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (a2 >> 60 != 6)
  {
    goto LABEL_54;
  }

  v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v34 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

  return sub_1B0429CE0(v33, v34);
}

ValueMetadata *type metadata accessor for Event()
{
  return &type metadata for Event;
}

{
  return &type metadata for Event;
}

uint64_t sub_1B0BFF044(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x78 && *(a1 + 8))
  {
    return (*a1 + 120);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x77)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0BFF094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *result = a2 - 120;
    if (a3 >= 0x78)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1B0BFF0F4(void *result, uint64_t a2)
{
  if (a2 < 8)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 8)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1B0BFF130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a5;
  v65 = a4;
  v63 = a3;
  v61 = sub_1B0E443C8();
  v7 = *(v61 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v61);
  v54 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v55 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v54 - v13;
  v60 = sub_1B0E43828();
  v14 = *(v60 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B0E43CD8();
  v67 = *(v16 - 8);
  v68 = v16;
  v17 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v62 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v58 = &v54 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v54 - v26;
  v28 = sub_1B0C055D0(a1, a2);
  v71 = 0;
  v72 = 0xE000000000000000;
  v69 = a1;
  v70 = HIDWORD(a1);
  sub_1B0E46508();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49B0, &unk_1B0EC6FA0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1B0EC6C30;
  *(v29 + 32) = v28;
  v30 = sub_1B0E43CC8();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v66 = v28;

  v57 = sub_1B0E43C98();
  sub_1B0E44378();
  v33 = v61;
  (*(v7 + 56))(v27, 0, 1, v61);
  v34 = v59;
  v35 = v60;
  (*(v14 + 16))(v59, v63, v60);
  v36 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v37 = (v15 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = v38 + v36;
  v40 = v64;
  v41 = v34;
  v42 = v58;
  (*(v14 + 32))(v39, v41, v35);
  v43 = v33;
  v44 = (v38 + v37);
  *v44 = v65;
  v44[1] = v40;
  *v19 = sub_1B0C05ACC;
  v19[1] = v38;
  (*(v67 + 104))(v19, *MEMORY[0x1E6977BF8], v68);
  sub_1B03B5C80(v27, v42, &qword_1EB6E2070, &qword_1B0E9F040);
  v45 = *(v7 + 48);
  if (v45(v42, 1, v43) == 1)
  {

    sub_1B0398EFC(v42, &qword_1EB6E2070, &qword_1B0E9F040);
    v46 = v62;
    sub_1B03B5C80(v27, v62, &qword_1EB6E2070, &qword_1B0E9F040);
    if (v45(v46, 1, v43) == 1)
    {
      sub_1B0398EFC(v62, &qword_1EB6E2070, &qword_1B0E9F040);
      sub_1B0E43DD8();
    }

    else
    {
      v48 = v55;
      (*(v7 + 32))(v55, v62, v43);
      v49 = v54;
      (*(v7 + 16))(v54, v48, v43);
      v50 = sub_1B0C01788(v49);
      v52 = v51;
      sub_1B0E43DD8();

      sub_1B0391D50(v50, v52);

      (*(v7 + 8))(v48, v43);
    }
  }

  else
  {
    v47 = v56;
    (*(v7 + 32))(v56, v42, v43);

    sub_1B0E43DC8();

    (*(v7 + 8))(v47, v43);
  }

  (*(v67 + 8))(v19, v68);
  return sub_1B0398EFC(v27, &qword_1EB6E2070, &qword_1B0E9F040);
}

uint64_t sub_1B0BFF7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v53 = a2;
  v4 = sub_1B0E443C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v47 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v48 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v47 - v11;
  v12 = sub_1B0E43CD8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v49 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v47 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v47 - v24;
  if (qword_1EB6DCDA8 != -1)
  {
    swift_once();
  }

  v26 = sub_1B0E44008();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();

  v29 = sub_1B0E43FE8();
  v55 = sub_1B0E44118();
  v54 = a1;

  sub_1B0E44028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49B0, &unk_1B0EC6FA0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B0EC6C30;
  *(v30 + 32) = v29;
  v31 = sub_1B0E43CC8();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();

  v34 = sub_1B0E43C98();
  sub_1B0E44378();
  (*(v5 + 56))(v25, 0, 1, v4);
  v35 = swift_allocObject();
  v36 = v51;
  *(v35 + 16) = v53;
  *(v35 + 24) = v36;
  *v16 = sub_1B0C05E9C;
  v16[1] = v35;
  v37 = *MEMORY[0x1E6977BF8];
  v52 = v13;
  v53 = v12;
  (*(v13 + 104))(v16, v37, v12);
  sub_1B03B5C80(v25, v23, &qword_1EB6E2070, &qword_1B0E9F040);
  v38 = *(v5 + 48);
  if (v38(v23, 1, v4) == 1)
  {
    v50 = v34;

    sub_1B0398EFC(v23, &qword_1EB6E2070, &qword_1B0E9F040);
    v39 = v49;
    sub_1B03B5C80(v25, v49, &qword_1EB6E2070, &qword_1B0E9F040);
    if (v38(v39, 1, v4) == 1)
    {
      sub_1B0398EFC(v39, &qword_1EB6E2070, &qword_1B0E9F040);
      sub_1B0E43DD8();
    }

    else
    {
      v41 = v48;
      (*(v5 + 32))(v48, v39, v4);
      v42 = v47;
      (*(v5 + 16))(v47, v41, v4);
      v43 = sub_1B0C01788(v42);
      v45 = v44;
      sub_1B0E43DD8();

      sub_1B0391D50(v43, v45);

      (*(v5 + 8))(v41, v4);
    }
  }

  else
  {
    v40 = v50;
    (*(v5 + 32))(v50, v23, v4);

    sub_1B0E43DC8();

    (*(v5 + 8))(v40, v4);
  }

  (*(v52 + 8))(v16, v53);
  return sub_1B0398EFC(v25, &qword_1EB6E2070, &qword_1B0E9F040);
}

uint64_t sub_1B0BFFDBC(int a1)
{
  v2 = sub_1B0E443C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v41 - v9;
  v10 = sub_1B0E43CD8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v44 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v41 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v41 - v22;
  if (qword_1EB6DCDA8 != -1)
  {
    swift_once();
  }

  v24 = sub_1B0E44008();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  v27 = sub_1B0E43FE8();
  v50 = &type metadata for ClientCommand.EncodingOptions;
  v48 = a1 & 0x1FF;
  v49 = BYTE2(a1) & 1;
  sub_1B0E44028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49B0, &unk_1B0EC6FA0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B0EC6C30;
  *(v28 + 32) = v27;
  v29 = sub_1B0E43CC8();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();

  sub_1B0E43C98();
  sub_1B0E44378();
  (*(v3 + 56))(v23, 0, 1, v2);
  v32 = *MEMORY[0x1E6977BF0];
  v46 = v11;
  v47 = v10;
  (*(v11 + 104))(v14, v32, v10);
  sub_1B03B5C80(v23, v21, &qword_1EB6E2070, &qword_1B0E9F040);
  v33 = *(v3 + 48);
  if (v33(v21, 1, v2) != 1)
  {
    v35 = v45;
    (*(v3 + 32))(v45, v21, v2);
    sub_1B0E43DC8();

LABEL_8:

    (*(v3 + 8))(v35, v2);
    goto LABEL_9;
  }

  v45 = v14;
  sub_1B0398EFC(v21, &qword_1EB6E2070, &qword_1B0E9F040);
  v34 = v44;
  sub_1B03B5C80(v23, v44, &qword_1EB6E2070, &qword_1B0E9F040);
  if (v33(v34, 1, v2) != 1)
  {
    v35 = v43;
    (*(v3 + 32))(v43, v34, v2);
    v36 = v42;
    (*(v3 + 16))(v42, v35, v2);
    v37 = sub_1B0C01788(v36);
    v39 = v38;
    v14 = v45;
    sub_1B0E43DD8();

    sub_1B0391D50(v37, v39);
    goto LABEL_8;
  }

  sub_1B0398EFC(v34, &qword_1EB6E2070, &qword_1B0E9F040);
  v14 = v45;
  sub_1B0E43DD8();

LABEL_9:
  (*(v46 + 8))(v14, v47);
  return sub_1B0398EFC(v23, &qword_1EB6E2070, &qword_1B0E9F040);
}

uint64_t sub_1B0C00370(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v51 = a1;
  v2 = sub_1B0E443C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v46 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v45 - v9;
  v10 = sub_1B0E43CD8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v47 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v45 - v22;
  if (qword_1EB6DCDA8 != -1)
  {
    swift_once();
  }

  v24 = sub_1B0E44008();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  v27 = sub_1B0E43FE8();
  v53 = MEMORY[0x1E69E6370];
  v52 = 1;
  sub_1B0E44028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49B0, &unk_1B0EC6FA0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B0EC6C30;
  *(v28 + 32) = v27;
  v29 = sub_1B0E43CC8();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();

  v32 = sub_1B0E43C98();
  sub_1B0E44378();
  (*(v3 + 56))(v23, 0, 1, v2);
  v33 = swift_allocObject();
  v34 = v49;
  *(v33 + 16) = v51;
  *(v33 + 24) = v34;
  *v14 = sub_1B0C05BF4;
  v14[1] = v33;
  v35 = *MEMORY[0x1E6977BF8];
  v50 = v11;
  v51 = v10;
  (*(v11 + 104))(v14, v35, v10);
  sub_1B03B5C80(v23, v21, &qword_1EB6E2070, &qword_1B0E9F040);
  v36 = *(v3 + 48);
  if (v36(v21, 1, v2) == 1)
  {
    v48 = v32;

    sub_1B0398EFC(v21, &qword_1EB6E2070, &qword_1B0E9F040);
    v37 = v47;
    sub_1B03B5C80(v23, v47, &qword_1EB6E2070, &qword_1B0E9F040);
    if (v36(v37, 1, v2) == 1)
    {
      sub_1B0398EFC(v37, &qword_1EB6E2070, &qword_1B0E9F040);
      sub_1B0E43DD8();
    }

    else
    {
      v39 = v46;
      (*(v3 + 32))(v46, v37, v2);
      v40 = v45;
      (*(v3 + 16))(v45, v39, v2);
      v41 = sub_1B0C01788(v40);
      v43 = v42;
      sub_1B0E43DD8();

      sub_1B0391D50(v41, v43);

      (*(v3 + 8))(v39, v2);
    }
  }

  else
  {
    v38 = v48;
    (*(v3 + 32))(v48, v21, v2);

    sub_1B0E43DC8();

    (*(v3 + 8))(v38, v2);
  }

  (*(v50 + 8))(v14, v51);
  return sub_1B0398EFC(v23, &qword_1EB6E2070, &qword_1B0E9F040);
}

uint64_t sub_1B0C0097C()
{
  v0 = sub_1B0E443C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v41 = &v39 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v39 - v7;
  v8 = sub_1B0E43CD8();
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v42 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - v19;
  if (qword_1EB6DCDA8 != -1)
  {
    swift_once();
  }

  v21 = sub_1B0E44008();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  v24 = sub_1B0E43FE8();
  v46 = &_s10WorkaroundON;
  sub_1B0E44028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49B0, &unk_1B0EC6FA0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B0EC6C30;
  *(v25 + 32) = v24;
  v26 = sub_1B0E43CC8();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();

  sub_1B0E43C98();
  sub_1B0E44378();
  (*(v1 + 56))(v20, 0, 1, v0);
  v29 = *MEMORY[0x1E6977BF0];
  v30 = *(v45 + 104);
  v44 = v8;
  v30(v11, v29, v8);
  sub_1B03B5C80(v20, v18, &qword_1EB6E2070, &qword_1B0E9F040);
  v31 = *(v1 + 48);
  if (v31(v18, 1, v0) != 1)
  {
    v33 = v43;
    (*(v1 + 32))(v43, v18, v0);
    sub_1B0E43DC8();

LABEL_8:

    (*(v1 + 8))(v33, v0);
    goto LABEL_9;
  }

  v43 = v11;
  sub_1B0398EFC(v18, &qword_1EB6E2070, &qword_1B0E9F040);
  v32 = v42;
  sub_1B03B5C80(v20, v42, &qword_1EB6E2070, &qword_1B0E9F040);
  if (v31(v32, 1, v0) != 1)
  {
    v33 = v41;
    (*(v1 + 32))(v41, v32, v0);
    v34 = v40;
    (*(v1 + 16))(v40, v33, v0);
    v35 = sub_1B0C01788(v34);
    v37 = v36;
    v11 = v43;
    sub_1B0E43DD8();

    sub_1B0391D50(v35, v37);
    goto LABEL_8;
  }

  sub_1B0398EFC(v32, &qword_1EB6E2070, &qword_1B0E9F040);
  v11 = v43;
  sub_1B0E43DD8();

LABEL_9:
  (*(v45 + 8))(v11, v44);
  return sub_1B0398EFC(v20, &qword_1EB6E2070, &qword_1B0E9F040);
}

uint64_t sub_1B0C00F18(uint64_t a1)
{
  v17[5] = *MEMORY[0x1E69E9840];
  *&v14 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E56A8, &unk_1B0ED39A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5698, &qword_1B0ED3920);
  if (swift_dynamicCast())
  {
    sub_1B0450C74(v15, v17);
    __swift_project_boxed_opaque_existential_0(v17, v17[3]);
    sub_1B0E42B88();
    v15[0] = v14;
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    goto LABEL_31;
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v1 = sub_1B0398EFC(v15, &qword_1EB6E56A0, &qword_1B0ED3928);
  v15[0] = xmmword_1B0ECF4A0;
  MEMORY[0x1EEE9AC00](v1);
  sub_1B0C03F68(sub_1B0C05D64);
  v3 = *(&v15[0] + 1) >> 62;
  if ((*(&v15[0] + 1) >> 62) <= 1)
  {
    if (v3)
    {
      if (__OFSUB__(DWORD1(v15[0]), v15[0]))
      {
        goto LABEL_35;
      }

      if (v2 == DWORD1(v15[0]) - LODWORD(v15[0]))
      {
        goto LABEL_18;
      }
    }

    else if (v2 == BYTE14(v15[0]))
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v3 == 2)
  {
    v5 = *(*&v15[0] + 16);
    v4 = *(*&v15[0] + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (v6)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
    }

    if (v2 == v7)
    {
      goto LABEL_18;
    }

LABEL_13:
    if (v3 == 2)
    {
      v8 = *(*&v15[0] + 24);
    }

    else if (v3 == 1)
    {
      v8 = *&v15[0] >> 32;
    }

    else
    {
      v8 = BYTE14(v15[0]);
    }

LABEL_28:
    if (v8 >= v2)
    {
      sub_1B0E42ED8();
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (v2)
  {
    v8 = 0;
    goto LABEL_28;
  }

LABEL_18:
  memset(v17, 0, 15);
  sub_1B0E466E8();
  if (BYTE1(v14))
  {
    goto LABEL_30;
  }

  LOBYTE(v9) = 0;
  v10 = v14;
  do
  {
    *(v17 + v9) = v10;
    v9 = v9 + 1;
    if ((v9 >> 8))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v9 == 14)
    {
      LOWORD(v14) = v17[0];
      sub_1B0E42EF8();
      LOBYTE(v9) = 0;
    }

    sub_1B0E466E8();
    v10 = v14;
  }

  while ((BYTE1(v14) & 1) == 0);
  if (v9)
  {
    sub_1B0E42EF8();
  }

LABEL_30:

LABEL_31:
  v11 = v15[0];
  sub_1B03B2000(*&v15[0], *(&v15[0] + 1));

  sub_1B0391D50(v11, *(&v11 + 1));
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_1B0C01268(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5698, &qword_1B0ED3920);
  if (swift_dynamicCast())
  {
    sub_1B0450C74(__src, &v42);
    __swift_project_boxed_opaque_existential_0(&v42, v43);
    sub_1B0E42B88();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0Tm(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1B0398EFC(__src, &qword_1EB6E56A0, &qword_1B0ED3928);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1B0E46368();
  }

  sub_1B0C03CB4(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1B0C05530(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = sub_1B0C042F4(sub_1B0C05B6C);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1B0E42ED8();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1B0A6D6C4(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1B0E44DC8();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1B0E44E08();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1B0E46368();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1B0A6D6C4(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1B0E44DD8();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_1B0E42EF8();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_1B0E42EF8();
    sub_1B050755C(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_1B050755C(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1B03B2000(*&__src[0], *(&__src[0] + 1));

  sub_1B0391D50(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t sub_1B0C01788(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5690, &qword_1B0ED3918);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - v4;
  v6 = sub_1B0E441F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B0E443C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  (*(v12 + 16))(&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5698, &qword_1B0ED3920);
  if (!swift_dynamicCast())
  {
    v30 = v7;
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    sub_1B0398EFC(v32, &qword_1EB6E56A0, &qword_1B0ED3928);
    sub_1B03D6540(&qword_1EB6DB988, 255, MEMORY[0x1E69E7FD0]);
    sub_1B0E44F38();
    if (*(&v34 + 1) >> 60 != 15)
    {
      v32[0] = v34;
      goto LABEL_33;
    }

    v29 = v34;
    v15 = sub_1B0E44F28();
    *&v32[0] = sub_1B0C05530(v15);
    *(&v32[0] + 1) = v16;
    MEMORY[0x1EEE9AC00](*&v32[0]);
    *(&v29 - 2) = a1;
    sub_1B0C04698(sub_1B0C05AB0);
    v17 = *&v5[*(v2 + 48)];
    v18 = v30;
    (*(v30 + 32))(v10, v5, v6);
    v19 = *(&v32[0] + 1) >> 62;
    if ((*(&v32[0] + 1) >> 62) > 1)
    {
      if (v19 != 2)
      {
        if (!v17)
        {
          goto LABEL_20;
        }

        v24 = 0;
LABEL_31:
        if (v24 >= v17)
        {
          sub_1B0E42ED8();
          (*(v18 + 8))(v10, v6);
          goto LABEL_33;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v21 = *(*&v32[0] + 16);
      v20 = *(*&v32[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v23 = v20 - v21;
      if (v22)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
      }

      if (v17 == v23)
      {
        goto LABEL_20;
      }
    }

    else if (v19)
    {
      if (__OFSUB__(DWORD1(v32[0]), v32[0]))
      {
        goto LABEL_37;
      }

      if (v17 == DWORD1(v32[0]) - LODWORD(v32[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v17 == BYTE14(v32[0]))
    {
LABEL_20:
      sub_1B03D6540(&qword_1EB6DB990, 255, MEMORY[0x1E69E7F18]);
      *&v34 = 0;
      *(&v34 + 7) = 0;
      sub_1B0E45E38();
      if (BYTE1(v31) == 1)
      {
        goto LABEL_28;
      }

      LOBYTE(v25) = 0;
      while (1)
      {
        *(&v34 + v25) = v31;
        v25 = v25 + 1;
        if ((v25 >> 8))
        {
          break;
        }

        if (v25 == 14)
        {
          *&v31 = v34;
          *(&v31 + 6) = *(&v34 + 6);
          sub_1B0E42EF8();
          LOBYTE(v25) = 0;
        }

        sub_1B0E45E38();
        if (BYTE1(v31))
        {
          if (v25)
          {
            *&v31 = v34;
            *(&v31 + 6) = *(&v34 + 6);
            sub_1B0E42EF8();
            sub_1B050755C(v29, *(&v29 + 1));
            (*(v30 + 8))(v10, v6);
            goto LABEL_33;
          }

LABEL_28:
          (*(v30 + 8))(v10, v6);
          sub_1B050755C(v29, *(&v29 + 1));
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    if (v19 == 2)
    {
      v24 = *(*&v32[0] + 24);
    }

    else if (v19 == 1)
    {
      v24 = *&v32[0] >> 32;
    }

    else
    {
      v24 = BYTE14(v32[0]);
    }

    goto LABEL_31;
  }

  sub_1B0450C74(v32, &v34);
  __swift_project_boxed_opaque_existential_0(&v34, v35);
  sub_1B0E42B88();
  v32[0] = v31;
  __swift_destroy_boxed_opaque_existential_0Tm(&v34);
LABEL_33:
  v26 = *&v32[0];
  sub_1B03B2000(*&v32[0], *(&v32[0] + 1));
  (*(v12 + 8))(a1, v11);
  sub_1B0391D50(*&v32[0], *(&v32[0] + 1));
  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t sub_1B0C01DA0()
{
  v0 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v0, qword_1EB6DCD58);
  __swift_project_value_buffer(v0, qword_1EB6DCD58);
  return sub_1B0E43998();
}

uint64_t sub_1B0C01E20()
{
  type metadata accessor for Framer();
  sub_1B03D6540(&qword_1EB6DCD80, v0, type metadata accessor for Framer);
  v1 = sub_1B0E43FC8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  result = sub_1B0E43FB8();
  qword_1EB737B98 = result;
  return result;
}

uint64_t sub_1B0C01EAC()
{
  v1 = *(v0 + 160);
  v10[8] = *(v0 + 144);
  v10[9] = v1;
  v2 = *(v0 + 192);
  v10[10] = *(v0 + 176);
  v10[11] = v2;
  v3 = *(v0 + 96);
  v10[4] = *(v0 + 80);
  v10[5] = v3;
  v4 = *(v0 + 128);
  v10[6] = *(v0 + 112);
  v10[7] = v4;
  v5 = *(v0 + 32);
  v10[0] = *(v0 + 16);
  v10[1] = v5;
  v6 = *(v0 + 64);
  v10[2] = *(v0 + 48);
  v10[3] = v6;
  sub_1B0C059F8(v10);
  v7 = *(v0 + 208);

  v8 = *(v0 + 256);
  sub_1B03D6500(*(v0 + 248));
  return swift_deallocClassInstance();
}

uint64_t sub_1B0C01F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v52 = a4;
  v53 = a3;
  v49 = a2;
  v5 = sub_1B0E43868();
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v47 - v14;
  v16 = sub_1B0E441D8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v47 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v47 - v25;
  v51 = a1;
  sub_1B03B5C80(a1, v15, &unk_1EB6E5A90, &unk_1B0EDC020);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1B0398EFC(v15, &unk_1EB6E5A90, &unk_1B0EDC020);
    v27 = tracingSignposter.unsafeMutableAddressor();
    v28 = v54;
    (*(v55 + 16))(v11, v27, v54);
    v29 = sub_1B0E43858();
    v30 = sub_1B0E45AE8();
    if (sub_1B0E45D38())
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v29, v30, v32, "Connection.didEnqueue", "", v31, 2u);
      MEMORY[0x1B272C230](v31, -1, -1);
    }

    (*(v55 + 8))(v11, v28);
  }

  else
  {
    (*(v17 + 32))(v26, v15, v16);
    v33 = tracingSignposter.unsafeMutableAddressor();
    v34 = v54;
    (*(v55 + 16))(v50, v33, v54);
    v35 = *(v17 + 16);
    v35(v24, v26, v16);
    v36 = sub_1B0E43858();
    v48 = sub_1B0E45AE8();
    if (sub_1B0E45D38())
    {
      v37 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v56 = v47;
      *v37 = 136315138;
      v35(v21, v24, v16);
      v38 = sub_1B0E44BA8();
      v40 = v39;
      v41 = *(v17 + 8);
      v41(v24, v16);
      v42 = sub_1B0399D64(v38, v40, &v56);

      *(v37 + 4) = v42;
      v43 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v36, v48, v43, "Connection.didFailToSendData", "%s", v37, 0xCu);
      v44 = v47;
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x1B272C230](v44, -1, -1);
      MEMORY[0x1B272C230](v37, -1, -1);

      (*(v55 + 8))(v50, v54);
      v41(v26, v16);
    }

    else
    {

      v45 = *(v17 + 8);
      v45(v24, v16);
      (*(v55 + 8))(v50, v34);
      v45(v26, v16);
    }
  }

  return v53(v51);
}

uint64_t sub_1B0C02478(const void *a1, uint64_t a2)
{
  swift_beginAccess();
  ServerResponseFramingParser.append(_:)(a1, a2);
  return swift_endAccess();
}

uint64_t sub_1B0C024DC(uint64_t a1, uint64_t a2)
{
  v46[2] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5530, &qword_1B0ED0CF8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v47 = v46 - v7;
  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v8 = sub_1B0E439A8();
  __swift_project_value_buffer(v8, qword_1EB6DCD58);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v9 = sub_1B0E43988();
  v10 = sub_1B0E45908();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v48 = v12;
    *v11 = 68158210;
    *(v11 + 4) = 2;
    *(v11 + 8) = 256;
    *(v11 + 10) = sub_1B04314DC();

    *(v11 + 11) = 2082;
    v13 = sub_1B04314DC();
    v14 = ConnectionID.debugDescription.getter(HIDWORD(v13));
    v16 = sub_1B0399D64(v14, v15, &v48);

    *(v11 + 13) = v16;
    _os_log_impl(&dword_1B0389000, v9, v10, "[%.*hhx-%{public}s] Adding TLS to the protocol stack.", v11, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1B272C230](v12, -1, -1);
    MEMORY[0x1B272C230](v11, -1, -1);
  }

  else
  {
  }

  v17 = v47;
  if (qword_1EB6DCDA8 != -1)
  {
    swift_once();
  }

  v18 = sub_1B0E44048();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();

  sub_1B0E44038();
  *(&v49 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v48) = 1;
  sub_1B0E44068();
  sub_1B0E440F8();
  sub_1B0E44058();

  if (*(&v49 + 1))
  {
    v21 = sub_1B0E43828();
    v22 = swift_dynamicCast();
    (*(*(v21 - 8) + 56))(v17, v22 ^ 1u, 1, v21);
  }

  else
  {
    sub_1B0398EFC(&v48, &qword_1EB6E29B0, &qword_1B0E9F008);
    v21 = sub_1B0E43828();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  }

  sub_1B03B5C80(v17, v6, &qword_1EB6E5530, &qword_1B0ED0CF8);
  sub_1B0E43828();
  v23 = *(v21 - 8);
  if ((*(v23 + 48))(v6, 1, v21) == 1)
  {
    sub_1B0398EFC(v6, &qword_1EB6E5530, &qword_1B0ED0CF8);
    v48 = 0u;
    v49 = 0u;
  }

  else
  {
    *(&v49 + 1) = v21;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
    (*(v23 + 32))(boxed_opaque_existential_0, v6, v21);
  }

  sub_1B0E44068();
  sub_1B0398EFC(v17, &qword_1EB6E5530, &qword_1B0ED0CF8);
  v25 = sub_1B04314DC();
  *(&v49 + 1) = &type metadata for ConnectionLoggerID;
  LOBYTE(v48) = v25;
  DWORD1(v48) = HIDWORD(v25);
  sub_1B0E44068();
  v26 = v61;
  sub_1B0E440E8();
  if (v26)
  {
  }

  sub_1B0E440E8();
  sub_1B0E440A8();
  sub_1B0E440B8();
  sub_1B0E44108();
  ServerResponseFramingParser.init()(v60);
  v27 = v46[1];
  swift_beginAccess();
  v28 = *(v27 + 160);
  v56 = *(v27 + 144);
  v57 = v28;
  v29 = *(v27 + 192);
  v58 = *(v27 + 176);
  v59 = v29;
  v30 = *(v27 + 96);
  v52 = *(v27 + 80);
  v53 = v30;
  v31 = *(v27 + 128);
  v54 = *(v27 + 112);
  v55 = v31;
  v32 = *(v27 + 32);
  v48 = *(v27 + 16);
  v49 = v32;
  v33 = *(v27 + 64);
  v50 = *(v27 + 48);
  v51 = v33;
  v34 = v60[9];
  *(v27 + 144) = v60[8];
  *(v27 + 160) = v34;
  v35 = v60[11];
  *(v27 + 176) = v60[10];
  *(v27 + 192) = v35;
  v36 = v60[5];
  *(v27 + 80) = v60[4];
  *(v27 + 96) = v36;
  v37 = v60[7];
  *(v27 + 112) = v60[6];
  *(v27 + 128) = v37;
  v38 = v60[1];
  *(v27 + 16) = v60[0];
  *(v27 + 32) = v38;
  v39 = v60[3];
  *(v27 + 48) = v60[2];
  *(v27 + 64) = v39;
  sub_1B0C059F8(&v48);
  swift_beginAccess();
  v40 = *(v27 + 208);
  *(v27 + 208) = MEMORY[0x1E69E7CC0];
  *(v27 + 216) = 0;
  *(v27 + 224) = 0;
  *(v27 + 232) = 0;
  *(v27 + 240) = 256;

  v41 = ClientCommand.EncodingOptions.rfc3501.unsafeMutableAddressor();
  v42 = *v41;
  v43 = v41[1];
  v44 = v41[2];

  *(v27 + 242) = v42;
  *(v27 + 243) = v43;
  *(v27 + 244) = v44;
  return result;
}

uint64_t sub_1B0C02B44()
{
  v1 = v0;
  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v2 = sub_1B0E439A8();
  __swift_project_value_buffer(v2, qword_1EB6DCD58);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v3 = sub_1B0E43988();
  v4 = sub_1B0E45908();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 68158210;
    *(v5 + 4) = 2;
    *(v5 + 8) = 256;
    *(v5 + 10) = sub_1B04314DC();

    *(v5 + 11) = 2082;
    v7 = sub_1B04314DC();
    v8 = ConnectionID.debugDescription.getter(HIDWORD(v7));
    v10 = sub_1B0399D64(v8, v9, &v21);

    *(v5 + 13) = v10;
    _os_log_impl(&dword_1B0389000, v3, v4, "[%.*hhx-%{public}s] Enabling RFC 4978 compression.", v5, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x1B272C230](v6, -1, -1);
    MEMORY[0x1B272C230](v5, -1, -1);
  }

  else
  {
  }

  type metadata accessor for Deflate.Compressor();
  v11 = swift_allocObject();
  type metadata accessor for Deflate.Stream();
  v12 = swift_allocObject();
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0u;
  *(v12 + 128) = 0;
  *(v12 + 16) = 0u;
  swift_beginAccess();
  v13 = deflateInit2_((v12 + 16), 1, 8, -15, 8, 4, "1.2.12", 112);
  swift_endAccess();
  if (v13)
  {
    sub_1B0BFC8A0();
    swift_allocError();
    *v19 = "deflateInit2";
    *(v19 + 8) = 12;
    *(v19 + 16) = 2;
    *(v19 + 20) = v13;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v12;
    *(v11 + 24) = 0;
    type metadata accessor for Deflate.Decompressor();
    v14 = swift_allocObject();
    v15 = swift_allocObject();
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0u;
    *(v15 + 64) = 0u;
    *(v15 + 80) = 0u;
    *(v15 + 96) = 0u;
    *(v15 + 112) = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 128) = 1;
    swift_beginAccess();
    v13 = inflateInit2_((v15 + 16), -15, "1.2.12", 112);
    swift_endAccess();
    if (!v13)
    {
      *(v14 + 16) = v15;
      v16 = *(v1 + 248);
      v17 = *(v1 + 256);
      *(v1 + 248) = v11;
      *(v1 + 256) = v14;
      return sub_1B03D6500(v16);
    }
  }

  sub_1B0BFC8A0();
  swift_allocError();
  *v20 = "inflateInit2";
  *(v20 + 8) = 12;
  *(v20 + 16) = 2;
  *(v20 + 20) = v13;
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B0C02EEC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = HIDWORD(a1);
  v67 = a3;
  v5 = type metadata accessor for HandshakeReply.Encoded();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConnectionCommand(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v64 - v13;
  v15 = type metadata accessor for ClientCommand(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v64 - v20;
  v22 = type metadata accessor for OutboundContent(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03FD270(a2, v25, type metadata accessor for OutboundContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B04498A0(v25, v21, type metadata accessor for ClientCommand);
    sub_1B03FD270(v21, v19, type metadata accessor for ClientCommand);
    v33 = v69;
    v34 = v69[242];
    v35 = v69[243];
    v36 = v69[244];
    *v14 = a1;
    *(v14 + 1) = v66;
    if (v36)
    {
      v37 = 0x10000;
    }

    else
    {
      v37 = 0;
    }

    if (v35)
    {
      v38 = 256;
    }

    else
    {
      v38 = 0;
    }

    ClientCommand.encode(tag:options:)(a1 & 0xFFFFFFFF000000FFLL, v38 | v34 | v37, &v14[*(v8 + 20)]);
    sub_1B03D6B24(v19, type metadata accessor for ClientCommand);
    v39 = swift_beginAccess();
    if (*(v33 + 28))
    {
      sub_1B0BEA5A0();
      v40 = swift_allocError();
      swift_willThrow();
      swift_endAccess();
      sub_1B03D6B24(v21, type metadata accessor for ClientCommand);
      v41 = type metadata accessor for ConnectionCommand;
      v42 = v14;
LABEL_18:
      sub_1B03D6B24(v42, v41);
      goto LABEL_19;
    }

    MEMORY[0x1EEE9AC00](v39);
    *(&v64 - 2) = v14;
    v57 = sub_1B0BE95B0(sub_1B0C0598C);
    swift_endAccess();
    sub_1B03D6B24(v21, type metadata accessor for ClientCommand);
    v58 = type metadata accessor for ConnectionCommand;
    v59 = v14;
LABEL_34:
    sub_1B03D6B24(v59, v58);
    return v57;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v27 = *v25;
    v28 = *(v25 + 1);
    v29 = v25[16];
    sub_1B0BD30C8(*v25, v28, v29);
    v30 = v65;
    sub_1B0C036DC(v27, v28, v29, a1 & 0xFFFFFFFF000000FFLL, v65);
    v31 = v69;
    v32 = swift_beginAccess();
    if (!*(v31 + 28))
    {
      sub_1B0C05938();
      goto LABEL_17;
    }

    if (*(*(v31 + 26) + 16))
    {
      sub_1B0C058DC();
LABEL_17:
      v40 = swift_allocError();
      swift_willThrow();
      swift_endAccess();
      sub_1B0BCDEB0(v27, v28, v29);
      v41 = type metadata accessor for HandshakeReply.Encoded;
      v42 = v30;
      goto LABEL_18;
    }

    MEMORY[0x1EEE9AC00](v32);
    *(&v64 - 2) = v30;
    v57 = sub_1B0BE95B0(sub_1B0C05930);
    swift_endAccess();
    sub_1B0BCDEB0(v27, v28, v29);
    v58 = type metadata accessor for HandshakeReply.Encoded;
    v59 = v30;
    goto LABEL_34;
  }

  v43 = v69;
  swift_beginAccess();
  if (!*(v43 + 28))
  {
    v60 = ClientCommand.EncodingOptions.rfc3501.unsafeMutableAddressor();
    if (v60[2])
    {
      v61 = 0x10000;
    }

    else
    {
      v61 = 0;
    }

    if (v60[1])
    {
      v62 = 256;
    }

    else
    {
      v62 = 0;
    }

    v63 = ClientCommandEncoder.idle(tag:)(a1 & 0xFFFFFFFF000000FFLL, v62 | *v60 | v61, &v12[*(v8 + 20)]);
    *v12 = a1;
    *(v12 + 1) = v66;
    MEMORY[0x1EEE9AC00](v63);
    *(&v64 - 2) = v12;
    v57 = sub_1B0BE95B0(sub_1B0C058D4);
    sub_1B03D6B24(v12, type metadata accessor for ConnectionCommand);
    swift_endAccess();
    return v57;
  }

  sub_1B0BEA5A0();
  v40 = swift_allocError();
  swift_willThrow();
  swift_endAccess();
LABEL_19:
  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v44 = sub_1B0E439A8();
  __swift_project_value_buffer(v44, qword_1EB6DCD58);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v45 = v40;
  v46 = sub_1B0E43988();
  v47 = sub_1B0E458E8();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v68 = v50;
    *v48 = 68158466;
    *(v48 + 4) = 2;
    *(v48 + 8) = 256;
    *(v48 + 10) = sub_1B04314DC();

    *(v48 + 11) = 2082;
    v51 = sub_1B04314DC();
    v52 = ConnectionID.debugDescription.getter(HIDWORD(v51));
    v54 = sub_1B0399D64(v52, v53, &v68);

    *(v48 + 13) = v54;
    *(v48 + 21) = 2112;
    v55 = sub_1B0E42CC8();
    *(v48 + 23) = v55;
    *v49 = v55;
    _os_log_impl(&dword_1B0389000, v46, v47, "[%.*hhx-%{public}s] Unable to append command to output buffer. Invalid state. %@", v48, 0x1Fu);
    sub_1B0398EFC(v49, &unk_1EB6E2630, &qword_1B0E97970);
    MEMORY[0x1B272C230](v49, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x1B272C230](v50, -1, -1);
    MEMORY[0x1B272C230](v48, -1, -1);
  }

  else
  {
  }

  return swift_willThrow();
}

uint64_t sub_1B0C036DC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62 = *MEMORY[0x1E69E9840];
  v10 = sub_1B0E443C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  if (a3)
  {
    v60 = sub_1B0E42E78();
    v61 = v15;
    v16 = sub_1B0C05480(&unk_1F271BC60);
    v18 = v17;
    v58 = MEMORY[0x1E6969080];
    v59 = MEMORY[0x1E6969078];
    *&v56 = v16;
    *(&v56 + 1) = v17;
    v19 = __swift_project_boxed_opaque_existential_0(&v56, MEMORY[0x1E6969080]);
    v20 = *v19;
    v21 = v19[1];
    sub_1B03B2000(v16, v18);
    sub_1B0C05070(v20, v21);
    sub_1B0391D50(v16, v18);
    __swift_destroy_boxed_opaque_existential_0Tm(&v56);
    v22 = v60;
    v23 = v61;
    v24 = v61 >> 62;
    if ((v61 >> 62) > 1)
    {
      if (v24 != 2)
      {
        *(&v56 + 6) = 0;
        *&v56 = 0;
        goto LABEL_55;
      }

      v53 = v10;
      v54 = a5;
      v45 = *(v60 + 16);
      v46 = *(v60 + 24);
      if (sub_1B0E42A98() && __OFSUB__(v45, sub_1B0E42AC8()))
      {
        goto LABEL_62;
      }

      if (__OFSUB__(v46, v45))
      {
        goto LABEL_61;
      }

      sub_1B0E42AB8();
      sub_1B0E44358();
      sub_1B0BCDEB0(v55, a2, 1);
      a5 = v54;
    }

    else
    {
      if (!v24)
      {
        *&v56 = v60;
        DWORD2(v56) = v61;
        WORD6(v56) = WORD2(v61);
LABEL_55:
        sub_1B0E44358();
        sub_1B0BCDEB0(v55, a2, 1);
        goto LABEL_56;
      }

      v53 = v10;
      v54 = a5;
      if (v60 >> 32 < v60)
      {
        goto LABEL_60;
      }

      if (sub_1B0E42A98() && __OFSUB__(v22, sub_1B0E42AC8()))
      {
        goto LABEL_63;
      }

      a5 = v54;
      sub_1B0E42AB8();
      sub_1B0E44358();
      sub_1B0BCDEB0(v55, a2, 1);
    }

    v10 = v53;
LABEL_56:
    sub_1B0391D50(v22, v23);
    goto LABEL_57;
  }

  v53 = v10;
  v54 = a5;
  v25 = HIBYTE(a2) & 0xF;
  *&v56 = a1;
  *(&v56 + 1) = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v25 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v57 = 0;
  v58 = v25;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v26 = sub_1B0E44DB8();
  if (v27)
  {
    v28 = v26;
    v29 = v27;
    v30 = MEMORY[0x1E69E7CC0];
    v52 = a4;
    while (1)
    {
      while (1)
      {
        if ((v28 != 2573 || v29 != 0xE200000000000000) && (sub_1B0E46A78() & 1) == 0)
        {
          if ((v29 & 0x2000000000000000) != 0)
          {
            v32 = HIBYTE(v29) & 0xF;
          }

          else
          {
            v32 = v28 & 0xFFFFFFFFFFFFLL;
          }

          if (!v32)
          {
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
          }

          if ((v29 & 0x1000000000000000) != 0)
          {
            v37 = sub_1B0E44C18();
          }

          else
          {
            if ((v29 & 0x2000000000000000) != 0)
            {
              v34 = v28;
            }

            else
            {
              v33 = ((v28 & 0x1000000000000000) != 0 ? (v29 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1B0E46368());
              v34 = *v33;
            }

            v35 = v34;
            v36 = (__clz(~v34) - 24) << 16;
            v37 = v35 < 0 ? v36 : 65541;
          }

          if (v37 >> 14 == 4 * v32)
          {
            v38 = sub_1B0C04CF0(v28, v29);
            if ((v38 & 0x100000000) != 0)
            {
              goto LABEL_64;
            }

            if ((v38 & 0xFFFFFF80) == 0)
            {
              break;
            }
          }
        }

LABEL_10:
        v28 = sub_1B0E44DB8();
        v29 = v31;
        if (!v31)
        {
          a4 = v52;
          goto LABEL_48;
        }
      }

      v39 = sub_1B0C04CF0(v28, v29);
      if ((v39 & 0x100000000) != 0)
      {
        goto LABEL_65;
      }

      v40 = v39;

      if ((v40 & 0xFFFFFF00) != 0)
      {
        goto LABEL_59;
      }

      v41 = v40;
      if (v40 - 127 < 0xFFFFFFA1)
      {
        goto LABEL_10;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1B0C0C114(0, *(v30 + 2) + 1, 1, v30);
      }

      v43 = *(v30 + 2);
      v42 = *(v30 + 3);
      if (v43 >= v42 >> 1)
      {
        v30 = sub_1B0C0C114((v42 > 1), v43 + 1, 1, v30);
      }

      *(v30 + 2) = v43 + 1;
      v30[v43 + 32] = v41;
      v28 = sub_1B0E44DB8();
      v29 = v44;
      a4 = v52;
      if (!v44)
      {
        goto LABEL_48;
      }
    }
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_48:

  v47 = &v30[*(v30 + 2) + 32];
  sub_1B0E44358();
  sub_1B0BCDEB0(v55, a2, 0);

  v10 = v53;
  a5 = v54;
LABEL_57:
  (*(v11 + 32))(a5, v14, v10);
  result = type metadata accessor for HandshakeReply.Encoded();
  v49 = a5 + *(result + 20);
  *v49 = a4;
  *(v49 + 4) = HIDWORD(a4);
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C03CB4@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1B0C052C8(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1B0E42AD8();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1B0E42A88();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1B0E42EC8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1B0C03D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1B0E443C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5690, &qword_1B0ED3918) + 48);
    (*(v7 + 16))(v10, a2, v6);
    sub_1B03D6540(&qword_1EB6DB988, 255, MEMORY[0x1E69E7FD0]);
    result = sub_1B0E44F18();
    *(a3 + v11) = result;
  }

  else
  {
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5690, &qword_1B0ED3918) + 48);
    (*(v7 + 16))(v10, a2, v6);
    sub_1B03D6540(&qword_1EB6DB988, 255, MEMORY[0x1E69E7FD0]);
    result = sub_1B0E44F18();
    *(a3 + v13) = result;
  }

  return result;
}

void *sub_1B0C03F68(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v23 = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1B0391D50(v6, v5);
      v20[0] = v6;
      LOWORD(v20[1]) = v5;
      BYTE2(v20[1]) = BYTE2(v5);
      BYTE3(v20[1]) = BYTE3(v5);
      BYTE4(v20[1]) = BYTE4(v5);
      BYTE5(v20[1]) = BYTE5(v5);
      BYTE6(v20[1]) = BYTE6(v5);
      result = a1(&v21, v20, v20 + BYTE6(v5));
      if (!v2)
      {
        result = v21;
      }

      v9 = LODWORD(v20[1]) | ((WORD2(v20[1]) | (BYTE6(v20[1]) << 16)) << 32);
      *v3 = v20[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1B0391D50(v6, v5);
    *v3 = xmmword_1B0ECF4A0;
    sub_1B0391D50(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1B0E42A98() && __OFSUB__(v6, sub_1B0E42AC8()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1B0E42AD8();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1B0E42A78();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1B0C04B8C(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1B0391D50(v6, v5);
    v21 = v6;
    v22 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1B0ECF4A0;
    sub_1B0391D50(0, 0xC000000000000000);
    sub_1B0E42E88();
    result = sub_1B0C04B8C(v21[2], v21[3], a1);
    v10 = v22 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v21;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v21;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v20, 0, 15);
  result = a1(&v21, v20, v20);
  if (!v2)
  {
    result = v21;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B0C042F4(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1B0391D50(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1B0391D50(v6, v5);
    *v3 = xmmword_1B0ECF4A0;
    sub_1B0391D50(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1B0E42A98() && __OFSUB__(v6, sub_1B0E42AC8()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1B0E42AD8();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1B0E42A78();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1B0C04C3C(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1B0391D50(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1B0ECF4A0;
    sub_1B0391D50(0, 0xC000000000000000);
    sub_1B0E42E88();
    result = sub_1B0C04C3C(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C04698(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v23 = *MEMORY[0x1E69E9840];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1B0391D50(v5, v4);
      *&v22 = v5;
      *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_1B0ECF4A0;
      sub_1B0391D50(0, 0xC000000000000000);
      result = sub_1B0C04AB0(a1);
      v8 = v22;
      v9 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1B0391D50(v5, v4);
      *&v22 = v5;
      WORD4(v22) = v4;
      BYTE10(v22) = BYTE2(v4);
      BYTE11(v22) = BYTE3(v4);
      BYTE12(v22) = BYTE4(v4);
      BYTE13(v22) = BYTE5(v4);
      BYTE14(v22) = BYTE6(v4);
      result = (a1)(&v22, &v22 + BYTE6(v4));
      v8 = v22;
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v2 = v8;
    v2[1] = v9;
    goto LABEL_15;
  }

  if (v6 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    result = (a1)(&v22, &v22);
LABEL_15:
    v20 = *MEMORY[0x1E69E9840];
    return result;
  }

  sub_1B0391D50(v5, v4);
  *&v22 = v5;
  *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_1B0ECF4A0;
  sub_1B0391D50(0, 0xC000000000000000);
  sub_1B0E42E88();
  v10 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v12 = *(v22 + 24);
  result = sub_1B0E42A98();
  if (result)
  {
    v13 = result;
    v14 = sub_1B0E42AC8();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_1B0E42AB8();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = (a1)(v13 + v15, v13 + v15 + v19);
        *v2 = v22;
        v2[1] = v10 | 0x8000000000000000;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

_BYTE *sub_1B0C04948@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1B0C052C8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1B0C05380(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1B0C053FC(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1B0C049DC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B0C04A44(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C04AB0(void (*a1)(uint64_t, uint64_t))
{
  result = sub_1B0E42EA8();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;
  v6 = *(v1 + 1);

  result = sub_1B0E42A98();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_1B0E42AC8();
  v8 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v5 - v4;
  v10 = sub_1B0E42AB8();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v7 + v8, v7 + v8 + v11);
}

char *sub_1B0C04B8C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1B0E42A98();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1B0E42AC8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1B0E42AB8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_1B0C04C3C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1B0E42A98();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1B0E42AC8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1B0E42AB8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_1B0C04CF0(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1B0C04E40(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1B0E46288();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1B0E46368() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1B0C04E40(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B0C04ED8(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B0C04F4C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B0C04ED8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1B0A6D6C4(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0C04F4C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1B0E46368();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1B0C05070(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_1B0E42EF8();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1B0C051A8(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C051A8(uint64_t a1, uint64_t a2)
{
  result = sub_1B0E42A98();
  if (!result || (result = sub_1B0E42AC8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1B0E42AB8();
      return sub_1B0E42EF8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C0523C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1B0C05DE8(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t sub_1B0C05278@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1B0E462A8();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C052C8(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C05380(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1B0E42AD8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1B0E42A88();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B0E42EC8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1B0C053FC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1B0E42AD8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1B0E42A88();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B0C05480(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  v10 = sub_1B0C05994();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C04948(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

uint64_t sub_1B0C05530(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_1B0E42AD8();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1B0E42AA8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1B0E42EC8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1B0C055D0(uint64_t a1, uint64_t a2)
{
  if (qword_1EB6DCDA8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B0E44008();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v7 = sub_1B0E43FE8();
  v10[0] = a1;
  sub_1B0E44028();
  v10[3] = type metadata accessor for OutboundContent(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  sub_1B03FD270(a2, boxed_opaque_existential_0, type metadata accessor for OutboundContent);
  sub_1B0E44028();
  return v7;
}

uint64_t sub_1B0C05704()
{
  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v1 = sub_1B0E439A8();
  __swift_project_value_buffer(v1, qword_1EB6DCD58);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v2 = sub_1B0E43988();
  v3 = sub_1B0E45908();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 68158210;
    *(v4 + 4) = 2;
    *(v4 + 8) = 256;
    *(v4 + 10) = sub_1B04314DC();

    *(v4 + 11) = 2082;
    v6 = sub_1B04314DC();
    v7 = ConnectionID.debugDescription.getter(HIDWORD(v6));
    v9 = sub_1B0399D64(v7, v8, &v11);

    *(v4 + 13) = v9;
    _os_log_impl(&dword_1B0389000, v2, v3, "[%.*hhx-%{public}s] Enabling Openwave Messaging workaround.", v4, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x1B272C230](v5, -1, -1);
    MEMORY[0x1B272C230](v4, -1, -1);
  }

  else
  {
  }

  result = swift_beginAccess();
  if (*(v0 + 241) == 1)
  {
    *(v0 + 232) = 0;
    *(v0 + 240) = 1;
  }

  return result;
}

unint64_t sub_1B0C058DC()
{
  result = qword_1EB6E5660;
  if (!qword_1EB6E5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5660);
  }

  return result;
}

unint64_t sub_1B0C05938()
{
  result = qword_1EB6E5668;
  if (!qword_1EB6E5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5668);
  }

  return result;
}

unint64_t sub_1B0C05994()
{
  result = qword_1EB6DAE08;
  if (!qword_1EB6DAE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DAE08);
  }

  return result;
}

unint64_t sub_1B0C05A4C()
{
  result = qword_1EB6E5678;
  if (!qword_1EB6E5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5678);
  }

  return result;
}

uint64_t sub_1B0C05ACC(uint64_t a1)
{
  v3 = *(sub_1B0E43828() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1B0C01F58(a1, v1 + v4, v6, v7);
}

void *sub_1B0C05B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1B0C04A44(sub_1B0C05BD4, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1B0C05BF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_1B0E441D8();
  v6 = (*(*(v5 - 8) + 48))(a1, 1, v5) == 1;
  return v4(v6);
}

void sub_1B0C05C80()
{
  sub_1B0C05CFC();
  if (v0 <= 0x3F)
  {
    sub_1B0E44118();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B0C05CFC()
{
  if (!qword_1EB6DCCF8)
  {
    type metadata accessor for OutboundContent(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DCCF8);
    }
  }
}

void *sub_1B0C05D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = **(v3 + 16);
  v7[2] = &v8;
  result = sub_1B0C049DC(sub_1B0C05DC8, v7, a1, a2);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1B0C05DE8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = result;
    sub_1B0E466E8();
    if ((v9 & 1) == 0)
    {
      v6 = 0;
      v7 = v8;
      do
      {
        *(v5 + v6) = v7;
        if (a2 - 1 == v6)
        {
          break;
        }

        sub_1B0E466E8();
        v7 = v8;
        ++v6;
      }

      while ((v9 & 1) == 0);
    }

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection6FramerC11CompressionO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B0C05EC8(uint64_t a1, uint64_t a2)
{
  v4 = _s12OutputHelperV5ChunkVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C05F2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0C05F94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0C05FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a1)
  {
    v5 = a2 + a1;
  }

  else
  {
    v5 = 0;
  }

  return a5(a1, v5);
}

void sub_1B0C06050()
{
  sub_1B0E443C8();
  if (v0 <= 0x3F)
  {
    sub_1B0AD434C(319, &qword_1EB6DACD0);
    if (v1 <= 0x3F)
    {
      sub_1B0AD434C(319, &qword_1EB6DD0D8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t HandshakeReply.Encoded.init(content:tag:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  v7 = sub_1B0E443C8();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  result = type metadata accessor for HandshakeReply.Encoded();
  v9 = a3 + *(result + 20);
  *v9 = v3;
  *(v9 + 4) = v6;
  return result;
}

uint64_t type metadata accessor for HandshakeReply.Encoded()
{
  result = qword_1EB6DCE68;
  if (!qword_1EB6DCE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0C061F4(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      return sub_1B0AB8858(a1, a2, a4, a5);
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t sub_1B0C0623C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v8)
    {
      return sub_1B0AB8858(v4, v5, v6, v7);
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t HandshakeReply.Encoded.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HandshakeReply.Encoded.content.setter(uint64_t a1)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HandshakeReply.Encoded.tag.setter(unint64_t a1)
{
  v2 = a1;
  v3 = HIDWORD(a1);
  result = type metadata accessor for HandshakeReply.Encoded();
  v5 = v1 + *(result + 20);
  *v5 = v2;
  *(v5 + 4) = v3;
  return result;
}

uint64_t _s15IMAP2Connection14HandshakeReplyO7EncodedV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E443C8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = *(type metadata accessor for HandshakeReply.Encoded() + 20);
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 4);
  v15 = (a2 + v12);
  v16 = *v15;
  v17 = *(v15 + 1);
  if (v13 != v16 || v14 != v17)
  {
    return 0;
  }

  v20 = v5[2];
  v20(v11, a1, v4);
  v20(v8, a2, v4);
  v21 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v21 == _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
  {
    sub_1B075CEE0();
    sub_1B0E45668();
    v22 = sub_1B0E456C8();
    if (v26 == v25[2])
    {
      v19 = 1;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v22);
      v25[-2] = v8;
      v25[-1] = v11;
      sub_1B0E44328();
      v19 = v26;
    }
  }

  else
  {
    v19 = 0;
  }

  v23 = v5[1];
  v23(v8, v4);
  v23(v11, v4);
  return v19;
}

uint64_t get_enum_tag_for_layout_string_19CollectionsInternal17OrderedDictionaryVyS2SSgGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B0C06704(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0C0674C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0C067B4@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v1 + 40);
  v9 = *(v1 + 56);
  v10 = *(v1 + 72);
  v6 = *(v1 + 8);
  v7 = *(v1 + 24);
  result = sub_1B0C06D08();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 64) = 2;
  return result;
}

uint64_t sub_1B0C06814(uint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0B7EAA4(a1, v6);
  if (swift_getEnumCaseMultiPayload() != 21)
  {
    return sub_1B0B7EB08(v6);
  }

  v10 = *v6;
  v7 = *(v6 + 2);
  v8 = v1[12];
  result = sub_1B03B8738(v1[10], v1[11]);
  *(v1 + 5) = v10;
  v1[12] = v7;
  return result;
}

double sub_1B0C068E0@<D0>(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1 || (v4 = v2[11]) == 0)
  {
    *&v14 = 0;
    v13 = 9uLL;
    BYTE8(v14) = -64;
    sub_1B0BD6CF8(&v13);
  }

  else
  {
    v5 = v2[12];
    v6 = v2[10];

    ServerID.init(_:)(v6, v4, v5, &v13);
    sub_1B0C06A4C(&v13);
  }

  v33 = v21;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v25);
  v45 = v35;
  v46 = v36;
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v7 = v34;
  *(a2 + 128) = v33;
  *(a2 + 144) = v7;
  *(a2 + 160) = v45;
  *(a2 + 176) = v46;
  v8 = v42;
  *(a2 + 64) = v41;
  *(a2 + 80) = v8;
  v9 = v44;
  *(a2 + 96) = v43;
  *(a2 + 112) = v9;
  v10 = v38;
  *a2 = v37;
  *(a2 + 16) = v10;
  result = *&v39;
  v12 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v12;
  return result;
}

uint64_t sub_1B0C06A58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v28 = *(a1 + 16);
  sub_1B041D32C(0, v1, 0);
  v2 = v29;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1B0E460B8();
  v7 = v28;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_30;
    }

    v12 = *(*(a1 + 48) + result);
    if (v12 <= 1)
    {
      if (*(*(a1 + 48) + result))
      {
        v13 = 0xE90000000000006CLL;
        v14 = 0x6C69662D6B636162;
      }

      else
      {
        v13 = 0xE700000000000000;
        v14 = 0x72657865646E69;
      }
    }

    else if (v12 == 2)
    {
      v13 = 0xE800000000000000;
      v14 = 0x6574616E6F646572;
    }

    else if (v12 == 3)
    {
      v13 = 0xE800000000000000;
      v14 = 0x6369646F69726570;
    }

    else
    {
      v13 = 0xE400000000000000;
      v14 = 1752397168;
    }

    v15 = *(a1 + 36);
    v17 = *(v29 + 16);
    v16 = *(v29 + 24);
    if (v17 >= v16 >> 1)
    {
      v26 = *(a1 + 36);
      v27 = result;
      sub_1B041D32C((v16 > 1), v17 + 1, 1);
      v7 = v28;
      v15 = v26;
      result = v27;
    }

    *(v29 + 16) = v17 + 1;
    v18 = v29 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v13;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_31;
    }

    v4 = a1 + 56;
    v19 = *(a1 + 56 + 8 * v10);
    if ((v19 & v11) == 0)
    {
      goto LABEL_32;
    }

    if (v15 != *(a1 + 36))
    {
      goto LABEL_33;
    }

    v20 = v19 & (-2 << (result & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (a1 + 64 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          sub_1B0425168(result, v15, 0);
          v7 = v28;
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      sub_1B0425168(result, v15, 0);
      v7 = v28;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1B0C06D08()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
    v3 = v0[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C074E0(v2, v1, 1701667182, 0xE400000000000000);
  }

  v4 = v0[3];
  if (v4)
  {
    v5 = v0[2];
    v6 = v0[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C074E0(v5, v4, 0x6E6F6973726576, 0xE700000000000000);
  }

  v7 = v0[5];
  if (v7)
  {
    v8 = v0[4];
    v9 = v0[5];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C074E0(v8, v7, 29551, 0xE200000000000000);
  }

  v10 = v0[7];
  if (v10)
  {
    v11 = v0[6];
    v12 = v0[7];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C074E0(v11, v10, 0x69737265762D736FLL, 0xEA00000000006E6FLL);
  }

  sub_1B0C074E0(0x6E4920656C707041, 0xE900000000000063, 0x726F646E6576, 0xE600000000000000);
  v13 = v0[8];
  v14 = sub_1B0C091FC(v13);
  sub_1B0C074E0(v14, v15, 0x746E657665, 0xE500000000000000);
  if (*(v13 + 16))
  {
    v16 = *(v13 + 40);
    sub_1B0E46C28();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v17 = sub_1B0E46CB8();
    v18 = -1 << *(v13 + 32);
    v19 = v17 & ~v18;
    if ((*(v13 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      v20 = ~v18;
      while (1)
      {
        v21 = *(*(v13 + 48) + v19);
        if (v21 <= 2 && v21 != 1 && v21 != 2)
        {
          break;
        }

        v22 = sub_1B0E46A78();

        if (v22)
        {
          goto LABEL_19;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v13 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_19:
      sub_1B0C074E0(49, 0xE100000000000000, 0x72657865646E69, 0xE700000000000000);
    }
  }

  return 0;
}

uint64_t sub_1B0C06FDC(__int128 *a1)
{
  v2 = v1;
  if (v2[1])
  {
    v4 = *v2;
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v2[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B0E46C68();
    if (v2[3])
    {
LABEL_3:
      v5 = v2[2];
      sub_1B0E46C68();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      if (v2[5])
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_1B0E46C68();
      if (v2[7])
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  sub_1B0E46C68();
  if (!v2[5])
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = v2[4];
  sub_1B0E46C68();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v2[7])
  {
LABEL_5:
    v7 = v2[6];
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    goto LABEL_10;
  }

LABEL_9:
  sub_1B0E46C68();
LABEL_10:
  v8 = v2[8];

  return sub_1B0C08D50(a1, v8);
}

uint64_t sub_1B0C070EC()
{
  sub_1B0E46C28();
  sub_1B0C06FDC(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C07130()
{
  sub_1B0E46C28();
  sub_1B0C06FDC(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C0716C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1B0C08F18(v7, v9) & 1;
}

id sub_1B0C071C8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    return v1;
  }

  v2 = sub_1B0E445A8();

  result = *MEMORY[0x1E695E4F0];
  if (!*MEMORY[0x1E695E4F0])
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v4 = sub_1B0E44AD8();
  if (*(v2 + 16))
  {
    v6 = sub_1B0441038(v4, v5);
    v8 = v7;

    if (v8)
    {
      sub_1B039AEC8(*(v2 + 56) + 32 * v6, v29);
      if (swift_dynamicCast())
      {
LABEL_13:
        v1 = v27;
        if (!*(v2 + 16))
        {
          goto LABEL_24;
        }

LABEL_17:
        v14 = sub_1B0441038(0xD00000000000001ALL, 0x80000001B0F2D0B0);
        if (v15)
        {
          sub_1B039AEC8(*(v2 + 56) + 32 * v14, v29);
          v16 = swift_dynamicCast();
          if (v16)
          {
            v17 = v27;
          }

          else
          {
            v17 = 0;
          }

          if (v16)
          {
            v18 = v28;
          }

          else
          {
            v18 = 0;
          }

LABEL_25:
          result = *MEMORY[0x1E695E500];
          if (*MEMORY[0x1E695E500])
          {
            v19 = sub_1B0E44AD8();
            if (*(v2 + 16))
            {
              v21 = sub_1B0441038(v19, v20);
              v23 = v22;

              if (v23)
              {
                sub_1B039AEC8(*(v2 + 56) + 32 * v21, v29);

                v24 = swift_dynamicCast();
                if (v24)
                {
                  v25 = v27;
                }

                else
                {
                  v25 = 0;
                }

                if (v24)
                {
                  v26 = v28;
                }

                else
                {
                  v26 = 0;
                }

                goto LABEL_36;
              }
            }

            else
            {
            }

            v25 = 0;
            v26 = 0;
LABEL_36:
            sub_1B0C07708(v17, v18, v25, v26);

            return v1;
          }

          goto LABEL_39;
        }

LABEL_24:
        v17 = 0;
        v18 = 0;
        goto LABEL_25;
      }
    }
  }

  else
  {
  }

  result = *MEMORY[0x1E695E4F8];
  if (*MEMORY[0x1E695E4F8])
  {
    v9 = sub_1B0E44AD8();
    if (*(v2 + 16))
    {
      v11 = sub_1B0441038(v9, v10);
      v13 = v12;

      if (v13)
      {
        sub_1B039AEC8(*(v2 + 56) + 32 * v11, v29);
        if (swift_dynamicCast())
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
    }

    v1 = 0;
    if (!*(v2 + 16))
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B0C074E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v10 + 16);
  if (*v4)
  {
    v12 = *v4;

    v13 = sub_1B0C08B5C(a3, a4, v10 + 32, v11, (v9 + 16));
    v15 = v14;
    v17 = v16;

    if ((v15 & 1) == 0)
    {

      if (a2 == 1)
      {
LABEL_4:
        sub_1B0C07FE0(v13, v17);

        sub_1B0C08148(v13);
LABEL_14:
      }

      goto LABEL_23;
    }
  }

  else if (v11)
  {
    v13 = 0;
    v18 = (v10 + 40);
    while (1)
    {
      v19 = *(v18 - 1) == a3 && *v18 == a4;
      if (v19 || (sub_1B0E46A78() & 1) != 0)
      {
        break;
      }

      ++v13;
      v18 += 2;
      if (v11 == v13)
      {
        goto LABEL_13;
      }
    }

    v17 = 0;
    if (a2 == 1)
    {
      goto LABEL_4;
    }

LABEL_23:
    v27 = v4[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0C0E078(v27);
      v27 = result;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < v27[2])
    {
      v28 = &v27[2 * v13];
      v29 = v28[5];
      v28[4] = a1;
      v28[5] = a2;

      v4[2] = v27;
      return result;
    }

    __break(1u);
    return result;
  }

LABEL_13:
  if (a2 == 1)
  {
    goto LABEL_14;
  }

  sub_1B0C07E68(a3, a4);

  v23 = v4[2];
  v21 = v4 + 2;
  v22 = v23;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v23;
  if ((result & 1) == 0)
  {
    result = sub_1B041DB10(0, *(v22 + 16) + 1, 1);
    v22 = *v21;
  }

  v25 = *(v22 + 16);
  v24 = *(v22 + 24);
  if (v25 >= v24 >> 1)
  {
    result = sub_1B041DB10((v24 > 1), v25 + 1, 1);
    v22 = *v21;
  }

  *(v22 + 16) = v25 + 1;
  v26 = v22 + 16 * v25;
  *(v26 + 32) = a1;
  *(v26 + 40) = a2;
  *v21 = v22;
  return result;
}

uint64_t sub_1B0C07708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (!a4 || a1 == a3 && a2 == a4 || (v4 = a1, v7 = sub_1B0E46A78(), a1 = v4, (v7 & 1) != 0))
    {
      v8 = a1;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return v8;
    }

    v12 = v4;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](10272, 0xE200000000000000);
    v10 = a3;
    v11 = a4;
  }

  else
  {
    if (!a4)
    {
      return a3;
    }

    v12 = 40;
    v10 = a3;
    v11 = a4;
  }

  MEMORY[0x1B2726E80](v10, v11);
  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return v12;
}

uint64_t sub_1B0C077FC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B0E44B68();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1B0E42AD8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v17 = 0xC800000000;
  v18 = sub_1B0E42AA8();
  sub_1B0C08CA8(&v17, 0);
  v18 |= 0x4000000000000000uLL;
  v9 = sub_1B0C07A1C(&v17, a1);
  if ((v10 & 1) != 0 || v9 < 1)
  {
    result = sub_1B0391D50(v17, v18);
    v13 = 0;
    v15 = 0;
  }

  else
  {
    sub_1B0E42EE8();
    v11 = v17;
    v12 = v18;
    sub_1B0E44B48();
    v13 = sub_1B0E44AF8();
    v15 = v14;
    result = sub_1B0391D50(v11, v12);
  }

  *a2 = v13;
  a2[1] = v15;
  return result;
}

double sub_1B0C0793C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
    sub_1B0E46258();
    if (!v2)
    {
      return *&v5[2];
    }

    return result;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      sub_1B0C077FC(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32), v5);
      if (!v2)
      {
        return *v5;
      }

      return result;
    }

    goto LABEL_9;
  }

  v5[0] = a1;
  v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  sub_1B0C077FC(v5, &v4);
  if (!v2)
  {
    return *&v4;
  }

  return result;
}

uint64_t sub_1B0C07A1C(uint64_t *a1, char *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
      *(&v22 + 7) = 0;
      v21 = 0;
      *&v22 = 0;
      if (sysctlbyname(a2, &v22, &v21, 0, 0))
      {
        result = 0;
      }

      else
      {
        result = v21;
      }

      goto LABEL_23;
    }

    v10 = *a1;

    sub_1B0391D50(v6, v5);
    *&v22 = v6;
    *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1B0ECF4A0;
    sub_1B0391D50(0, 0xC000000000000000);
    sub_1B0E42E88();
    v6 = v22;
    result = sub_1B0C07D84(*(v22 + 16), *(v22 + 24), *(&v22 + 1), a2);
    v11 = *(&v22 + 1) | 0x8000000000000000;
    if (!v2)
    {
      *a1 = v22;
      a1[1] = v11;
      goto LABEL_23;
    }

LABEL_21:
    *a1 = v6;
    a1[1] = v11;
    goto LABEL_23;
  }

  if (v7)
  {
    v12 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1B0391D50(v6, v5);
    *a1 = xmmword_1B0ECF4A0;
    sub_1B0391D50(0, 0xC000000000000000);
    v13 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1B0E42A98() && __OFSUB__(v6, sub_1B0E42AC8()))
      {
LABEL_26:
        __break(1u);
      }

      v14 = sub_1B0E42AD8();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = sub_1B0E42A78();

      v12 = v17;
    }

    if (v13 >= v6)
    {

      v18 = sub_1B0C07D84(v6, v6 >> 32, v12, a2);

      v11 = v12 | 0x4000000000000000;
      if (!v2)
      {
        *a1 = v6;
        a1[1] = v11;
        result = v18;
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  sub_1B0391D50(v6, v5);
  *&v22 = v6;
  WORD4(v22) = v5;
  BYTE10(v22) = BYTE2(v5);
  BYTE11(v22) = BYTE3(v5);
  BYTE12(v22) = BYTE4(v5);
  BYTE13(v22) = BYTE5(v5);
  BYTE14(v22) = BYTE6(v5);
  v21 = BYTE6(v5);
  if (sysctlbyname(a2, &v22, &v21, 0, 0))
  {
    result = 0;
  }

  else
  {
    result = v21;
  }

  v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
  *a1 = v22;
  a1[1] = v9;
LABEL_23:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

size_t sub_1B0C07D84(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1B0E42A98();
  if (!v7)
  {
LABEL_13:
    __break(1u);
  }

  v8 = v7;
  v9 = sub_1B0E42AC8();
  v10 = a1 - v9;
  if (__OFSUB__(a1, v9))
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_1B0E42AB8();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v17[0] = v14;
  if (sysctlbyname(a4, (v8 + v10), v17, 0, 0))
  {
    result = 0;
  }

  else
  {
    result = v17[0];
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C07E68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_1B041D32C(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_1B041D32C((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    if (MEMORY[0x1B2725670](*(v13 + 16) & 0x3FLL) > v11)
    {
      v14 = *v3;
      result = swift_isUniquelyReferenced_native();
      v15 = *v3;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = *v3;
        v17 = sub_1B0E43578();

        *v3 = v17;
        v15 = v17;
      }

      if (v15)
      {
        v18 = *(v15 + 16);
        v19 = *(*v6 + 16) + ~(*(v15 + 24) >> 6);
        return sub_1B0E43518();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_1B0C08258();
}

unint64_t sub_1B0C07FE0(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_1B0C081D0(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x1B2725680]())
  {
LABEL_16:
    v13 = sub_1B0C081D0(a1);
    sub_1B0C08258();
    return v13;
  }

  v8 = *v2;
  result = swift_isUniquelyReferenced_native();
  v10 = *v2;
  if ((result & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = *v2;
    v12 = sub_1B0E43578();

    *v2 = v12;
    v10 = v12;
  }

  if (v10)
  {

    result = sub_1B0C082F8(a2, (v10 + 16), v10 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_1B0C084F0(a1, a1 + 1, v4, (v10 + 16));

      return sub_1B0C081D0(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B0C08148(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0C0E078(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    v9 = v7[5];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B0C081D0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0C0E064(v3);
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
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B0C08258()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1B27256A0](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1B0C0895C(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

unint64_t sub_1B0C082F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v23 = sub_1B0E434F8();
  sub_1B0E43548();
  if (v23)
  {
    v7 = sub_1B0E43508();
    while (1)
    {
      result = sub_1B0E43528();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v12 = *a2;
      v13 = v11 + 16 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      sub_1B0E46C28();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v16 = sub_1B0E46CB8();

      v17 = 1 << *a2;
      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_22;
      }

      v19 = v18 & v16;
      if (v6 >= v7)
      {
        break;
      }

      if (v19 < v7)
      {
        goto LABEL_14;
      }

LABEL_15:
      v20 = sub_1B0E43528();
      if ((v21 & 1) == 0)
      {
        v8 = ((v18 & ((v20 - (a2[1] >> 6)) >> 63)) + v20 - (a2[1] >> 6)) ^ v18;
      }

      v6 = a1;
      sub_1B0E43518();
LABEL_5:
      sub_1B0E43548();
    }

    if (v19 < v7)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v6 < v19)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  return sub_1B0E43518();
}

uint64_t sub_1B0C084F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v5) / 2)
    {
      result = MEMORY[0x1B2725670](*a4 & 0x3F);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < v8)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v10 = a3;

        if (v8)
        {
          v11 = 0;
          while (1)
          {
            v12 = (v10 + 32 + 16 * v11);
            v13 = *v12;
            v14 = v12[1];
            v15 = *a4;
            sub_1B0E46C28();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
            result = sub_1B0E46CB8();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1B0E434F8())
            {
              while (1)
              {
                v16 = sub_1B0E43528();
                if ((v17 & 1) == 0 && v16 == v11)
                {
                  break;
                }

                sub_1B0E43548();
              }
            }

            result = v11 + v5;
            if (__OFADD__(v11, v5))
            {
              goto LABEL_55;
            }

            ++v11;
            sub_1B0E43538();

            if (v11 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_1B0E434F8();
      v24 = sub_1B0E43528();
      if ((v25 & 1) != 0 || v24 >= v8)
      {
LABEL_33:
        result = sub_1B0E43548();
LABEL_18:
        v18 = a4[1];
        if (__OFSUB__(v18 >> 6, v5))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v19 = 1 << *a4;
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v20)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v22 = (v21 & (((v18 >> 6) - v5) >> 63)) + (v18 >> 6) - v5;
        if (v22 < v21)
        {
          v21 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v22 - v21) << 6);
        return result;
      }

      if (!__OFADD__(v24, v5))
      {
        sub_1B0E43538();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_1B0E434F8();
      v26 = sub_1B0E43528();
      if ((v27 & 1) == 0 && v26 >= v4)
      {
        v20 = __OFSUB__(v26, v5);
        result = v26 - v5;
        if (v20)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_1B0E43538();
      }

      return sub_1B0E43548();
    }

    v4 = a2;
    v23 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = MEMORY[0x1B2725670](*a4 & 0x3F);
    if (v23 >= result / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v4)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v4 < 0)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    if (v9 != v4)
    {
      do
      {
        v28 = (a3 + 32 + 16 * v4);
        v29 = *v28;
        v30 = v28[1];
        v31 = *a4;
        sub_1B0E46C28();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        result = sub_1B0E46CB8();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_1B0E434F8())
        {
          while (1)
          {
            v32 = sub_1B0E43528();
            if ((v33 & 1) == 0 && v32 == v4)
            {
              break;
            }

            sub_1B0E43548();
          }
        }

        sub_1B0E43538();
      }

      while (++v4 != v9);
    }
  }

  return result;
}

uint64_t sub_1B0C0895C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1B27256A0](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1B27256B0](v8, a4);
    sub_1B0C089DC(a1, (v10 + 16));
    return v10;
  }

  return result;
}

uint64_t sub_1B0C08A2C(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v11 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = (v11 + 16 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = *a3;
        sub_1B0E46C28();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        result = sub_1B0E46CB8();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = sub_1B0E434F8();

        if (v10)
        {
          while (1)
          {
            sub_1B0E43548();
          }
        }

        result = sub_1B0E43538();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0C08B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  result = sub_1B0E46CB8();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1B0E434F8();
    result = sub_1B0E43528();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_1B0E46A78())
          {
            break;
          }

          sub_1B0E43548();
          result = sub_1B0E43528();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

uint64_t sub_1B0C08CA8(int *a1, int a2)
{
  result = sub_1B0E42EA8();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_1B0E42A98();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_1B0E42AC8();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_1B0E42AB8();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t sub_1B0C08D50(__int128 *a1, uint64_t a2)
{
  v14 = a1[2];
  v15 = a1[3];
  v16 = *(a1 + 8);
  v12 = *a1;
  v13 = a1[1];
  sub_1B0E46CB8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_9:
    v11 = *(*(a2 + 48) + (__clz(__rbit64(v5)) | (v9 << 6)));
    sub_1B0E46C28();
    v5 &= v5 - 1;
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    result = sub_1B0E46CB8();
    v8 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1B2728D70](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C08F18(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_1B0E46A78();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v10 != v11)
    {
      v12 = a1;
      v13 = a1[2];
      v14 = a2;
      v15 = sub_1B0E46A78();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v17 != v18)
    {
      v19 = a1;
      v20 = a1[4];
      v21 = a2;
      v22 = sub_1B0E46A78();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v24 = a1[7];
  v25 = a2[7];
  if (v24)
  {
    if (v25)
    {
      if (a1[6] == a2[6] && v24 == v25)
      {
        goto LABEL_29;
      }

      v26 = a1;
      v27 = a1[6];
      v28 = a2;
      v29 = sub_1B0E46A78();
      a2 = v28;
      v30 = v29;
      a1 = v26;
      if (v30)
      {
        goto LABEL_29;
      }
    }

    return 0;
  }

  if (v25)
  {
    return 0;
  }

LABEL_29:
  v31 = a1[8];
  v32 = a2[8];

  return sub_1B038F0C4(v31, v32);
}

uint64_t sub_1B0C090B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = sub_1B0C071C8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1B0E44AC8();
  v10 = MGGetStringAnswer();

  if (v10)
  {
    v11 = sub_1B0E44AD8();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_1B0C0793C(0xD000000000000015, 0x80000001B0F2D090);
  v15 = v14;
  v17 = v16;
  sub_1B0C0793C(0x76736F2E6E72656BLL, 0xEE006E6F69737265);
  v20 = sub_1B0C07708(v15, v17, v18, v19);
  v22 = v21;

  *a2 = v24;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v8;
  a2[4] = v11;
  a2[5] = v13;
  a2[6] = v20;
  a2[7] = v22;
  a2[8] = a1;
  return result;
}

uint64_t sub_1B0C091FC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = sub_1B0C06A58(a1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C2A0EC(&v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v1 = sub_1B0E448E8();

  return v1;
}

uint64_t sub_1B0C092CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0C09314(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0C09378()
{
  result = qword_1EB6E56C0;
  if (!qword_1EB6E56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E56C0);
  }

  return result;
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B0C093E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 60) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__uint64_t sub_1B0C09438(__uint64_t result)
{
  if (result)
  {
    if (result == 1)
    {
      v2 = *(v1 + 56) * 17.0;
      result = static MonotonicTime.now()();
      *v1 = v2;
      *(v1 + 8) = xmmword_1B0EA4610;
      *(v1 + 24) = result;
      *(v1 + 32) = 0;
      return result;
    }

    v4 = *(v1 + 48) * *(v1 + 56);
    result = static MonotonicTime.now()();
    *v1 = xmmword_1B0EA4610;
    *(v1 + 16) = result;
    *(v1 + 24) = v4;
    v3 = 1;
  }

  else
  {
    *v1 = 0u;
    *(v1 + 16) = 0u;
    v3 = 2;
  }

  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_1B0C094D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1B0C097BC(v5, v7) & 1;
}