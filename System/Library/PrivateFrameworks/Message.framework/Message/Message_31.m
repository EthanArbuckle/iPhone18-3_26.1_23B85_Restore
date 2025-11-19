void sub_1B089E99C(void *a1)
{
  v62 = a1;
  v59 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v58 = 0;
  v60 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v61 = v22 - v60;
  v63 = sub_1B0E42E68();
  v64 = *(v63 - 8);
  v65 = v64;
  v66 = *(v64 + 64);
  v2 = MEMORY[0x1EEE9AC00](v62);
  v68 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v67 = v22 - v68;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v69 = v22 - v68;
  v78 = v22 - v68;
  v77 = v3;
  v76 = v1;
  v70 = [v3 URL];
  if (v70)
  {
    v56 = v70;
    v55 = v70;
    sub_1B0E42DE8();
    (*(v65 + 32))(v61, v67, v63);
    (*(v65 + 56))(v61, 0, 1, v63);
  }

  else
  {
    (*(v65 + 56))(v61, 1, 1, v63);
  }

  if ((*(v65 + 48))(v61, 1, v63) != 1)
  {
    v4 = v58;
    (*(v65 + 32))(v69, v61, v63);
    v48 = *(v57 + *(type metadata accessor for MailboxUpdateTree() + 48));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v71[0] = v48;
    v49 = v22;
    MEMORY[0x1EEE9AC00](v22);
    v22[-2] = v69;
    v50 = v22;
    MEMORY[0x1EEE9AC00](v22);
    v51 = &v22[-4];
    v22[-2] = sub_1B08A4EF0;
    v22[-1] = v5;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28C0, &qword_1B0E9E130);
    sub_1B08A4DB4();
    v6 = sub_1B0E45028();
    v53 = v4;
    v54 = v6;
    if (!v4)
    {
      v47 = v54;
      sub_1B039E440(v71);
      if (v47)
      {
        v8 = v53;
        (*(v65 + 8))(v69, v63);
        v45 = v8;
        return;
      }

      v7 = v53;
      (*(v65 + 8))(v69, v63);
      v46 = v7;
      goto LABEL_13;
    }

    __break(1u);
LABEL_26:

    __break(1u);
    goto LABEL_27;
  }

  v9 = v58;
  sub_1B06E3800(v61);
  v38 = *(v57 + *(type metadata accessor for MailboxUpdateTree() + 48));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v75 = v38;
  v10 = v62;
  v39 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v22[-2] = v62;
  v40 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v41 = &v22[-4];
  v22[-2] = sub_1B08A4D7C;
  v22[-1] = v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28C0, &qword_1B0E9E130);
  sub_1B08A4DB4();
  v12 = sub_1B0E45028();
  v43 = v9;
  v44 = v12;
  if (v9)
  {
    goto LABEL_26;
  }

  v37 = v44;

  sub_1B039E440(&v75);
  if (v37)
  {
    v45 = v43;
    return;
  }

  v46 = v43;
LABEL_13:
  v13 = v46;
  updated = type metadata accessor for MailboxUpdateTree();
  v30 = *(v57 + *(updated + 40));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v74 = v30;
  v14 = v62;
  v31 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v33 = &v22[-4];
  v22[-2] = v15;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28D0, &qword_1B0E9E138);
  v32 = v34;
  sub_1B08A4E68();
  v16 = sub_1B0E45028();
  v35 = v13;
  v36 = v16;
  if (v13)
  {
LABEL_27:

    __break(1u);
    return;
  }

  v28 = v36;

  sub_1B039E440(&v74);
  if (v28)
  {
    v45 = v35;
  }

  else
  {
    v17 = v62;
    v27 = [v62 children];
    if (v27)
    {
      v26 = v27;
      v23 = v27;
      v22[3] = sub_1B03EE50C();
      v24 = sub_1B0E451B8();

      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v72 = v25;
    if (v25)
    {
      v73 = v72;
    }

    else
    {
      v22[1] = 0;
      v22[2] = sub_1B03EE50C();
      v73 = sub_1B0E46A48();
      if (v72)
      {
        sub_1B039E440(&v72);
      }
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v62);
    v71[1] = v18;
    v71[2] = v19;
    v20 = v57 + *(updated + 40);
    sub_1B0E452E8();
    v21 = v35;
    *(v57 + *(updated + 52)) = 1;
    v45 = v21;
  }
}

uint64_t sub_1B089F2A0()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 12);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B089F2F8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v6 = BYTE4(a2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = *v2;
  *v2 = a1;
  *(v2 + 2) = v5;
  *(v2 + 12) = v6;
}

void *sub_1B089F374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, void *a8@<X8>)
{
  __src[0] = a1;
  LODWORD(__src[1]) = a2;
  BYTE4(__src[1]) = BYTE4(a2);
  __src[2] = a3;
  __src[3] = a4;
  __src[4] = a5;
  __src[5] = a6;
  LOBYTE(__src[6]) = a7;
  return memcpy(a8, __src, 0x31uLL);
}

uint64_t sub_1B089F3E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = RemoteMailbox.name.getter();
  v8 = Namespace.contains(_:)(v7, v2, v4);

  result = v8;
  *a2 = (v8 ^ 1) & 1;
  return result;
}

uint64_t sub_1B089F490(__int16 a1)
{
  v5 = 0;
  v4 = a1;
  RemoteMailbox.Attributes.allAttributes.getter(a1, v3);
  v2[0] = v3[0];
  v2[1] = v3[1];
  v2[2] = v3[2];
  type metadata accessor for MailboxAttributes();
  sub_1B0694AF8();
  sub_1B0694390();
  sub_1B0E46FE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28D8, &qword_1B0E9E140);
  sub_1B08A4EF8();
  sub_1B0E44FD8();
  sub_1B08A4F80(v2);
  return v3[3];
}

uint64_t sub_1B089F76C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B089F7A4(void *a1)
{
  v8 = [a1 decodedName];
  if (v8)
  {
    v4 = sub_1B0E44AD8();
    v5 = v1;
    MEMORY[0x1E69E5920](v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    return v6;
  }

  sub_1B0E465A8();
  __break(1u);
  return v3;
}

id sub_1B089F8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char a6, char a7, uint64_t a8)
{
  v21 = 0;
  v29 = a1;
  v30 = a2;
  v27 = a3;
  v28 = a4;
  v26 = a5;
  v25 = a6;
  v24 = a7 & 1;
  v23 = a8;
  v22 = sub_1B089F490(a5);
  if (a7)
  {
    type metadata accessor for MailboxAttributes();
    sub_1B0694AF8();
    sub_1B0E46F48();
  }

  v21 = sub_1B0E46A48();
  if (a6 != 7)
  {
    v17 = sub_1B0E46A48();
    v16 = v8;
    *v8 = sub_1B089F5B0();
    v16[1] = v9;
    sub_1B0394964();
    v21 = v17;
  }

  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = sub_1B0E44AC8();

  MEMORY[0x1E69E5928](a8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = sub_1B0E451A8();

  v15 = [v12 initWithName:v14 attributes:v22 forAccount:a8 extraAttributes:v13];
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](a8);
  MEMORY[0x1E69E5920](v14);
  if (v15)
  {
    v11 = v15;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  MEMORY[0x1E69E5928](v11);
  v31 = v11;
  sub_1B039E440(&v21);
  MEMORY[0x1E69E5920](a8);

  MEMORY[0x1E69E5920](v31);
  return v11;
}

uint64_t sub_1B089FC28(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v28 = a2;
  v27 = v2;
  MEMORY[0x1E69E5928](a1);
  MEMORY[0x1E69E5928](a1);
  updated = type metadata accessor for MailboxUpdateTree();
  v21 = *(updated + 44);
  if (*(v2 + v21))
  {
    v15 = *(v18 + v21);
    MEMORY[0x1E69E5928](v15);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  MEMORY[0x1E69E5928](v16);
  v25 = a1;
  v26 = v16;
  if (a1)
  {
    sub_1B06BD0C8(&v25, v24);
    if (v26)
    {
      v23 = v24[0];
      v22 = v26;
      sub_1B03EE50C();
      v13 = sub_1B0E45CD8();
      MEMORY[0x1E69E5920](v22);
      MEMORY[0x1E69E5920](v23);
      sub_1B06D4E94(&v25);
      v14 = v13;
      goto LABEL_9;
    }

    MEMORY[0x1E69E5920](v24[0]);
    goto LABEL_11;
  }

  if (v26)
  {
LABEL_11:
    sub_1B06D61B0(&v25);
    v14 = 0;
    goto LABEL_9;
  }

  sub_1B06D4E94(&v25);
  v14 = 1;
LABEL_9:
  MEMORY[0x1E69E5920](v16);
  result = MEMORY[0x1E69E5920](a1);
  if (v14)
  {
    if (*(v18 + *(updated + 44)))
    {
      MEMORY[0x1E69E5928](a2);
      v24[1] = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34E0, &qword_1B0E9F580);
      return sub_1B0E452E8();
    }
  }

  else
  {
    sub_1B088D7A8();
    MEMORY[0x1E69E5928](a1);
    sub_1B08A09CC();
    sub_1B03EE50C();
    sub_1B0E46A48();
    v12 = v4;
    MEMORY[0x1E69E5928](a2);
    *v12 = a2;
    sub_1B0394964();
    sub_1B0E45238();

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(a1);
    v6 = v5;
    v8 = v7;
    v9 = (v18 + *(updated + 44));
    v10 = *v9;
    v11 = v9[1];
    *v9 = v6;
    v9[1] = v8;
    return sub_1B08A4518(v10);
  }

  return result;
}

uint64_t sub_1B089FF5C(uint64_t a1)
{
  v30 = a1;
  v2 = v1;
  v38 = v2;
  v31 = sub_1B08A0B18;
  v60 = 0;
  v59 = 0;
  v56 = 0;
  v32 = 0;
  memset(&v46[6], 0, 0x2EuLL);
  v36 = 0;
  v33 = (*(*(_s6LoggerVMa_1() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v34 = &v10 - v33;
  v35 = (*(*(_s6LoggerVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v41 = &v10 - v35;
  v37 = (*(*(_s18MailboxPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v43 = &v10 - v37;
  v60 = a1;
  v59 = v4;
  updated = type metadata accessor for MailboxUpdateTree();
  sub_1B03F4D78(v38 + *(updated + 20), v43);
  v42 = RemoteMailbox.name.getter();
  v40 = v5;
  sub_1B0394784(v38 + *(updated + 32), v41);
  sub_1B07C5844(v42, v40, v41, &v57);
  sub_1B039480C(v41);

  result = sub_1B03F4F08(v43);
  v44 = v57;
  if ((v58 & 1) == 0)
  {
    v29 = v44;
    v7 = v32;
    v25 = v44;
    v56 = v44;
    v26 = __dst;
    v27 = 42;
    memcpy(__dst, (v30 + 24), 0x2AuLL);
    memcpy(v47, __dst, sizeof(v47));
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28E0, &qword_1B0E9E148);
    result = sub_1B03F1A20(v31, 0, v8, MEMORY[0x1E69E73E0], &unk_1F270C638, v28, &v48);
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v20 = v48;
      v21 = v49;
      v22 = v50;
      v23 = v51;
      *&v24 = v52;
      *(&v24 + 1) = v53 | (v54 << 32);
      v46[6] = v48;
      v46[7] = v49;
      v46[8] = v50;
      v46[9] = v51;
      v46[10] = v52;
      LODWORD(v46[11]) = v53;
      BYTE4(v46[11]) = BYTE12(v24);
      BYTE5(v46[11]) = v55 & 1;
      if ((v55 & 1) == 0)
      {
        v13 = v20;
        v14 = v21;
        v15 = v22;
        v16 = v23;
        v17 = v24;
        v18 = v24 >> 32;
        v19 = (*(&v24 + 1) & 0xFFFFFFFFFFuLL) >> 32;
        LODWORD(v46[0]) = v20;
        BYTE4(v46[0]) = BYTE4(v20) & 1;
        v46[1] = v21;
        LOBYTE(v46[2]) = v22 & 1;
        v46[3] = v23;
        LOBYTE(v46[4]) = v24 & 1;
        *(&v46[4] + 4) = v18;
        BYTE4(v46[5]) = v19 & 1;
        v11 = v62;
        memcpy(v62, v46, 0x2DuLL);
        sub_1B03F4D78(v38 + *(updated + 20), v43);
        v12 = &v45;
        v45 = v25;
        sub_1B0394784(v38 + *(updated + 32), v41);
        v10 = RemoteMailbox.name.getter();
        sub_1B07B91DC(v41, v10, v9, v34);
        sub_1B07C1A10(v11, v12, v34);
        sub_1B074B764(v34);
        return sub_1B03F4F08(v43);
      }
    }
  }

  return result;
}

uint64_t sub_1B08A041C(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v21 = a2;
  v17 = a3;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v29 = sub_1B0E42E68();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v14 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v15 = &v8[-v14];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3760, &unk_1B0E9AE90);
  v16 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v30 = &v8[-v16];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v19 = *(*(v3 - 8) + 64);
  v18 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v8[-v18];
  MEMORY[0x1EEE9AC00](&v8[-v18]);
  v25 = &v8[-v4];
  v35 = v23;
  v34 = v21;
  v33 = v5;
  (*(v26 + 16))();
  v6 = *(v26 + 56);
  v28 = 1;
  v6(v25, 0);
  v24 = *(v22 + 48);
  sub_1B071C180(v23, v30);
  sub_1B071C180(v25, &v30[v24]);
  v31 = *(v26 + 48);
  v32 = v26 + 48;
  if (v31(v30, v28, v29) == 1)
  {
    if (v31(&v30[v24], 1, v29) != 1)
    {
      goto LABEL_8;
    }

    sub_1B06E3800(v30);
    v13 = 1;
  }

  else
  {
    sub_1B071C180(v30, v20);
    if (v31(&v30[v24], 1, v29) == 1)
    {
      (*(v26 + 8))(v20, v29);
LABEL_8:
      sub_1B071C2A8(v30);
      v13 = 0;
      goto LABEL_7;
    }

    (*(v26 + 32))(v15, &v30[v24], v29);
    sub_1B071C3D4();
    v12 = sub_1B0E44A28();
    v11 = *(v26 + 8);
    v10 = v26 + 8;
    v11(v15, v29);
    v11(v20, v29);
    sub_1B06E3800(v30);
    v13 = v12;
  }

LABEL_7:
  v9 = v13 ^ 1;
  sub_1B06E3800(v25);
  return v9 & 1;
}

uint64_t sub_1B08A093C(uint64_t *a1)
{
  v2 = *a1;
  sub_1B08A67A0();
  MEMORY[0x1E69E5928](v2);
  v3 = sub_1B0E45CD8();
  MEMORY[0x1E69E5920](v2);
  return v3 & 1;
}

uint64_t sub_1B08A09CC()
{
  v4 = [v0 mutableCopyOfChildren];
  if (v4)
  {
    MEMORY[0x1E69E5928](v4);
    objc_opt_self();
    v2 = swift_dynamicCastObjCClassUnconditional();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34E0, &qword_1B0E9F580);
    MEMORY[0x1E69E5928](v2);
    sub_1B08A4FB8();
    sub_1B0E46B48();
    MEMORY[0x1E69E5920](v2);
    MEMORY[0x1E69E5920](v2);
    MEMORY[0x1E69E5920](v4);
    return v5;
  }

  else
  {
    sub_1B03EE50C();
    return sub_1B0E46A48();
  }
}

void *sub_1B08A0B18@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x29uLL);
  sub_1B08A0B7C(__dst, v4);
  return memcpy(a2, v4, 0x2DuLL);
}

void *sub_1B08A0B7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  LODWORD(v5) = *(a1 + 12);
  BYTE4(v5) = 0;
  sub_1B0A42B34(v5, 0, 1, *(a1 + 32), *(a1 + 40) & 1, 0, 1, v7);
  return memcpy(a2, v7, 0x2DuLL);
}

uint64_t sub_1B08A0C34(uint64_t a1, uint64_t a2)
{
  v47 = v64;
  v66 = 0;
  v65 = 0;
  v48 = 0;
  v63 = 0;
  v62 = 0u;
  v61 = 0u;
  v60 = 0;
  v59 = 0;
  v54 = 0;
  v72 = a1;
  v73 = a2;
  v49 = a1;
  v69 = a1;
  v70 = a2;
  v71 = BYTE4(a2);
  v67 = a1;
  LODWORD(v68) = a2;
  BYTE4(v68) = BYTE4(a2);
  v50 = MailboxPath.pathSeparator.getter(a1, v68);
  v51 = v2;
  if (v2)
  {
    v45 = v50;
    v46 = v51;
    v40 = v51;
    v52 = sub_1B0E447F8();
    v41 = v52;
    v42 = HIBYTE(v52);

    v43 = v52;
    v44 = HIBYTE(v52);
  }

  else
  {
    v43 = 0;
    v44 = 1;
  }

  v39 = v43;
  if (v44)
  {
    v19 = 0;
    v20 = 0;
    v21 = v48;
  }

  else
  {
    v38 = v39;
    v3 = v48;
    v34 = v39;
    v66 = v39;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    *(v47 + 12) = v49;
    v35 = v12;
    MEMORY[0x1EEE9AC00](v12);
    v36 = v11;
    v11[16] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28E8, &qword_1B0E9E150);
    sub_1B0E45208();
    v37 = v3;
    v5 = v47;
    v31 = *v47;
    v32 = *(v47 + 1);
    v6 = v32;
    v33 = *(v47 + 4);
    v7 = v33;
    v8 = v64[40];
    *(v47 + 3) = v31;
    *(v5 + 4) = v6;
    *(v5 + 10) = v7;
    v64[88] = v8;
    if (v8)
    {

      v19 = 0;
      v20 = 0;
      v21 = v37;
    }

    else
    {
      v28 = v31;
      v29 = v32;
      v30 = v33;
      v61 = v31;
      v62 = v32;
      v63 = v33;
      v59 = sub_1B0E44838();
      v60 = v9;
      v56 = sub_1B0E46D78();
      v57 = v56;
      v58 = BYTE4(v56);
      for (i = v37; ; i = v15)
      {
        v23 = i;
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28F0, &qword_1B0E9E158);
        sub_1B08A5068();
        v55 = sub_1B0E46D68();
        v25 = v55;
        v26 = v55;
        if (BYTE4(v55) == 1)
        {
          break;
        }

        v22 = v25;
        v12[3] = v25;
        v15 = v23;
        v54 = v25;
        v13 = &v53;
        v14 = sub_1B0E44BF8();
        sub_1B0E44C58();
        v14(v13, 0);
      }

      if (v26)
      {
        sub_1B03B1198(&v59);

        v19 = 0;
        v20 = 0;
      }

      else
      {
        v17 = v59;
        v16 = v60;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v18 = v16;
        sub_1B03B1198(&v59);

        v19 = v17;
        v20 = v18;
      }

      v21 = v23;
    }
  }

  return v19;
}

uint64_t sub_1B08A10EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    if (a2)
    {
      v4 = a2 - a1;
    }

    else
    {
      __break(1u);
    }

    if (v4 < 0)
    {
      sub_1B0E466C8();
      __break(1u);
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2938, &qword_1B0E9EF50);
  sub_1B08A6608();
  sub_1B0E448D8();
  if (v17)
  {
    sub_1B08A6690();
    sub_1B0E45768();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2950, &unk_1B0E9EF58);
    sub_1B08A6718();
    result = sub_1B0E45798();
    *a3 = v12;
    *(a3 + 8) = v13;
    *(a3 + 16) = v14;
    *(a3 + 24) = v15;
    *(a3 + 32) = v16;
    *(a3 + 40) = 0;
  }

  else
  {
    result = sub_1B0E44A38();
    if (result < v5)
    {
      sub_1B08A6690();
      sub_1B0E45768();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2950, &unk_1B0E9EF58);
      sub_1B08A6718();
      result = sub_1B0E45798();
      *a3 = v7;
      *(a3 + 8) = v8;
      *(a3 + 16) = v9;
      *(a3 + 24) = v10;
      *(a3 + 32) = v11;
      *(a3 + 40) = 0;
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 1;
    }
  }

  return result;
}

uint64_t sub_1B08A14C4(uint64_t a1, char *a2)
{
  result = sub_1B08A156C(*a2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for MailboxAttributes();
    sub_1B0694AF8();
    return sub_1B0E46F48();
  }

  return result;
}

uint64_t sub_1B08A156C(char a1)
{
  switch(a1)
  {
    case 0:
      return 2;
    case 1:
      return 4;
    case 2:
      return 8;
    case 3:
      return 2;
    case 4:
      return 1;
  }

  if (a1 != 5 && a1 != 6)
  {
    if (a1 == 7)
    {
      return 32;
    }

    else
    {
      return 64;
    }
  }

  return 0;
}

uint64_t sub_1B08A16C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v13 = a4;
  v12 = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = a2;
  v11 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2960, &unk_1B0E9EF68);
  v5 = sub_1B0E44F58();

  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2830, &qword_1B0E9E0B0);
  sub_1B08A4110();
  v6 = sub_1B0E44FF8();
  sub_1B039E440(&v9);
  sub_1B039E440(&v10);
  return v6;
}

uint64_t *sub_1B08A1838@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v18 = 0;
  v19 = 0;
  memcpy(__dst, a1, 0x42uLL);
  v27 = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = a2;
  v26 = a3;
  if (!a2)
  {
    goto LABEL_7;
  }

  v18 = a2;
  v19 = a3;
  v11 = __dst[0];
  v10 = __dst[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v12 = static MailboxName.== infix(_:_:)(v11, v10, a2, a3);

  if ((v12 & 1) == 0)
  {

LABEL_7:
    sub_1B03BB0B4(__dst, v22);
    v8 = __dst[0];
    v6 = __dst[1];
    v7 = BYTE4(__dst[1]);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20 = v8;
    LODWORD(v21) = v6;
    BYTE4(v21) = v7;
    MailboxPath.displayStringComponents(omittingEmptySubsequences:)(0, v8, v21);
    v9 = v4;

    memcpy(v23, __dst, 0x42uLL);
    v23[9] = v9;
    memcpy(v24, v23, sizeof(v24));
    memcpy(a4, v24, 0x50uLL);
    return sub_1B039E440(&v25);
  }

  memset(v17, 0, sizeof(v17));
  memcpy(a4, v17, 0x50uLL);

  return sub_1B039E440(&v25);
}

BOOL sub_1B08A1A60(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  v10 = a1;
  memcpy(v12, a2, sizeof(v12));
  v9 = a2;
  sub_1B08A6804(__dst, v8);
  v6 = sub_1B0E452A8();

  sub_1B08A6804(v12, v7);
  v5 = sub_1B0E452A8();

  return v6 < v5;
}

uint64_t sub_1B08A1B78@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = __src;
  sub_1B08A6804(__dst, v5);
  *a2 = __dst[9];
}

uint64_t sub_1B08A1BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memset(v50, 0, 13);
  v44 = 0;
  v58 = a1;
  v57 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v53 = a6 + 16;
  v52 = a7 + 16;
  result = sub_1B0E452A8();
  if (result > 1)
  {
    v26 = *a1;
    v24 = *(a1 + 8);
    v25 = *(a1 + 12);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v50[2] = v26;
    LODWORD(v51) = v24;
    BYTE4(v51) = v25;
    v28 = sub_1B08969A0(a3, a4, a5, v26, v51);
    v27 = v8;

    result = v28;
    if (v28)
    {

      v22 = v28;
      v23 = v27 | (BYTE4(v27) << 32);
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    if (v22)
    {
      v19 = (v23 & 0xFFFFFFFFFFLL) >> 32;
      v50[0] = v22;
      LODWORD(v50[1]) = v23;
      BYTE4(v50[1]) = v19;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v48 = v22;
      v49 = v23;
      v9 = MailboxName.inbox.unsafeMutableAddressor();
      v20 = *v9;
      v21 = *(v9 + 2);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v46 = v20;
      v47 = v21;
      if ((v23 | (v23 << 32)) == (v21 | (v21 << 32)))
      {
        v18 = sub_1B04520BC(v48, v20);
      }

      else
      {
        v18 = 0;
      }

      sub_1B039E440(&v46);
      sub_1B039E440(&v48);
      if (v18)
      {
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v45[4] = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
        sub_1B03B11C4();
        sub_1B0E448B8();
        v45[0] = v45[5];
        v45[1] = v45[6];
        v45[2] = v45[7];
        v45[3] = v45[8];
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1FA8, &qword_1B0E9E160);
        v10 = sub_1B08A50F0();
        v17 = sub_1B039CA88(sub_1B08A227C, 0, v15, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v16);
        sub_1B03FD360(v45);
        v44 = v17;
        swift_beginAccess();
        v13 = *(a6 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        swift_endAccess();
        v43[10] = v17;
        sub_1B08A4220();
        v14 = sub_1B0E45528();

        if (v14)
        {
        }

        else
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0E46A48();
          v12 = v11;
          *v11 = *RemoteMailbox.Attributes.hasChildren.unsafeMutableAddressor();
          v12[1] = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
          sub_1B0394964();
          sub_1B08A5178();
          sub_1B0E46028();
          v60 = 0uLL;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = 1;
          v39 = v22;
          LODWORD(v40) = v23;
          BYTE4(v40) = v19;
          RemoteMailbox.init(path:attributes:specialUse:status:)(v22, v40, v41, 7, &v60, v59);
          memcpy(__dst, v59, sizeof(__dst));
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v38 = v17;
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2850, &qword_1B0E9E0E0);
          sub_1B0E454D8();
          swift_endAccess();

          sub_1B03BB0B4(v59, v37);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          memcpy(v43, __dst, 0x42uLL);
          v43[9] = v17;
          memcpy(v36, v43, sizeof(v36));
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2830, &qword_1B0E9E0B0);
          sub_1B0E452E8();
          swift_endAccess();
          sub_1B08A1BE0(v59, v17, a3, a4, a5, a6, a7);
          sub_1B039E440(v59);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B08A227C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v5 = a1[1];
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B08A22D4(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  v15 = a1;
  memcpy(v17, a2, sizeof(v17));
  v14 = a2;
  sub_1B08A6804(__dst, v13);
  v9 = sub_1B0E452A8();

  sub_1B08A6804(v17, v12);
  v8 = sub_1B0E452A8();

  if (v9 >= v8)
  {
    sub_1B08A6804(__dst, v11);
    v4 = sub_1B0E452A8();

    sub_1B08A6804(v17, v10);
    v3 = sub_1B0E452A8();

    if (v4 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
      sub_1B06E3764();
      v5 = sub_1B0E45048();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_1B08A24FC@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = __src;
  sub_1B08A6804(__dst, v5);
  memcpy(a2, __dst, 0x42uLL);
}

uint64_t sub_1B08A257C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
  sub_1B0E454D8();
}

uint64_t sub_1B08A2618(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3520, &unk_1B0E9E030);
  sub_1B0E454D8();
}

void sub_1B08A2968()
{
  v12 = v0[2];
  v7 = v0[3];
  v8 = (*(*(v12 - 8) + 80) + 40) & ~*(*(v12 - 8) + 80);
  v5 = v8 + *(*(v12 - 8) + 64);
  v6 = *(_s18MailboxPersistenceVMa() - 8);
  v9 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v10 = (v9 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  v1 = _s6LoggerVMa();
  v2 = (v11 + 24 + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v3 = (v2 + *(*(v1 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1B0879FCC(v0[4], v0 + v8, v0 + v9, *(v0 + v10), *(v0 + v10 + 8), *(v0 + v10 + 16), *(v0 + v10 + 24), *(v0 + v11), *(v0 + v11 + 8), *(v0 + v11 + 16), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v12, v7);
}

uint64_t sub_1B08A2BE8()
{
  v5 = *(_s18MailboxPersistenceVMa() - 8);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v6 = (v7 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1 = _s6LoggerVMa();
  v2 = (((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 8 + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v3 = (v2 + *(*(v1 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B087C840(*(v0 + 16), *(v0 + 24), v0 + v7, *(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16), *(v0 + ((v6 + 31) & 0xFFFFFFFFFFFFFFF8)), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t block_copy_helper_109(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B08A2E10()
{
  v2 = qword_1EB6DAFE0;
  if (!qword_1EB6DAFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E27B8, &qword_1B0EA2020);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08A2E98()
{
  v5 = *(_s18MailboxPersistenceVMa() - 8);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v6 = (v7 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1 = _s6LoggerVMa();
  v2 = (((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 8 + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v3 = (v2 + *(*(v1 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B0880A00(*(v0 + 16), *(v0 + 24), v0 + v7, *(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16), *(v0 + ((v6 + 31) & 0xFFFFFFFFFFFFFFF8)), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t block_copy_helper_310(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B08A30BC()
{
  v2 = qword_1EB6DB848;
  if (!qword_1EB6DB848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E27C0, &qword_1B0E9E040);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB848);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A3144()
{
  v2 = qword_1EB6DB858;
  if (!qword_1EB6DB858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E27C8, &qword_1B0E9E048);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB858);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A31CC()
{
  v2 = qword_1EB6DB850;
  if (!qword_1EB6DB850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E27D0, &qword_1B0E9E050);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB850);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A3280()
{
  v2 = qword_1EB6E27F0;
  if (!qword_1EB6E27F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E27F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A32FC()
{
  v2 = qword_1EB6E27F8;
  if (!qword_1EB6E27F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E27F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08A3378()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B0884F5C();
}

uint64_t sub_1B08A33D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v4 = v3[3];
  v5 = v3[4];
  return sub_1B0888F84(a1, a2, a3);
}

unint64_t sub_1B08A3474()
{
  v2 = qword_1EB6DAFE8;
  if (!qword_1EB6DAFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2800, &qword_1B0E9E080);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A34FC()
{
  v2 = qword_1EB6DE978;
  if (!qword_1EB6DE978)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE978);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A3574()
{
  v2 = qword_1EB6DAB78;
  if (!qword_1EB6DAB78)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAB78);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for MailboxUpdateTree()
{
  v1 = qword_1EB6DBF38;
  if (!qword_1EB6DBF38)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

__n128 sub_1B08A364C(void *a1, void *a2)
{
  *a2 = *a1;
  updated = type metadata accessor for MailboxUpdateTree();
  v9 = updated[5];
  v2 = sub_1B0E42E68();
  (*(*(v2 - 8) + 32))();
  v3 = _s18MailboxPersistenceVMa();
  *(a2 + v9 + *(v3 + 20)) = *(a1 + v9 + *(v3 + 20));
  memcpy(a2 + v9 + *(v3 + 24), a1 + v9 + *(v3 + 24), 0x28uLL);
  v4 = updated[6];
  v5 = a2 + v4;
  *v5 = *(a1 + v4);
  *(v5 + 2) = *(a1 + v4 + 16);
  *(a2 + updated[7]) = *(a1 + updated[7]);
  v10 = updated[8];
  v6 = sub_1B0E439A8();
  (*(*(v6 - 8) + 32))();
  v7 = _s6LoggerVMa();
  *(a2 + v10 + *(v7 + 20)) = *(a1 + v10 + *(v7 + 20));
  *(a2 + updated[9]) = *(a1 + updated[9]);
  *(a2 + updated[10]) = *(a1 + updated[10]);
  result = *(a1 + updated[11]);
  *(a2 + updated[11]) = result;
  *(a2 + updated[12]) = *(a1 + updated[12]);
  *(a2 + updated[13]) = *(a1 + updated[13]);
  return result;
}

unint64_t sub_1B08A38A4()
{
  v2 = qword_1EB6DB3E8;
  if (!qword_1EB6DB3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2810, &qword_1B0E9E090);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB3E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A3934()
{
  v2 = qword_1EB6DB3E0;
  if (!qword_1EB6DB3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2810, &qword_1B0E9E090);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB3E0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B08A39BC(void *a1, void *a2)
{
  v27 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = v27;
  updated = type metadata accessor for MailboxUpdateTree();
  v28 = updated[5];
  v2 = sub_1B0E42E68();
  v32 = a2 + v28;
  (*(*(v2 - 8) + 16))();
  v33 = _s18MailboxPersistenceVMa();
  v30 = *(v33 + 20);
  v31 = *(a1 + v28 + v30);
  MEMORY[0x1E69E5928](v31);
  *&v32[v30] = v31;
  v3 = *(v33 + 24);
  v37 = (a1 + v28 + v3);
  v39 = (a2 + v28 + v3);
  *&v32[v3] = *v37;
  v34 = v37[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v39[1] = v34;
  v35 = v37[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v39[2] = v35;
  v36 = v37[3];

  v39[3] = v36;
  v40 = v37[4];

  v39[4] = v40;
  v42 = updated[6];
  if (*(a1 + v42))
  {
    v24 = *(a1 + v42);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v25 = (a2 + v42);
    *v25 = v24;
    v25[1] = *(a1 + v42 + 8);
    v26 = *(a1 + v42 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v25[2] = v26;
  }

  else
  {
    v4 = a2 + v42;
    *v4 = *(a1 + v42);
    *(v4 + 2) = *(a1 + v42 + 16);
  }

  v14 = updated[7];
  v15 = *(a1 + v14);

  *(a2 + v14) = v15;
  v17 = a2 + updated[8];
  v16 = a1 + updated[8];
  v5 = sub_1B0E439A8();
  (*(*(v5 - 8) + 16))(v17, v16);
  v6 = _s6LoggerVMa();
  *&v17[*(v6 + 20)] = *&v16[*(v6 + 20)];
  v18 = updated[9];
  v19 = *(a1 + v18);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + v18) = v19;
  v20 = updated[10];
  v21 = *(a1 + v20);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + v20) = v21;
  v22 = (a2 + updated[11]);
  v23 = (a1 + updated[11]);
  if (*v23)
  {
    v12 = *v23;
    MEMORY[0x1E69E5928](*v23);
    *v22 = v12;
    v13 = v23[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v22[1] = v13;
  }

  else
  {
    v7 = a2 + updated[11];
    v8 = a1 + updated[11];
    *v22 = *v23;
  }

  v10 = updated[12];
  v11 = *(a1 + v10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + v10) = v11;
  *(a2 + updated[13]) = *(a1 + updated[13]);
  return result;
}

void *sub_1B08A3DE8(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  updated = type metadata accessor for MailboxUpdateTree();
  v17 = updated[5];
  v1 = sub_1B0E42E68();
  (*(*(v1 - 8) + 8))();
  v18 = _s18MailboxPersistenceVMa();
  MEMORY[0x1E69E5920](*(a1 + v17 + *(v18 + 20)));
  v19 = (a1 + v17 + *(v18 + 24));
  v2 = v19[1];

  v3 = v19[2];

  v4 = v19[3];

  v5 = v19[4];

  v22 = updated[6];
  if (*(a1 + v22))
  {
    v6 = *(a1 + v22);

    v7 = *(a1 + v22 + 16);
  }

  v8 = *(a1 + updated[7]);

  v15 = a1 + updated[8];
  v9 = sub_1B0E439A8();
  (*(*(v9 - 8) + 8))(v15);
  v10 = *(a1 + updated[9]);

  v11 = *(a1 + updated[10]);

  v16 = (a1 + updated[11]);
  if (*v16)
  {
    MEMORY[0x1E69E5920](*v16);
    v12 = v16[1];
  }

  v13 = *(a1 + updated[12]);

  return a1;
}

unint64_t sub_1B08A4004()
{
  v2 = qword_1EB6DB7F8;
  if (!qword_1EB6DB7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2820, &qword_1B0E9E0A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB7F8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B08A40BC(void *a1)
{
  if (*a1)
  {
    MEMORY[0x1E69E5920](*a1);
    v1 = a1[1];
  }

  return a1;
}

unint64_t sub_1B08A4110()
{
  v2 = qword_1EB6DB3D8;
  if (!qword_1EB6DB3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2830, &qword_1B0E9E0B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB3D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4198()
{
  v2 = qword_1EB6DA528;
  if (!qword_1EB6DA528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2838, &unk_1B0E9E0B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA528);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4220()
{
  v2 = qword_1EB6DB078;
  if (!qword_1EB6DB078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB078);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A42B4()
{
  v2 = qword_1EB6DA498;
  if (!qword_1EB6DA498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2840, &qword_1B0E9E0C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA498);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A433C()
{
  v2 = qword_1EB6DB3D0;
  if (!qword_1EB6DB3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2830, &qword_1B0E9E0B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB3D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A43C4()
{
  v2 = qword_1EB6DADE8;
  if (!qword_1EB6DADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DADE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B08A444C(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[3];

  v3 = a1[5];

  return a1;
}

void *sub_1B08A4490(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  v1 = a1[1];

  return a1;
}

uint64_t sub_1B08A44D0(uint64_t result)
{
  if (result)
  {
    MEMORY[0x1E69E5928](result);
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B08A4518(uint64_t result)
{
  if (result)
  {
    MEMORY[0x1E69E5920](result);
  }

  return result;
}

unint64_t sub_1B08A4560()
{
  v2 = qword_1EB6DB698;
  if (!qword_1EB6DB698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E34B0, &unk_1B0E9E0F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A45E8()
{
  v2 = qword_1EB6E2860;
  if (!qword_1EB6E2860)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2860);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4664()
{
  v2 = qword_1EB6E2868;
  if (!qword_1EB6E2868)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2868);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4714()
{
  v2 = qword_1EB6DB250;
  if (!qword_1EB6DB250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2870, &qword_1B0E9E100);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB250);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A479C()
{
  v2 = qword_1EB6E2878;
  if (!qword_1EB6E2878)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2878);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4818()
{
  v2 = qword_1EB6E2880;
  if (!qword_1EB6E2880)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2880);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4894()
{
  v2 = qword_1EB6DB248;
  if (!qword_1EB6DB248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2870, &qword_1B0E9E100);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB248);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A491C()
{
  v2 = qword_1EB6E2898;
  if (!qword_1EB6E2898)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2898);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08A4998()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 36);
  return sub_1B0896530(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_1B08A49DC()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1B08A4A30();

  return sub_1B03F7B1C(v4, v3, &type metadata for OpaqueMailboxID, v1);
}

unint64_t sub_1B08A4A30()
{
  v2 = qword_1EB6DCBF8;
  if (!qword_1EB6DCBF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DCBF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08A4AA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 36);
  return sub_1B0896584(*(v1 + 16), a1);
}

unint64_t sub_1B08A4AE0()
{
  v2 = qword_1EB6DADF8;
  if (!qword_1EB6DADF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DADF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4B68()
{
  v2 = qword_1EB6E28B0;
  if (!qword_1EB6E28B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E28A8, &unk_1B0E9E120);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E28B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4BF0()
{
  v2 = qword_1EB6E28B8;
  if (!qword_1EB6E28B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E28A8, &unk_1B0E9E120);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E28B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08A4CCC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
  *(a2 + 8) = *(a1 + 2);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = a1[2];
  v4 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 24) = v4;
  *(a2 + 32) = a1[4];
  v6 = a1[5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 40) = v6;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

unint64_t sub_1B08A4DB4()
{
  v2 = qword_1EB6E28C8;
  if (!qword_1EB6E28C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E28C0, &qword_1B0E9E130);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E28C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4E68()
{
  v2 = qword_1EB6DB258;
  if (!qword_1EB6DB258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E28D0, &qword_1B0E9E138);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB258);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4EF8()
{
  v2 = qword_1EB6DA3E8;
  if (!qword_1EB6DA3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E28D8, &qword_1B0E9E140);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA3E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B08A4F80(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[2];

  return a1;
}

unint64_t sub_1B08A4FB8()
{
  v2 = qword_1EB6DB010;
  if (!qword_1EB6DB010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E34E0, &qword_1B0E9F580);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A5068()
{
  v2 = qword_1EB6E28F8;
  if (!qword_1EB6E28F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E28F0, &qword_1B0E9E158);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E28F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A50F0()
{
  v2 = qword_1EB6E2900;
  if (!qword_1EB6E2900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1FA8, &qword_1B0E9E160);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2900);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A5178()
{
  v2 = qword_1EB6E2908;
  if (!qword_1EB6E2908)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2908);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A51F0()
{
  v2 = qword_1EB6E2910;
  if (!qword_1EB6E2910)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2910);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A530C()
{
  v10 = sub_1B07BC130();
  if (v0 <= 0x3F)
  {
    v10 = _s18MailboxPersistenceVMa();
    if (v1 <= 0x3F)
    {
      v10 = sub_1B08A5558();
      if (v2 <= 0x3F)
      {
        v10 = type metadata accessor for Cache();
        if (v3 <= 0x3F)
        {
          v10 = _s6LoggerVMa();
          if (v4 <= 0x3F)
          {
            v10 = sub_1B08A55EC();
            if (v5 <= 0x3F)
            {
              v10 = sub_1B08A5694();
              if (v6 <= 0x3F)
              {
                v10 = sub_1B08A572C();
                if (v7 <= 0x3F)
                {
                  v10 = sub_1B08A57C4();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v10;
}

uint64_t sub_1B08A5558()
{
  v4 = qword_1EB6DD0B0;
  if (!qword_1EB6DD0B0)
  {
    v3 = sub_1B0E45D88();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DD0B0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B08A55EC()
{
  v4 = qword_1EB6DB7D0;
  if (!qword_1EB6DB7D0)
  {
    sub_1B0451F2C();
    v3 = sub_1B0E44708();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DB7D0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B08A5694()
{
  v4 = qword_1EB6DB260;
  if (!qword_1EB6DB260)
  {
    v3 = sub_1B0E45358();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DB260);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B08A572C()
{
  v4 = qword_1EB6DBF48;
  if (!qword_1EB6DBF48)
  {
    v3 = sub_1B0E45D88();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DBF48);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B08A57C4()
{
  v4 = qword_1EB6DB680;
  if (!qword_1EB6DB680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2828, &qword_1B0E9E0A8);
    v3 = sub_1B0E45358();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DB680);
      return v1;
    }
  }

  return v4;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *a1 = *a2;
  *(a1 + 13) = *(a2 + 13);
  return result;
}

uint64_t sub_1B08A58A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 21))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
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

uint64_t sub_1B08A59BC(uint64_t result, int a2, int a3)
{
  v3 = (result + 21);
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Message17MailboxUpdateTree33_9756C92D0D431C9DA10B9422B1759BA4LLV10FindResultO(uint64_t a1)
{
  if (((*(a1 + 72) >> 6) & 3) == 3)
  {
    return *a1 + 3;
  }

  else
  {
    return (*(a1 + 72) >> 6) & 3;
  }
}

uint64_t sub_1B08A5BD8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 73))
    {
      v4 = *a1 + 124;
    }

    else
    {
      v2 = ~((*(a1 + 72) >> 6) & 0xFFFFFE03 | (4 * (*(a1 + 72) >> 1))) & 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B08A5CE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 73);
  if (a2 > 0x7C)
  {
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 125;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 >= 0x7D)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0;
      *(result + 64) = 0;
      *(result + 72) = ((-a2 & 0x7C) >> 1) - (a2 << 6);
    }
  }

  return result;
}

uint64_t sub_1B08A5EF0(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  v3 = *(result + 24);
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 48);
  v7 = *(result + 56);
  v8 = *(result + 64);
  v9 = *(result + 72) & 0x3F;
  *result = *result;
  *(result + 8) = v1;
  *(result + 16) = v2;
  *(result + 24) = v3;
  *(result + 32) = v4;
  *(result + 40) = v5;
  *(result + 48) = v6;
  *(result + 56) = v7;
  *(result + 64) = v8;
  *(result + 72) = v9;
  return result;
}

uint64_t *sub_1B08A5F48(uint64_t *result, unsigned int a2)
{
  v11 = result;
  if (a2 < 3)
  {
    result = *result;
    v2 = v11[1];
    v3 = v11[2];
    v4 = v11[3];
    v5 = v11[4];
    v6 = v11[5];
    v7 = v11[6];
    v8 = v11[7];
    v9 = v11[8];
    v10 = ((a2 & 3) << 6) | v11[9] & 1;
    *v11 = *v11;
    v11[1] = v2;
    v11[2] = v3;
    v11[3] = v4;
    v11[4] = v5;
    v11[5] = v6;
    v11[6] = v7;
    v11[7] = v8;
    v11[8] = v9;
    *(v11 + 72) = v10;
  }

  else
  {
    *result = a2 - 3;
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
    result[5] = 0;
    result[6] = 0;
    result[7] = 0;
    result[8] = 0;
    *(result + 72) = -64;
  }

  return result;
}

uint64_t sub_1B08A605C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
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

uint64_t sub_1B08A6174(uint64_t result, int a2, int a3)
{
  v3 = (result + 49);
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 48) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

unint64_t sub_1B08A63E8()
{
  v2 = qword_1EB6E2918;
  if (!qword_1EB6E2918)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2918);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A647C()
{
  v2 = qword_1EB6E2920;
  if (!qword_1EB6E2920)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2920);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A6510()
{
  v2 = qword_1EB6E2928;
  if (!qword_1EB6E2928)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2928);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A658C()
{
  v2 = qword_1EB6E2930;
  if (!qword_1EB6E2930)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2930);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A6608()
{
  v2 = qword_1EB6E2940;
  if (!qword_1EB6E2940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2938, &qword_1B0E9EF50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2940);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A6690()
{
  v2 = qword_1EB6E2948;
  if (!qword_1EB6E2948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2938, &qword_1B0E9EF50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A6718()
{
  v2 = qword_1EB6E2958;
  if (!qword_1EB6E2958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2950, &unk_1B0E9EF58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2958);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A67A0()
{
  v2 = qword_1EB6DA5A0;
  if (!qword_1EB6DA5A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA5A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B08A6804(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
  *(a2 + 8) = *(a1 + 2);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 14) = *(a1 + 7);
  *(a2 + 16) = *(a1 + 16);
  memcpy((a2 + 24), a1 + 3, 0x2AuLL);
  v6 = a1[9];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 72) = v6;
  return result;
}

uint64_t sub_1B08A68F8@<X0>(BOOL *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B0885024(a1);
}

unint64_t sub_1B08A6950()
{
  v2 = qword_1EB6E2970;
  if (!qword_1EB6E2970)
  {
    type metadata accessor for EDMailboxActionType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2970);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08A69D0(uint64_t a1, uint64_t a2)
{
  result = a2;
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  return result;
}

uint64_t block_copy_helper_1770(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B08A6A60(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *a2 = v4;
  *(a2 + 8) = *(a1 + 2);
  return result;
}

uint64_t block_copy_helper_1776(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_1782(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B08A6BE0(uint64_t a1, unint64_t a2, void *a3)
{
  v71 = a1;
  v72 = a2;
  v78 = a3;
  v57 = 0;
  v51 = sub_1B08A94E4;
  v52 = sub_1B08A94FC;
  v53 = sub_1B070B324;
  v54 = sub_1B0398F5C;
  v55 = sub_1B0398F5C;
  v56 = sub_1B070B4B4;
  ObjectType = swift_getObjectType();
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v92 = 0;
  v59 = 0;
  v65 = 0;
  v60 = sub_1B0E44238();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v64 = &v26 - v63;
  v66 = sub_1B0E44288();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65);
  v70 = &v26 - v69;
  v73 = sub_1B0E439A8();
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v78);
  v77 = &v26 - v76;
  v94 = v5;
  v95 = v6;
  v93 = v4;
  v92 = v3;
  MEMORY[0x1E69E5928](v4);
  v79 = [v78 isServerSearchResult];
  MEMORY[0x1E69E5920](v78);
  if (v79)
  {
    sub_1B08A6B88();
    MEMORY[0x1E69E5928](v78);
    v39 = 7;
    v40 = swift_allocObject();
    *(v40 + 16) = v78;
    v48 = sub_1B0E43988();
    v49 = sub_1B0E45908();
    v37 = 17;
    v42 = swift_allocObject();
    *(v42 + 16) = 64;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v38 = 32;
    v7 = swift_allocObject();
    v8 = v40;
    v41 = v7;
    *(v7 + 16) = v52;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v41;
    v45 = v9;
    *(v9 + 16) = v53;
    *(v9 + 24) = v10;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v44 = sub_1B0E46A48();
    v46 = v11;

    v12 = v42;
    v13 = v46;
    *v46 = v54;
    v13[1] = v12;

    v14 = v43;
    v15 = v46;
    v46[2] = v55;
    v15[3] = v14;

    v16 = v45;
    v17 = v46;
    v46[4] = v56;
    v17[5] = v16;
    sub_1B0394964();

    if (os_log_type_enabled(v48, v49))
    {
      v18 = v59;
      v30 = sub_1B0E45D78();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v31 = sub_1B03949A8(1);
      v32 = sub_1B03949A8(0);
      v33 = &v84;
      v84 = v30;
      v34 = &v83;
      v83 = v31;
      v35 = &v82;
      v82 = v32;
      sub_1B0394A48(2, &v84);
      sub_1B0394A48(1, v33);
      v80 = v54;
      v81 = v42;
      sub_1B03949FC(&v80, v33, v34, v35);
      v36 = v18;
      if (v18)
      {

        __break(1u);
      }

      else
      {
        v80 = v55;
        v81 = v43;
        sub_1B03949FC(&v80, &v84, &v83, &v82);
        v28 = 0;
        v80 = v56;
        v81 = v45;
        sub_1B03949FC(&v80, &v84, &v83, &v82);
        _os_log_impl(&dword_1B0389000, v48, v49, "Not indexing %@ because it's a server-side search result", v30, 0xCu);
        sub_1B03998A8(v31);
        sub_1B03998A8(v32);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v48);
    return (*(v74 + 8))(v77, v73);
  }

  else
  {
    v27 = [v50 indexingQueue];
    sub_1B03B2000(v71, v72);
    MEMORY[0x1E69E5928](v78);
    MEMORY[0x1E69E5928](v50);
    v20 = swift_allocObject();
    v21 = v72;
    v22 = v78;
    v23 = v50;
    v24 = ObjectType;
    v25 = v51;
    v20[2] = v71;
    v20[3] = v21;
    v20[4] = v22;
    v20[5] = v23;
    v20[6] = v24;
    v90 = v25;
    v91 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v86 = 1107296256;
    v87 = 0;
    v88 = sub_1B038C908;
    v89 = &block_descriptor_8;
    v26 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v70, v64, v26);
    (*(v61 + 8))(v64, v60);
    (*(v67 + 8))(v70, v66);
    _Block_release(v26);

    return MEMORY[0x1E69E5920](v27);
  }
}

id sub_1B08A75F4(void *a1)
{
  v1 = [a1 persistedMessageID];

  return v1;
}

char *sub_1B08A7628(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v224 = a1;
  v225 = a2;
  v216 = a3;
  v217 = a4;
  v173 = a5;
  v174 = sub_1B08A94FC;
  v175 = sub_1B070B324;
  v176 = sub_1B08A9978;
  v177 = sub_1B03B0DF8;
  v178 = sub_1B0398F5C;
  v179 = sub_1B0398F5C;
  v180 = sub_1B070B4B4;
  v181 = sub_1B0398F5C;
  v182 = sub_1B0398F5C;
  v183 = sub_1B0399260;
  v184 = sub_1B08A94FC;
  v185 = sub_1B070B324;
  v186 = sub_1B08A9978;
  v187 = sub_1B03B0DF8;
  v188 = sub_1B08AA104;
  v189 = sub_1B03B0DF8;
  v190 = sub_1B0398F5C;
  v191 = sub_1B0398F5C;
  v192 = sub_1B070B4B4;
  v193 = sub_1B0398F5C;
  v194 = sub_1B0398F5C;
  v195 = sub_1B0399260;
  v196 = sub_1B0398F5C;
  v197 = sub_1B0398F5C;
  v198 = sub_1B0399260;
  v249 = 0;
  v248 = 0;
  v246 = 0;
  v247 = 0;
  v245 = 0;
  v244 = 0;
  v199 = 0;
  v238 = 0;
  v226 = 0;
  v200 = sub_1B0E439A8();
  v201 = *(v200 - 8);
  v202 = v200 - 8;
  v203 = (*(v201 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](0);
  v204 = v92 - v203;
  v205 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v206 = v92 - v205;
  v207 = sub_1B0E43428();
  v208 = *(v207 - 8);
  v209 = v207 - 8;
  v210 = (*(v208 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v226);
  v211 = v92 - v210;
  v212 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v213 = v92 - v212;
  v249 = v92 - v212;
  v10 = type metadata accessor for Message(v9);
  v214 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v228 = (v92 - v214);
  v215 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2980, &qword_1B0EDF380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v226);
  v231 = v92 - v215;
  v232 = type metadata accessor for IndexableMessageInfo(v11);
  v229 = *(v232 - 8);
  v230 = v232 - 8;
  v218 = v229;
  v219 = *(v229 + 64);
  v220 = (v219 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v224);
  v221 = v92 - v220;
  v222 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v223 = v92 - v222;
  v248 = v92 - v222;
  v246 = v14;
  v247 = v15;
  v245 = v16;
  v244 = v17;
  sub_1B03B2000(v14, v15);
  Message.init(_:)(v224, v225, v228);
  type metadata accessor for Cache();
  Cache.__allocating_init()();
  v227 = v18;
  v19 = sub_1B08A951C();
  IndexableMessageInfo.init(message:maximumTextCount:cache:)(v228, v19, v227, v231);
  if ((*(v229 + 48))(v231, 1, v232) == 1)
  {
    sub_1B08A972C(v231);
    sub_1B08A6B88();
    MEMORY[0x1E69E5928](v216);
    v106 = 7;
    v64 = swift_allocObject();
    v65 = v225;
    v66 = v64;
    v67 = v224;
    v101 = v66;
    *(v66 + 16) = v216;
    sub_1B03B2000(v67, v65);
    v105 = 32;
    v68 = swift_allocObject();
    v69 = v225;
    v107 = v68;
    *(v68 + 16) = v224;
    *(v68 + 24) = v69;
    sub_1B07575C4();

    v118 = sub_1B0E43988();
    v119 = sub_1B0E458E8();
    v103 = 17;
    v109 = swift_allocObject();
    *(v109 + 16) = 64;
    v110 = swift_allocObject();
    v104 = 8;
    *(v110 + 16) = 8;
    v70 = swift_allocObject();
    v71 = v101;
    v102 = v70;
    *(v70 + 16) = v174;
    *(v70 + 24) = v71;
    v72 = swift_allocObject();
    v73 = v102;
    v111 = v72;
    *(v72 + 16) = v175;
    *(v72 + 24) = v73;
    v112 = swift_allocObject();
    *(v112 + 16) = 0;
    v113 = swift_allocObject();
    *(v113 + 16) = v104;
    v74 = swift_allocObject();
    v75 = v107;
    v108 = v74;
    *(v74 + 16) = v176;
    *(v74 + 24) = v75;
    v76 = swift_allocObject();
    v77 = v108;
    v115 = v76;
    *(v76 + 16) = v177;
    *(v76 + 24) = v77;
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v114 = sub_1B0E46A48();
    v116 = v78;

    v79 = v109;
    v80 = v116;
    *v116 = v178;
    v80[1] = v79;

    v81 = v110;
    v82 = v116;
    v116[2] = v179;
    v82[3] = v81;

    v83 = v111;
    v84 = v116;
    v116[4] = v180;
    v84[5] = v83;

    v85 = v112;
    v86 = v116;
    v116[6] = v181;
    v86[7] = v85;

    v87 = v113;
    v88 = v116;
    v116[8] = v182;
    v88[9] = v87;

    v89 = v115;
    v90 = v116;
    v116[10] = v183;
    v90[11] = v89;
    sub_1B0394964();

    if (os_log_type_enabled(v118, v119))
    {
      v91 = v199;
      v93 = sub_1B0E45D78();
      v92[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v94 = sub_1B03949A8(1);
      v95 = sub_1B03949A8(0);
      v97 = &v243;
      v243 = v93;
      v98 = &v242;
      v242 = v94;
      v99 = &v241;
      v241 = v95;
      v96 = 2;
      sub_1B0394A48(2, &v243);
      sub_1B0394A48(v96, v97);
      v239 = v178;
      v240 = v109;
      sub_1B03949FC(&v239, v97, v98, v99);
      v100 = v91;
      if (v91)
      {

        __break(1u);
      }

      else
      {
        v239 = v179;
        v240 = v110;
        sub_1B03949FC(&v239, &v243, &v242, &v241);
        v92[4] = 0;
        v239 = v180;
        v240 = v111;
        sub_1B03949FC(&v239, &v243, &v242, &v241);
        v92[3] = 0;
        v239 = v181;
        v240 = v112;
        sub_1B03949FC(&v239, &v243, &v242, &v241);
        v92[2] = 0;
        v239 = v182;
        v240 = v113;
        sub_1B03949FC(&v239, &v243, &v242, &v241);
        v92[1] = 0;
        v239 = v183;
        v240 = v115;
        sub_1B03949FC(&v239, &v243, &v242, &v241);
        _os_log_impl(&dword_1B0389000, v118, v119, "Could not parse data for message %@, data: %{iec-bytes}ld", v93, 0x16u);
        sub_1B03998A8(v94);
        sub_1B03998A8(v95);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v118);
    return (*(v201 + 8))(v204, v200);
  }

  else
  {
    *&v20 = sub_1B08A9984(v231, v223).n128_u64[0];
    v146 = [v217 searchableIndex];
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37E0, &unk_1B0E9EF88);
    v142 = sub_1B0E46A48();
    v141 = v21;
    MEMORY[0x1E69E5928](v216);
    v22 = v142;
    *v141 = v216;
    sub_1B0394964();
    v144 = v22;
    v145 = sub_1B0E451A8();

    [v146 recordDataNeedsToBeDonatedForMessages_];
    MEMORY[0x1E69E5920](v145);
    MEMORY[0x1E69E5920](v146);
    sub_1B08A9C20(v223, v221);
    MEMORY[0x1E69E5928](v216);
    sub_1B0A24F1C(v221, v216, v213);
    sub_1B0E43458();
    MEMORY[0x1E69E5928](v216);
    (*(v208 + 16))(v211, v213, v207);
    MEMORY[0x1B2725070](v224, v225);
    v147 = sub_1B0E43448();
    v238 = v147;
    sub_1B08A6B88();
    MEMORY[0x1E69E5928](v216);
    v156 = 7;
    v23 = swift_allocObject();
    v24 = v225;
    v25 = v23;
    v26 = v224;
    v149 = v25;
    *(v25 + 16) = v216;
    sub_1B03B2000(v26, v24);
    v155 = 32;
    v27 = swift_allocObject();
    v28 = v225;
    v151 = v27;
    *(v27 + 16) = v224;
    *(v27 + 24) = v28;
    sub_1B07575C4();

    sub_1B08A9C20(v223, v221);
    v148 = (*(v218 + 80) + 16) & ~*(v218 + 80);
    v157 = swift_allocObject();
    sub_1B08A9984(v221, (v157 + v148));
    sub_1B07575C4();

    v171 = sub_1B0E43988();
    v172 = sub_1B0E45908();
    v153 = 17;
    v159 = swift_allocObject();
    *(v159 + 16) = 64;
    v160 = swift_allocObject();
    v154 = 8;
    *(v160 + 16) = 8;
    v29 = swift_allocObject();
    v30 = v149;
    v150 = v29;
    *(v29 + 16) = v184;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v150;
    v161 = v31;
    *(v31 + 16) = v185;
    *(v31 + 24) = v32;
    v162 = swift_allocObject();
    *(v162 + 16) = 0;
    v163 = swift_allocObject();
    *(v163 + 16) = v154;
    v33 = swift_allocObject();
    v34 = v151;
    v152 = v33;
    *(v33 + 16) = v186;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v152;
    v164 = v35;
    *(v35 + 16) = v187;
    *(v35 + 24) = v36;
    v165 = swift_allocObject();
    *(v165 + 16) = 0;
    v166 = swift_allocObject();
    *(v166 + 16) = v154;
    v37 = swift_allocObject();
    v38 = v157;
    v158 = v37;
    *(v37 + 16) = v188;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v158;
    v168 = v39;
    *(v39 + 16) = v189;
    *(v39 + 24) = v40;
    v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v167 = sub_1B0E46A48();
    v169 = v41;

    v42 = v159;
    v43 = v169;
    *v169 = v190;
    v43[1] = v42;

    v44 = v160;
    v45 = v169;
    v169[2] = v191;
    v45[3] = v44;

    v46 = v161;
    v47 = v169;
    v169[4] = v192;
    v47[5] = v46;

    v48 = v162;
    v49 = v169;
    v169[6] = v193;
    v49[7] = v48;

    v50 = v163;
    v51 = v169;
    v169[8] = v194;
    v51[9] = v50;

    v52 = v164;
    v53 = v169;
    v169[10] = v195;
    v53[11] = v52;

    v54 = v165;
    v55 = v169;
    v169[12] = v196;
    v55[13] = v54;

    v56 = v166;
    v57 = v169;
    v169[14] = v197;
    v57[15] = v56;

    v58 = v168;
    v59 = v169;
    v169[16] = v198;
    v59[17] = v58;
    sub_1B0394964();

    if (os_log_type_enabled(v171, v172))
    {
      v60 = v199;
      v134 = sub_1B0E45D78();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v135 = sub_1B03949A8(1);
      v136 = sub_1B03949A8(0);
      v137 = &v237;
      v237 = v134;
      v138 = &v236;
      v236 = v135;
      v139 = &v235;
      v235 = v136;
      sub_1B0394A48(2, &v237);
      sub_1B0394A48(3, v137);
      v233 = v190;
      v234 = v159;
      sub_1B03949FC(&v233, v137, v138, v139);
      v140 = v60;
      if (v60)
      {

        __break(1u);
      }

      else
      {
        v233 = v191;
        v234 = v160;
        sub_1B03949FC(&v233, &v237, &v236, &v235);
        v132 = 0;
        v233 = v192;
        v234 = v161;
        sub_1B03949FC(&v233, &v237, &v236, &v235);
        v131 = 0;
        v233 = v193;
        v234 = v162;
        sub_1B03949FC(&v233, &v237, &v236, &v235);
        v130 = 0;
        v233 = v194;
        v234 = v163;
        sub_1B03949FC(&v233, &v237, &v236, &v235);
        v129 = 0;
        v233 = v195;
        v234 = v164;
        sub_1B03949FC(&v233, &v237, &v236, &v235);
        v128 = 0;
        v233 = v196;
        v234 = v165;
        sub_1B03949FC(&v233, &v237, &v236, &v235);
        v127 = 0;
        v233 = v197;
        v234 = v166;
        sub_1B03949FC(&v233, &v237, &v236, &v235);
        v126 = 0;
        v233 = v198;
        v234 = v168;
        sub_1B03949FC(&v233, &v237, &v236, &v235);
        _os_log_impl(&dword_1B0389000, v171, v172, "Indexing message %@ data: %{iec-bytes}ld, content: %{iec-bytes}ld", v134, 0x20u);
        sub_1B03998A8(v135);
        sub_1B03998A8(v136);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v171);
    (*(v201 + 8))(v206, v200);
    v125 = [v217 searchableIndex];
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E29A0, &qword_1B0E9EF98);
    v121 = sub_1B0E46A48();
    v120 = v61;
    MEMORY[0x1E69E5928](v147);
    v62 = v121;
    *v120 = v147;
    sub_1B0394964();
    v123 = v62;
    v124 = sub_1B0E451A8();

    [v125 indexItems:v124 immediately:1];
    MEMORY[0x1E69E5920](v124);
    MEMORY[0x1E69E5920](v125);
    MEMORY[0x1E69E5920](v147);
    (*(v208 + 8))(v213, v207);
    return sub_1B08AA168(v223);
  }
}

uint64_t sub_1B08A952C(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for IndexableMessageInfo(0) + 60);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  sub_1B08AA33C(*v1, v8, v9);
  if (v9 == 255)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v4 = IndexableMessageInfo.Content.byteCount.getter(v7, v8);
    sub_1B08A9938();
    v5 = v4;
    v6 = 0;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t *sub_1B08A972C(uint64_t *a1)
{
  v21 = type metadata accessor for IndexableMessageInfo(0);
  if (!(*(*(v21 - 1) + 48))(a1, 1))
  {
    v1 = *a1;

    v2 = a1[1];

    v17 = a1 + v21[6];
    v18 = sub_1B0E43108();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v17, 1))
    {
      (*(v19 + 8))(v17, v18);
    }

    v16 = (a1 + v21[7]);
    if (v16[3])
    {
      v3 = v16[1];

      v4 = v16[3];

      v5 = v16[7];

      v6 = v16[11];
    }

    v7 = *(a1 + v21[8] + 8);

    v8 = *(a1 + v21[9] + 8);

    v9 = *(a1 + v21[10]);

    v15 = a1 + v21[15];
    if (v15[16] != 255)
    {
      v10 = *v15;
      v11 = *(v15 + 1);
      v12 = v15[16];
      sub_1B08A9938();
    }

    v13 = *(a1 + v21[16]);
  }

  return a1;
}

uint64_t sub_1B08A9978()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B08A9504();
}

__n128 sub_1B08A9984(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v7 = type metadata accessor for IndexableMessageInfo(0);
  v8 = v7[6];
  v10 = sub_1B0E43108();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a1[v8], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    memcpy(&a2[v8], &a1[v8], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))();
    (*(v11 + 56))(&a2[v8], 0, 1, v10);
  }

  memcpy(&a2[v7[7]], &a1[v7[7]], 0x60uLL);
  *&a2[v7[8]] = *&a1[v7[8]];
  *&a2[v7[9]] = *&a1[v7[9]];
  *&a2[v7[10]] = *&a1[v7[10]];
  *&a2[v7[11]] = *&a1[v7[11]];
  a2[v7[12]] = a1[v7[12]];
  a2[v7[13]] = a1[v7[13]];
  a2[v7[14]] = a1[v7[14]];
  v3 = &a2[v7[15]];
  v4 = v7[15];
  result = *&a1[v4];
  *v3 = result;
  v3[1].n128_u8[0] = a1[v4 + 16];
  *&a2[v7[16]] = *&a1[v7[16]];
  return result;
}

char *sub_1B08A9C20(char *a1, char *a2)
{
  v25 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v25;
  v27 = *(a1 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 1) = v27;
  v28 = type metadata accessor for IndexableMessageInfo(0);
  v29 = v28[6];
  v31 = sub_1B0E43108();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(&a1[v29], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    memcpy(&a2[v29], &a1[v29], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v32 + 16))();
    (*(v32 + 56))(&a2[v29], 0, 1, v31);
  }

  v23 = &a2[v28[7]];
  v24 = &a1[v28[7]];
  if (*(v24 + 3))
  {
    *v23 = *v24;
    v19 = *(v24 + 1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v23 + 1) = v19;
    *(v23 + 2) = *(v24 + 2);
    v20 = *(v24 + 3);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v23 + 3) = v20;
    *(v23 + 4) = *(v24 + 4);
    *(v23 + 5) = *(v24 + 5);
    *(v23 + 6) = *(v24 + 6);
    v21 = *(v24 + 7);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v23 + 7) = v21;
    *(v23 + 8) = *(v24 + 8);
    *(v23 + 9) = *(v24 + 9);
    *(v23 + 10) = *(v24 + 10);
    v22 = *(v24 + 11);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v23 + 11) = v22;
  }

  else
  {
    memcpy(v23, v24, 0x60uLL);
  }

  v3 = v28[8];
  v11 = &a2[v3];
  *&a2[v3] = *&a1[v3];
  v12 = *&a1[v3 + 8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v11 + 1) = v12;
  v4 = v28[9];
  v13 = &a2[v4];
  *&a2[v4] = *&a1[v4];
  v14 = *&a1[v4 + 8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v13 + 1) = v14;
  v15 = v28[10];
  v16 = *&a1[v15];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&a2[v15] = v16;
  *&a2[v28[11]] = *&a1[v28[11]];
  a2[v28[12]] = a1[v28[12]];
  a2[v28[13]] = a1[v28[13]];
  a2[v28[14]] = a1[v28[14]];
  v17 = &a2[v28[15]];
  v18 = &a1[v28[15]];
  if (v18[16] == 255)
  {
    *v17 = *v18;
    v17[16] = v18[16];
  }

  else
  {
    v8 = *v18;
    v9 = *(v18 + 1);
    v10 = v18[16];
    sub_1B08AA0C4();
    *v17 = v8;
    *(v17 + 1) = v9;
    v17[16] = v10 & 1;
  }

  v6 = v28[16];
  v7 = *&a1[v6];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *&a2[v6] = v7;
  return result;
}

uint64_t sub_1B08AA104()
{
  v1 = *(type metadata accessor for IndexableMessageInfo(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B08A952C(v2);
}

char *sub_1B08AA168(char *a1)
{
  v1 = *a1;

  v2 = *(a1 + 1);

  v17 = type metadata accessor for IndexableMessageInfo(0);
  v18 = v17[6];
  v20 = sub_1B0E43108();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(&a1[v18], 1))
  {
    (*(v21 + 8))(&a1[v18], v20);
  }

  v16 = &a1[v17[7]];
  if (*(v16 + 3))
  {
    v3 = *(v16 + 1);

    v4 = *(v16 + 3);

    v5 = *(v16 + 7);

    v6 = *(v16 + 11);
  }

  v7 = *&a1[v17[8] + 8];

  v8 = *&a1[v17[9] + 8];

  v9 = *&a1[v17[10]];

  v15 = &a1[v17[15]];
  if (v15[16] != 255)
  {
    v10 = *v15;
    v11 = *(v15 + 1);
    v12 = v15[16];
    sub_1B08A9938();
  }

  v13 = *&a1[v17[16]];

  return a1;
}

uint64_t sub_1B08AA33C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 255)
  {
    return sub_1B08AA0C4();
  }

  return result;
}

uint64_t sub_1B08AA38C()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t sub_1B08AA39C()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return result;
}

uint64_t sub_1B08AA3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  memset(__b, 0, 0x29uLL);
  result = a1;
  *a4 = "Mail";
  *(a4 + 8) = 4;
  *(a4 + 16) = 2;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  return result;
}

uint64_t sub_1B08AA460()
{
  v3[5] = 0;
  v3[3] = &unk_1F26D8A58;
  v3[4] = sub_1B08AA500();
  v3[0] = swift_allocObject();
  memcpy((v3[0] + 16), __src, 0x29uLL);
  v2 = sub_1B0E434A8();
  __swift_destroy_boxed_opaque_existential_0(v3);
  return v2 & 1;
}

unint64_t sub_1B08AA500()
{
  v2 = qword_1EB6DC088;
  if (!qword_1EB6DC088)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC088);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B08AA5D4()
{
  if (qword_1EB6DC098 != -1)
  {
    swift_once();
  }

  return &unk_1EB737A78;
}

void *sub_1B08AA634@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B08AA5D4();
  v2 = result[1];
  v3 = *(result + 16);
  v4 = result[3];
  v5 = result[4];
  v6 = *(result + 40);
  *a1 = *result;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_1B08AA70C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 41))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B08AA7EC(uint64_t result, int a2, int a3)
{
  v3 = (result + 41);
  if (a2)
  {
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

uint64_t sub_1B08AA9A8(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v58 = a2;
  v35 = sub_1B08ABD78;
  v36 = sub_1B08ABDFC;
  v80 = 0;
  v79 = 0;
  v77 = 0;
  v76 = 0;
  v73 = 0;
  v37 = 0;
  v65 = 0;
  v60 = 0;
  v38 = sub_1B0E43108();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v17 - v41;
  v80 = &v17 - v41;
  v43 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v17 - v43;
  v45 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v60);
  v46 = &v17 - v45;
  v47 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v48 = &v17 - v47;
  v79 = &v17 - v47;
  v52 = type metadata accessor for MessageMetadata(v6);
  v50 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v62 = &v17 - v50;
  v77 = v7;
  v76 = v8;
  v55 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for MFMessageFlags();
  v51 = sub_1B0E46A48();
  sub_1B0692B00();
  sub_1B0E46028();
  v56 = v75;
  v57 = *(v61 + *(v52 + 36));
  v9 = *v61;
  v54 = v74;
  v74[0] = v9;
  v53 = sub_1B07467B8();
  v10 = sub_1B041C1E8();
  BinaryInteger.init<A>(_:)(v54, MEMORY[0x1E69E7668], &type metadata for UID, v53, v10);
  v59 = [v55 initWithFlags:v56 size:v57 uid:v74[1]];
  MEMORY[0x1E69E5928](v59);
  v78 = v59;
  MEMORY[0x1E69E5928](v58);
  [v59 setMessageStore_];
  MEMORY[0x1E69E5920](v58);
  MEMORY[0x1E69E5920](v59);
  sub_1B08AB360();
  sub_1B087363C(v61, v62);
  v63 = sub_1B08AB97C(v62);
  if (!v63)
  {
    MEMORY[0x1E69E5920](v58);
    sub_1B0873950(v61);
    MEMORY[0x1E69E5920](v78);
    return 0;
  }

  v34 = v63;
  v30 = v63;
  v73 = v63;
  v29 = v78;
  MEMORY[0x1E69E5928](v63);
  [v29 setHeaders_];
  MEMORY[0x1E69E5920](v30);
  v31 = *MEMORY[0x1E699B0D8];
  MEMORY[0x1E69E5928](v31);
  v32 = [v30 firstHeaderForKey_];
  MEMORY[0x1E69E5920](v31);
  if (v32)
  {
    v28 = v32;
    v27 = v32;
    v26 = &v64;
    sub_1B0E45FE8();
    sub_1B0392800(v26, v71);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v71, 0, sizeof(v71));
  }

  v11 = v37;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29B0, &qword_1B0E9F008);
  result = sub_1B039A570(v35, 0, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v24, v72);
  v25 = v11;
  if (!v11)
  {
    sub_1B041C0EC(v71);
    v70[0] = v72[0];
    v70[1] = v72[1];
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
    sub_1B039A570(v36, 0, v14, MEMORY[0x1E69E73E0], v38, v24, v48);
    v15 = v44;
    sub_1B03B1198(v70);
    v68 = *(v61 + 2);
    v69 = *(v61 + 24);
    v66 = v68;
    v67 = v69;
    v65 = sub_1B074D188(v68, v69);
    [v78 setMessageFlagsWithoutCommitting_];
    v23 = v78;
    MEMORY[0x1E69E5928](v78);
    ServerMessageDate.date.getter(*(v61 + 1), v15);
    sub_1B0E430B8();
    v22 = v16;
    v20 = *(v39 + 8);
    v21 = v39 + 8;
    v20(v44, v38);
    [v23 setDateReceivedAsTimeIntervalSince1970_];
    MEMORY[0x1E69E5920](v23);
    sub_1B06BC2F4(v48, v46);
    if ((*(v39 + 48))(v46, 1, v38) == 1)
    {
      sub_1B06B97A8(v46);
    }

    else
    {
      (*(v39 + 32))(v42, v46, v38);
      v19 = v78;
      MEMORY[0x1E69E5928](v78);
      sub_1B0E430B8();
      [v19 setDateSentAsTimeIntervalSince1970_];
      MEMORY[0x1E69E5920](v19);
      v20(v42, v38);
    }

    [v78 loadCachedHeaderValuesFromHeaders_];
    sub_1B06B97A8(v48);
    MEMORY[0x1E69E5920](v30);
    v18 = v78;
    MEMORY[0x1E69E5928](v78);
    MEMORY[0x1E69E5920](v58);
    sub_1B0873950(v61);
    MEMORY[0x1E69E5920](v78);
    return v18;
  }

  __break(1u);
  __break(1u);
  return result;
}

unint64_t sub_1B08AB360()
{
  v2 = qword_1EB6DAB30;
  if (!qword_1EB6DAB30)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAB30);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B08AB3C4(uint64_t a1, void *a2)
{
  v24.rawValue._countAndFlagsBits = a1;
  v24.rawValue._object = a2;
  v49 = 0;
  v50 = 0;
  v45 = 0u;
  v46 = 0u;
  v47 = a1;
  v48 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  String.init(_:)(v24);
  v25 = sub_1B0E44DA8();

  if (v25)
  {
    v8 = sub_1B0E44838();
    v9 = v6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v49 = v8;
    v50 = v9;
    v12 = v8;
    goto LABEL_26;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v44 = String.init(_:)(v24);
  sub_1B03F5BE0();
  sub_1B0E45778();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v42 = v45;
  v43 = v46;
  sub_1B08AC330();
  sub_1B0E45728();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = sub_1B0E44838();
  v23 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v38[0] = v40;
  v38[1] = v41;
  *&v39 = v22;
  *(&v39 + 1) = v23;
  if (v41)
  {
    sub_1B070B280(v38, &v28);
    if (*(&v39 + 1))
    {
      v27 = v28;
      v26 = v39;
      v20 = MEMORY[0x1B2726940](v28, *(&v28 + 1), v39, *(&v39 + 1));
      sub_1B03B1198(&v26);
      sub_1B03B1198(&v27);
      sub_1B03B1198(v38);
      v21 = v20;
      goto LABEL_8;
    }

    sub_1B03B1198(&v28);
    goto LABEL_10;
  }

  if (*(&v39 + 1))
  {
LABEL_10:
    sub_1B06FF6F0(v38);
    v21 = 0;
    goto LABEL_8;
  }

  sub_1B03B1198(v38);
  v21 = 1;
LABEL_8:

  if (v21)
  {
    sub_1B08AC420();
    sub_1B0E457C8();
  }

  v15 = v45;
  v3 = v46;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v36 = v15;
  v37 = v3;
  sub_1B08AC3A8();
  sub_1B0E44888();
  v17 = v34;
  v18 = v35;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = sub_1B0E44838();
  v19 = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v32[0] = v17;
  v32[1] = v18;
  *&v33 = v16;
  *(&v33 + 1) = v19;
  if (!v18)
  {
    if (!*(&v33 + 1))
    {
      sub_1B03B1198(v32);
      v14 = 1;
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  sub_1B070B280(v32, &v31);
  if (!*(&v33 + 1))
  {
    sub_1B03B1198(&v31);
LABEL_21:
    sub_1B06FF6F0(v32);
    v14 = 0;
    goto LABEL_19;
  }

  v30 = v31;
  v29 = v33;
  v13 = MEMORY[0x1B2726940](v31, *(&v31 + 1), v33, *(&v33 + 1));
  sub_1B03B1198(&v29);
  sub_1B03B1198(&v30);
  sub_1B03B1198(v32);
  v14 = v13;
LABEL_19:

  if (v14)
  {
    sub_1B08AC420();
    sub_1B0E45858();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = sub_1B0E44EC8();
  v10 = v5;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v49 = v11;
  v50 = v10;
  sub_1B03F5C58(&v45);
  v12 = v11;
LABEL_26:

  sub_1B03B1198(&v49);
  return v12;
}

id sub_1B08AB97C(uint64_t a1)
{
  v33 = a1;
  v29 = 0;
  v41 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v1 = *(*(sub_1B0E443C8() - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](0);
  v22 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Message(v2);
  v24 = *(v23 - 8);
  v25 = v24;
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26A0, &qword_1B0EA2DF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v29);
  v36 = &v13 - v27;
  v28 = &v13 - v27;
  v35 = type metadata accessor for MessageMetadata.UnparsedHeader(v6);
  v30 = *(v35 - 8);
  v34 = v30;
  v31 = *(v30 + 64);
  v7 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v13 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v32;
  v39 = v8;
  v9 = type metadata accessor for MessageMetadata(v7);
  sub_1B08768B8((v33 + *(v9 + 32)), v36);
  if ((*(v34 + 48))(v36, 1, v35) == 1)
  {
    sub_1B08769E8(v28);
LABEL_6:
    sub_1B0873950(v33);
    return 0;
  }

  sub_1B075CC98(v28, v32);
  v37 = sub_1B0E42FE8();
  v38 = v10;
  MessageMetadata.UnparsedHeader.underlying.getter(v22);
  Message.init(_:)(v22, v26);
  v15 = &v13;
  MEMORY[0x1EEE9AC00](&v13);
  *(&v13 - 2) = &v37;
  Message.streamWithConvertedLineEndings(input:output:ensureTrailingNewline:_:)(3u, 2, 1, sub_1B08AC498, (&v13 - 4));
  (*(v25 + 8))(v26, v23);
  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = v37;
  v16 = v38;
  sub_1B03B2000(v37, v38);
  v19 = sub_1B0E42F18();
  sub_1B0391D50(v17, v16);
  v21 = [v18 initWithHeaderData:v19 encoding:0xFFFFFFFFLL];
  v20 = v21;

  if (!v21)
  {

    sub_1B075D3E8(&v37);
    sub_1B075CD68(v32);
    goto LABEL_6;
  }

  v11 = v20;
  v40 = v20;
  sub_1B075D3E8(&v37);
  sub_1B075CD68(v32);
  v13 = v20;
  sub_1B0873950(v33);

  return v13;
}

uint64_t sub_1B08ABD78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a1;
  sub_1B039AEC8(a1, v4);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t sub_1B08ABE40@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = InternetMessageDate.init(_:)(v5);
  InternetMessageDate.parse()(v3.value._countAndFlagsBits, v3.value._object, a3);
}

uint64_t sub_1B08ABEA8()
{
  v34 = 0;
  v33 = 0;
  v28 = 0;
  v29 = 0;
  v20 = 0;
  v21 = (*(*(type metadata accessor for MessageMetadata(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v23 = &v3 - v21;
  v34 = v0;
  sub_1B08AB360();
  sub_1B087363C(v22, v23);
  v24 = sub_1B08AB97C(v23);
  if (!v24)
  {
    return 0;
  }

  v19 = v24;
  v16 = v24;
  v33 = v24;
  v17 = *MEMORY[0x1E699B130];
  MEMORY[0x1E69E5928](v17);
  v18 = [v16 firstHeaderForKey_];
  MEMORY[0x1E69E5920](v17);
  if (v18)
  {
    v15 = v18;
    v14 = v18;
    v13 = &v25;
    sub_1B0E45FE8();
    sub_1B0392800(v13, &v30);
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0uLL;
    v31 = 0uLL;
  }

  v32[0] = v30;
  v32[1] = v31;
  if (*(&v31 + 1))
  {
    if (swift_dynamicCast())
    {
      v11 = v26;
      v12 = v27;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v9 = v11;
    v10 = v12;
  }

  else
  {
    sub_1B041C0EC(v32);
    v9 = 0;
    v10 = 0;
  }

  v7 = v10;
  v8 = v9;
  if (!v10)
  {
    MEMORY[0x1E69E5920](v16);
    return 0;
  }

  v5 = v8;
  v6 = v7;
  v1._countAndFlagsBits = v8;
  v1._object = v7;
  v28 = v8;
  v29 = v7;
  v3 = MessageID.init(_:)(v1);
  MEMORY[0x1E69E5920](v16);
  return v3.rawValue._countAndFlagsBits;
}

id sub_1B08AC254(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2.rawValue._countAndFlagsBits = a1;
  v2.rawValue._object = a2;
  String.init(_:)(v2);
  v6 = sub_1B0E44AC8();

  v8 = [v5 initWithAngleBracketID_];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](v8);

  MEMORY[0x1E69E5920](v8);
  return v8;
}

unint64_t sub_1B08AC330()
{
  v2 = qword_1EB6E29B8;
  if (!qword_1EB6E29B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E29B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08AC3A8()
{
  v2 = qword_1EB6E29C0;
  if (!qword_1EB6E29C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E29C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08AC420()
{
  v2 = qword_1EB6E29C8;
  if (!qword_1EB6E29C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E29C8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_1B08AC4D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  sub_1B0714E4C();
  if (sub_1B0E45ED8())
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = static MailboxName.== infix(_:_:)(a2, a3, a5, a6);

    return (v8 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1B08AC5EC(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v13 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v9 = a2;
  sub_1B043CF70();
  sub_1B0E46C48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = a3;
  v8 = a4;
  sub_1B0451F2C();
  sub_1B0E46C48();
  return sub_1B039E440(&v7);
}

unint64_t sub_1B08AC714()
{
  v2 = qword_1EB6DBCD8;
  if (!qword_1EB6DBCD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBCD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08AC790()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[4];
  return sub_1B08AC6AC();
}

uint64_t sub_1B08AC814()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v2;
}

uint64_t sub_1B08AC864(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t sub_1B08AC8C4()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v2;
}

uint64_t sub_1B08AC914(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_beginAccess();
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;

  swift_endAccess();
}

uint64_t sub_1B08AC974(uint64_t a1, int a2, unsigned int a3, __int128 *a4, uint64_t a5, int a6, uint64_t a7)
{
  v90 = v101;
  v91 = a5;
  v92 = a4;
  v93 = a3;
  v94 = a2;
  v95 = a1;
  v96 = a6;
  v97 = 0;
  v114 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v100 = 0;
  v120 = a1;
  v121 = a2;
  v119 = a3;
  v118 = a4;
  v117 = a5;
  v116 = a6;
  v115 = a7;
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  v122[3] = a4[3];
  v122[2] = v9;
  v122[1] = v8;
  v122[0] = v7;
  v10 = a4[4];
  v11 = a4[5];
  v12 = a4[6];
  v122[7] = a4[7];
  v122[6] = v12;
  v122[5] = v11;
  v122[4] = v10;
  v13 = a4[8];
  v14 = a4[9];
  v15 = a4[10];
  v123 = *(a4 + 176);
  v122[10] = v15;
  v122[9] = v14;
  v122[8] = v13;
  if (sub_1B075FACC(v122) == 1)
  {
    sub_1B075FEBC(v110);
    v47 = v90;
    v48 = v110[0];
    v49 = v110[1];
    v50 = v110[2];
    v90[63] = v110[3];
    v47[62] = v50;
    v47[61] = v49;
    v47[60] = v48;
    v51 = v110[4];
    v52 = v110[5];
    v53 = v110[6];
    v47[67] = v110[7];
    v47[66] = v53;
    v47[65] = v52;
    v47[64] = v51;
    v54 = v110[8];
    v55 = v110[9];
    v113 = v111;
    v47[70] = v110[10];
    v47[69] = v55;
    v47[68] = v54;
  }

  else
  {
    v16 = v90;
    v17 = v90[76];
    v18 = v90[77];
    v19 = v90[78];
    v90[3] = v90[79];
    v16[2] = v19;
    v16[1] = v18;
    *v16 = v17;
    v20 = v16[80];
    v21 = v16[81];
    v22 = v16[82];
    v16[7] = v16[83];
    v16[6] = v22;
    v16[5] = v21;
    v16[4] = v20;
    v23 = v16[84];
    v24 = v16[85];
    v25 = v16[86];
    v102 = v123;
    v16[10] = v25;
    v16[9] = v24;
    v16[8] = v23;
    v100 = v122;
    v89 = v101;
    sub_1B07169CC(v101, &v99);
    sub_1B07169CC(v101, &v98);
    v26 = v90;
    v27 = *v90;
    v28 = v90[1];
    v29 = v90[2];
    v90[15] = v90[3];
    v26[14] = v29;
    v26[13] = v28;
    v26[12] = v27;
    v30 = v26[4];
    v31 = v26[5];
    v32 = v26[6];
    v26[19] = v26[7];
    v26[18] = v32;
    v26[17] = v31;
    v26[16] = v30;
    v33 = v26[8];
    v34 = v26[9];
    v35 = v26[10];
    v104 = v102;
    v26[22] = v35;
    v26[21] = v34;
    v26[20] = v33;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v103);
    v36 = v90;
    v37 = v89;
    v38 = v90[12];
    v39 = v90[13];
    v40 = v90[14];
    v90[63] = v90[15];
    v36[62] = v40;
    v36[61] = v39;
    v36[60] = v38;
    v41 = v36[16];
    v42 = v36[17];
    v43 = v36[18];
    v36[67] = v36[19];
    v36[66] = v43;
    v36[65] = v42;
    v36[64] = v41;
    v44 = v36[20];
    v45 = v36[21];
    v46 = v36[22];
    v113 = v104;
    v36[70] = v46;
    v36[69] = v45;
    v36[68] = v44;
    sub_1B075E648(v37);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v93);
  v56 = v90;
  v85 = v57;
  v88 = v58;
  v84 = v59;
  LODWORD(v106) = v57;
  v107 = v58;
  v108 = v59;
  v60 = v90[60];
  v61 = v90[61];
  v62 = v90[62];
  v90[91] = v90[63];
  v56[90] = v62;
  v56[89] = v61;
  v56[88] = v60;
  v63 = v56[64];
  v64 = v56[65];
  v65 = v56[66];
  v56[95] = v56[67];
  v56[94] = v65;
  v56[93] = v64;
  v56[92] = v63;
  v66 = v56[68];
  v67 = v56[69];
  v68 = v56[70];
  v124[176] = v113;
  v56[98] = v68;
  v56[97] = v67;
  v56[96] = v66;
  v69 = v56[60];
  v70 = v56[61];
  v71 = v56[62];
  v56[40] = v56[63];
  v56[39] = v71;
  v56[38] = v70;
  v56[37] = v69;
  v72 = v56[64];
  v73 = v56[65];
  v74 = v56[66];
  v56[44] = v56[67];
  v56[43] = v74;
  v56[42] = v73;
  v56[41] = v72;
  v75 = v56[68];
  v76 = v56[69];
  v77 = v56[70];
  v109 = v113;
  v56[47] = v77;
  v56[46] = v76;
  v56[45] = v75;
  v87 = v124;
  sub_1B075DC38(v124, v105);
  v86 = &v84;
  v78 = MEMORY[0x1EEE9AC00](v85);
  v83[2] = v87;
  v83[3] = v91;
  sub_1B08ACEE8(v78, v80, v81, v79 & 1, sub_1B08ACEDC, v83);
  sub_1B075E728(v87);

  return sub_1B075E728(&v112);
}

uint64_t sub_1B08ACE28(void *a1, unsigned __int8 *a2, char *a3)
{
  v10 = a1;
  sub_1B075DC38(a2, v8);
  memcpy(__dst, a2, 0xB1uLL);
  v7 = *a1;

  memcpy(v11, __dst, 0xB1uLL);
  sub_1B077FC8C(v11, a3);

  return sub_1B075E728(__dst);
}

uint64_t sub_1B08ACEE8(unsigned int a1, uint64_t a2, int a3, char a4, void (*a5)(void), uint64_t a6)
{
  v25 = 0;
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v32 = a4 & 1;
  v30 = a5;
  v31 = a6;
  v29 = v6;
  swift_beginAccess();
  v20 = *(v6 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v26 = a1;
  v27 = a2;
  v28 = a3;
  type metadata accessor for InProgressMessageDownload();
  sub_1B08AC714();
  v21 = sub_1B0E44638();
  v22 = v7;
  v23 = v8;

  if (v23 == 255)
  {
    v25 = sub_1B075FC90(a1, a4 & 1);
    a5(&v25);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29D0, &qword_1B0E9F010);
    sub_1B0E44788();
    swift_endAccess();
  }

  else
  {
    if (a4)
    {
      sub_1B08AD370(v21, v22, v23 & 1);
      swift_beginAccess();
      v9 = *(v16 + 16);
      sub_1B0E446B8();
      sub_1B0E44678();
      swift_endAccess();
      swift_beginAccess();
      *(v24 + 20) = 1;
      swift_endAccess();

      sub_1B07AC53C(v21, v22, v23 & 1);
    }

    sub_1B08AD370(v21, v22, v23 & 1);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29D0, &qword_1B0E9F010);
    v13 = sub_1B0E446A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29D8, &qword_1B0E9F018);
    v12 = sub_1B0E44668();
    a5(v10);
    v12();
    v13();
    swift_endAccess();
    sub_1B07AC53C(v21, v22, v23 & 1);
    return sub_1B07AC53C(v21, v22, v23 & 1);
  }
}

uint64_t sub_1B08AD370(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B08AD3A4()
{
  sub_1B039E440((v0 + 16));
  sub_1B039E440((v0 + 24));
  return v2;
}

uint64_t sub_1B08AD460()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A28, &qword_1B0E9F348);
  sub_1B0E46A48();
  type metadata accessor for InProgressMessageDownload();
  sub_1B08AC714();
  *(v0 + 16) = sub_1B0E445D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A30, &unk_1B0E9F350);
  sub_1B0E46A48();
  type metadata accessor for MessagesBeingDownloaded.MessageHeader();
  v1 = sub_1B0E445D8();
  result = v3;
  *(v3 + 24) = v1;
  return result;
}

uint64_t sub_1B08AD540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v30 = a6;
  v26 = a7;
  v29 = sub_1B08AD9A0;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v28 = 0;
  v42 = 0;
  v18 = (*(*(type metadata accessor for MessageSectionData(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = (&v17 - v18);
  v50 = MEMORY[0x1EEE9AC00](v21);
  v48 = v8;
  v49 = v9;
  v46 = v10;
  v47 = v11;
  v45 = v12;
  v44 = v13;
  v43 = v7;
  sub_1B07AD790(v50, (&v17 - v18));
  v20 = sub_1B08AD714(v19);
  v31 = v14;
  v27 = v15;
  LODWORD(v40) = v20;
  v41 = v14;
  v42 = v15;

  v33 = v21;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v38 = v30;
  v39 = v26;
  sub_1B08ACEE8(v20, v31, v27, v28 & 1, v29, v32);
}

uint64_t sub_1B08AD714(uint64_t *a1)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v5 = *(a1 + 3);
  v6 = *a1;
  v7 = *(a1 + 2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v5);
  v11 = v1;
  v9 = v2;
  v10 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LODWORD(v12) = v11;
  v13 = v9;
  v14 = v10;
  sub_1B07AB910(a1);
  sub_1B03B1198(&v12);
  return v11;
}

uint64_t sub_1B08AD7CC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, void), uint64_t a6, void *a7, uint64_t a8)
{
  v19 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v21 = a8;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v33 = 0;
  v17 = 0;
  v18 = (*(*(_s6LoggerVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v22 = &v17 - v18;
  v20 = (*(*(_s6LoggerVMa_1() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v19);
  v31 = &v17 - v20;
  v40 = v8;
  v39 = v9;
  v37 = v10;
  v38 = v11;
  v35 = v12;
  v36 = v13;
  v34 = v14;
  v33 = v15;
  v32 = *v8;

  sub_1B0394784(v21, v22);
  v23 = *v25;
  v24 = *(v25 + 2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07B91DC(v22, v23, v24, v31);
  sub_1B0784064(v25, v26, v27, v28, v29, v30, v31);
  sub_1B074B764(v31);
}

uint64_t sub_1B08AD9C0()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B08ADA38(uint64_t a1)
{
  v7 = a1;
  v5[1] = 0;
  v5[0] = (*(*(type metadata accessor for MessageHeader() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v7);
  v6 = v5 - v5[0];
  sub_1B075CC34(v2, v5 - v5[0]);
  v3 = type metadata accessor for MessagesBeingDownloaded.MessageHeader();
  sub_1B08ADAE0(v6, v1 + *(v3 + 24));
  return sub_1B075CD68(v7);
}

uint64_t sub_1B08ADAE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 40))(a2, a1);
  return a2;
}

uint64_t sub_1B08ADB44@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 12) = a3;
  v5 = type metadata accessor for MessagesBeingDownloaded.MessageHeader();
  return sub_1B075CC98(a4, a5 + *(v5 + 24));
}

uint64_t sub_1B08ADB94(uint64_t *a1, uint64_t a2)
{
  v33 = a1;
  v32 = a2;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29E0, &qword_1B0E9F020);
  v24 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v25 = v12 - v24;
  v43 = 0;
  v26 = (*(*(_s6LoggerVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v27 = v12 - v26;
  v28 = (*(*(_s6LoggerVMa_1() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v29 = v12 - v28;
  v30 = (*(*(type metadata accessor for MessageHeader() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v31 = v12 - v30;
  v34 = type metadata accessor for MessagesBeingDownloaded.MessageHeader();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v33);
  v38 = (v12 - v37);
  v69 = v4;
  v68 = v5;
  v67 = v2;
  sub_1B08AE288(v4, v12 - v37);
  v40 = sub_1B08AE348(v38);
  v41 = v6;
  v42 = v7;
  LODWORD(v64) = v40;
  v65 = v6;
  v66 = v7;
  v39 = &v63;
  swift_beginAccess();
  v47 = *(v2 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v45 = &v60;
  v60 = v40;
  v61 = v41;
  v62 = v42;
  v44 = type metadata accessor for InProgressMessageDownload();
  v46 = sub_1B08AC714();
  v48 = sub_1B0E44638();
  v49 = v8;
  v50 = v9;

  if (v50 == 255)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B08AE288(v33, v25);
    (*(v35 + 56))(v25, 0, 1, v34);
    v12[1] = &v57;
    v57 = v40;
    v58 = v41;
    v59 = v42;
    v12[2] = &v56;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29E8, &qword_1B0E9F028);
    sub_1B0E44788();
    swift_endAccess();
  }

  else
  {
    v20 = v48;
    v21 = v49;
    v22 = v50;
    v19 = v50;
    v18 = v49;
    v17 = v48;
    v53 = v48;
    v54 = v49;
    v55 = v50 & 1;
    sub_1B08AD370(v48, v49, v50 & 1);
    v12[4] = &v52;
    swift_beginAccess();
    v10 = *(v23 + 16);
    v12[3] = &unk_1F26DB2D8;
    v16 = sub_1B0E446B8();
    sub_1B0E44678();
    v15 = v51;
    swift_endAccess();
    sub_1B075CC34(v33 + *(v34 + 24), v31);
    sub_1B0394784(v32, v27);
    v13 = *v33;
    v14 = *(v33 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07B91DC(v27, v13, v14, v29);
    sub_1B077FF34(v31, v29);
    sub_1B074B764(v29);
    sub_1B075CD68(v31);

    sub_1B07AC53C(v17, v18, v19 & 1);
    sub_1B07AC53C(v17, v18, v19 & 1);
  }
}

uint64_t sub_1B08AE288(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v4;
  *(a2 + 8) = *(a1 + 2);
  *(a2 + 12) = *(a1 + 3);
  v5 = *(type metadata accessor for MessagesBeingDownloaded.MessageHeader() + 24);
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

uint64_t sub_1B08AE348(uint64_t *a1)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v5 = *(a1 + 3);
  v6 = *a1;
  v7 = *(a1 + 2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v5);
  v11 = v1;
  v9 = v2;
  v10 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LODWORD(v12) = v11;
  v13 = v9;
  v14 = v10;
  sub_1B08AE400(a1);
  sub_1B03B1198(&v12);
  return v11;
}

char *sub_1B08AE400(char *a1)
{
  v1 = *a1;

  v4 = *(type metadata accessor for MessagesBeingDownloaded.MessageHeader() + 24);
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 8))(&a1[v4]);
  return a1;
}

uint64_t sub_1B08AE484(unsigned int a1, uint64_t a2, int a3, uint64_t a4)
{
  v439 = a1;
  v440 = a2;
  v441 = a3;
  v430 = a4;
  v442 = 0;
  v351 = sub_1B074E050;
  v352 = sub_1B03F7AE0;
  v353 = sub_1B0394C30;
  v354 = sub_1B0394C24;
  v355 = sub_1B074DFFC;
  v356 = sub_1B039BA88;
  v357 = sub_1B039BB94;
  v358 = sub_1B0394C24;
  v359 = sub_1B039BBA0;
  v360 = sub_1B039BC08;
  v361 = 0x786F626C69616DLL;
  v362 = sub_1B06BA324;
  v363 = sub_1B074E0E4;
  v364 = sub_1B039BCF8;
  v365 = sub_1B07AB020;
  v366 = sub_1B039BC08;
  v367 = sub_1B0398F5C;
  v368 = sub_1B0398F5C;
  v369 = sub_1B0399178;
  v370 = sub_1B0398F5C;
  v371 = sub_1B0398F5C;
  v372 = sub_1B039BA94;
  v373 = sub_1B0398F5C;
  v374 = sub_1B0398F5C;
  v375 = sub_1B0399178;
  v376 = sub_1B0398F5C;
  v377 = sub_1B0398F5C;
  v378 = sub_1B03991EC;
  v379 = sub_1B0398F5C;
  v380 = sub_1B0398F5C;
  v381 = sub_1B03993BC;
  v382 = sub_1B0398F5C;
  v383 = sub_1B0398F5C;
  v384 = sub_1B039BCEC;
  v385 = sub_1B0398F5C;
  v386 = sub_1B0398F5C;
  v387 = sub_1B03991EC;
  v388 = sub_1B074E050;
  v389 = sub_1B03F7AE0;
  v390 = sub_1B0394C24;
  v391 = sub_1B074DFFC;
  v392 = sub_1B039BA88;
  v393 = sub_1B0394C24;
  v394 = sub_1B039BBA0;
  v395 = sub_1B039BC08;
  v396 = sub_1B06BA324;
  v397 = sub_1B074E0E4;
  v398 = sub_1B039BCF8;
  v399 = sub_1B07AB020;
  v400 = sub_1B039BC08;
  v401 = sub_1B0398F5C;
  v402 = sub_1B0398F5C;
  v403 = sub_1B0399178;
  v404 = sub_1B0398F5C;
  v405 = sub_1B0398F5C;
  v406 = sub_1B039BA94;
  v407 = sub_1B0398F5C;
  v408 = sub_1B0398F5C;
  v409 = sub_1B0399178;
  v410 = sub_1B0398F5C;
  v411 = sub_1B0398F5C;
  v412 = sub_1B03991EC;
  v413 = sub_1B0398F5C;
  v414 = sub_1B0398F5C;
  v415 = sub_1B03993BC;
  v416 = sub_1B0398F5C;
  v417 = sub_1B0398F5C;
  v418 = sub_1B039BCEC;
  v419 = sub_1B0398F5C;
  v420 = sub_1B0398F5C;
  v421 = sub_1B03991EC;
  v486 = 0;
  v484 = 0;
  v485 = 0;
  v483 = 0;
  v482 = 0;
  v479 = 0;
  v480 = 0;
  v481 = 0;
  v422 = 0;
  v467 = 0;
  v468 = 0;
  v469 = 0;
  v459 = 0;
  v460 = 0;
  v447 = 0;
  v423 = _s6LoggerVMa_1();
  v424 = (*(*(v423 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](0);
  v425 = v195 - v424;
  v426 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v427 = v195 - v426;
  v428 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v429 = v195 - v428;
  v431 = sub_1B0E439A8();
  v432 = *(v431 - 8);
  v433 = v431 - 8;
  v435 = *(v432 + 64);
  v434 = (v435 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v440);
  v436 = v195 - v434;
  v437 = (v435 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v438 = v195 - v437;
  v486 = v11;
  v484 = v10;
  v485 = v12;
  v483 = v13;
  v482 = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v439);
  v444 = v14;
  v445 = v15;
  v446 = v16;
  LODWORD(v479) = v14;
  v480 = v15;
  v481 = v16;
  v443 = &v478;
  swift_beginAccess();
  v451 = *(v4 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v449 = &v475;
  v475 = v444;
  v476 = v445;
  v477 = v446;
  v448 = type metadata accessor for InProgressMessageDownload();
  v450 = sub_1B08AC714();
  v452 = sub_1B0E44638();
  v453 = v17;
  v454 = v18;

  if (v454 == 255)
  {
    (*(v432 + 16))(v436, v430, v431);
    sub_1B074B69C(v430, v429);
    sub_1B074B69C(v429, v427);
    sub_1B074E41C(v429, v425);
    v107 = (v427 + *(v423 + 20));
    v205 = *v107;
    v206 = *(v107 + 1);
    v207 = *(v107 + 1);
    v208 = *(v107 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v427);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v204 = 36;
    v224 = 7;
    v108 = swift_allocObject();
    v109 = v206;
    v110 = v207;
    v111 = v208;
    v211 = v108;
    *(v108 + 16) = v205;
    *(v108 + 20) = v109;
    *(v108 + 24) = v110;
    *(v108 + 32) = v111;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v112 = swift_allocObject();
    v113 = v206;
    v114 = v207;
    v115 = v208;
    v203 = v112;
    *(v112 + 16) = v205;
    *(v112 + 20) = v113;
    *(v112 + 24) = v114;
    *(v112 + 32) = v115;

    v223 = 32;
    v116 = swift_allocObject();
    v117 = v203;
    v215 = v116;
    *(v116 + 16) = v388;
    *(v116 + 24) = v117;
    sub_1B0394868();
    sub_1B0394868();

    v118 = swift_allocObject();
    v119 = v206;
    v120 = v207;
    v121 = v208;
    v122 = v118;
    v123 = v425;
    v219 = v122;
    *(v122 + 16) = v205;
    *(v122 + 20) = v119;
    *(v122 + 24) = v120;
    *(v122 + 32) = v121;
    sub_1B074B764(v123);
    v209 = swift_allocObject();
    *(v209 + 16) = v439;

    v124 = swift_allocObject();
    v125 = v209;
    v225 = v124;
    *(v124 + 16) = v389;
    *(v124 + 24) = v125;

    v251 = sub_1B0E43988();
    v252 = sub_1B0E458E8();
    v221 = 17;
    v227 = swift_allocObject();
    v213 = 16;
    *(v227 + 16) = 16;
    v228 = swift_allocObject();
    v222 = 4;
    *(v228 + 16) = 4;
    v126 = swift_allocObject();
    v210 = v126;
    *(v126 + 16) = v353;
    *(v126 + 24) = 0;
    v127 = swift_allocObject();
    v128 = v210;
    v229 = v127;
    *(v127 + 16) = v390;
    *(v127 + 24) = v128;
    v230 = swift_allocObject();
    *(v230 + 16) = 0;
    v231 = swift_allocObject();
    *(v231 + 16) = 1;
    v129 = swift_allocObject();
    v130 = v211;
    v212 = v129;
    *(v129 + 16) = v391;
    *(v129 + 24) = v130;
    v131 = swift_allocObject();
    v132 = v212;
    v232 = v131;
    *(v131 + 16) = v392;
    *(v131 + 24) = v132;
    v233 = swift_allocObject();
    *(v233 + 16) = v213;
    v234 = swift_allocObject();
    *(v234 + 16) = v222;
    v133 = swift_allocObject();
    v214 = v133;
    *(v133 + 16) = v357;
    *(v133 + 24) = 0;
    v134 = swift_allocObject();
    v135 = v214;
    v235 = v134;
    *(v134 + 16) = v393;
    *(v134 + 24) = v135;
    v236 = swift_allocObject();
    *(v236 + 16) = 0;
    v237 = swift_allocObject();
    *(v237 + 16) = v222;
    v136 = swift_allocObject();
    v137 = v215;
    v216 = v136;
    *(v136 + 16) = v394;
    *(v136 + 24) = v137;
    v138 = swift_allocObject();
    v139 = v216;
    v238 = v138;
    *(v138 + 16) = v395;
    *(v138 + 24) = v139;
    v239 = swift_allocObject();
    *(v239 + 16) = 112;
    v240 = swift_allocObject();
    v218 = 8;
    *(v240 + 16) = 8;
    v217 = swift_allocObject();
    *(v217 + 16) = v361;
    v140 = swift_allocObject();
    v141 = v217;
    v241 = v140;
    *(v140 + 16) = v396;
    *(v140 + 24) = v141;
    v242 = swift_allocObject();
    *(v242 + 16) = 37;
    v243 = swift_allocObject();
    *(v243 + 16) = v218;
    v142 = swift_allocObject();
    v143 = v219;
    v220 = v142;
    *(v142 + 16) = v397;
    *(v142 + 24) = v143;
    v144 = swift_allocObject();
    v145 = v220;
    v244 = v144;
    *(v144 + 16) = v398;
    *(v144 + 24) = v145;
    v245 = swift_allocObject();
    *(v245 + 16) = 0;
    v246 = swift_allocObject();
    *(v246 + 16) = v222;
    v146 = swift_allocObject();
    v147 = v225;
    v226 = v146;
    *(v146 + 16) = v399;
    *(v146 + 24) = v147;
    v148 = swift_allocObject();
    v149 = v226;
    v248 = v148;
    *(v148 + 16) = v400;
    *(v148 + 24) = v149;
    v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v247 = sub_1B0E46A48();
    v249 = v150;

    v151 = v227;
    v152 = v249;
    *v249 = v401;
    v152[1] = v151;

    v153 = v228;
    v154 = v249;
    v249[2] = v402;
    v154[3] = v153;

    v155 = v229;
    v156 = v249;
    v249[4] = v403;
    v156[5] = v155;

    v157 = v230;
    v158 = v249;
    v249[6] = v404;
    v158[7] = v157;

    v159 = v231;
    v160 = v249;
    v249[8] = v405;
    v160[9] = v159;

    v161 = v232;
    v162 = v249;
    v249[10] = v406;
    v162[11] = v161;

    v163 = v233;
    v164 = v249;
    v249[12] = v407;
    v164[13] = v163;

    v165 = v234;
    v166 = v249;
    v249[14] = v408;
    v166[15] = v165;

    v167 = v235;
    v168 = v249;
    v249[16] = v409;
    v168[17] = v167;

    v169 = v236;
    v170 = v249;
    v249[18] = v410;
    v170[19] = v169;

    v171 = v237;
    v172 = v249;
    v249[20] = v411;
    v172[21] = v171;

    v173 = v238;
    v174 = v249;
    v249[22] = v412;
    v174[23] = v173;

    v175 = v239;
    v176 = v249;
    v249[24] = v413;
    v176[25] = v175;

    v177 = v240;
    v178 = v249;
    v249[26] = v414;
    v178[27] = v177;

    v179 = v241;
    v180 = v249;
    v249[28] = v415;
    v180[29] = v179;

    v181 = v242;
    v182 = v249;
    v249[30] = v416;
    v182[31] = v181;

    v183 = v243;
    v184 = v249;
    v249[32] = v417;
    v184[33] = v183;

    v185 = v244;
    v186 = v249;
    v249[34] = v418;
    v186[35] = v185;

    v187 = v245;
    v188 = v249;
    v249[36] = v419;
    v188[37] = v187;

    v189 = v246;
    v190 = v249;
    v249[38] = v420;
    v190[39] = v189;

    v191 = v248;
    v192 = v249;
    v249[40] = v421;
    v192[41] = v191;
    sub_1B0394964();

    if (os_log_type_enabled(v251, v252))
    {
      v193 = v422;
      v196 = sub_1B0E45D78();
      v195[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v197 = sub_1B03949A8(0);
      v198 = sub_1B03949A8(1);
      v199 = &v474;
      v474 = v196;
      v200 = &v473;
      v473 = v197;
      v201 = &v472;
      v472 = v198;
      sub_1B0394A48(3, &v474);
      sub_1B0394A48(7, v199);
      v470 = v401;
      v471 = v227;
      sub_1B03949FC(&v470, v199, v200, v201);
      v202 = v193;
      if (v193)
      {

        __break(1u);
      }

      else
      {
        v470 = v402;
        v471 = v228;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[19] = 0;
        v470 = v403;
        v471 = v229;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[18] = 0;
        v470 = v404;
        v471 = v230;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[17] = 0;
        v470 = v405;
        v471 = v231;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[16] = 0;
        v470 = v406;
        v471 = v232;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[15] = 0;
        v470 = v407;
        v471 = v233;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[14] = 0;
        v470 = v408;
        v471 = v234;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[13] = 0;
        v470 = v409;
        v471 = v235;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[12] = 0;
        v470 = v410;
        v471 = v236;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[11] = 0;
        v470 = v411;
        v471 = v237;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[10] = 0;
        v470 = v412;
        v471 = v238;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[9] = 0;
        v470 = v413;
        v471 = v239;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[8] = 0;
        v470 = v414;
        v471 = v240;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[7] = 0;
        v470 = v415;
        v471 = v241;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[6] = 0;
        v470 = v416;
        v471 = v242;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[5] = 0;
        v470 = v417;
        v471 = v243;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[4] = 0;
        v470 = v418;
        v471 = v244;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[3] = 0;
        v470 = v419;
        v471 = v245;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[2] = 0;
        v470 = v420;
        v471 = v246;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        v195[1] = 0;
        v470 = v421;
        v471 = v248;
        sub_1B03949FC(&v470, &v474, &v473, &v472);
        _os_log_impl(&dword_1B0389000, v251, v252, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] No in-progress download for UID %u.", v196, 0x31u);
        sub_1B03998A8(v197);
        sub_1B03998A8(v198);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v251);
    (*(v432 + 8))(v436, v431);

    v334 = 0;
    v335 = 0xF000000000000000;
  }

  else
  {
    v347 = v452;
    v348 = v453;
    v349 = v454;
    v345 = v454;
    v344 = v453;
    v343 = v452;
    v467 = v452;
    v468 = v453;
    v469 = v454 & 1;
    v338 = &v466;
    swift_beginAccess();
    v339 = *(v350 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    sub_1B08AD370(v343, v344, v345 & 1);
    sub_1B0E44798();
    v342 = v465[3];
    v340 = v465[1];

    v341 = sub_1B07678B8(v430);
    v346 = v19;

    sub_1B07AC53C(v343, v344, v345 & 1);
    if ((v346 & 0xF000000000000000) == 0xF000000000000000)
    {
      (*(v432 + 16))(v438, v430, v431);
      sub_1B074B69C(v430, v429);
      sub_1B074B69C(v429, v427);
      sub_1B074E41C(v429, v425);
      v20 = (v427 + *(v423 + 20));
      v282 = *v20;
      v283 = *(v20 + 1);
      v284 = *(v20 + 1);
      v285 = *(v20 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v427);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v281 = 36;
      v301 = 7;
      v21 = swift_allocObject();
      v22 = v283;
      v23 = v284;
      v24 = v285;
      v288 = v21;
      *(v21 + 16) = v282;
      *(v21 + 20) = v22;
      *(v21 + 24) = v23;
      *(v21 + 32) = v24;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v25 = swift_allocObject();
      v26 = v283;
      v27 = v284;
      v28 = v285;
      v280 = v25;
      *(v25 + 16) = v282;
      *(v25 + 20) = v26;
      *(v25 + 24) = v27;
      *(v25 + 32) = v28;

      v300 = 32;
      v29 = swift_allocObject();
      v30 = v280;
      v292 = v29;
      *(v29 + 16) = v351;
      *(v29 + 24) = v30;
      sub_1B0394868();
      sub_1B0394868();

      v31 = swift_allocObject();
      v32 = v283;
      v33 = v284;
      v34 = v285;
      v35 = v31;
      v36 = v425;
      v296 = v35;
      *(v35 + 16) = v282;
      *(v35 + 20) = v32;
      *(v35 + 24) = v33;
      *(v35 + 32) = v34;
      sub_1B074B764(v36);
      v286 = swift_allocObject();
      *(v286 + 16) = v439;

      v37 = swift_allocObject();
      v38 = v286;
      v302 = v37;
      *(v37 + 16) = v352;
      *(v37 + 24) = v38;

      v328 = sub_1B0E43988();
      v329 = sub_1B0E45908();
      v298 = 17;
      v304 = swift_allocObject();
      v290 = 16;
      *(v304 + 16) = 16;
      v305 = swift_allocObject();
      v299 = 4;
      *(v305 + 16) = 4;
      v39 = swift_allocObject();
      v287 = v39;
      *(v39 + 16) = v353;
      *(v39 + 24) = 0;
      v40 = swift_allocObject();
      v41 = v287;
      v306 = v40;
      *(v40 + 16) = v354;
      *(v40 + 24) = v41;
      v307 = swift_allocObject();
      *(v307 + 16) = 0;
      v308 = swift_allocObject();
      *(v308 + 16) = 1;
      v42 = swift_allocObject();
      v43 = v288;
      v289 = v42;
      *(v42 + 16) = v355;
      *(v42 + 24) = v43;
      v44 = swift_allocObject();
      v45 = v289;
      v309 = v44;
      *(v44 + 16) = v356;
      *(v44 + 24) = v45;
      v310 = swift_allocObject();
      *(v310 + 16) = v290;
      v311 = swift_allocObject();
      *(v311 + 16) = v299;
      v46 = swift_allocObject();
      v291 = v46;
      *(v46 + 16) = v357;
      *(v46 + 24) = 0;
      v47 = swift_allocObject();
      v48 = v291;
      v312 = v47;
      *(v47 + 16) = v358;
      *(v47 + 24) = v48;
      v313 = swift_allocObject();
      *(v313 + 16) = 0;
      v314 = swift_allocObject();
      *(v314 + 16) = v299;
      v49 = swift_allocObject();
      v50 = v292;
      v293 = v49;
      *(v49 + 16) = v359;
      *(v49 + 24) = v50;
      v51 = swift_allocObject();
      v52 = v293;
      v315 = v51;
      *(v51 + 16) = v360;
      *(v51 + 24) = v52;
      v316 = swift_allocObject();
      *(v316 + 16) = 112;
      v317 = swift_allocObject();
      v295 = 8;
      *(v317 + 16) = 8;
      v294 = swift_allocObject();
      *(v294 + 16) = v361;
      v53 = swift_allocObject();
      v54 = v294;
      v318 = v53;
      *(v53 + 16) = v362;
      *(v53 + 24) = v54;
      v319 = swift_allocObject();
      *(v319 + 16) = 37;
      v320 = swift_allocObject();
      *(v320 + 16) = v295;
      v55 = swift_allocObject();
      v56 = v296;
      v297 = v55;
      *(v55 + 16) = v363;
      *(v55 + 24) = v56;
      v57 = swift_allocObject();
      v58 = v297;
      v321 = v57;
      *(v57 + 16) = v364;
      *(v57 + 24) = v58;
      v322 = swift_allocObject();
      *(v322 + 16) = 0;
      v323 = swift_allocObject();
      *(v323 + 16) = v299;
      v59 = swift_allocObject();
      v60 = v302;
      v303 = v59;
      *(v59 + 16) = v365;
      *(v59 + 24) = v60;
      v61 = swift_allocObject();
      v62 = v303;
      v325 = v61;
      *(v61 + 16) = v366;
      *(v61 + 24) = v62;
      v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v324 = sub_1B0E46A48();
      v326 = v63;

      v64 = v304;
      v65 = v326;
      *v326 = v367;
      v65[1] = v64;

      v66 = v305;
      v67 = v326;
      v326[2] = v368;
      v67[3] = v66;

      v68 = v306;
      v69 = v326;
      v326[4] = v369;
      v69[5] = v68;

      v70 = v307;
      v71 = v326;
      v326[6] = v370;
      v71[7] = v70;

      v72 = v308;
      v73 = v326;
      v326[8] = v371;
      v73[9] = v72;

      v74 = v309;
      v75 = v326;
      v326[10] = v372;
      v75[11] = v74;

      v76 = v310;
      v77 = v326;
      v326[12] = v373;
      v77[13] = v76;

      v78 = v311;
      v79 = v326;
      v326[14] = v374;
      v79[15] = v78;

      v80 = v312;
      v81 = v326;
      v326[16] = v375;
      v81[17] = v80;

      v82 = v313;
      v83 = v326;
      v326[18] = v376;
      v83[19] = v82;

      v84 = v314;
      v85 = v326;
      v326[20] = v377;
      v85[21] = v84;

      v86 = v315;
      v87 = v326;
      v326[22] = v378;
      v87[23] = v86;

      v88 = v316;
      v89 = v326;
      v326[24] = v379;
      v89[25] = v88;

      v90 = v317;
      v91 = v326;
      v326[26] = v380;
      v91[27] = v90;

      v92 = v318;
      v93 = v326;
      v326[28] = v381;
      v93[29] = v92;

      v94 = v319;
      v95 = v326;
      v326[30] = v382;
      v95[31] = v94;

      v96 = v320;
      v97 = v326;
      v326[32] = v383;
      v97[33] = v96;

      v98 = v321;
      v99 = v326;
      v326[34] = v384;
      v99[35] = v98;

      v100 = v322;
      v101 = v326;
      v326[36] = v385;
      v101[37] = v100;

      v102 = v323;
      v103 = v326;
      v326[38] = v386;
      v103[39] = v102;

      v104 = v325;
      v105 = v326;
      v326[40] = v387;
      v105[41] = v104;
      sub_1B0394964();

      if (os_log_type_enabled(v328, v329))
      {
        v106 = v422;
        v273 = sub_1B0E45D78();
        v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v274 = sub_1B03949A8(0);
        v275 = sub_1B03949A8(1);
        v276 = v465;
        v465[0] = v273;
        v277 = &v464;
        v464 = v274;
        v278 = &v463;
        v463 = v275;
        sub_1B0394A48(3, v465);
        sub_1B0394A48(7, v276);
        v461 = v367;
        v462 = v304;
        sub_1B03949FC(&v461, v276, v277, v278);
        v279 = v106;
        if (v106)
        {

          __break(1u);
        }

        else
        {
          v461 = v368;
          v462 = v305;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v271 = 0;
          v461 = v369;
          v462 = v306;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v270 = 0;
          v461 = v370;
          v462 = v307;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v269 = 0;
          v461 = v371;
          v462 = v308;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v268 = 0;
          v461 = v372;
          v462 = v309;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v267 = 0;
          v461 = v373;
          v462 = v310;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v266 = 0;
          v461 = v374;
          v462 = v311;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v265 = 0;
          v461 = v375;
          v462 = v312;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v264 = 0;
          v461 = v376;
          v462 = v313;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v263 = 0;
          v461 = v377;
          v462 = v314;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v262 = 0;
          v461 = v378;
          v462 = v315;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v261 = 0;
          v461 = v379;
          v462 = v316;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v260 = 0;
          v461 = v380;
          v462 = v317;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v259 = 0;
          v461 = v381;
          v462 = v318;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v258 = 0;
          v461 = v382;
          v462 = v319;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v257 = 0;
          v461 = v383;
          v462 = v320;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v256 = 0;
          v461 = v384;
          v462 = v321;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v255 = 0;
          v461 = v385;
          v462 = v322;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v254 = 0;
          v461 = v386;
          v462 = v323;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          v253 = 0;
          v461 = v387;
          v462 = v325;
          sub_1B03949FC(&v461, v465, &v464, &v463);
          _os_log_impl(&dword_1B0389000, v328, v329, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] In-progress message UID %u did download all segments, but did not have all data", v273, 0x31u);
          sub_1B03998A8(v274);
          sub_1B03998A8(v275);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v328);
      (*(v432 + 8))(v438, v431);
      sub_1B07AC53C(v343, v344, v345 & 1);

      v334 = 0;
      v335 = 0xF000000000000000;
    }

    else
    {
      v336 = v341;
      v337 = v346;
      v333 = v346;
      v332 = v341;
      v459 = v341;
      v460 = v346;
      v330 = &v456;
      v456 = v444;
      v457 = v445;
      v458 = v446;
      v331 = &v455;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29D0, &qword_1B0E9F010);
      sub_1B0E445B8();
      swift_endAccess();

      sub_1B07AC53C(v343, v344, v345 & 1);

      v334 = v332;
      v335 = v333;
    }
  }

  return v334;
}

uint64_t sub_1B08B12BC@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _DWORD *a9@<X8>, uint64_t a10)
{
  v384 = a9;
  v492 = a1;
  v493 = a2;
  v491 = a3;
  v480 = a4;
  v481 = a5;
  v482 = a6;
  v483 = a7;
  v484 = a8;
  v485 = a10;
  v494 = 0;
  v386 = sub_1B074E050;
  v387 = sub_1B03F7AE0;
  v388 = sub_1B07AC984;
  v389 = sub_1B0394C30;
  v390 = sub_1B0394C24;
  v391 = sub_1B074DFFC;
  v392 = sub_1B039BA88;
  v393 = sub_1B039BB94;
  v394 = sub_1B0394C24;
  v395 = sub_1B039BBA0;
  v396 = sub_1B039BC08;
  v397 = 0x786F626C69616DLL;
  v398 = sub_1B06BA324;
  v399 = sub_1B074E0E4;
  v400 = sub_1B039BCF8;
  v401 = sub_1B07AB020;
  v402 = sub_1B039BC08;
  v403 = sub_1B03FB220;
  v404 = sub_1B039BCF8;
  v405 = sub_1B0398F5C;
  v406 = sub_1B0398F5C;
  v407 = sub_1B0399178;
  v408 = sub_1B0398F5C;
  v409 = sub_1B0398F5C;
  v410 = sub_1B039BA94;
  v411 = sub_1B0398F5C;
  v412 = sub_1B0398F5C;
  v413 = sub_1B0399178;
  v414 = sub_1B0398F5C;
  v415 = sub_1B0398F5C;
  v416 = sub_1B03991EC;
  v417 = sub_1B0398F5C;
  v418 = sub_1B0398F5C;
  v419 = sub_1B03993BC;
  v420 = sub_1B0398F5C;
  v421 = sub_1B0398F5C;
  v422 = sub_1B039BCEC;
  v423 = sub_1B0398F5C;
  v424 = sub_1B0398F5C;
  v425 = sub_1B03991EC;
  v426 = sub_1B0398F5C;
  v427 = sub_1B0398F5C;
  v428 = sub_1B039BCEC;
  v429 = sub_1B074E050;
  v430 = sub_1B03F7AE0;
  v431 = sub_1B0394C24;
  v432 = sub_1B074DFFC;
  v433 = sub_1B039BA88;
  v434 = sub_1B0394C24;
  v435 = sub_1B039BBA0;
  v436 = sub_1B039BC08;
  v437 = sub_1B06BA324;
  v438 = sub_1B074E0E4;
  v439 = sub_1B039BCF8;
  v440 = sub_1B07AB020;
  v441 = sub_1B039BC08;
  v442 = sub_1B0398F5C;
  v443 = sub_1B0398F5C;
  v444 = sub_1B0399178;
  v445 = sub_1B0398F5C;
  v446 = sub_1B0398F5C;
  v447 = sub_1B039BA94;
  v448 = sub_1B0398F5C;
  v449 = sub_1B0398F5C;
  v450 = sub_1B0399178;
  v451 = sub_1B0398F5C;
  v452 = sub_1B0398F5C;
  v453 = sub_1B03991EC;
  v454 = sub_1B0398F5C;
  v455 = sub_1B0398F5C;
  v456 = sub_1B03993BC;
  v457 = sub_1B0398F5C;
  v458 = sub_1B0398F5C;
  v459 = sub_1B039BCEC;
  v460 = sub_1B0398F5C;
  v461 = sub_1B0398F5C;
  v462 = sub_1B03991EC;
  v543 = 0;
  v541 = 0;
  v542 = 0;
  v540 = 0;
  v539 = 0;
  v538 = 0;
  v536 = 0;
  v537 = 0;
  v535 = 0;
  v534 = 0;
  v533 = 0;
  v530 = 0;
  v531 = 0;
  v532 = 0;
  v463 = 0;
  v518 = 0;
  v519 = 0;
  v520 = 0;
  v499 = 0;
  v464 = _s6LoggerVMa_1();
  v465 = (*(*(v464 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](0);
  v466 = v218 - v465;
  v467 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v468 = v218 - v467;
  v469 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v470 = v218 - v469;
  v471 = sub_1B0E439A8();
  v472 = *(v471 - 8);
  v473 = v471 - 8;
  v474 = (*(v472 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v471);
  v475 = v218 - v474;
  v476 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v218 - v474);
  v477 = v218 - v476;
  v478 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29F0, &unk_1B0E9F030) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v499);
  v479 = (v218 - v478);
  v486 = type metadata accessor for InProgressMessageDownload.Completed();
  v487 = *(v486 - 8);
  v488 = v486 - 8;
  v489 = (*(v487 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v492);
  v490 = (v218 - v489);
  v543 = v218 - v489;
  v541 = v16;
  v542 = v17;
  v540 = v18;
  v539 = v19 & 1;
  v538 = v20;
  v536 = v21;
  v537 = v22;
  v535 = v23;
  v534 = v24;
  v533 = v10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v491);
  v496 = v25;
  v497 = v26;
  v498 = v27;
  LODWORD(v530) = v25;
  v531 = v26;
  v532 = v27;
  v495 = &v529;
  swift_beginAccess();
  v503 = *(v10 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v501 = &v526;
  v526 = v496;
  v527 = v497;
  v528 = v498;
  v500 = type metadata accessor for InProgressMessageDownload();
  v502 = sub_1B08AC714();
  v504 = sub_1B0E44638();
  v505 = v28;
  v506 = v29;

  if (v506 == 255)
  {
    (*(v472 + 16))(v475, v485, v471);
    sub_1B074B69C(v485, v470);
    sub_1B074B69C(v470, v468);
    sub_1B074E41C(v470, v466);
    v131 = (v468 + *(v464 + 20));
    v228 = *v131;
    v229 = *(v131 + 1);
    v230 = *(v131 + 1);
    v231 = *(v131 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v468);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v227 = 36;
    v247 = 7;
    v132 = swift_allocObject();
    v133 = v229;
    v134 = v230;
    v135 = v231;
    v234 = v132;
    *(v132 + 16) = v228;
    *(v132 + 20) = v133;
    *(v132 + 24) = v134;
    *(v132 + 32) = v135;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v136 = swift_allocObject();
    v137 = v229;
    v138 = v230;
    v139 = v231;
    v226 = v136;
    *(v136 + 16) = v228;
    *(v136 + 20) = v137;
    *(v136 + 24) = v138;
    *(v136 + 32) = v139;

    v246 = 32;
    v140 = swift_allocObject();
    v141 = v226;
    v238 = v140;
    *(v140 + 16) = v429;
    *(v140 + 24) = v141;
    sub_1B0394868();
    sub_1B0394868();

    v142 = swift_allocObject();
    v143 = v229;
    v144 = v230;
    v145 = v231;
    v146 = v142;
    v147 = v466;
    v242 = v146;
    *(v146 + 16) = v228;
    *(v146 + 20) = v143;
    *(v146 + 24) = v144;
    *(v146 + 32) = v145;
    sub_1B074B764(v147);
    v232 = swift_allocObject();
    *(v232 + 16) = v491;

    v148 = swift_allocObject();
    v149 = v232;
    v248 = v148;
    *(v148 + 16) = v430;
    *(v148 + 24) = v149;

    v274 = sub_1B0E43988();
    v275 = sub_1B0E458E8();
    v244 = 17;
    v250 = swift_allocObject();
    v236 = 16;
    *(v250 + 16) = 16;
    v251 = swift_allocObject();
    v245 = 4;
    *(v251 + 16) = 4;
    v150 = swift_allocObject();
    v233 = v150;
    *(v150 + 16) = v389;
    *(v150 + 24) = 0;
    v151 = swift_allocObject();
    v152 = v233;
    v252 = v151;
    *(v151 + 16) = v431;
    *(v151 + 24) = v152;
    v253 = swift_allocObject();
    *(v253 + 16) = 0;
    v254 = swift_allocObject();
    *(v254 + 16) = 1;
    v153 = swift_allocObject();
    v154 = v234;
    v235 = v153;
    *(v153 + 16) = v432;
    *(v153 + 24) = v154;
    v155 = swift_allocObject();
    v156 = v235;
    v255 = v155;
    *(v155 + 16) = v433;
    *(v155 + 24) = v156;
    v256 = swift_allocObject();
    *(v256 + 16) = v236;
    v257 = swift_allocObject();
    *(v257 + 16) = v245;
    v157 = swift_allocObject();
    v237 = v157;
    *(v157 + 16) = v393;
    *(v157 + 24) = 0;
    v158 = swift_allocObject();
    v159 = v237;
    v258 = v158;
    *(v158 + 16) = v434;
    *(v158 + 24) = v159;
    v259 = swift_allocObject();
    *(v259 + 16) = 0;
    v260 = swift_allocObject();
    *(v260 + 16) = v245;
    v160 = swift_allocObject();
    v161 = v238;
    v239 = v160;
    *(v160 + 16) = v435;
    *(v160 + 24) = v161;
    v162 = swift_allocObject();
    v163 = v239;
    v261 = v162;
    *(v162 + 16) = v436;
    *(v162 + 24) = v163;
    v262 = swift_allocObject();
    *(v262 + 16) = 112;
    v263 = swift_allocObject();
    v241 = 8;
    *(v263 + 16) = 8;
    v240 = swift_allocObject();
    *(v240 + 16) = v397;
    v164 = swift_allocObject();
    v165 = v240;
    v264 = v164;
    *(v164 + 16) = v437;
    *(v164 + 24) = v165;
    v265 = swift_allocObject();
    *(v265 + 16) = 37;
    v266 = swift_allocObject();
    *(v266 + 16) = v241;
    v166 = swift_allocObject();
    v167 = v242;
    v243 = v166;
    *(v166 + 16) = v438;
    *(v166 + 24) = v167;
    v168 = swift_allocObject();
    v169 = v243;
    v267 = v168;
    *(v168 + 16) = v439;
    *(v168 + 24) = v169;
    v268 = swift_allocObject();
    *(v268 + 16) = 0;
    v269 = swift_allocObject();
    *(v269 + 16) = v245;
    v170 = swift_allocObject();
    v171 = v248;
    v249 = v170;
    *(v170 + 16) = v440;
    *(v170 + 24) = v171;
    v172 = swift_allocObject();
    v173 = v249;
    v271 = v172;
    *(v172 + 16) = v441;
    *(v172 + 24) = v173;
    v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v270 = sub_1B0E46A48();
    v272 = v174;

    v175 = v250;
    v176 = v272;
    *v272 = v442;
    v176[1] = v175;

    v177 = v251;
    v178 = v272;
    v272[2] = v443;
    v178[3] = v177;

    v179 = v252;
    v180 = v272;
    v272[4] = v444;
    v180[5] = v179;

    v181 = v253;
    v182 = v272;
    v272[6] = v445;
    v182[7] = v181;

    v183 = v254;
    v184 = v272;
    v272[8] = v446;
    v184[9] = v183;

    v185 = v255;
    v186 = v272;
    v272[10] = v447;
    v186[11] = v185;

    v187 = v256;
    v188 = v272;
    v272[12] = v448;
    v188[13] = v187;

    v189 = v257;
    v190 = v272;
    v272[14] = v449;
    v190[15] = v189;

    v191 = v258;
    v192 = v272;
    v272[16] = v450;
    v192[17] = v191;

    v193 = v259;
    v194 = v272;
    v272[18] = v451;
    v194[19] = v193;

    v195 = v260;
    v196 = v272;
    v272[20] = v452;
    v196[21] = v195;

    v197 = v261;
    v198 = v272;
    v272[22] = v453;
    v198[23] = v197;

    v199 = v262;
    v200 = v272;
    v272[24] = v454;
    v200[25] = v199;

    v201 = v263;
    v202 = v272;
    v272[26] = v455;
    v202[27] = v201;

    v203 = v264;
    v204 = v272;
    v272[28] = v456;
    v204[29] = v203;

    v205 = v265;
    v206 = v272;
    v272[30] = v457;
    v206[31] = v205;

    v207 = v266;
    v208 = v272;
    v272[32] = v458;
    v208[33] = v207;

    v209 = v267;
    v210 = v272;
    v272[34] = v459;
    v210[35] = v209;

    v211 = v268;
    v212 = v272;
    v272[36] = v460;
    v212[37] = v211;

    v213 = v269;
    v214 = v272;
    v272[38] = v461;
    v214[39] = v213;

    v215 = v271;
    v216 = v272;
    v272[40] = v462;
    v216[41] = v215;
    sub_1B0394964();

    if (os_log_type_enabled(v274, v275))
    {
      v217 = v463;
      v219 = sub_1B0E45D78();
      v218[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v220 = sub_1B03949A8(0);
      v221 = sub_1B03949A8(1);
      v222 = &v525;
      v525 = v219;
      v223 = &v524;
      v524 = v220;
      v224 = &v523;
      v523 = v221;
      sub_1B0394A48(3, &v525);
      sub_1B0394A48(7, v222);
      v521 = v442;
      v522 = v250;
      sub_1B03949FC(&v521, v222, v223, v224);
      v225 = v217;
      if (v217)
      {

        __break(1u);
      }

      else
      {
        v521 = v443;
        v522 = v251;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[19] = 0;
        v521 = v444;
        v522 = v252;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[18] = 0;
        v521 = v445;
        v522 = v253;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[17] = 0;
        v521 = v446;
        v522 = v254;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[16] = 0;
        v521 = v447;
        v522 = v255;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[15] = 0;
        v521 = v448;
        v522 = v256;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[14] = 0;
        v521 = v449;
        v522 = v257;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[13] = 0;
        v521 = v450;
        v522 = v258;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[12] = 0;
        v521 = v451;
        v522 = v259;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[11] = 0;
        v521 = v452;
        v522 = v260;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[10] = 0;
        v521 = v453;
        v522 = v261;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[9] = 0;
        v521 = v454;
        v522 = v262;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[8] = 0;
        v521 = v455;
        v522 = v263;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[7] = 0;
        v521 = v456;
        v522 = v264;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[6] = 0;
        v521 = v457;
        v522 = v265;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[5] = 0;
        v521 = v458;
        v522 = v266;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[4] = 0;
        v521 = v459;
        v522 = v267;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[3] = 0;
        v521 = v460;
        v522 = v268;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[2] = 0;
        v521 = v461;
        v522 = v269;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        v218[1] = 0;
        v521 = v462;
        v522 = v271;
        sub_1B03949FC(&v521, &v525, &v524, &v523);
        _os_log_impl(&dword_1B0389000, v274, v275, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] No in-progress download for UID %u.", v219, 0x31u);
        sub_1B03998A8(v220);
        sub_1B03998A8(v221);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v274);
    (*(v472 + 8))(v475, v471);
    (*(v487 + 56))(v384, 1, 2, v486);
  }

  else
  {
    v381 = v504;
    v382 = v505;
    v383 = v506;
    v379 = v506;
    v378 = v505;
    v377 = v504;
    v518 = v504;
    v519 = v505;
    v380 = 1;
    v520 = v506 & 1;
    v366 = &v517;
    v370 = 32;
    v371 = 0;
    swift_beginAccess();
    v367 = *(v385 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    sub_1B08AD370(v377, v378, v379 & 1);
    v373 = &unk_1F26DB2D8;
    sub_1B0E44798();
    v369 = v516[5];
    v368 = v516[3];

    sub_1B07735E0(v480 & 1, v481, v485);

    sub_1B07AC53C(v377, v378, v379 & 1);
    v372 = v516;
    swift_beginAccess();
    v374 = *(v385 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    sub_1B08AD370(v377, v378, v379 & 1);
    sub_1B0E44798();
    v376 = v515[3];
    v375 = v515[1];

    sub_1B0394868();
    sub_1B076CC6C(v482);

    sub_1B07AC53C(v377, v378, v379 & 1);
    if ((*(v487 + 48))(v479, v380, v486) == 1)
    {
      v31 = v477;
      sub_1B08BE984(v479);
      (*(v472 + 16))(v31, v485, v471);
      sub_1B074B69C(v485, v470);
      sub_1B074B69C(v470, v468);
      sub_1B074E41C(v470, v466);
      v32 = (v468 + *(v464 + 20));
      v308 = *v32;
      v309 = *(v32 + 1);
      v310 = *(v32 + 1);
      v311 = *(v32 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v468);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v307 = 36;
      v331 = 7;
      v33 = swift_allocObject();
      v34 = v309;
      v35 = v310;
      v36 = v311;
      v316 = v33;
      *(v33 + 16) = v308;
      *(v33 + 20) = v34;
      *(v33 + 24) = v35;
      *(v33 + 32) = v36;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v37 = swift_allocObject();
      v38 = v309;
      v39 = v310;
      v40 = v311;
      v306 = v37;
      *(v37 + 16) = v308;
      *(v37 + 20) = v38;
      *(v37 + 24) = v39;
      *(v37 + 32) = v40;

      v330 = 32;
      v41 = swift_allocObject();
      v42 = v306;
      v320 = v41;
      *(v41 + 16) = v386;
      *(v41 + 24) = v42;
      sub_1B0394868();
      sub_1B0394868();

      v43 = swift_allocObject();
      v44 = v309;
      v45 = v310;
      v46 = v311;
      v47 = v43;
      v48 = v466;
      v323 = v47;
      *(v47 + 16) = v308;
      *(v47 + 20) = v44;
      *(v47 + 24) = v45;
      *(v47 + 32) = v46;
      sub_1B074B764(v48);
      v313 = 20;
      v312 = swift_allocObject();
      *(v312 + 16) = v491;

      v49 = swift_allocObject();
      v50 = v312;
      v326 = v49;
      *(v49 + 16) = v387;
      *(v49 + 24) = v50;

      v314 = swift_allocObject();
      *(v314 + 16) = v481;

      v51 = swift_allocObject();
      v52 = v314;
      v332 = v51;
      *(v51 + 16) = v388;
      *(v51 + 24) = v52;

      v362 = sub_1B0E43988();
      v363 = sub_1B0E45908();
      v328 = 17;
      v335 = swift_allocObject();
      v318 = 16;
      *(v335 + 16) = 16;
      v336 = swift_allocObject();
      v325 = 4;
      *(v336 + 16) = 4;
      v53 = swift_allocObject();
      v315 = v53;
      *(v53 + 16) = v389;
      *(v53 + 24) = 0;
      v54 = swift_allocObject();
      v55 = v315;
      v337 = v54;
      *(v54 + 16) = v390;
      *(v54 + 24) = v55;
      v338 = swift_allocObject();
      *(v338 + 16) = 0;
      v339 = swift_allocObject();
      *(v339 + 16) = 1;
      v56 = swift_allocObject();
      v57 = v316;
      v317 = v56;
      *(v56 + 16) = v391;
      *(v56 + 24) = v57;
      v58 = swift_allocObject();
      v59 = v317;
      v340 = v58;
      *(v58 + 16) = v392;
      *(v58 + 24) = v59;
      v341 = swift_allocObject();
      *(v341 + 16) = v318;
      v342 = swift_allocObject();
      *(v342 + 16) = v325;
      v60 = swift_allocObject();
      v319 = v60;
      *(v60 + 16) = v393;
      *(v60 + 24) = 0;
      v61 = swift_allocObject();
      v62 = v319;
      v343 = v61;
      *(v61 + 16) = v394;
      *(v61 + 24) = v62;
      v344 = swift_allocObject();
      *(v344 + 16) = 0;
      v345 = swift_allocObject();
      *(v345 + 16) = v325;
      v63 = swift_allocObject();
      v64 = v320;
      v321 = v63;
      *(v63 + 16) = v395;
      *(v63 + 24) = v64;
      v65 = swift_allocObject();
      v66 = v321;
      v346 = v65;
      *(v65 + 16) = v396;
      *(v65 + 24) = v66;
      v347 = swift_allocObject();
      *(v347 + 16) = 112;
      v348 = swift_allocObject();
      v329 = 8;
      *(v348 + 16) = 8;
      v334 = 24;
      v322 = swift_allocObject();
      *(v322 + 16) = v397;
      v67 = swift_allocObject();
      v68 = v322;
      v349 = v67;
      *(v67 + 16) = v398;
      *(v67 + 24) = v68;
      v350 = swift_allocObject();
      *(v350 + 16) = 37;
      v351 = swift_allocObject();
      *(v351 + 16) = v329;
      v69 = swift_allocObject();
      v70 = v323;
      v324 = v69;
      *(v69 + 16) = v399;
      *(v69 + 24) = v70;
      v71 = swift_allocObject();
      v72 = v324;
      v352 = v71;
      *(v71 + 16) = v400;
      *(v71 + 24) = v72;
      v353 = swift_allocObject();
      *(v353 + 16) = 0;
      v354 = swift_allocObject();
      *(v354 + 16) = v325;
      v73 = swift_allocObject();
      v74 = v326;
      v327 = v73;
      *(v73 + 16) = v401;
      *(v73 + 24) = v74;
      v75 = swift_allocObject();
      v76 = v327;
      v355 = v75;
      *(v75 + 16) = v402;
      *(v75 + 24) = v76;
      v356 = swift_allocObject();
      *(v356 + 16) = 32;
      v357 = swift_allocObject();
      *(v357 + 16) = v329;
      v77 = swift_allocObject();
      v78 = v332;
      v333 = v77;
      *(v77 + 16) = v403;
      *(v77 + 24) = v78;
      v79 = swift_allocObject();
      v80 = v333;
      v359 = v79;
      *(v79 + 16) = v404;
      *(v79 + 24) = v80;
      v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v358 = sub_1B0E46A48();
      v360 = v81;

      v82 = v335;
      v83 = v360;
      *v360 = v405;
      v83[1] = v82;

      v84 = v336;
      v85 = v360;
      v360[2] = v406;
      v85[3] = v84;

      v86 = v337;
      v87 = v360;
      v360[4] = v407;
      v87[5] = v86;

      v88 = v338;
      v89 = v360;
      v360[6] = v408;
      v89[7] = v88;

      v90 = v339;
      v91 = v360;
      v360[8] = v409;
      v91[9] = v90;

      v92 = v340;
      v93 = v360;
      v360[10] = v410;
      v93[11] = v92;

      v94 = v341;
      v95 = v360;
      v360[12] = v411;
      v95[13] = v94;

      v96 = v342;
      v97 = v360;
      v360[14] = v412;
      v97[15] = v96;

      v98 = v343;
      v99 = v360;
      v360[16] = v413;
      v99[17] = v98;

      v100 = v344;
      v101 = v360;
      v360[18] = v414;
      v101[19] = v100;

      v102 = v345;
      v103 = v360;
      v360[20] = v415;
      v103[21] = v102;

      v104 = v346;
      v105 = v360;
      v360[22] = v416;
      v105[23] = v104;

      v106 = v347;
      v107 = v360;
      v360[24] = v417;
      v107[25] = v106;

      v108 = v348;
      v109 = v360;
      v360[26] = v418;
      v109[27] = v108;

      v110 = v349;
      v111 = v360;
      v360[28] = v419;
      v111[29] = v110;

      v112 = v350;
      v113 = v360;
      v360[30] = v420;
      v113[31] = v112;

      v114 = v351;
      v115 = v360;
      v360[32] = v421;
      v115[33] = v114;

      v116 = v352;
      v117 = v360;
      v360[34] = v422;
      v117[35] = v116;

      v118 = v353;
      v119 = v360;
      v360[36] = v423;
      v119[37] = v118;

      v120 = v354;
      v121 = v360;
      v360[38] = v424;
      v121[39] = v120;

      v122 = v355;
      v123 = v360;
      v360[40] = v425;
      v123[41] = v122;

      v124 = v356;
      v125 = v360;
      v360[42] = v426;
      v125[43] = v124;

      v126 = v357;
      v127 = v360;
      v360[44] = v427;
      v127[45] = v126;

      v128 = v359;
      v129 = v360;
      v360[46] = v428;
      v129[47] = v128;
      sub_1B0394964();

      if (os_log_type_enabled(v362, v363))
      {
        v130 = v463;
        v299 = sub_1B0E45D78();
        v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v300 = sub_1B03949A8(0);
        v301 = sub_1B03949A8(2);
        v302 = v515;
        v515[0] = v299;
        v303 = &v514;
        v514 = v300;
        v304 = &v513;
        v513 = v301;
        sub_1B0394A48(3, v515);
        sub_1B0394A48(8, v302);
        v511 = v405;
        v512 = v335;
        sub_1B03949FC(&v511, v302, v303, v304);
        v305 = v130;
        if (v130)
        {

          __break(1u);
        }

        else
        {
          v511 = v406;
          v512 = v336;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v297 = 0;
          v511 = v407;
          v512 = v337;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v296 = 0;
          v511 = v408;
          v512 = v338;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v295 = 0;
          v511 = v409;
          v512 = v339;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v294 = 0;
          v511 = v410;
          v512 = v340;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v293 = 0;
          v511 = v411;
          v512 = v341;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v292 = 0;
          v511 = v412;
          v512 = v342;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v291 = 0;
          v511 = v413;
          v512 = v343;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v290 = 0;
          v511 = v414;
          v512 = v344;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v289 = 0;
          v511 = v415;
          v512 = v345;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v288 = 0;
          v511 = v416;
          v512 = v346;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v287 = 0;
          v511 = v417;
          v512 = v347;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v286 = 0;
          v511 = v418;
          v512 = v348;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v285 = 0;
          v511 = v419;
          v512 = v349;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v284 = 0;
          v511 = v420;
          v512 = v350;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v283 = 0;
          v511 = v421;
          v512 = v351;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v282 = 0;
          v511 = v422;
          v512 = v352;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v281 = 0;
          v511 = v423;
          v512 = v353;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v280 = 0;
          v511 = v424;
          v512 = v354;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v279 = 0;
          v511 = v425;
          v512 = v355;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v278 = 0;
          v511 = v426;
          v512 = v356;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v277 = 0;
          v511 = v427;
          v512 = v357;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          v276 = 0;
          v511 = v428;
          v512 = v359;
          sub_1B03949FC(&v511, v515, &v514, &v513);
          _os_log_impl(&dword_1B0389000, v362, v363, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] In-progress message UID %u did download all segments, but still waiting for async writes (%s).", v299, 0x3Bu);
          sub_1B03998A8(v300);
          sub_1B03998A8(v301);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v362);
      (*(v472 + 8))(v477, v471);
      (*(v487 + 56))(v384, 2, 2, v486);
      sub_1B07AC53C(v377, v378, v379 & 1);
    }

    else
    {
      sub_1B07B02D8(v479, v490);
      v364 = &v508;
      v508 = v496;
      v509 = v497;
      v510 = v498;
      v365 = &v507;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29D0, &qword_1B0E9F010);
      sub_1B0E445B8();
      swift_endAccess();

      sub_1B07AFC78(v490, v384);
      (*(v487 + 56))(v384, 0, 2, v486);
      sub_1B08BED00(v490);
      sub_1B07AC53C(v377, v378, v379 & 1);
    }
  }
}

uint64_t sub_1B08B4670(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  v287 = a1;
  v288 = a2;
  v286 = a3;
  v280 = a4;
  v289 = 0;
  v236 = sub_1B074E050;
  v237 = sub_1B03F7AE0;
  v238 = sub_1B0394C30;
  v239 = sub_1B0394C24;
  v240 = sub_1B074DFFC;
  v241 = sub_1B039BA88;
  v242 = sub_1B039BB94;
  v243 = sub_1B0394C24;
  v244 = sub_1B039BBA0;
  v245 = sub_1B039BC08;
  v246 = sub_1B06BA324;
  v247 = sub_1B074E0E4;
  v248 = sub_1B039BCF8;
  v249 = sub_1B07AB020;
  v250 = sub_1B039BC08;
  v251 = sub_1B0398F5C;
  v252 = sub_1B0398F5C;
  v253 = sub_1B0399178;
  v254 = sub_1B0398F5C;
  v255 = sub_1B0398F5C;
  v256 = sub_1B039BA94;
  v257 = sub_1B0398F5C;
  v258 = sub_1B0398F5C;
  v259 = sub_1B0399178;
  v260 = sub_1B0398F5C;
  v261 = sub_1B0398F5C;
  v262 = sub_1B03991EC;
  v263 = sub_1B0398F5C;
  v264 = sub_1B0398F5C;
  v265 = sub_1B03993BC;
  v266 = sub_1B0398F5C;
  v267 = sub_1B0398F5C;
  v268 = sub_1B039BCEC;
  v269 = sub_1B0398F5C;
  v270 = sub_1B0398F5C;
  v271 = sub_1B03991EC;
  v345 = 0;
  v346 = 0;
  v344 = 0;
  v343 = 0;
  v342 = 0;
  v339 = 0;
  v340 = 0;
  v341 = 0;
  v272 = 0;
  v327 = 0;
  v328 = 0;
  v329 = 0;
  v321 = 0;
  v310 = 0;
  v294 = 0;
  v273 = _s6LoggerVMa_1();
  v274 = (*(*(v273 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](0);
  v275 = v110 - v274;
  v276 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v277 = v110 - v276;
  v278 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v279 = v110 - v278;
  v281 = sub_1B0E439A8();
  v282 = *(v281 - 8);
  v283 = v281 - 8;
  v284 = (*(v282 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v287);
  v285 = v110 - v284;
  v345 = v9;
  v346 = v10;
  v344 = v11;
  v343 = v12;
  v342 = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v286);
  v291 = v13;
  v292 = v14;
  v293 = v15;
  LODWORD(v339) = v13;
  v340 = v14;
  v341 = v15;
  v290 = &v338;
  swift_beginAccess();
  v298 = *(v4 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v296 = &v335;
  v335 = v291;
  v336 = v292;
  v337 = v293;
  v295 = type metadata accessor for InProgressMessageDownload();
  v297 = sub_1B08AC714();
  v299 = sub_1B0E44638();
  v300 = v16;
  v301 = v17;

  if (v301 != 255)
  {
    v232 = v299;
    v233 = v300;
    v234 = v301;
    v230 = v301;
    v229 = v300;
    v228 = v299;
    v327 = v299;
    v328 = v300;
    v329 = v301 & 1;
    v221 = &v326;
    v223 = 32;
    v224 = 0;
    swift_beginAccess();
    v222 = *(v235 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    sub_1B08AD370(v228, v229, v230 & 1);
    sub_1B0E44798();
    v227 = v325[5];
    v226 = v325[3];

    v225 = v325;
    swift_beginAccess();
    v231 = *(v226 + 20);
    swift_endAccess();

    sub_1B07AC53C(v228, v229, v230 & 1);
    if (v231)
    {
      v216 = &v304;
      swift_beginAccess();
      v217 = *(v235 + 16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_endAccess();
      sub_1B08AD370(v228, v229, v230 & 1);
      sub_1B0E44798();
      v218 = v303;
      v219 = v302;

      sub_1B07AC53C(v228, v229, v230 & 1);
      sub_1B07AC53C(v228, v229, v230 & 1);

      return v219;
    }

    v196 = &v324;
    v198 = 32;
    v199 = 0;
    swift_beginAccess();
    v197 = *(v235 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    sub_1B08AD370(v228, v229, v230 & 1);
    sub_1B0E44798();
    v210 = v323[5];
    v202 = v323[3];

    v200 = (v202 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
    v201 = v323;
    swift_beginAccess();
    v204 = *v200;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();

    v213 = 0;
    v203 = type metadata accessor for InProgressMessageDownload.Section();
    v208 = sub_1B07167A8();
    v206 = &type metadata for SectionSpecifier.Part;
    v205 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v209 = &v322;
    v322 = v205;
    v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29F8, &qword_1B0E9F048);
    sub_1B08BF03C();
    v211 = sub_1B0E45598();

    sub_1B07AC53C(v228, v229, v230 & 1);
    v321 = v211;
    v320 = v211;
    v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
    sub_1B07F37E8();
    sub_1B0E45728();
    v215 = v319;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = sub_1B0E46A48();
    v214 = SectionSpecifier.Part.init(arrayLiteral:)(v18);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v317 = v215;
    v318 = v214;
    if (v215)
    {
      sub_1B074E7A8(&v317, v307);
      if (v318)
      {
        v193 = &v306;
        v306 = v307[0];
        v192 = &v305;
        v305 = v318;
        v194 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v307[0], v318);
        sub_1B039E440(v192);
        sub_1B039E440(v193);
        sub_1B039E440(&v317);
        v195 = v194;
        goto LABEL_10;
      }

      sub_1B039E440(v307);
    }

    else if (!v318)
    {
      sub_1B039E440(&v317);
      v195 = 1;
LABEL_10:
      v191 = v195;

      if (v191)
      {
        v187 = v308;
        swift_beginAccess();
        v188 = *(v235 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        swift_endAccess();
        sub_1B08AD370(v228, v229, v230 & 1);
        sub_1B0E44798();
        v189 = v307[3];
        v190 = v307[1];

        sub_1B07AC53C(v228, v229, v230 & 1);

        sub_1B07AC53C(v228, v229, v230 & 1);

        return v190;
      }

      else
      {
        v176 = &v314;
        v180 = 32;
        v181 = 0;
        swift_beginAccess();
        v177 = *(v235 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        swift_endAccess();
        sub_1B08AD370(v228, v229, v230 & 1);
        sub_1B0E44798();
        v178 = v313[5];
        v179 = v313[3];

        v182 = (v179 + 24);
        v183 = v313;
        swift_beginAccess();
        v184 = v315;
        v185 = 177;
        memcpy(v315, v182, 0xB1uLL);
        sub_1B075DC38(v315, v312);
        swift_endAccess();
        v186 = v316;
        memcpy(v316, v184, v185);
        v19 = sub_1B075FACC(v186);
        if (v19 == 1)
        {

          sub_1B07AC53C(v228, v229, v230 & 1);

          sub_1B07AC53C(v228, v229, v230 & 1);

          return v294;
        }

        else
        {
          memcpy(__dst, v316, sizeof(__dst));

          sub_1B07AC53C(v228, v229, v230 & 1);
          v20 = BodyStructure.partsForWatch()();
          v173 = v311;
          v311[0] = v20;
          v311[1] = v21;
          v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26E0, &qword_1B0E9C688);
          sub_1B07F22F8();
          v174 = &type metadata for SectionSpecifier.Part;
          v175 = sub_1B0E45598();
          v310 = v175;
          if (sub_1B0E45538())
          {
            v168 = &v309;
            swift_beginAccess();
            v169 = *(v235 + 16);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            swift_endAccess();
            sub_1B08AD370(v228, v229, v230 & 1);
            sub_1B0E44798();
            v170 = v308[5];
            v171 = v308[3];

            sub_1B07AC53C(v228, v229, v230 & 1);

            sub_1B075E648(v316);

            sub_1B07AC53C(v228, v229, v230 & 1);

            return v171;
          }

          else
          {

            sub_1B075E648(v316);

            sub_1B07AC53C(v228, v229, v230 & 1);

            return v294;
          }
        }
      }
    }

    sub_1B07F22C0(&v317);
    v195 = 0;
    goto LABEL_10;
  }

  (*(v282 + 16))(v285, v280, v281);
  sub_1B074B69C(v280, v279);
  sub_1B074B69C(v279, v277);
  sub_1B074E41C(v279, v275);
  v22 = (v277 + *(v273 + 20));
  v120 = *v22;
  v121 = *(v22 + 1);
  v122 = *(v22 + 1);
  v123 = *(v22 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v277);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v119 = 36;
  v139 = 7;
  v23 = swift_allocObject();
  v24 = v121;
  v25 = v122;
  v26 = v123;
  v126 = v23;
  *(v23 + 16) = v120;
  *(v23 + 20) = v24;
  *(v23 + 24) = v25;
  *(v23 + 32) = v26;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27 = swift_allocObject();
  v28 = v121;
  v29 = v122;
  v30 = v123;
  v118 = v27;
  *(v27 + 16) = v120;
  *(v27 + 20) = v28;
  *(v27 + 24) = v29;
  *(v27 + 32) = v30;

  v138 = 32;
  v31 = swift_allocObject();
  v32 = v118;
  v130 = v31;
  *(v31 + 16) = v236;
  *(v31 + 24) = v32;
  sub_1B0394868();
  sub_1B0394868();

  v33 = swift_allocObject();
  v34 = v121;
  v35 = v122;
  v36 = v123;
  v37 = v33;
  v38 = v275;
  v134 = v37;
  *(v37 + 16) = v120;
  *(v37 + 20) = v34;
  *(v37 + 24) = v35;
  *(v37 + 32) = v36;
  sub_1B074B764(v38);
  v124 = swift_allocObject();
  *(v124 + 16) = v286;

  v39 = swift_allocObject();
  v40 = v124;
  v140 = v39;
  *(v39 + 16) = v237;
  *(v39 + 24) = v40;

  v166 = sub_1B0E43988();
  v167 = sub_1B0E458E8();
  v136 = 17;
  v142 = swift_allocObject();
  v128 = 16;
  *(v142 + 16) = 16;
  v143 = swift_allocObject();
  v137 = 4;
  *(v143 + 16) = 4;
  v41 = swift_allocObject();
  v125 = v41;
  *(v41 + 16) = v238;
  *(v41 + 24) = 0;
  v42 = swift_allocObject();
  v43 = v125;
  v144 = v42;
  *(v42 + 16) = v239;
  *(v42 + 24) = v43;
  v145 = swift_allocObject();
  *(v145 + 16) = 0;
  v146 = swift_allocObject();
  *(v146 + 16) = 1;
  v44 = swift_allocObject();
  v45 = v126;
  v127 = v44;
  *(v44 + 16) = v240;
  *(v44 + 24) = v45;
  v46 = swift_allocObject();
  v47 = v127;
  v147 = v46;
  *(v46 + 16) = v241;
  *(v46 + 24) = v47;
  v148 = swift_allocObject();
  *(v148 + 16) = v128;
  v149 = swift_allocObject();
  *(v149 + 16) = v137;
  v48 = swift_allocObject();
  v129 = v48;
  *(v48 + 16) = v242;
  *(v48 + 24) = 0;
  v49 = swift_allocObject();
  v50 = v129;
  v150 = v49;
  *(v49 + 16) = v243;
  *(v49 + 24) = v50;
  v151 = swift_allocObject();
  *(v151 + 16) = 0;
  v152 = swift_allocObject();
  *(v152 + 16) = v137;
  v51 = swift_allocObject();
  v52 = v130;
  v131 = v51;
  *(v51 + 16) = v244;
  *(v51 + 24) = v52;
  v53 = swift_allocObject();
  v54 = v131;
  v153 = v53;
  *(v53 + 16) = v245;
  *(v53 + 24) = v54;
  v154 = swift_allocObject();
  *(v154 + 16) = 112;
  v155 = swift_allocObject();
  v133 = 8;
  *(v155 + 16) = 8;
  v132 = swift_allocObject();
  *(v132 + 16) = 0x786F626C69616DLL;
  v55 = swift_allocObject();
  v56 = v132;
  v156 = v55;
  *(v55 + 16) = v246;
  *(v55 + 24) = v56;
  v157 = swift_allocObject();
  *(v157 + 16) = 37;
  v158 = swift_allocObject();
  *(v158 + 16) = v133;
  v57 = swift_allocObject();
  v58 = v134;
  v135 = v57;
  *(v57 + 16) = v247;
  *(v57 + 24) = v58;
  v59 = swift_allocObject();
  v60 = v135;
  v159 = v59;
  *(v59 + 16) = v248;
  *(v59 + 24) = v60;
  v160 = swift_allocObject();
  *(v160 + 16) = 0;
  v161 = swift_allocObject();
  *(v161 + 16) = v137;
  v61 = swift_allocObject();
  v62 = v140;
  v141 = v61;
  *(v61 + 16) = v249;
  *(v61 + 24) = v62;
  v63 = swift_allocObject();
  v64 = v141;
  v163 = v63;
  *(v63 + 16) = v250;
  *(v63 + 24) = v64;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v162 = sub_1B0E46A48();
  v164 = v65;

  v66 = v142;
  v67 = v164;
  *v164 = v251;
  v67[1] = v66;

  v68 = v143;
  v69 = v164;
  v164[2] = v252;
  v69[3] = v68;

  v70 = v144;
  v71 = v164;
  v164[4] = v253;
  v71[5] = v70;

  v72 = v145;
  v73 = v164;
  v164[6] = v254;
  v73[7] = v72;

  v74 = v146;
  v75 = v164;
  v164[8] = v255;
  v75[9] = v74;

  v76 = v147;
  v77 = v164;
  v164[10] = v256;
  v77[11] = v76;

  v78 = v148;
  v79 = v164;
  v164[12] = v257;
  v79[13] = v78;

  v80 = v149;
  v81 = v164;
  v164[14] = v258;
  v81[15] = v80;

  v82 = v150;
  v83 = v164;
  v164[16] = v259;
  v83[17] = v82;

  v84 = v151;
  v85 = v164;
  v164[18] = v260;
  v85[19] = v84;

  v86 = v152;
  v87 = v164;
  v164[20] = v261;
  v87[21] = v86;

  v88 = v153;
  v89 = v164;
  v164[22] = v262;
  v89[23] = v88;

  v90 = v154;
  v91 = v164;
  v164[24] = v263;
  v91[25] = v90;

  v92 = v155;
  v93 = v164;
  v164[26] = v264;
  v93[27] = v92;

  v94 = v156;
  v95 = v164;
  v164[28] = v265;
  v95[29] = v94;

  v96 = v157;
  v97 = v164;
  v164[30] = v266;
  v97[31] = v96;

  v98 = v158;
  v99 = v164;
  v164[32] = v267;
  v99[33] = v98;

  v100 = v159;
  v101 = v164;
  v164[34] = v268;
  v101[35] = v100;

  v102 = v160;
  v103 = v164;
  v164[36] = v269;
  v103[37] = v102;

  v104 = v161;
  v105 = v164;
  v164[38] = v270;
  v105[39] = v104;

  v106 = v163;
  v107 = v164;
  v164[40] = v271;
  v107[41] = v106;
  sub_1B0394964();

  if (os_log_type_enabled(v166, v167))
  {
    v108 = v272;
    v111 = sub_1B0E45D78();
    v110[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v112 = sub_1B03949A8(0);
    v113 = sub_1B03949A8(1);
    v114 = &v334;
    v334 = v111;
    v115 = &v333;
    v333 = v112;
    v116 = &v332;
    v332 = v113;
    sub_1B0394A48(3, &v334);
    sub_1B0394A48(7, v114);
    v330 = v251;
    v331 = v142;
    sub_1B03949FC(&v330, v114, v115, v116);
    v117 = v108;
    if (v108)
    {

      __break(1u);
    }

    else
    {
      v330 = v252;
      v331 = v143;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[18] = 0;
      v330 = v253;
      v331 = v144;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[17] = 0;
      v330 = v254;
      v331 = v145;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[16] = 0;
      v330 = v255;
      v331 = v146;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[15] = 0;
      v330 = v256;
      v331 = v147;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[14] = 0;
      v330 = v257;
      v331 = v148;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[13] = 0;
      v330 = v258;
      v331 = v149;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[12] = 0;
      v330 = v259;
      v331 = v150;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[11] = 0;
      v330 = v260;
      v331 = v151;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[10] = 0;
      v330 = v261;
      v331 = v152;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[9] = 0;
      v330 = v262;
      v331 = v153;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[8] = 0;
      v330 = v263;
      v331 = v154;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[7] = 0;
      v330 = v264;
      v331 = v155;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[6] = 0;
      v330 = v265;
      v331 = v156;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[5] = 0;
      v330 = v266;
      v331 = v157;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[4] = 0;
      v330 = v267;
      v331 = v158;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[3] = 0;
      v330 = v268;
      v331 = v159;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[2] = 0;
      v330 = v269;
      v331 = v160;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[1] = 0;
      v330 = v270;
      v331 = v161;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      v110[0] = 0;
      v330 = v271;
      v331 = v163;
      sub_1B03949FC(&v330, &v334, &v333, &v332);
      _os_log_impl(&dword_1B0389000, v166, v167, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] No in-progress download for UID %u.", v111, 0x31u);
      sub_1B03998A8(v112);
      sub_1B03998A8(v113);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v166);
  (*(v282 + 8))(v285, v281);

  return v294;
}

uint64_t sub_1B08B6774@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _DWORD *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v418 = a9;
  v533 = a1;
  v534 = a2;
  v532 = a3;
  v520 = a4;
  v521 = a5;
  v522 = a6;
  v523 = a7;
  v524 = a8;
  v529 = a10;
  v530 = a11;
  v525 = a12;
  v535 = 0;
  v420 = sub_1B074E050;
  v421 = sub_1B03F7AE0;
  v422 = sub_1B07AC984;
  v423 = sub_1B0394C30;
  v424 = sub_1B0394C24;
  v425 = sub_1B074DFFC;
  v426 = sub_1B039BA88;
  v427 = sub_1B039BB94;
  v428 = sub_1B0394C24;
  v429 = sub_1B039BBA0;
  v430 = sub_1B039BC08;
  v431 = 0x786F626C69616DLL;
  v432 = sub_1B06BA324;
  v433 = sub_1B074E0E4;
  v434 = sub_1B039BCF8;
  v435 = sub_1B07AB020;
  v436 = sub_1B039BC08;
  v437 = sub_1B03FB220;
  v438 = sub_1B039BCF8;
  v439 = sub_1B0398F5C;
  v440 = sub_1B0398F5C;
  v441 = sub_1B0399178;
  v442 = sub_1B0398F5C;
  v443 = sub_1B0398F5C;
  v444 = sub_1B039BA94;
  v445 = sub_1B0398F5C;
  v446 = sub_1B0398F5C;
  v447 = sub_1B0399178;
  v448 = sub_1B0398F5C;
  v449 = sub_1B0398F5C;
  v450 = sub_1B03991EC;
  v451 = sub_1B0398F5C;
  v452 = sub_1B0398F5C;
  v453 = sub_1B03993BC;
  v454 = sub_1B0398F5C;
  v455 = sub_1B0398F5C;
  v456 = sub_1B039BCEC;
  v457 = sub_1B0398F5C;
  v458 = sub_1B0398F5C;
  v459 = sub_1B03991EC;
  v460 = sub_1B0398F5C;
  v461 = sub_1B0398F5C;
  v462 = sub_1B039BCEC;
  v463 = sub_1B074E050;
  v464 = sub_1B03F7AE0;
  v465 = sub_1B07AD09C;
  v466 = sub_1B0394C24;
  v467 = sub_1B074DFFC;
  v468 = sub_1B039BA88;
  v469 = sub_1B0394C24;
  v470 = sub_1B039BBA0;
  v471 = sub_1B039BC08;
  v472 = sub_1B06BA324;
  v473 = sub_1B074E0E4;
  v474 = sub_1B039BCF8;
  v475 = sub_1B07AB020;
  v476 = sub_1B039BC08;
  v477 = sub_1B07AD0A4;
  v478 = sub_1B039BCF8;
  v479 = sub_1B0398F5C;
  v480 = sub_1B0398F5C;
  v481 = sub_1B0399178;
  v482 = sub_1B0398F5C;
  v483 = sub_1B0398F5C;
  v484 = sub_1B039BA94;
  v485 = sub_1B0398F5C;
  v486 = sub_1B0398F5C;
  v487 = sub_1B0399178;
  v488 = sub_1B0398F5C;
  v489 = sub_1B0398F5C;
  v490 = sub_1B03991EC;
  v491 = sub_1B0398F5C;
  v492 = sub_1B0398F5C;
  v493 = sub_1B03993BC;
  v494 = sub_1B0398F5C;
  v495 = sub_1B0398F5C;
  v496 = sub_1B039BCEC;
  v497 = sub_1B0398F5C;
  v498 = sub_1B0398F5C;
  v499 = sub_1B03991EC;
  v500 = sub_1B0398F5C;
  v501 = sub_1B0398F5C;
  v502 = sub_1B039BCEC;
  v590 = 0;
  v588 = 0;
  v589 = 0;
  v587 = 0;
  v586 = 0;
  v585 = 0;
  v583 = 0;
  v584 = 0;
  v581 = 0;
  v582 = 0;
  v580 = 0;
  v579 = 0;
  v578 = 0;
  v575 = 0;
  v576 = 0;
  v577 = 0;
  v503 = 0;
  v563 = 0;
  v564 = 0;
  v565 = 0;
  v557 = 0;
  v540 = 0;
  v504 = _s6LoggerVMa_1();
  v505 = (*(*(v504 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](0);
  v506 = v233 - v505;
  v507 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v508 = v233 - v507;
  v509 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v510 = v233 - v509;
  v511 = sub_1B0E439A8();
  v512 = *(v511 - 8);
  v513 = v511 - 8;
  v514 = (*(v512 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v511);
  v515 = v233 - v514;
  v516 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v233 - v514);
  v517 = v233 - v516;
  v518 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29F0, &unk_1B0E9F030) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v540);
  v519 = (v233 - v518);
  v526 = type metadata accessor for InProgressMessageDownload.Completed();
  v527 = *(v526 - 8);
  v528 = v526 - 8;
  v18 = (*(v527 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = MEMORY[0x1EEE9AC00](v533);
  v531 = (v233 - v20);
  v590 = v233 - v20;
  v588 = v19;
  v589 = v21;
  v587 = v22;
  v586 = v23;
  v585 = v24 & 1;
  v583 = v25;
  v584 = v26;
  v581 = v27;
  v582 = v529;
  v580 = v530;
  v579 = v28;
  v578 = v12;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v532);
  v537 = v29;
  v538 = v30;
  v539 = v31;
  LODWORD(v575) = v29;
  v576 = v30;
  v577 = v31;
  v536 = &v574;
  swift_beginAccess();
  v544 = *(v12 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v542 = &v571;
  v571 = v537;
  v572 = v538;
  v573 = v539;
  v541 = type metadata accessor for InProgressMessageDownload();
  v543 = sub_1B08AC714();
  v545 = sub_1B0E44638();
  v546 = v32;
  v547 = v33;

  if (v547 == 255)
  {
    (*(v512 + 16))(v515, v525, v511);
    sub_1B074B69C(v525, v510);
    sub_1B074B69C(v510, v508);
    sub_1B074E41C(v510, v506);
    v134 = (v508 + *(v504 + 20));
    v243 = *v134;
    v244 = *(v134 + 1);
    v245 = *(v134 + 1);
    v246 = *(v134 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v508);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v242 = 36;
    v265 = 7;
    v135 = swift_allocObject();
    v136 = v244;
    v137 = v245;
    v138 = v246;
    v250 = v135;
    *(v135 + 16) = v243;
    *(v135 + 20) = v136;
    *(v135 + 24) = v137;
    *(v135 + 32) = v138;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v139 = swift_allocObject();
    v140 = v244;
    v141 = v245;
    v142 = v246;
    v241 = v139;
    *(v139 + 16) = v243;
    *(v139 + 20) = v140;
    *(v139 + 24) = v141;
    *(v139 + 32) = v142;

    v264 = 32;
    v143 = swift_allocObject();
    v144 = v241;
    v254 = v143;
    *(v143 + 16) = v463;
    *(v143 + 24) = v144;
    sub_1B0394868();
    sub_1B0394868();

    v145 = swift_allocObject();
    v146 = v244;
    v147 = v245;
    v148 = v246;
    v149 = v145;
    v150 = v506;
    v257 = v149;
    *(v149 + 16) = v243;
    *(v149 + 20) = v146;
    *(v149 + 24) = v147;
    *(v149 + 32) = v148;
    sub_1B074B764(v150);
    v247 = swift_allocObject();
    *(v247 + 16) = v532;

    v151 = swift_allocObject();
    v152 = v247;
    v260 = v151;
    *(v151 + 16) = v464;
    *(v151 + 24) = v152;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v268 = 24;
    v248 = swift_allocObject();
    *(v248 + 16) = v520;

    v153 = swift_allocObject();
    v154 = v248;
    v266 = v153;
    *(v153 + 16) = v465;
    *(v153 + 24) = v154;

    v296 = sub_1B0E43988();
    v297 = sub_1B0E458E8();
    v262 = 17;
    v269 = swift_allocObject();
    v252 = 16;
    *(v269 + 16) = 16;
    v270 = swift_allocObject();
    v259 = 4;
    *(v270 + 16) = 4;
    v155 = swift_allocObject();
    v249 = v155;
    *(v155 + 16) = v423;
    *(v155 + 24) = 0;
    v156 = swift_allocObject();
    v157 = v249;
    v271 = v156;
    *(v156 + 16) = v466;
    *(v156 + 24) = v157;
    v272 = swift_allocObject();
    *(v272 + 16) = 0;
    v273 = swift_allocObject();
    *(v273 + 16) = 1;
    v158 = swift_allocObject();
    v159 = v250;
    v251 = v158;
    *(v158 + 16) = v467;
    *(v158 + 24) = v159;
    v160 = swift_allocObject();
    v161 = v251;
    v274 = v160;
    *(v160 + 16) = v468;
    *(v160 + 24) = v161;
    v275 = swift_allocObject();
    *(v275 + 16) = v252;
    v276 = swift_allocObject();
    *(v276 + 16) = v259;
    v162 = swift_allocObject();
    v253 = v162;
    *(v162 + 16) = v427;
    *(v162 + 24) = 0;
    v163 = swift_allocObject();
    v164 = v253;
    v277 = v163;
    *(v163 + 16) = v469;
    *(v163 + 24) = v164;
    v278 = swift_allocObject();
    *(v278 + 16) = 0;
    v279 = swift_allocObject();
    *(v279 + 16) = v259;
    v165 = swift_allocObject();
    v166 = v254;
    v255 = v165;
    *(v165 + 16) = v470;
    *(v165 + 24) = v166;
    v167 = swift_allocObject();
    v168 = v255;
    v280 = v167;
    *(v167 + 16) = v471;
    *(v167 + 24) = v168;
    v281 = swift_allocObject();
    *(v281 + 16) = 112;
    v282 = swift_allocObject();
    v263 = 8;
    *(v282 + 16) = 8;
    v256 = swift_allocObject();
    *(v256 + 16) = v431;
    v169 = swift_allocObject();
    v170 = v256;
    v283 = v169;
    *(v169 + 16) = v472;
    *(v169 + 24) = v170;
    v284 = swift_allocObject();
    *(v284 + 16) = 37;
    v285 = swift_allocObject();
    *(v285 + 16) = v263;
    v171 = swift_allocObject();
    v172 = v257;
    v258 = v171;
    *(v171 + 16) = v473;
    *(v171 + 24) = v172;
    v173 = swift_allocObject();
    v174 = v258;
    v286 = v173;
    *(v173 + 16) = v474;
    *(v173 + 24) = v174;
    v287 = swift_allocObject();
    *(v287 + 16) = 0;
    v288 = swift_allocObject();
    *(v288 + 16) = v259;
    v175 = swift_allocObject();
    v176 = v260;
    v261 = v175;
    *(v175 + 16) = v475;
    *(v175 + 24) = v176;
    v177 = swift_allocObject();
    v178 = v261;
    v289 = v177;
    *(v177 + 16) = v476;
    *(v177 + 24) = v178;
    v290 = swift_allocObject();
    *(v290 + 16) = 34;
    v291 = swift_allocObject();
    *(v291 + 16) = v263;
    v179 = swift_allocObject();
    v180 = v266;
    v267 = v179;
    *(v179 + 16) = v477;
    *(v179 + 24) = v180;
    v181 = swift_allocObject();
    v182 = v267;
    v293 = v181;
    *(v181 + 16) = v478;
    *(v181 + 24) = v182;
    v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v292 = sub_1B0E46A48();
    v294 = v183;

    v184 = v269;
    v185 = v294;
    *v294 = v479;
    v185[1] = v184;

    v186 = v270;
    v187 = v294;
    v294[2] = v480;
    v187[3] = v186;

    v188 = v271;
    v189 = v294;
    v294[4] = v481;
    v189[5] = v188;

    v190 = v272;
    v191 = v294;
    v294[6] = v482;
    v191[7] = v190;

    v192 = v273;
    v193 = v294;
    v294[8] = v483;
    v193[9] = v192;

    v194 = v274;
    v195 = v294;
    v294[10] = v484;
    v195[11] = v194;

    v196 = v275;
    v197 = v294;
    v294[12] = v485;
    v197[13] = v196;

    v198 = v276;
    v199 = v294;
    v294[14] = v486;
    v199[15] = v198;

    v200 = v277;
    v201 = v294;
    v294[16] = v487;
    v201[17] = v200;

    v202 = v278;
    v203 = v294;
    v294[18] = v488;
    v203[19] = v202;

    v204 = v279;
    v205 = v294;
    v294[20] = v489;
    v205[21] = v204;

    v206 = v280;
    v207 = v294;
    v294[22] = v490;
    v207[23] = v206;

    v208 = v281;
    v209 = v294;
    v294[24] = v491;
    v209[25] = v208;

    v210 = v282;
    v211 = v294;
    v294[26] = v492;
    v211[27] = v210;

    v212 = v283;
    v213 = v294;
    v294[28] = v493;
    v213[29] = v212;

    v214 = v284;
    v215 = v294;
    v294[30] = v494;
    v215[31] = v214;

    v216 = v285;
    v217 = v294;
    v294[32] = v495;
    v217[33] = v216;

    v218 = v286;
    v219 = v294;
    v294[34] = v496;
    v219[35] = v218;

    v220 = v287;
    v221 = v294;
    v294[36] = v497;
    v221[37] = v220;

    v222 = v288;
    v223 = v294;
    v294[38] = v498;
    v223[39] = v222;

    v224 = v289;
    v225 = v294;
    v294[40] = v499;
    v225[41] = v224;

    v226 = v290;
    v227 = v294;
    v294[42] = v500;
    v227[43] = v226;

    v228 = v291;
    v229 = v294;
    v294[44] = v501;
    v229[45] = v228;

    v230 = v293;
    v231 = v294;
    v294[46] = v502;
    v231[47] = v230;
    sub_1B0394964();

    if (os_log_type_enabled(v296, v297))
    {
      v232 = v503;
      v234 = sub_1B0E45D78();
      v233[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v235 = sub_1B03949A8(0);
      v236 = sub_1B03949A8(2);
      v237 = &v570;
      v570 = v234;
      v238 = &v569;
      v569 = v235;
      v239 = &v568;
      v568 = v236;
      sub_1B0394A48(3, &v570);
      sub_1B0394A48(8, v237);
      v566 = v479;
      v567 = v269;
      sub_1B03949FC(&v566, v237, v238, v239);
      v240 = v232;
      if (v232)
      {

        __break(1u);
      }

      else
      {
        v566 = v480;
        v567 = v270;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[21] = 0;
        v566 = v481;
        v567 = v271;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[20] = 0;
        v566 = v482;
        v567 = v272;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[19] = 0;
        v566 = v483;
        v567 = v273;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[18] = 0;
        v566 = v484;
        v567 = v274;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[17] = 0;
        v566 = v485;
        v567 = v275;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[16] = 0;
        v566 = v486;
        v567 = v276;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[15] = 0;
        v566 = v487;
        v567 = v277;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[14] = 0;
        v566 = v488;
        v567 = v278;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[13] = 0;
        v566 = v489;
        v567 = v279;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[12] = 0;
        v566 = v490;
        v567 = v280;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[11] = 0;
        v566 = v491;
        v567 = v281;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[10] = 0;
        v566 = v492;
        v567 = v282;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[9] = 0;
        v566 = v493;
        v567 = v283;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[8] = 0;
        v566 = v494;
        v567 = v284;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[7] = 0;
        v566 = v495;
        v567 = v285;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[6] = 0;
        v566 = v496;
        v567 = v286;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[5] = 0;
        v566 = v497;
        v567 = v287;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[4] = 0;
        v566 = v498;
        v567 = v288;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[3] = 0;
        v566 = v499;
        v567 = v289;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[2] = 0;
        v566 = v500;
        v567 = v290;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[1] = 0;
        v566 = v501;
        v567 = v291;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        v233[0] = 0;
        v566 = v502;
        v567 = v293;
        sub_1B03949FC(&v566, &v570, &v569, &v568);
        _os_log_impl(&dword_1B0389000, v296, v297, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] No in-progress download for completed attachment download UID %u, part [[%{public}s]].", v234, 0x3Bu);
        sub_1B03998A8(v235);
        sub_1B03998A8(v236);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v296);
    (*(v512 + 8))(v515, v511);
    (*(v527 + 56))(v418, 1, 1, v526);
  }

  else
  {
    v415 = v545;
    v416 = v546;
    v417 = v547;
    v413 = v547;
    v412 = v546;
    v411 = v545;
    v563 = v545;
    v564 = v546;
    v414 = 1;
    v565 = v547 & 1;
    v400 = &v562;
    v404 = 32;
    v405 = 0;
    swift_beginAccess();
    v401 = *(v419 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    sub_1B08AD370(v411, v412, v413 & 1);
    v407 = &unk_1F26DB2D8;
    sub_1B0E44798();
    v403 = v561[5];
    v402 = v561[3];

    sub_1B079217C(v532);

    sub_1B07AC53C(v411, v412, v413 & 1);
    v406 = v561;
    swift_beginAccess();
    v408 = *(v419 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    sub_1B08AD370(v411, v412, v413 & 1);
    sub_1B0E44798();
    v410 = v560[5];
    v409 = v560[3];

    sub_1B0394868();
    sub_1B076CC6C(v522);

    sub_1B07AC53C(v411, v412, v413 & 1);
    if ((*(v527 + 48))(v519, v414, v526) == 1)
    {
      sub_1B08BE984(v519);
      v391 = v560;
      v395 = 32;
      v396 = 0;
      swift_beginAccess();
      v392 = *(v419 + 16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_endAccess();
      sub_1B08AD370(v411, v412, v413 & 1);
      sub_1B0E44798();
      v393 = v559;
      v394 = v558;

      v397 = v394 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID;
      swift_beginAccess();
      if (*v397 == 2)
      {
        swift_endAccess();

        sub_1B07AC53C(v411, v412, v413 & 1);
        v390 = 0x100000000;
      }

      else
      {
        v389 = *(v397 + 4);
        swift_endAccess();

        sub_1B07AC53C(v411, v412, v413 & 1);
        v390 = v389;
      }

      v388 = v390;
      if ((v390 & 0x100000000) == 0)
      {
        v387 = v388;
        v336 = v388;
        v557 = v388;
        (*(v512 + 16))(v517, v525, v511);
        sub_1B074B69C(v525, v510);
        sub_1B074B69C(v510, v508);
        sub_1B074E41C(v510, v506);
        v35 = (v508 + *(v504 + 20));
        v330 = *v35;
        v331 = *(v35 + 1);
        v332 = *(v35 + 1);
        v333 = *(v35 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v508);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v329 = 36;
        v354 = 7;
        v36 = swift_allocObject();
        v37 = v331;
        v38 = v332;
        v39 = v333;
        v339 = v36;
        *(v36 + 16) = v330;
        *(v36 + 20) = v37;
        *(v36 + 24) = v38;
        *(v36 + 32) = v39;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v40 = swift_allocObject();
        v41 = v331;
        v42 = v332;
        v43 = v333;
        v328 = v40;
        *(v40 + 16) = v330;
        *(v40 + 20) = v41;
        *(v40 + 24) = v42;
        *(v40 + 32) = v43;

        v353 = 32;
        v44 = swift_allocObject();
        v45 = v328;
        v343 = v44;
        *(v44 + 16) = v420;
        *(v44 + 24) = v45;
        sub_1B0394868();
        sub_1B0394868();

        v46 = swift_allocObject();
        v47 = v331;
        v48 = v332;
        v49 = v333;
        v50 = v46;
        v51 = v506;
        v346 = v50;
        *(v50 + 16) = v330;
        *(v50 + 20) = v47;
        *(v50 + 24) = v48;
        *(v50 + 32) = v49;
        sub_1B074B764(v51);
        v335 = 20;
        v334 = swift_allocObject();
        *(v334 + 16) = v532;

        v52 = swift_allocObject();
        v53 = v334;
        v349 = v52;
        *(v52 + 16) = v421;
        *(v52 + 24) = v53;

        v337 = swift_allocObject();
        *(v337 + 16) = v336;

        v54 = swift_allocObject();
        v55 = v337;
        v355 = v54;
        *(v54 + 16) = v422;
        *(v54 + 24) = v55;

        v385 = sub_1B0E43988();
        v386 = sub_1B0E45908();
        v351 = 17;
        v358 = swift_allocObject();
        v341 = 16;
        *(v358 + 16) = 16;
        v359 = swift_allocObject();
        v348 = 4;
        *(v359 + 16) = 4;
        v56 = swift_allocObject();
        v338 = v56;
        *(v56 + 16) = v423;
        *(v56 + 24) = 0;
        v57 = swift_allocObject();
        v58 = v338;
        v360 = v57;
        *(v57 + 16) = v424;
        *(v57 + 24) = v58;
        v361 = swift_allocObject();
        *(v361 + 16) = 0;
        v362 = swift_allocObject();
        *(v362 + 16) = 1;
        v59 = swift_allocObject();
        v60 = v339;
        v340 = v59;
        *(v59 + 16) = v425;
        *(v59 + 24) = v60;
        v61 = swift_allocObject();
        v62 = v340;
        v363 = v61;
        *(v61 + 16) = v426;
        *(v61 + 24) = v62;
        v364 = swift_allocObject();
        *(v364 + 16) = v341;
        v365 = swift_allocObject();
        *(v365 + 16) = v348;
        v63 = swift_allocObject();
        v342 = v63;
        *(v63 + 16) = v427;
        *(v63 + 24) = 0;
        v64 = swift_allocObject();
        v65 = v342;
        v366 = v64;
        *(v64 + 16) = v428;
        *(v64 + 24) = v65;
        v367 = swift_allocObject();
        *(v367 + 16) = 0;
        v368 = swift_allocObject();
        *(v368 + 16) = v348;
        v66 = swift_allocObject();
        v67 = v343;
        v344 = v66;
        *(v66 + 16) = v429;
        *(v66 + 24) = v67;
        v68 = swift_allocObject();
        v69 = v344;
        v369 = v68;
        *(v68 + 16) = v430;
        *(v68 + 24) = v69;
        v370 = swift_allocObject();
        *(v370 + 16) = 112;
        v371 = swift_allocObject();
        v352 = 8;
        *(v371 + 16) = 8;
        v357 = 24;
        v345 = swift_allocObject();
        *(v345 + 16) = v431;
        v70 = swift_allocObject();
        v71 = v345;
        v372 = v70;
        *(v70 + 16) = v432;
        *(v70 + 24) = v71;
        v373 = swift_allocObject();
        *(v373 + 16) = 37;
        v374 = swift_allocObject();
        *(v374 + 16) = v352;
        v72 = swift_allocObject();
        v73 = v346;
        v347 = v72;
        *(v72 + 16) = v433;
        *(v72 + 24) = v73;
        v74 = swift_allocObject();
        v75 = v347;
        v375 = v74;
        *(v74 + 16) = v434;
        *(v74 + 24) = v75;
        v376 = swift_allocObject();
        *(v376 + 16) = 0;
        v377 = swift_allocObject();
        *(v377 + 16) = v348;
        v76 = swift_allocObject();
        v77 = v349;
        v350 = v76;
        *(v76 + 16) = v435;
        *(v76 + 24) = v77;
        v78 = swift_allocObject();
        v79 = v350;
        v378 = v78;
        *(v78 + 16) = v436;
        *(v78 + 24) = v79;
        v379 = swift_allocObject();
        *(v379 + 16) = 32;
        v380 = swift_allocObject();
        *(v380 + 16) = v352;
        v80 = swift_allocObject();
        v81 = v355;
        v356 = v80;
        *(v80 + 16) = v437;
        *(v80 + 24) = v81;
        v82 = swift_allocObject();
        v83 = v356;
        v382 = v82;
        *(v82 + 16) = v438;
        *(v82 + 24) = v83;
        v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v381 = sub_1B0E46A48();
        v383 = v84;

        v85 = v358;
        v86 = v383;
        *v383 = v439;
        v86[1] = v85;

        v87 = v359;
        v88 = v383;
        v383[2] = v440;
        v88[3] = v87;

        v89 = v360;
        v90 = v383;
        v383[4] = v441;
        v90[5] = v89;

        v91 = v361;
        v92 = v383;
        v383[6] = v442;
        v92[7] = v91;

        v93 = v362;
        v94 = v383;
        v383[8] = v443;
        v94[9] = v93;

        v95 = v363;
        v96 = v383;
        v383[10] = v444;
        v96[11] = v95;

        v97 = v364;
        v98 = v383;
        v383[12] = v445;
        v98[13] = v97;

        v99 = v365;
        v100 = v383;
        v383[14] = v446;
        v100[15] = v99;

        v101 = v366;
        v102 = v383;
        v383[16] = v447;
        v102[17] = v101;

        v103 = v367;
        v104 = v383;
        v383[18] = v448;
        v104[19] = v103;

        v105 = v368;
        v106 = v383;
        v383[20] = v449;
        v106[21] = v105;

        v107 = v369;
        v108 = v383;
        v383[22] = v450;
        v108[23] = v107;

        v109 = v370;
        v110 = v383;
        v383[24] = v451;
        v110[25] = v109;

        v111 = v371;
        v112 = v383;
        v383[26] = v452;
        v112[27] = v111;

        v113 = v372;
        v114 = v383;
        v383[28] = v453;
        v114[29] = v113;

        v115 = v373;
        v116 = v383;
        v383[30] = v454;
        v116[31] = v115;

        v117 = v374;
        v118 = v383;
        v383[32] = v455;
        v118[33] = v117;

        v119 = v375;
        v120 = v383;
        v383[34] = v456;
        v120[35] = v119;

        v121 = v376;
        v122 = v383;
        v383[36] = v457;
        v122[37] = v121;

        v123 = v377;
        v124 = v383;
        v383[38] = v458;
        v124[39] = v123;

        v125 = v378;
        v126 = v383;
        v383[40] = v459;
        v126[41] = v125;

        v127 = v379;
        v128 = v383;
        v383[42] = v460;
        v128[43] = v127;

        v129 = v380;
        v130 = v383;
        v383[44] = v461;
        v130[45] = v129;

        v131 = v382;
        v132 = v383;
        v383[46] = v462;
        v132[47] = v131;
        sub_1B0394964();

        if (os_log_type_enabled(v385, v386))
        {
          v133 = v503;
          v321 = sub_1B0E45D78();
          v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v322 = sub_1B03949A8(0);
          v323 = sub_1B03949A8(2);
          v324 = &v556;
          v556 = v321;
          v325 = &v555;
          v555 = v322;
          v326 = &v554;
          v554 = v323;
          sub_1B0394A48(3, &v556);
          sub_1B0394A48(8, v324);
          v552 = v439;
          v553 = v358;
          sub_1B03949FC(&v552, v324, v325, v326);
          v327 = v133;
          if (v133)
          {

            __break(1u);
          }

          else
          {
            v552 = v440;
            v553 = v359;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v319 = 0;
            v552 = v441;
            v553 = v360;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v318 = 0;
            v552 = v442;
            v553 = v361;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v317 = 0;
            v552 = v443;
            v553 = v362;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v316 = 0;
            v552 = v444;
            v553 = v363;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v315 = 0;
            v552 = v445;
            v553 = v364;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v314 = 0;
            v552 = v446;
            v553 = v365;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v313 = 0;
            v552 = v447;
            v553 = v366;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v312 = 0;
            v552 = v448;
            v553 = v367;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v311 = 0;
            v552 = v449;
            v553 = v368;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v310 = 0;
            v552 = v450;
            v553 = v369;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v309 = 0;
            v552 = v451;
            v553 = v370;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v308 = 0;
            v552 = v452;
            v553 = v371;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v307 = 0;
            v552 = v453;
            v553 = v372;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v306 = 0;
            v552 = v454;
            v553 = v373;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v305 = 0;
            v552 = v455;
            v553 = v374;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v304 = 0;
            v552 = v456;
            v553 = v375;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v303 = 0;
            v552 = v457;
            v553 = v376;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v302 = 0;
            v552 = v458;
            v553 = v377;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v301 = 0;
            v552 = v459;
            v553 = v378;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v300 = 0;
            v552 = v460;
            v553 = v379;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v299 = 0;
            v552 = v461;
            v553 = v380;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            v298 = 0;
            v552 = v462;
            v553 = v382;
            sub_1B03949FC(&v552, &v556, &v555, &v554);
            _os_log_impl(&dword_1B0389000, v385, v386, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] In-progress message UID %u is still waiting for async writes (%s).", v321, 0x3Bu);
            sub_1B03998A8(v322);
            sub_1B03998A8(v323);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v385);
        (*(v512 + 8))(v517, v511);
      }

      (*(v527 + 56))(v418, 1, 1, v526);
      sub_1B07AC53C(v411, v412, v413 & 1);
    }

    else
    {
      sub_1B07B02D8(v519, v531);
      v398 = &v549;
      v549 = v537;
      v550 = v538;
      v551 = v539;
      v399 = &v548;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29D0, &qword_1B0E9F010);
      sub_1B0E445B8();
      swift_endAccess();

      sub_1B07AFC78(v531, v418);
      (*(v527 + 56))(v418, 0, 1, v526);
      sub_1B08BED00(v531);
      sub_1B07AC53C(v411, v412, v413 & 1);
    }
  }
}

uint64_t sub_1B08B9FE0(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = a1;
  v20 = 0;
  v37 = 0;
  v39 = a1;
  v38 = a2;
  v19 = &v36;
  swift_beginAccess();
  v23 = *(v2 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31 = v21;
  v32 = v22;
  v28 = sub_1B08BF0C4;
  v29 = &v30;
  v24 = type metadata accessor for InProgressMessageDownload();
  v25 = sub_1B08AC714();
  v26 = 0;
  v27 = sub_1B0E44688();
  v10[2] = v27;

  v10[3] = &v35;
  v11 = 0;
  swift_beginAccess();
  v3 = *(v18 + 16);
  *(v18 + 16) = v27;

  swift_endAccess();
  v13 = 32;
  v10[4] = &v34;
  swift_beginAccess();
  v15 = *(v18 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = v10;
  v4 = MEMORY[0x1EEE9AC00](v11);
  v9[2] = v21;
  v14 = v9;
  MEMORY[0x1EEE9AC00](v4);
  v16 = v8;
  v8[2] = sub_1B08BF100;
  v8[3] = v5;
  type metadata accessor for MessagesBeingDownloaded.MessageHeader();
  v17 = sub_1B0E44688();
  v10[0] = v17;

  v10[1] = &v33;
  swift_beginAccess();
  v6 = *(v18 + 24);
  *(v18 + 24) = v10[0];

  return swift_endAccess();
}

uint64_t sub_1B08BA3A0(unsigned int a1, uint64_t a2, int a3, uint64_t a4)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v10 = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = a2;
  v9 = a3;
  sub_1B0451F2C();
  v7 = sub_1B0E45528();
  sub_1B039E440(&v8);
  return v7 & 1;
}

uint64_t sub_1B08BA444(unsigned int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v411 = a1;
  v410 = a2;
  v408 = a3;
  v406 = a4;
  v409 = a5;
  v407 = a6;
  v324 = sub_1B039BBE8;
  v325 = sub_1B08BFC40;
  v326 = sub_1B08BFC50;
  v327 = sub_1B0394C30;
  v328 = sub_1B0394C24;
  v329 = sub_1B039BA2C;
  v330 = sub_1B039BA88;
  v331 = sub_1B039BB94;
  v332 = sub_1B0394C24;
  v333 = sub_1B039BBA0;
  v334 = sub_1B039BC08;
  v335 = 0x786F626C69616DLL;
  v336 = sub_1B06BA324;
  v337 = sub_1B06E395C;
  v338 = sub_1B039BCF8;
  v339 = sub_1B07AB020;
  v340 = sub_1B039BC08;
  v341 = sub_1B0398F5C;
  v342 = sub_1B0398F5C;
  v343 = sub_1B0399178;
  v344 = sub_1B0398F5C;
  v345 = sub_1B0398F5C;
  v346 = sub_1B039BA94;
  v347 = sub_1B0398F5C;
  v348 = sub_1B0398F5C;
  v349 = sub_1B0399178;
  v350 = sub_1B0398F5C;
  v351 = sub_1B0398F5C;
  v352 = sub_1B03991EC;
  v353 = sub_1B0398F5C;
  v354 = sub_1B0398F5C;
  v355 = sub_1B03993BC;
  v356 = sub_1B0398F5C;
  v357 = sub_1B0398F5C;
  v358 = sub_1B039BCEC;
  v359 = sub_1B0398F5C;
  v360 = sub_1B0398F5C;
  v361 = sub_1B03991EC;
  v362 = sub_1B039BBE8;
  v363 = sub_1B08BFC40;
  v364 = sub_1B08BFC50;
  v365 = sub_1B0394C24;
  v366 = sub_1B039BA2C;
  v367 = sub_1B039BA88;
  v368 = sub_1B0394C24;
  v369 = sub_1B039BBA0;
  v370 = sub_1B039BC08;
  v371 = sub_1B06BA324;
  v372 = sub_1B06E395C;
  v373 = sub_1B039BCF8;
  v374 = sub_1B07AB020;
  v375 = sub_1B039BC08;
  v376 = sub_1B0398F5C;
  v377 = sub_1B0398F5C;
  v378 = sub_1B0399178;
  v379 = sub_1B0398F5C;
  v380 = sub_1B0398F5C;
  v381 = sub_1B039BA94;
  v382 = sub_1B0398F5C;
  v383 = sub_1B0398F5C;
  v384 = sub_1B0399178;
  v385 = sub_1B0398F5C;
  v386 = sub_1B0398F5C;
  v387 = sub_1B03991EC;
  v388 = sub_1B0398F5C;
  v389 = sub_1B0398F5C;
  v390 = sub_1B03993BC;
  v391 = sub_1B0398F5C;
  v392 = sub_1B0398F5C;
  v393 = sub_1B039BCEC;
  v394 = sub_1B0398F5C;
  v395 = sub_1B0398F5C;
  v396 = sub_1B03991EC;
  v433 = 0;
  v434 = 0;
  v435 = 0;
  v432 = 0;
  v431 = 0;
  v430 = 0;
  v397 = 0;
  v398 = 0;
  v399 = _s6LoggerVMa();
  v400 = (*(*(v399 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](0);
  v401 = v188 - v400;
  v402 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v403 = v188 - v402;
  v404 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v405 = v188 - v404;
  v412 = sub_1B0E439A8();
  v413 = *(v412 - 8);
  v414 = v412 - 8;
  v416 = *(v413 + 64);
  v415 = (v416 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v411);
  v417 = v188 - v415;
  v418 = (v416 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v419 = v188 - v418;
  LODWORD(v433) = v11;
  v434 = v12;
  v435 = v13;
  v432 = v14;
  v431 = v15;
  v430 = v16;
  if (sub_1B08BA3A0(v11, v12, v13, v15))
  {
    if (sub_1B0760F34(v407))
    {
      (*(v413 + 16))(v417, v407, v412);
      sub_1B0394784(v407, v405);
      sub_1B0394784(v405, v403);
      sub_1B03F4FD0(v405, v401);
      v102 = (v403 + *(v399 + 20));
      v196 = *v102;
      v197 = *(v102 + 1);
      sub_1B039480C(v403);
      v209 = 24;
      v217 = 7;
      v103 = swift_allocObject();
      v104 = v197;
      v203 = v103;
      *(v103 + 16) = v196;
      *(v103 + 20) = v104;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v105 = swift_allocObject();
      v106 = v197;
      v198 = v105;
      *(v105 + 16) = v196;
      *(v105 + 20) = v106;

      v216 = 32;
      v107 = swift_allocObject();
      v108 = v198;
      v207 = v107;
      *(v107 + 16) = v362;
      *(v107 + 24) = v108;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v401);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v200 = 36;
      v109 = swift_allocObject();
      v110 = v410;
      v111 = v408;
      v199 = v109;
      *(v109 + 16) = v411;
      *(v109 + 24) = v110;
      *(v109 + 32) = v111;

      v112 = swift_allocObject();
      v113 = v199;
      v212 = v112;
      *(v112 + 16) = v363;
      *(v112 + 24) = v113;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v114 = swift_allocObject();
      v115 = v410;
      v116 = v408;
      v201 = v114;
      *(v114 + 16) = v411;
      *(v114 + 24) = v115;
      *(v114 + 32) = v116;

      v117 = swift_allocObject();
      v118 = v201;
      v218 = v117;
      *(v117 + 16) = v364;
      *(v117 + 24) = v118;

      v244 = sub_1B0E43988();
      v245 = sub_1B0E45908();
      v214 = 17;
      v220 = swift_allocObject();
      v205 = 16;
      *(v220 + 16) = 16;
      v221 = swift_allocObject();
      v215 = 4;
      *(v221 + 16) = 4;
      v119 = swift_allocObject();
      v202 = v119;
      *(v119 + 16) = v327;
      *(v119 + 24) = 0;
      v120 = swift_allocObject();
      v121 = v202;
      v222 = v120;
      *(v120 + 16) = v365;
      *(v120 + 24) = v121;
      v223 = swift_allocObject();
      *(v223 + 16) = 0;
      v224 = swift_allocObject();
      *(v224 + 16) = 1;
      v122 = swift_allocObject();
      v123 = v203;
      v204 = v122;
      *(v122 + 16) = v366;
      *(v122 + 24) = v123;
      v124 = swift_allocObject();
      v125 = v204;
      v225 = v124;
      *(v124 + 16) = v367;
      *(v124 + 24) = v125;
      v226 = swift_allocObject();
      *(v226 + 16) = v205;
      v227 = swift_allocObject();
      *(v227 + 16) = v215;
      v126 = swift_allocObject();
      v206 = v126;
      *(v126 + 16) = v331;
      *(v126 + 24) = 0;
      v127 = swift_allocObject();
      v128 = v206;
      v228 = v127;
      *(v127 + 16) = v368;
      *(v127 + 24) = v128;
      v229 = swift_allocObject();
      *(v229 + 16) = 0;
      v230 = swift_allocObject();
      *(v230 + 16) = v215;
      v129 = swift_allocObject();
      v130 = v207;
      v208 = v129;
      *(v129 + 16) = v369;
      *(v129 + 24) = v130;
      v131 = swift_allocObject();
      v132 = v208;
      v231 = v131;
      *(v131 + 16) = v370;
      *(v131 + 24) = v132;
      v232 = swift_allocObject();
      *(v232 + 16) = 112;
      v233 = swift_allocObject();
      v211 = 8;
      *(v233 + 16) = 8;
      v210 = swift_allocObject();
      *(v210 + 16) = v335;
      v133 = swift_allocObject();
      v134 = v210;
      v234 = v133;
      *(v133 + 16) = v371;
      *(v133 + 24) = v134;
      v235 = swift_allocObject();
      *(v235 + 16) = 37;
      v236 = swift_allocObject();
      *(v236 + 16) = v211;
      v135 = swift_allocObject();
      v136 = v212;
      v213 = v135;
      *(v135 + 16) = v372;
      *(v135 + 24) = v136;
      v137 = swift_allocObject();
      v138 = v213;
      v237 = v137;
      *(v137 + 16) = v373;
      *(v137 + 24) = v138;
      v238 = swift_allocObject();
      *(v238 + 16) = 0;
      v239 = swift_allocObject();
      *(v239 + 16) = v215;
      v139 = swift_allocObject();
      v140 = v218;
      v219 = v139;
      *(v139 + 16) = v374;
      *(v139 + 24) = v140;
      v141 = swift_allocObject();
      v142 = v219;
      v241 = v141;
      *(v141 + 16) = v375;
      *(v141 + 24) = v142;
      v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v240 = sub_1B0E46A48();
      v242 = v143;

      v144 = v220;
      v145 = v242;
      *v242 = v376;
      v145[1] = v144;

      v146 = v221;
      v147 = v242;
      v242[2] = v377;
      v147[3] = v146;

      v148 = v222;
      v149 = v242;
      v242[4] = v378;
      v149[5] = v148;

      v150 = v223;
      v151 = v242;
      v242[6] = v379;
      v151[7] = v150;

      v152 = v224;
      v153 = v242;
      v242[8] = v380;
      v153[9] = v152;

      v154 = v225;
      v155 = v242;
      v242[10] = v381;
      v155[11] = v154;

      v156 = v226;
      v157 = v242;
      v242[12] = v382;
      v157[13] = v156;

      v158 = v227;
      v159 = v242;
      v242[14] = v383;
      v159[15] = v158;

      v160 = v228;
      v161 = v242;
      v242[16] = v384;
      v161[17] = v160;

      v162 = v229;
      v163 = v242;
      v242[18] = v385;
      v163[19] = v162;

      v164 = v230;
      v165 = v242;
      v242[20] = v386;
      v165[21] = v164;

      v166 = v231;
      v167 = v242;
      v242[22] = v387;
      v167[23] = v166;

      v168 = v232;
      v169 = v242;
      v242[24] = v388;
      v169[25] = v168;

      v170 = v233;
      v171 = v242;
      v242[26] = v389;
      v171[27] = v170;

      v172 = v234;
      v173 = v242;
      v242[28] = v390;
      v173[29] = v172;

      v174 = v235;
      v175 = v242;
      v242[30] = v391;
      v175[31] = v174;

      v176 = v236;
      v177 = v242;
      v242[32] = v392;
      v177[33] = v176;

      v178 = v237;
      v179 = v242;
      v242[34] = v393;
      v179[35] = v178;

      v180 = v238;
      v181 = v242;
      v242[36] = v394;
      v181[37] = v180;

      v182 = v239;
      v183 = v242;
      v242[38] = v395;
      v183[39] = v182;

      v184 = v241;
      v185 = v242;
      v242[40] = v396;
      v185[41] = v184;
      sub_1B0394964();

      if (os_log_type_enabled(v244, v245))
      {
        v186 = v397;
        v189 = sub_1B0E45D78();
        v188[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v190 = sub_1B03949A8(0);
        v191 = sub_1B03949A8(1);
        v192 = &v429;
        v429 = v189;
        v193 = &v428;
        v428 = v190;
        v194 = &v427;
        v427 = v191;
        sub_1B0394A48(3, &v429);
        sub_1B0394A48(7, v192);
        v425 = v376;
        v426 = v220;
        sub_1B03949FC(&v425, v192, v193, v194);
        v195 = v186;
        if (v186)
        {

          __break(1u);
        }

        else
        {
          v425 = v377;
          v426 = v221;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[19] = 0;
          v425 = v378;
          v426 = v222;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[18] = 0;
          v425 = v379;
          v426 = v223;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[17] = 0;
          v425 = v380;
          v426 = v224;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[16] = 0;
          v425 = v381;
          v426 = v225;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[15] = 0;
          v425 = v382;
          v426 = v226;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[14] = 0;
          v425 = v383;
          v426 = v227;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[13] = 0;
          v425 = v384;
          v426 = v228;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[12] = 0;
          v425 = v385;
          v426 = v229;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[11] = 0;
          v425 = v386;
          v426 = v230;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[10] = 0;
          v425 = v387;
          v426 = v231;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[9] = 0;
          v425 = v388;
          v426 = v232;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[8] = 0;
          v425 = v389;
          v426 = v233;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[7] = 0;
          v425 = v390;
          v426 = v234;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[6] = 0;
          v425 = v391;
          v426 = v235;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[5] = 0;
          v425 = v392;
          v426 = v236;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[4] = 0;
          v425 = v393;
          v426 = v237;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[3] = 0;
          v425 = v394;
          v426 = v238;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[2] = 0;
          v425 = v395;
          v426 = v239;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          v188[1] = 0;
          v425 = v396;
          v426 = v241;
          sub_1B03949FC(&v425, &v429, &v428, &v427);
          _os_log_impl(&dword_1B0389000, v244, v245, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Clearing state for in-progress download of message %u", v189, 0x31u);
          sub_1B03998A8(v190);
          sub_1B03998A8(v191);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v244);
      (*(v413 + 8))(v417, v412);
      v246 = 0;
    }

    else
    {
      (*(v413 + 16))(v419, v407, v412);
      sub_1B0394784(v407, v405);
      sub_1B0394784(v405, v403);
      sub_1B03F4FD0(v405, v401);
      v17 = (v403 + *(v399 + 20));
      v274 = *v17;
      v275 = *(v17 + 1);
      sub_1B039480C(v403);
      v287 = 24;
      v295 = 7;
      v18 = swift_allocObject();
      v19 = v275;
      v281 = v18;
      *(v18 + 16) = v274;
      *(v18 + 20) = v19;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v20 = swift_allocObject();
      v21 = v275;
      v276 = v20;
      *(v20 + 16) = v274;
      *(v20 + 20) = v21;

      v294 = 32;
      v22 = swift_allocObject();
      v23 = v276;
      v285 = v22;
      *(v22 + 16) = v324;
      *(v22 + 24) = v23;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v401);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v278 = 36;
      v24 = swift_allocObject();
      v25 = v410;
      v26 = v408;
      v277 = v24;
      *(v24 + 16) = v411;
      *(v24 + 24) = v25;
      *(v24 + 32) = v26;

      v27 = swift_allocObject();
      v28 = v277;
      v290 = v27;
      *(v27 + 16) = v325;
      *(v27 + 24) = v28;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v29 = swift_allocObject();
      v30 = v410;
      v31 = v408;
      v279 = v29;
      *(v29 + 16) = v411;
      *(v29 + 24) = v30;
      *(v29 + 32) = v31;

      v32 = swift_allocObject();
      v33 = v279;
      v296 = v32;
      *(v32 + 16) = v326;
      *(v32 + 24) = v33;

      v322 = sub_1B0E43988();
      v323 = sub_1B0E45908();
      v292 = 17;
      v298 = swift_allocObject();
      v283 = 16;
      *(v298 + 16) = 16;
      v299 = swift_allocObject();
      v293 = 4;
      *(v299 + 16) = 4;
      v34 = swift_allocObject();
      v280 = v34;
      *(v34 + 16) = v327;
      *(v34 + 24) = 0;
      v35 = swift_allocObject();
      v36 = v280;
      v300 = v35;
      *(v35 + 16) = v328;
      *(v35 + 24) = v36;
      v301 = swift_allocObject();
      *(v301 + 16) = 0;
      v302 = swift_allocObject();
      *(v302 + 16) = 1;
      v37 = swift_allocObject();
      v38 = v281;
      v282 = v37;
      *(v37 + 16) = v329;
      *(v37 + 24) = v38;
      v39 = swift_allocObject();
      v40 = v282;
      v303 = v39;
      *(v39 + 16) = v330;
      *(v39 + 24) = v40;
      v304 = swift_allocObject();
      *(v304 + 16) = v283;
      v305 = swift_allocObject();
      *(v305 + 16) = v293;
      v41 = swift_allocObject();
      v284 = v41;
      *(v41 + 16) = v331;
      *(v41 + 24) = 0;
      v42 = swift_allocObject();
      v43 = v284;
      v306 = v42;
      *(v42 + 16) = v332;
      *(v42 + 24) = v43;
      v307 = swift_allocObject();
      *(v307 + 16) = 0;
      v308 = swift_allocObject();
      *(v308 + 16) = v293;
      v44 = swift_allocObject();
      v45 = v285;
      v286 = v44;
      *(v44 + 16) = v333;
      *(v44 + 24) = v45;
      v46 = swift_allocObject();
      v47 = v286;
      v309 = v46;
      *(v46 + 16) = v334;
      *(v46 + 24) = v47;
      v310 = swift_allocObject();
      *(v310 + 16) = 112;
      v311 = swift_allocObject();
      v289 = 8;
      *(v311 + 16) = 8;
      v288 = swift_allocObject();
      *(v288 + 16) = v335;
      v48 = swift_allocObject();
      v49 = v288;
      v312 = v48;
      *(v48 + 16) = v336;
      *(v48 + 24) = v49;
      v313 = swift_allocObject();
      *(v313 + 16) = 37;
      v314 = swift_allocObject();
      *(v314 + 16) = v289;
      v50 = swift_allocObject();
      v51 = v290;
      v291 = v50;
      *(v50 + 16) = v337;
      *(v50 + 24) = v51;
      v52 = swift_allocObject();
      v53 = v291;
      v315 = v52;
      *(v52 + 16) = v338;
      *(v52 + 24) = v53;
      v316 = swift_allocObject();
      *(v316 + 16) = 0;
      v317 = swift_allocObject();
      *(v317 + 16) = v293;
      v54 = swift_allocObject();
      v55 = v296;
      v297 = v54;
      *(v54 + 16) = v339;
      *(v54 + 24) = v55;
      v56 = swift_allocObject();
      v57 = v297;
      v319 = v56;
      *(v56 + 16) = v340;
      *(v56 + 24) = v57;
      v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v318 = sub_1B0E46A48();
      v320 = v58;

      v59 = v298;
      v60 = v320;
      *v320 = v341;
      v60[1] = v59;

      v61 = v299;
      v62 = v320;
      v320[2] = v342;
      v62[3] = v61;

      v63 = v300;
      v64 = v320;
      v320[4] = v343;
      v64[5] = v63;

      v65 = v301;
      v66 = v320;
      v320[6] = v344;
      v66[7] = v65;

      v67 = v302;
      v68 = v320;
      v320[8] = v345;
      v68[9] = v67;

      v69 = v303;
      v70 = v320;
      v320[10] = v346;
      v70[11] = v69;

      v71 = v304;
      v72 = v320;
      v320[12] = v347;
      v72[13] = v71;

      v73 = v305;
      v74 = v320;
      v320[14] = v348;
      v74[15] = v73;

      v75 = v306;
      v76 = v320;
      v320[16] = v349;
      v76[17] = v75;

      v77 = v307;
      v78 = v320;
      v320[18] = v350;
      v78[19] = v77;

      v79 = v308;
      v80 = v320;
      v320[20] = v351;
      v80[21] = v79;

      v81 = v309;
      v82 = v320;
      v320[22] = v352;
      v82[23] = v81;

      v83 = v310;
      v84 = v320;
      v320[24] = v353;
      v84[25] = v83;

      v85 = v311;
      v86 = v320;
      v320[26] = v354;
      v86[27] = v85;

      v87 = v312;
      v88 = v320;
      v320[28] = v355;
      v88[29] = v87;

      v89 = v313;
      v90 = v320;
      v320[30] = v356;
      v90[31] = v89;

      v91 = v314;
      v92 = v320;
      v320[32] = v357;
      v92[33] = v91;

      v93 = v315;
      v94 = v320;
      v320[34] = v358;
      v94[35] = v93;

      v95 = v316;
      v96 = v320;
      v320[36] = v359;
      v96[37] = v95;

      v97 = v317;
      v98 = v320;
      v320[38] = v360;
      v98[39] = v97;

      v99 = v319;
      v100 = v320;
      v320[40] = v361;
      v100[41] = v99;
      sub_1B0394964();

      if (os_log_type_enabled(v322, v323))
      {
        v101 = v397;
        v267 = sub_1B0E45D78();
        v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v268 = sub_1B03949A8(0);
        v269 = sub_1B03949A8(1);
        v270 = &v424;
        v424 = v267;
        v271 = &v423;
        v423 = v268;
        v272 = &v422;
        v422 = v269;
        sub_1B0394A48(3, &v424);
        sub_1B0394A48(7, v270);
        v420 = v341;
        v421 = v298;
        sub_1B03949FC(&v420, v270, v271, v272);
        v273 = v101;
        if (v101)
        {

          __break(1u);
        }

        else
        {
          v420 = v342;
          v421 = v299;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v265 = 0;
          v420 = v343;
          v421 = v300;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v264 = 0;
          v420 = v344;
          v421 = v301;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v263 = 0;
          v420 = v345;
          v421 = v302;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v262 = 0;
          v420 = v346;
          v421 = v303;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v261 = 0;
          v420 = v347;
          v421 = v304;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v260 = 0;
          v420 = v348;
          v421 = v305;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v259 = 0;
          v420 = v349;
          v421 = v306;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v258 = 0;
          v420 = v350;
          v421 = v307;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v257 = 0;
          v420 = v351;
          v421 = v308;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v256 = 0;
          v420 = v352;
          v421 = v309;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v255 = 0;
          v420 = v353;
          v421 = v310;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v254 = 0;
          v420 = v354;
          v421 = v311;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v253 = 0;
          v420 = v355;
          v421 = v312;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v252 = 0;
          v420 = v356;
          v421 = v313;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v251 = 0;
          v420 = v357;
          v421 = v314;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v250 = 0;
          v420 = v358;
          v421 = v315;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v249 = 0;
          v420 = v359;
          v421 = v316;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v248 = 0;
          v420 = v360;
          v421 = v317;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          v247 = 0;
          v420 = v361;
          v421 = v319;
          sub_1B03949FC(&v420, &v424, &v423, &v422);
          _os_log_impl(&dword_1B0389000, v322, v323, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Keeping state for in-progress download of message %u -- active file writer(s)", v267, 0x31u);
          sub_1B03998A8(v268);
          sub_1B03998A8(v269);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v322);
      (*(v413 + 8))(v419, v412);
      v246 = 1;
    }
  }

  else
  {
    v246 = 1;
  }

  return v246 & 1;
}