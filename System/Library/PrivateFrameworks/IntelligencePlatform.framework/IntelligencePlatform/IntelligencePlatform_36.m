void sub_1ABD2EEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 16);
  v4 = *(a3 - 32);
  InferenceMessageResponseError.ServiceError<>.encode(to:)();
}

void InferenceMessageResponseError<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  v122 = v20;
  v119 = v23;
  v120 = v24;
  v117 = v25;
  v118 = v26;
  v28 = v27;
  v30 = v29;
  v32 = *(v27 + 16);
  v31 = *(v27 + 24);
  sub_1ABA9A530();
  v33 = type metadata accessor for InferenceMessageResponseError.UnknownErrorCodingKeys();
  sub_1ABA7C404();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v113 = v33;
  v112 = v34;
  v35 = sub_1ABF24FC4();
  v36 = sub_1ABA7BB64(v35);
  v115 = v37;
  v116 = v36;
  v39 = *(v38 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA7FBE0();
  v114 = v41;
  sub_1ABA9A530();
  v42 = type metadata accessor for InferenceMessageResponseError.ServerErrorCodingKeys();
  sub_1ABA9948C();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v108 = v42;
  v107 = v43;
  v111 = sub_1ABF24FC4();
  sub_1ABA7BB64(v111);
  v110 = v44;
  v46 = *(v45 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v47);
  sub_1ABA7FBE0();
  v109 = v48;
  sub_1ABA9A530();
  v49 = type metadata accessor for InferenceMessageResponseError.ServiceErrorCodingKeys();
  sub_1ABA901E8();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v102 = v49;
  v101 = v50;
  v106 = sub_1ABF24FC4();
  sub_1ABA7BB64(v106);
  v100 = v51;
  v53 = *(v52 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v54);
  sub_1ABA7FBE0();
  v103 = v55;
  v105 = type metadata accessor for InferenceMessageResponseError.ServiceError();
  sub_1ABA7BB64(v105);
  v104 = v56;
  v58 = *(v57 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v59);
  sub_1ABA7FBE0();
  v121 = v60;
  v61 = *(v28 - 8);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v99 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABA9A530();
  type metadata accessor for InferenceMessageResponseError.CodingKeys();
  sub_1ABA8196C();
  swift_getWitnessTable();
  v66 = sub_1ABF24FC4();
  v67 = sub_1ABA7BB64(v66);
  v123 = v68;
  v124 = v67;
  v70 = *(v69 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v71);
  v72 = v30[4];
  sub_1ABA93E20(v30, v30[3]);
  sub_1ABF252E4();
  (*(v61 + 16))(v65, v122, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v85 = v100;
    v86 = v104;
    v87 = v105;
    (*(v104 + 32))(v121, v65, v105);
    LOBYTE(v129) = 0;
    v88 = v103;
    v89 = v124;
    sub_1ABF24EC4();
    v125 = v117;
    v126 = v118;
    v127 = v119;
    v128 = v120;
    swift_getWitnessTable();
    v90 = v106;
    sub_1ABF24F84();
    (*(v85 + 8))(v88, v90);
    (*(v86 + 8))(v121, v87);
    v91 = sub_1ABAA4ED4();
    v93 = v89;
LABEL_6:
    v92(v91, v93);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v94 = *v65;
    v95 = *(v65 + 1);
    LOBYTE(v129) = 2;
    v96 = v114;
    v97 = v124;
    sub_1ABF24EC4();
    v98 = v116;
    sub_1ABF24F34();

    (*(v115 + 8))(v96, v98);
    v91 = sub_1ABAA4ED4();
    v93 = v97;
    goto LABEL_6;
  }

  v74 = *v65;
  v75 = *(v65 + 1);
  v76 = *(v65 + 2);
  v77 = *(v65 + 3);
  v78 = v65[32];
  LOBYTE(v129) = 1;
  v79 = v109;
  v80 = v124;
  sub_1ABF24EC4();
  v121 = v75;
  v122 = v74;
  v129 = v74;
  v130 = v75;
  v131 = v76;
  v132 = v77;
  v133 = v78;
  sub_1ABD2F59C();
  v81 = v111;
  sub_1ABF24F84();
  sub_1ABA9364C(&a16);
  v82(v79, v81);
  v83 = sub_1ABAA4ED4();
  v84(v83, v80);
  sub_1ABD2F5F0(v122, v121, v76, v77, v78);
LABEL_7:
  sub_1ABA7BC90();
}

unint64_t sub_1ABD2F59C()
{
  result = qword_1EB4D8678;
  if (!qword_1EB4D8678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8678);
  }

  return result;
}

uint64_t sub_1ABD2F5F0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3)
  {
LABEL_4:
  }

  if (a5 != 2)
  {
    if (a5)
    {
      return result;
    }

    goto LABEL_4;
  }

  return sub_1ABD2F66C(result, a2);
}

uint64_t sub_1ABD2F66C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void InferenceMessageResponseError<>.init(from:)()
{
  sub_1ABA7BCA8();
  v131 = v0;
  v115 = v1;
  v114 = v2;
  v113 = v3;
  v112 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v124 = v11;
  v12 = type metadata accessor for InferenceMessageResponseError.UnknownErrorCodingKeys();
  sub_1ABA7C404();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v122 = v12;
  v121 = v13;
  v110 = sub_1ABF24EB4();
  sub_1ABA7BB64(v110);
  v109 = v14;
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7FBE0();
  sub_1ABA7F528(v18);
  v19 = type metadata accessor for InferenceMessageResponseError.ServerErrorCodingKeys();
  sub_1ABA9948C();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v119 = v19;
  v118 = v20;
  v108 = sub_1ABF24EB4();
  sub_1ABA7BB64(v108);
  v107 = v21;
  v23 = *(v22 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7FBE0();
  sub_1ABA7F528(v25);
  v26 = type metadata accessor for InferenceMessageResponseError.ServiceErrorCodingKeys();
  sub_1ABA901E8();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v117 = v26;
  v116 = v27;
  v106 = sub_1ABF24EB4();
  sub_1ABA7BB64(v106);
  v105 = v28;
  v30 = *(v29 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7FBE0();
  sub_1ABA7F528(v32);
  type metadata accessor for InferenceMessageResponseError.CodingKeys();
  sub_1ABA8196C();
  swift_getWitnessTable();
  sub_1ABA7DA44();
  v128 = sub_1ABF24EB4();
  sub_1ABA7BB64(v128);
  v130 = v33;
  v35 = *(v34 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v101 - v37;
  v111 = v8;
  v129 = v6;
  v39 = type metadata accessor for InferenceMessageResponseError();
  v40 = sub_1ABA7BB64(v39);
  v126 = v41;
  v127 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v45 = (&v101 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v101 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v101 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v101 - v53;
  v55 = v10;
  v56 = v10[3];
  v57 = v10[4];
  v142 = v55;
  sub_1ABA93E20(v55, v56);
  v58 = v131;
  sub_1ABF252C4();
  if (!v58)
  {
    v102 = v45;
    v103 = v48;
    v104 = v51;
    v131 = v54;
    v59 = v128;
    v60 = v38;
    *&v136 = sub_1ABF24EA4();
    sub_1ABA7DA44();
    sub_1ABF241F4();
    sub_1ABA8F18C();
    swift_getWitnessTable();
    *&v140 = sub_1ABF24914();
    *(&v140 + 1) = v61;
    *&v141 = v62;
    *(&v141 + 1) = v63;
    sub_1ABA7DA44();
    sub_1ABF24904();
    sub_1ABA8EAA8();
    swift_getWitnessTable();
    sub_1ABF244C4();
    v64 = v136;
    v65 = v59;
    if (v136 != 3)
    {
      v101 = v140;
      v136 = v140;
      v137 = v141;
      if (sub_1ABF24574())
      {
        if (v64)
        {
          v66 = v60;
          if (v64 != 1)
          {
            LOBYTE(v136) = 2;
            v80 = v123;
            sub_1ABAA53CC();
            sub_1ABA8E300();
            sub_1ABF24D94();
            v81 = v124;
            v82 = v126;
            v83 = v110;
            v95 = sub_1ABF24E14();
            v97 = v96;
            sub_1ABA9364C(&v139);
            v98(v80, v83);
            (*(v130 + 8))(v66, v65);
            sub_1ABAA6104();
            swift_unknownObjectRelease();
            v99 = v102;
            *v102 = v95;
            v99[1] = v97;
            v88 = v127;
            swift_storeEnumTagMultiPayload();
            v89 = *(v82 + 32);
            v100 = sub_1ABA841E4();
            v89(v100, v99, v88);
LABEL_12:
            v89(v81, v65, v88);
            goto LABEL_10;
          }

          LOBYTE(v136) = 1;
          v67 = v120;
          sub_1ABAA53CC();
          sub_1ABA8E300();
          sub_1ABF24D94();
          v68 = v130;
          v69 = v126;
          sub_1ABD2FFEC();
          v70 = v108;
          sub_1ABF24E64();
          sub_1ABA9364C(&v137 + 8);
          v84(v67, v70);
          (*(v68 + 8))(v66, v65);
          sub_1ABAA6104();
          swift_unknownObjectRelease();
          v85 = v138;
          v86 = v137;
          v87 = v103;
          *v103 = v136;
          v87[1] = v86;
          *(v87 + 32) = v85;
          v88 = v127;
          swift_storeEnumTagMultiPayload();
          v89 = *(v69 + 32);
          v90 = sub_1ABA841E4();
          v89(v90, v87, v88);
        }

        else
        {
          LOBYTE(v136) = 0;
          sub_1ABAA53CC();
          sub_1ABF24D94();
          type metadata accessor for InferenceMessageResponseError.ServiceError();
          v132 = v112;
          v133 = v113;
          v134 = v114;
          v135 = v115;
          swift_getWitnessTable();
          v77 = v104;
          v78 = v106;
          v79 = v125;
          sub_1ABF24E64();
          sub_1ABA9364C(&v136 + 8);
          v91(v79, v78);
          v92 = sub_1ABAA45F4();
          v93(v92, v65);
          sub_1ABAA6104();
          swift_unknownObjectRelease();
          v88 = v127;
          swift_storeEnumTagMultiPayload();
          v89 = *(v126 + 32);
          v94 = sub_1ABA841E4();
          v89(v94, v77, v88);
        }

        v81 = v124;
        goto LABEL_12;
      }
    }

    v71 = sub_1ABF24B44();
    swift_allocError();
    v73 = v72;
    v74 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v73 = v127;
    sub_1ABF24DA4();
    sub_1ABAA4128();
    (*(*(v71 - 8) + 104))(v73, *MEMORY[0x1E69E6AF8], v71);
    swift_willThrow();
    v75 = sub_1ABAA45F4();
    v76(v75, v65);
    swift_unknownObjectRelease();
  }

LABEL_10:
  sub_1ABA84B54(v142);
  sub_1ABA7BC90();
}

unint64_t sub_1ABD2FFEC()
{
  result = qword_1EB4D8680[0];
  if (!qword_1EB4D8680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D8680);
  }

  return result;
}

void sub_1ABD30040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 16);
  v3 = *(a3 - 8);
  v6 = *(a3 - 32);
  v5 = *(a3 - 24);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  InferenceMessageResponseError<>.init(from:)();
}

uint64_t sub_1ABD3008C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for InferenceMessageResponseError.ServiceError();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABD30104(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = 33;
  if (v8 + 1 > 0x21)
  {
    v9 = v8 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_24;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 253) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v14 < 2)
    {
LABEL_24:
      v16 = *(a1 + v9);
      if (v16 >= 3)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_24;
  }

LABEL_16:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return (v10 | v15) + 254;
}

void sub_1ABD302B8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 + 1 > 0x21)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 33;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if (a3 < 0xFE)
  {
    v14 = 0;
  }

  else if (v12 <= 3)
  {
    v17 = ((a3 + ~(-1 << v13) - 253) >> v13) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
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
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (a2 > 0xFD)
  {
    v15 = a2 - 254;
    if (v12 < 4)
    {
      v16 = (v15 >> v13) + 1;
      if (v11 != -1)
      {
        v19 = v15 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v12 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v11 + 1);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v12] = v16;
        break;
      case 2:
        *&a1[v12] = v16;
        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = v16;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v14)
    {
      case 1:
        a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      case 2:
        *&a1[v12] = 0;
        goto LABEL_28;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v11] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1ABD304EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABD3059C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 254) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      v16 = *(a1 + v9);
      if (v16 >= 2)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return (v10 | v15) + 255;
}

void sub_1ABD30740(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v10 <= v9)
  {
    v10 = v9;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if (a3 < 0xFF)
  {
    v13 = 0;
  }

  else if (v11 <= 3)
  {
    v16 = ((a3 + ~(-1 << v12) - 254) >> v12) + 1;
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

  if (a2 > 0xFE)
  {
    v14 = a2 - 255;
    if (v11 < 4)
    {
      v15 = (v14 >> v12) + 1;
      if (v10 != -1)
      {
        v18 = v14 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v18;
          a1[2] = BYTE2(v18);
        }

        else if (v11 == 2)
        {
          *a1 = v18;
        }

        else
        {
          *a1 = v14;
        }
      }
    }

    else
    {
      bzero(a1, v10 + 1);
      *a1 = v14;
      v15 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v11] = v15;
        break;
      case 2:
        *&a1[v11] = v15;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = v15;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v13)
    {
      case 1:
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v11] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v10] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_1ABD30964(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABD30A30(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABD30AFC(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id InferenceMLModel.modelDescription.getter()
{
  v1 = [*(v0 + 16) modelDescription];

  return v1;
}

uint64_t InferenceMLModel.prediction<A>(from:context:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  sub_1ABA814B0();
  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD30E58()
{
  sub_1ABA7BBF8();
  v1 = *(v0[3] + 16);
  v2 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v0[4] = v2;
  v3 = *(MEMORY[0x1E695FD68] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1ABD30F14;
  v5 = sub_1ABA90084(v0[2]);

  return MEMORY[0x1EEDBB398](v5, v2);
}

uint64_t sub_1ABD30F14()
{
  sub_1ABA7BC04();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D4E0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (!v0)
  {

    v9 = *(v7 + 8);

    __asm { BRAA            X2, X16 }
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD31054()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();
  v2 = *(v0 + 48);

  return v1();
}

uint64_t InferenceMLModel.__allocating_init<A>(domainId:assetId:configuration:context:)()
{
  sub_1ABA7BBF8();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[11] = v5;
  v1[12] = v6;
  v1[9] = v7;
  v1[10] = v8;
  v1[8] = v9;
  v10 = *(v4 - 8);
  v1[17] = v10;
  v11 = *(v10 + 64) + 15;
  v1[18] = swift_task_alloc();
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD3116C()
{
  v28 = v0;
  v1 = v0[17];
  v25 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v33 = v0[12];
  v5 = *((*(v2 + 8))(v3) + 16);
  swift_unownedRetainStrong();

  sub_1ABA93E64(v5 + 32, (v0 + 2));

  v6 = type metadata accessor for AssetRegistry();
  v8 = v0[5];
  v7 = v0[6];
  v9 = sub_1ABA93E20(v0 + 2, v8);
  v26[0] = sub_1ABAF31C0;
  v26[1] = 0;
  v27 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  (*(v10 + 16))(v12, v9, v8);
  v13 = sub_1ABA94614(v12, v26, v6, v8, *(v7 + 8));
  v0[19] = v13;

  v0[7] = v13;
  (*(v1 + 16))(v25, v4, v3);

  v14 = v33;
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_1ABD313AC;
  v16 = v0[18];
  v17 = v0[16];
  v18 = v0[14];
  v19 = v0[11];
  v20 = v0[12];
  v21 = v0[9];
  v22 = v0[10];
  v23 = v0[8];
  v32 = v0[15];
  v30 = v18;
  v31 = &protocol witness table for AssetRegistry;

  return sub_1ABD31624((v0 + 7), v23, v21, v22, v19, v20, v16, v6);
}

uint64_t sub_1ABD313AC()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v8 = *(v7 + 160);
  v9 = *v1;
  sub_1ABA7BBC0();
  *v10 = v9;
  *(v5 + 168) = v0;

  if (!v0)
  {
    *(v5 + 176) = v3;
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD314D0()
{
  sub_1ABA8C008();
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];

  (*(v4 + 8))(v6, v5);

  sub_1ABA84B54(v0 + 2);

  sub_1ABA82A20();
  v9 = v0[22];

  return v8(v9);
}

uint64_t sub_1ABD31584()
{
  sub_1ABA8C008();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];

  v7 = *(v3 + 8);
  v8 = sub_1ABA7D2D8();
  v9(v8);
  sub_1ABA84B54(v0 + 2);

  sub_1ABA7BBE0();
  v11 = v0[21];

  return v10();
}

uint64_t sub_1ABD31624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = v32;
  v9[10] = v8;
  v9[7] = a8;
  v9[8] = v30;
  v9[5] = a6;
  v9[6] = a7;
  v9[3] = a3;
  v9[4] = a5;
  v9[2] = a1;
  v15 = *(v30 - 8);
  v9[11] = v15;
  v16 = *(v15 + 64) + 15;
  v9[12] = swift_task_alloc();
  v17 = sub_1ABF21CF4();
  v9[13] = v17;
  v18 = *(v17 - 8);
  v9[14] = v18;
  v19 = *(v18 + 64) + 15;
  v9[15] = swift_task_alloc();
  v20 = *(*(sub_1ABAD219C(&qword_1EB4D5990, &qword_1ABF4C1D8) - 8) + 64) + 15;
  v21 = swift_task_alloc();
  v9[16] = v21;
  v22 = type metadata accessor for AssetRegistryAsset(0);
  v9[17] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v9[18] = swift_task_alloc();
  v24 = *(v31 + 16);
  v28 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  v9[19] = v26;
  *v26 = v9;
  v26[1] = sub_1ABD318B8;

  return v28(v21, a4, a5, a2, a3, a8);
}

uint64_t sub_1ABD318B8()
{
  sub_1ABA7BC04();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = v4[19];
  v6 = v4[4];
  v7 = v4[3];
  v8 = *v1;
  sub_1ABA7BBC0();
  *v9 = v8;
  *(v10 + 160) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD319F4()
{
  v6 = v2[16];
  if (sub_1ABA7E1E0(v6, 1, v2[17]) == 1)
  {
    sub_1ABA908E0();
    (*(v5 + 8))(v3, v0);
    sub_1ABA7D08C(v1);
    (*(v7 + 8))(v4, v1);
    sub_1ABC23C94(v6);
    v8 = v2[18];
    v9 = v2[15];
    v10 = v2[16];
    v11 = v2[12];

    sub_1ABA82A20();

    return v12(0);
  }

  else
  {
    v15 = v2[14];
    v14 = v2[15];
    v17 = v2[12];
    v16 = v2[13];
    v18 = v2[11];
    v19 = v2[8];
    v20 = v2[6];
    v35 = v2[5];
    sub_1ABC23CFC(v6, v2[18]);
    v21 = *(v15 + 16);
    v22 = sub_1ABA7D2D8();
    v23(v22);
    (*(v18 + 16))(v17, v20, v19);
    v24 = v35;
    v25 = swift_task_alloc();
    v2[21] = v25;
    *v25 = v2;
    v25[1] = sub_1ABD31BF0;
    v26 = v2[12];
    v27 = v2[9];
    v28 = v2[10];
    v29 = v2[8];
    v30 = v2[5];
    v31 = sub_1ABA90084(v2[15]);

    return sub_1ABD31FA4(v31, v32, v33, v34);
  }
}

uint64_t sub_1ABD31BF0()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v8 = *(v7 + 168);
  v9 = *v1;
  sub_1ABA7BBC0();
  *v10 = v9;
  *(v5 + 176) = v0;

  if (!v0)
  {
    *(v5 + 184) = v3;
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD31D00()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  v3 = *(v0 + 88);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  (*(v3 + 8))(v6, v4);
  sub_1ABA7D08C(v5);
  (*(v8 + 8))(v7, v5);
  sub_1ABC23D60(v2);
  sub_1ABA94B20();

  sub_1ABA82A20();

  return v9(v1);
}

uint64_t sub_1ABD31DF8()
{
  sub_1ABA8C008();
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);

  (*(v1 + 8))(v4, v3);
  sub_1ABA7D08C(v2);
  (*(v6 + 8))(v5, v2);
  v7 = *(v0 + 160);
  sub_1ABA94B20();

  sub_1ABA7BBE0();

  return v8();
}

uint64_t sub_1ABD31ED0()
{
  sub_1ABA8C008();
  v6 = *(v2 + 144);
  sub_1ABA908E0();
  (*(v5 + 8))(v3, v0);
  sub_1ABA7D08C(v1);
  (*(v7 + 8))(v4, v1);
  sub_1ABC23D60(v6);
  v8 = *(v2 + 176);
  sub_1ABA94B20();

  sub_1ABA7BBE0();

  return v9();
}

uint64_t sub_1ABD31FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1ABAF7454;

  return sub_1ABD3207C(a1, a2, a3, a4);
}

uint64_t sub_1ABD3207C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v5[13] = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1ABD320CC, 0, 0);
}

uint64_t sub_1ABD320CC()
{
  sub_1ABA7BBF8();
  v1 = v0[9];
  sub_1ABD32890();
  if (v1)
  {
    v2 = *(MEMORY[0x1E695FD70] + 4);
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_1ABD321F8;
    v4 = sub_1ABA90084(v0[8]);
    v5 = v1;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
    v0[16] = v6;
    v7 = *(MEMORY[0x1E695FD70] + 4);
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    v8[1] = sub_1ABD322FC;
    v4 = sub_1ABA90084(v0[8]);
    v5 = v6;
  }

  return MEMORY[0x1EEDBB3B0](v4, v5);
}

uint64_t sub_1ABD321F8()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v6 = *(v5 + 112);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v9 + 120) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD322FC()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  v6 = *(v5 + 136);
  v7 = *(v5 + 128);
  v8 = *v1;
  sub_1ABA7BBC0();
  *v9 = v8;
  *(v10 + 144) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD32418()
{
  sub_1ABA7BC04();

  v1 = *(v0 + 24);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  sub_1ABA7D08C(*(v0 + 88));
  (*(v5 + 8))();
  v6 = sub_1ABF21CF4();
  sub_1ABA7D1F8(v6);
  (*(v7 + 8))(v4);
  *(v2 + 16) = v1;
  sub_1ABA82A20();
  v9 = *(v0 + 96);

  return v8(v9);
}

uint64_t sub_1ABD324E4()
{
  sub_1ABA7BC04();
  v1 = v0[6];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  sub_1ABA7D08C(v0[11]);
  (*(v5 + 8))();
  v6 = sub_1ABF21CF4();
  sub_1ABA7D1F8(v6);
  (*(v7 + 8))(v4);
  *(v2 + 16) = v1;
  sub_1ABA82A20();
  v9 = v0[12];

  return v8(v9);
}

uint64_t sub_1ABD325A8()
{
  sub_1ABA7BC04();

  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  sub_1ABA7D08C(*(v0 + 88));
  (*(v6 + 8))();
  v7 = sub_1ABF21CF4();
  sub_1ABA7D1F8(v7);
  (*(v8 + 8))(v5);
  sub_1ABA7D2D8();
  swift_deallocPartialClassInstance();
  sub_1ABA7BBE0();

  return v9();
}

uint64_t sub_1ABD32678()
{
  sub_1ABA7BC04();
  v1 = v0[18];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[8];
  sub_1ABA7D08C(v0[11]);
  (*(v6 + 8))();
  v7 = sub_1ABF21CF4();
  sub_1ABA7D1F8(v7);
  (*(v8 + 8))(v5);
  sub_1ABA7D2D8();
  swift_deallocPartialClassInstance();
  sub_1ABA7BBE0();

  return v9();
}

id InferenceMLModel.prediction<A>(from:context:)(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 16);
  v9[0] = 0;
  v4 = [v3 predictionFromFeatures:a1 error:v9];
  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t InferenceMLModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1ABD32890()
{
  result = qword_1ED86B928;
  if (!qword_1ED86B928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED86B928);
  }

  return result;
}

uint64_t InferenceActor.MyActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1ABD32970()
{
  type metadata accessor for InferenceActor.MyActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EB4CF2B8 = v0;
  return result;
}

uint64_t static InferenceActor.shared.getter()
{
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8();
  }
}

uint64_t sub_1ABD32A0C()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 192);
  }

  else
  {
    v2 = v0;
    v3 = sub_1ABF21854();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v1 = sub_1ABF21844();
    v6 = *(v2 + 192);
    *(v2 + 192) = v1;
  }

  return v1;
}

uint64_t InferenceServer.__allocating_init<A>(parameters:serviceDefinitionListType:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v18 = a3;
  v6 = *a1;
  v7 = sub_1ABF217F4();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_1ABF217E4();
  v11 = v10;
  v21 = v6;
  if (qword_1ED870898 != -1)
  {
    v10 = swift_once();
  }

  v12 = qword_1ED8708A8;
  v13 = unk_1ED8708B0;
  MEMORY[0x1EEE9AC00](v10);
  v17[2] = v11;
  v17[3] = v4;
  type metadata accessor for InferenceServerLifecycleManagerNoOp();
  swift_allocObject();
  v14 = sub_1ABA92F40();
  v20[3] = type metadata accessor for InferenceServerCacheManagerNoOp();
  v20[4] = &off_1F207BA70;
  v20[0] = swift_allocObject();

  v15 = sub_1ABD32CCC(&v21, sub_1ABD27734, v11, v12, v13, sub_1ABA93F84, v17, v14, &off_1F2079E60, v20, MEMORY[0x1E69E7CC0], v19, v11, v18, a4);

  return v15;
}

uint64_t *sub_1ABD32C54@<X0>(uint64_t a1@<X2>, uint64_t **a2@<X8>)
{
  v5 = type metadata accessor for InferenceSupportLocalBackendBasic();
  swift_allocObject();

  result = sub_1ABD4E550(v6, v7, a1);
  if (!v2)
  {
    a2[3] = v5;
    a2[4] = &off_1F207A6C8;
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABD32CCC(char *a1, void (*a2)(__int128 *__return_ptr), uint64_t a3, void (*a4)(__int128 *__return_ptr), uint64_t a5, void (*a6)(__int128 *__return_ptr, uint64_t *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = swift_allocObject();
  sub_1ABD32D9C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, v23, a15);
  return v21;
}

void *sub_1ABD32D9C(char *a1, void (*a2)(__int128 *__return_ptr), uint64_t a3, void (*a4)(__int128 *__return_ptr), uint64_t a5, void (*a6)(__int128 *__return_ptr, uint64_t *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = v15;
  v21 = *a1;
  *(v15 + 192) = 0;
  sub_1ABA92FFC();
  *(v15 + 16) = sub_1ABF239C4();
  *(v15 + 24) = v21;
  if (v21 < 0)
  {
    v33 = v21 & 1;
    a4(&v29);
    if (!v16)
    {
      v22 = v30;
      v23 = v31;
      sub_1ABA93E20(&v29, v30);
      v32[3] = v22;
      v32[4] = *(v23 + 16);
      sub_1ABA93DC0(v32);
      sub_1ABA7D08C(v22);
      (*(v24 + 16))();
      sub_1ABA84B54(&v29);
      goto LABEL_7;
    }
  }

  else
  {
    a2(&v29);
    if (!v16)
    {
      sub_1ABA946C0(&v29, v32);
LABEL_7:
      sub_1ABA93FC4(v32, (v17 + 4));
      a6(&v29, v32);
      sub_1ABA946C0(&v29, (v17 + 16));
      v17[9] = a8;
      v17[10] = a9;
      sub_1ABA93FC4(a10, (v17 + 11));
      v17[21] = a11;
      v17[22] = a12;
      v17[23] = a15;
      v17[25] = a13;
      swift_unknownObjectRetain();

      sub_1ABA94ED0();
      swift_unknownObjectRelease();

      sub_1ABA84B54(a10);
      sub_1ABA84B54(v32);
      return v17;
    }
  }

  sub_1ABA84B54(a10);
  swift_unknownObjectRelease();

  v25 = *(v15 + 16);

  v26 = *(v15 + 192);

  type metadata accessor for InferenceServer();
  swift_deallocPartialClassInstance();
  return v17;
}

uint64_t sub_1ABD3303C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v6[9] = a5;
  v6[10] = a6;
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v13 = a2[4];
  v12 = a2[5];
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8();
  }

  v7[11] = qword_1EB4CF2B8;
  v7[2] = v8;
  v7[3] = v9;
  v7[4] = v11;
  v7[5] = v10;
  v7[6] = v13;
  v7[7] = v12;
  v7[8] = 0;
  v14 = swift_task_alloc();
  v7[12] = v14;
  *v14 = v7;
  v14[1] = sub_1ABD33164;
  sub_1ABA7DA50();

  return sub_1ABD335D8();
}

uint64_t sub_1ABD33164()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (!v0)
  {
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v9 = *(v3 + 88);
  v10 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v10);
}

uint64_t sub_1ABD33278()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  swift_getAssociatedTypeWitness();
  sub_1ABA8CD18();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for InferenceMessageResponseError();
  swift_getWitnessTable();
  swift_allocError();
  sub_1ABD2836C(v1, v4);
  swift_willThrow();

  sub_1ABA7BBE0();

  return v5();
}

uint64_t sub_1ABD33398(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v7[9] = a6;
  v7[10] = a7;
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a5;
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8();
  }

  v8[11] = qword_1EB4CF2B8;
  v8[2] = v10;
  v8[3] = v9;
  v8[4] = v11;
  v8[5] = v12;
  v8[6] = v14;
  v8[7] = v13;
  v8[8] = v15;
  v16 = swift_task_alloc();
  v8[12] = v16;
  *v16 = v8;
  v16[1] = sub_1ABD334C4;
  sub_1ABA7DA50();

  return sub_1ABD335D8();
}

uint64_t sub_1ABD334C4()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (!v0)
  {
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v9 = *(v3 + 88);
  v10 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v10);
}

uint64_t sub_1ABD335D8()
{
  sub_1ABA7BBF8();
  *(v1 + 144) = v2;
  *(v1 + 152) = v3;
  *(v1 + 128) = v4;
  *(v1 + 136) = v5;
  *(v1 + 112) = v6;
  *(v1 + 120) = v7;
  v8 = v7[1];
  *(v1 + 16) = *v7;
  *(v1 + 32) = v8;
  *(v1 + 48) = v7[2];
  v10 = *v9;
  *(v1 + 160) = v0;
  *(v1 + 168) = v10;
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8();
  }

  *(v1 + 176) = qword_1EB4CF2B8;
  v11 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v11);
}

uint64_t sub_1ABD3367C()
{
  v19 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v18 = *(v0 + 168);
  sub_1ABD34F48(v2, &v18);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 32);
  *(v0 + 64) = *(v0 + 16);
  *(v0 + 80) = v7;
  *(v0 + 96) = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  *(v8 + 16) = *(v0 + 144);
  *(v8 + 32) = v4;
  *(v8 + 40) = v5;
  *(v8 + 48) = v0 + 16;
  *(v8 + 56) = v6;
  *(v8 + 64) = v3;
  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v0 + 192) = v9;
  *v9 = v10;
  v9[1] = sub_1ABD337E0;
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 136);
  v14 = *(v0 + 144);
  v15 = *(v0 + 128);
  v16 = *(v0 + 112);

  return sub_1ABD35384();
}

uint64_t sub_1ABD337E0()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  v3[25] = v0;

  if (!v0)
  {
    v11 = v3[23];

    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v9 = v3[22];
  v10 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v10);
}

uint64_t sub_1ABD338FC()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 184);

  v2 = *(v0 + 200);
  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABD33958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = a8;
  v8[30] = v17;
  v8[27] = a6;
  v8[28] = a7;
  v8[25] = a4;
  v8[26] = a5;
  v8[23] = a2;
  v8[24] = a3;
  v8[22] = a1;
  swift_getAssociatedTypeWitness();
  v8[31] = type metadata accessor for InferenceMessageResponse();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[32] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 - 8);
  v8[33] = v10;
  v11 = *(v10 + 64) + 15;
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v12 = sub_1ABF247E4();
  v8[37] = v12;
  v13 = *(v12 - 8);
  v8[38] = v13;
  v14 = *(v13 + 64) + 15;
  v8[39] = swift_task_alloc();
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  v8[40] = qword_1EB4CF2B8;

  return MEMORY[0x1EEE6DFA0](sub_1ABD33B2C);
}

uint64_t sub_1ABD33B2C()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 208);
  v2 = sub_1ABA93E20((*(v0 + 192) + 88), *(*(v0 + 192) + 112));
  v4 = v1[1];
  v3 = v1[2];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v5 = *v2;
  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v0 + 328) = v6;
  *v6 = v7;
  v6[1] = sub_1ABD33BF0;
  v8 = *(v0 + 312);
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  v11 = *(v0 + 216);
  v12 = *(v0 + 200);

  return sub_1ABD37740(v8, v12, v0 + 16, v11, v9, v10);
}

uint64_t sub_1ABD33BF0()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 328);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v3 + 336) = v0;

  v9 = *(v3 + 320);
  if (v0)
  {
    v10 = sub_1ABD33F50;
  }

  else
  {
    v10 = sub_1ABD33CF0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1ABD33CF0()
{
  v1 = v0[39];
  v2 = v0[31];
  if (sub_1ABA7E1E0(v1, 1, v2) != 1)
  {
    v11 = v0[22];
    v12 = v0[23];
    sub_1ABA7D08C(v2);
    (*(v13 + 32))();
    *v12 = 0;
    *(v12 + 8) = 256;
    v14 = v0[39];
    v15 = v0[35];
    v16 = v0[36];
    v17 = v0[34];

    sub_1ABA7BBE0();
    goto LABEL_5;
  }

  v3 = v0[42];
  v4 = v0[26];
  v5 = v0[24];
  (*(v0[38] + 8))(v1, v0[37]);
  sub_1ABD34620(v4, (v0 + 8));
  if (v3)
  {
    v6 = v0[39];
    v7 = v0[35];
    v8 = v0[36];
    v9 = v0[34];

    sub_1ABA7C144();
LABEL_5:

    return v10();
  }

  v20 = v0[29];
  v19 = v0[30];
  v21 = v0[28];
  v23 = v0[24];
  v22 = v0[25];
  swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for InferenceMessageRequest();
  v0[43] = v24;
  v0[16] = v24;
  v0[17] = &off_1F2081628;
  sub_1ABA93DC0(v0 + 13);
  sub_1ABA7D08C(v24);
  (*(v25 + 16))();
  v0[18] = v23;
  v0[19] = v21;

  swift_task_alloc();
  sub_1ABA8E8BC();
  v0[44] = v26;
  *v26 = v27;
  v26[1] = sub_1ABD33FC8;

  return sub_1ABD34FC0();
}

uint64_t sub_1ABD33F50()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 336);
  sub_1ABA90900();

  sub_1ABA7BBE0();

  return v2();
}

uint64_t sub_1ABD33FC8()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  v3[45] = v0;

  if (v0)
  {
    v9 = v3[40];
    v10 = sub_1ABD344F0;
  }

  else
  {
    v11 = v3[40];
    sub_1ABA84B54(v3 + 13);
    v10 = sub_1ABD340D8;
    v9 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

void sub_1ABD340D8()
{
  v1 = v0[43];
  v27 = v0[36];
  v2 = v0[32];
  v3 = v0[28];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[12];
  sub_1ABA93E20(v0 + 8, v0[11]);
  v7 = *(v2 + 48);
  v8 = (v4 + *(v1 + 28));
  v9 = v8[1];
  v24 = *v8;
  v10 = v8[2];
  v11 = *(v8 + 24);
  v0[20] = v5;
  v0[21] = v3;
  v12 = *(v6 + 48);
  sub_1ABA994A4();
  v23 = v13 + *v13;
  v15 = *(v14 + 4);
  swift_task_alloc();
  sub_1ABA8E8BC();
  v0[46] = v16;
  *v16 = v17;
  v16[1] = sub_1ABD34270;
  v18 = v0[36];
  v19 = v0[27];
  v20 = v0[25];
  v25 = v0[29];
  v26 = v0[30];
  sub_1ABA7DA50();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1ABD34270()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 368);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v3 + 376) = v0;

  v9 = *(v3 + 320);
  if (v0)
  {
    v10 = sub_1ABD3458C;
  }

  else
  {
    v10 = sub_1ABD34370;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1ABD34370()
{
  sub_1ABA8C1F8();
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[28];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[22];

  (*(v4 + 16))(v1, v2, v5);
  v11 = *(v6 - 8);
  (*(v11 + 32))(v10, v1, v6);
  (*(v4 + 32))(v3, v2, v5);
  v12 = v3 + *(v5 + 48);
  v13 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  *v9 = v13;
  *(v9 + 8) = v12;
  *(v9 + 9) = 0;
  (*(v11 + 8))(v3, v6);
  sub_1ABA84B54(v0 + 8);
  v14 = v0[39];
  v15 = v0[35];
  v16 = v0[36];
  v17 = v0[34];

  sub_1ABA7BBE0();

  return v18();
}

uint64_t sub_1ABD344F0()
{
  sub_1ABA7BC04();
  v1 = v0[28];
  v2 = v0[24];

  sub_1ABA84B54(v0 + 13);
  sub_1ABA84B54(v0 + 8);
  v3 = v0[45];
  sub_1ABA90900();

  sub_1ABA7BBE0();

  return v4();
}

uint64_t sub_1ABD3458C()
{
  sub_1ABA7BC04();
  v1 = v0[28];
  v2 = v0[24];

  sub_1ABA84B54(v0 + 8);
  v3 = v0[47];
  sub_1ABA90900();

  sub_1ABA7BBE0();

  return v4();
}

uint64_t sub_1ABD34620@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v19[0] = *a1;
  v19[1] = v5;
  v19[2] = a1[2];
  swift_beginAccess();
  v6 = *(v2 + 16);

  sub_1ABAD5A60(v19, v6);

  if (v16 != 255)
  {
    sub_1ABAE2C4C(v14, v12);
    sub_1ABAB08B8(v14, &qword_1EB4D8180, &unk_1ABF594D0);
    sub_1ABD4BE50(&v17);
    sub_1ABD37540(v12);
    return sub_1ABA946C0(&v17, a2);
  }

  sub_1ABAB08B8(v14, &qword_1EB4D8180, &unk_1ABF594D0);
  result = sub_1ABD34E18(v15, v19);
  if (!v3)
  {
    v14[0] = result;
    v14[1] = v8;
    sub_1ABD37428(v14, v12);
    sub_1ABD34AA8();
    sub_1ABD37498(v13);

    if (v18)
    {
      sub_1ABAB08B8(v14, &qword_1EB4D8B20, &qword_1ABF5B3A0);
      return sub_1ABA946C0(&v17, a2);
    }

    sub_1ABAB08B8(&v17, &qword_1EB4D8B30, &unk_1ABF5B3B0);
    sub_1ABD37428(v14, v12);
    v9 = v12[0];
    v10 = v12[1];
    sub_1ABD374EC();
    swift_allocError();
    *v11 = v9;
    *(v11 + 8) = v10;
    *(v11 + 16) = 0;
    swift_willThrow();
    sub_1ABAB08B8(v14, &qword_1EB4D8B20, &qword_1ABF5B3A0);
    return sub_1ABD37498(v13);
  }

  return result;
}

uint64_t sub_1ABD34840@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v20[0] = *a1;
  v20[1] = v5;
  v20[2] = a1[2];
  swift_beginAccess();
  v6 = *(v2 + 16);

  sub_1ABAD5A60(v20, v6);

  if (v16 == 255)
  {
    sub_1ABAB08B8(v14, &qword_1EB4D8180, &unk_1ABF594D0);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
  }

  else
  {
    sub_1ABAE2C4C(v14, v12);
    sub_1ABAB08B8(v14, &qword_1EB4D8180, &unk_1ABF594D0);
    sub_1ABD4BF10(&v17);
    sub_1ABD37540(v12);
    if (*(&v18 + 1))
    {
      return sub_1ABA946C0(&v17, a2);
    }
  }

  sub_1ABAB08B8(&v17, &qword_1EB4D8B28, &qword_1ABF5B3A8);
  result = sub_1ABD34E18(v15, v20);
  if (!v3)
  {
    v14[0] = result;
    v14[1] = v8;
    sub_1ABD37428(v14, v12);
    sub_1ABD34CD4();
    sub_1ABD37498(v13);

    if (*(&v18 + 1))
    {
      sub_1ABAB08B8(v14, &qword_1EB4D8B20, &qword_1ABF5B3A0);
      return sub_1ABA946C0(&v17, a2);
    }

    sub_1ABAB08B8(&v17, &qword_1EB4D8B28, &qword_1ABF5B3A8);
    sub_1ABD37428(v14, v12);
    v9 = v12[0];
    v10 = v12[1];
    sub_1ABD374EC();
    swift_allocError();
    *v11 = v9;
    *(v11 + 8) = v10;
    *(v11 + 16) = 1;
    swift_willThrow();
    sub_1ABAB08B8(v14, &qword_1EB4D8B20, &qword_1ABF5B3A0);
    return sub_1ABD37498(v13);
  }

  return result;
}

uint64_t sub_1ABD34AA8()
{
  sub_1ABA8E310();
  v4 = v3[1];
  v23 = *v3;
  v24 = v4;
  v25 = v3[2];
  v21[0] = v5;
  v21[1] = v6;
  sub_1ABD373CC(v7, &v22);
  v14[0] = v23;
  v14[1] = v24;
  v15 = v25;
  sub_1ABD37428(v21, &v12);

  sub_1ABD34CD4();
  sub_1ABD37498(v13);

  if (!v0)
  {
    if (v17)
    {
      sub_1ABA946C0(&v16, &v18);
      v8 = v19;
      v9 = v20;
      sub_1ABA93E20(&v18, v19);
      *(v2 + 24) = v8;
      *(v2 + 32) = *(v9 + 8);
      sub_1ABA93DC0(v2);
      sub_1ABA7D08C(v8);
      (*(v10 + 16))();
      sub_1ABA84B54(&v18);
    }

    else
    {
      sub_1ABAB08B8(&v16, &qword_1EB4D8B28, &qword_1ABF5B3A8);
      sub_1ABD493B4(*(v1 + 176), *(v1 + 184), &v12);
      if (v13[1])
      {
        sub_1ABA946C0(&v12, &v18);
        sub_1ABA93FC4(&v18, v14);
        BYTE8(v15) = 0;
        swift_beginAccess();
        sub_1ABAFEFB4(&v23, &v12);
        sub_1ABD25A58(v14, &v23);
        swift_endAccess();
        sub_1ABA946C0(&v18, v2);
      }

      else
      {
        sub_1ABAB08B8(&v12, &qword_1EB4D8B30, &unk_1ABF5B3B0);
        *(v2 + 32) = 0;
        *v2 = 0u;
        *(v2 + 16) = 0u;
      }
    }
  }

  return sub_1ABAB08B8(v21, &qword_1EB4D8B20, &qword_1ABF5B3A0);
}

uint64_t sub_1ABD34CD4()
{
  sub_1ABA8E310();
  v4 = v3[1];
  v16[0] = *v3;
  v16[1] = v4;
  v16[2] = v3[2];
  v14[0] = v5;
  v14[1] = v6;
  sub_1ABD373CC(v7, &v15);
  v8 = *(v1 + 176);
  v9 = *(v1 + 184);

  sub_1ABD4947C(v8, v9, &v11);
  if (!v0)
  {
    if (v12)
    {
      sub_1ABA946C0(&v11, v2);
      sub_1ABA93FC4(v2, v13);
      v13[40] = 1;
      swift_beginAccess();
      sub_1ABAFEFB4(v16, &v11);
      sub_1ABD25A58(v13, v16);
      swift_endAccess();
    }

    else
    {
      sub_1ABAB08B8(&v11, &qword_1EB4D8B28, &qword_1ABF5B3A8);
      *(v2 + 32) = 0;
      *v2 = 0u;
      *(v2 + 16) = 0u;
    }
  }

  return sub_1ABAB08B8(v14, &qword_1EB4D8B20, &qword_1ABF5B3A0);
}

uint64_t sub_1ABD34E18(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  v12 = sub_1ABA93E20(v4 + 16, v4[19]);
  v20[0] = v6;
  v20[1] = v7;
  v21 = v8;
  v20[2] = v8;
  v20[3] = v9;
  v20[4] = v10;
  v20[5] = v11;
  v13 = *v12;
  result = sub_1ABD38B38(v20);
  if (!v3)
  {
    v19 = result;
    sub_1ABAD219C(&qword_1EB4D8B18, &qword_1ABF5B398);
    v15 = swift_allocObject();
    v16 = v11;
    v17 = v15;
    *(v15 + 16) = xmmword_1ABF34740;
    v18 = *(v4[10] + 8);
    *(v15 + 32) = v4[9];
    *(v15 + 40) = v18;
    *a1 = v6;
    a1[1] = v7;
    a1[2] = v21;
    a1[3] = v9;
    a1[4] = v10;
    a1[5] = v16;
    sub_1ABA93FC4((v4 + 16), (a1 + 6));
    a1[11] = v17;

    swift_unknownObjectRetain();
    return v19;
  }

  return result;
}

__n128 sub_1ABD34F48(__int128 *a1, uint64_t *a2)
{
  v9 = a1[1];
  v10 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *a2;
  v6 = sub_1ABA93E20((v2 + 128), *(v2 + 152));
  v11[0] = v10;
  v11[1] = v9;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v7 = *v6;
  sub_1ABD38A28(v11, &v14);
  return result;
}

uint64_t sub_1ABD34FC0()
{
  sub_1ABA7BBF8();
  v0[4] = v1;
  v0[5] = v2;
  v4 = v3[1];
  v0[6] = *v3;
  v0[7] = v4;
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8();
  }

  v0[8] = qword_1EB4CF2B8;
  v5 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v5);
}

void sub_1ABD3504C()
{
  sub_1ABA8C1F8();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v1[3];
  v4 = v1[4];
  sub_1ABA93E20(v1, v3);
  (*(v4 + 8))(v3, v4);
  v5 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  v6 = *(v5 + 40);
  sub_1ABA841F4();
  v7();
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[4];

  v12 = v2[3];
  v11 = v2[4];
  v13 = sub_1ABA8CD18();
  sub_1ABA93E20(v13, v14);
  v0[2] = v9;
  v0[3] = v8;
  v15 = *(v11 + 32);
  sub_1ABA994A4();
  v22 = v16 + *v16;
  v18 = *(v17 + 4);
  v19 = swift_task_alloc();
  v0[9] = v19;
  *v19 = v0;
  v19[1] = sub_1ABD3524C;
  sub_1ABA841F4();
  sub_1ABA9A540();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_1ABD3524C()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (!v0)
  {
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v9 = *(v3 + 64);
  v10 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v10);
}

uint64_t sub_1ABD35360()
{
  v1 = *(v0 + 80);
  sub_1ABA7BBE0();
  return v2();
}

uint64_t sub_1ABD35384()
{
  sub_1ABA7BBF8();
  v3 = v2;
  *(v1 + 128) = v4;
  *(v1 + 136) = v0;
  *(v1 + 112) = v5;
  *(v1 + 120) = v6;
  *(v1 + 96) = v7;
  *(v1 + 104) = v8;
  *(v1 + 80) = v9;
  *(v1 + 88) = v10;
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for InferenceMessageResponse();
  *(v1 + 144) = v11;
  v12 = *(v11 - 8);
  sub_1ABA994A4();
  *(v1 + 152) = v13;
  v15 = *(v14 + 64) + 15;
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  v16 = sub_1ABF21F04();
  *(v1 + 176) = v16;
  v17 = *(v16 - 8);
  sub_1ABA994A4();
  *(v1 + 184) = v18;
  v20 = *(v19 + 64) + 15;
  *(v1 + 192) = swift_task_alloc();
  v21 = v3[1];
  *(v1 + 16) = *v3;
  *(v1 + 32) = v21;
  *(v1 + 48) = v3[2];
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8();
  }

  *(v1 + 200) = qword_1EB4CF2B8;
  v22 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v22);
}

uint64_t sub_1ABD35508()
{
  sub_1ABA8C1F8();
  v1 = *(v0 + 192);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);
  v14 = *(v0 + 120);
  v15 = *(v0 + 88);
  sub_1ABF21EF4();
  *(v0 + 208) = *(v2 + 168);
  v4 = swift_task_alloc();
  *(v4 + 16) = v14;
  *(v4 + 32) = v1;
  *(v4 + 40) = v0 + 16;
  *(v4 + 48) = v15;
  sub_1ABA841F4();
  sub_1ABEA58D4(v5, v6, v7);

  v16 = (v3 + *v3);
  v8 = v3[1];
  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v0 + 216) = v9;
  *v9 = v10;
  v9[1] = sub_1ABD35674;
  v11 = *(v0 + 160);
  v12 = *(v0 + 112);

  return v16(v11, v0 + 64);
}

uint64_t sub_1ABD35674()
{
  sub_1ABA7BC04();
  v2 = *v1;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *(v2 + 216);
  *v4 = *v1;
  *(v3 + 224) = v0;

  v6 = *(v2 + 200);
  if (v0)
  {
    v7 = sub_1ABD35910;
  }

  else
  {
    v7 = sub_1ABD35794;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1ABD35794()
{
  v15 = *(v0 + 208);
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v19 = *(v0 + 176);
  v17 = *(v0 + 224);
  v18 = *(v0 + 160);
  v4 = *(v0 + 144);
  v16 = *(v0 + 80);
  v5 = *(v0 + 64);
  v14 = *(v0 + 72);
  v6 = *(v0 + 73);
  v7 = *(*(v0 + 152) + 32);
  v8 = *(v0 + 120);
  v12 = v8;
  v13 = *(v0 + 88);
  v7(v3);
  v9 = swift_task_alloc();
  *(v9 + 16) = v12;
  *(v9 + 32) = v1;
  *(v9 + 40) = v0 + 16;
  *(v9 + 48) = v13;
  *(v9 + 64) = v3;
  *(v9 + 72) = v5;
  *(v9 + 80) = v14;
  *(v9 + 81) = v6;
  sub_1ABEA58D4(sub_1ABD3738C, v9, v15);

  (v7)(v16, v3, v4);
  (*(v2 + 8))(v1, v19);

  sub_1ABA7BBE0();

  return v10();
}

uint64_t sub_1ABD35910()
{
  sub_1ABA7BC04();
  v1 = v0[21];
  v2 = v0[20];
  (*(v0[23] + 8))(v0[24], v0[22]);

  sub_1ABA7BBE0();
  v4 = v0[28];

  return v3();
}

uint64_t sub_1ABD359A4(uint64_t *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  v14 = a1[1];
  ObjectType = swift_getObjectType();
  v16 = a3[1];
  v18[0] = *a3;
  v18[1] = v16;
  v18[2] = a3[2];
  return (*(v14 + 8))(a2, v18, a4, a5, a6, a7, ObjectType, v14);
}

uint64_t sub_1ABD35A5C(uint64_t *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8, uint64_t a9, uint64_t a10)
{
  v15 = *a1;
  v16 = a1[1];
  ObjectType = swift_getObjectType();
  v18 = a3[1];
  v24[0] = *a3;
  v24[1] = v18;
  v24[2] = a3[2];
  v22 = a7;
  v23 = a8 & 0x1FF;
  return (*(v16 + 24))(a2, v24, a4, a5, a6, &v22, a9, a10, ObjectType, v16);
}

uint64_t sub_1ABD35B28(uint64_t *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = a1[1];
  ObjectType = swift_getObjectType();
  v12 = a3[1];
  v14[0] = *a3;
  v14[1] = v12;
  v14[2] = a3[2];
  return (*(v10 + 16))(a2, v14, a4, a5, ObjectType, v10);
}

uint64_t sub_1ABD35BC8(uint64_t *a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  v16 = *a1;
  v15 = a1[1];
  ObjectType = swift_getObjectType();
  v18 = a3[1];
  v23[0] = *a3;
  v23[1] = v18;
  v23[2] = a3[2];
  v21 = a8;
  v22 = a9 & 0x1FF;
  return (*(v15 + 32))(a2, v23, a4, a5, a6, a7, &v21, ObjectType, v15);
}

uint64_t *InferenceServer.deinit()
{
  v1 = v0[2];

  sub_1ABA84B54(v0 + 4);
  v2 = v0[9];
  swift_unknownObjectRelease();
  sub_1ABA84B54(v0 + 11);
  sub_1ABA84B54(v0 + 16);
  v3 = v0[21];

  v4 = v0[24];

  v5 = v0[25];

  return v0;
}

uint64_t InferenceServer.__deallocating_deinit()
{
  InferenceServer.deinit();

  return swift_deallocClassInstance();
}

uint64_t InferenceServer.runRequest(instanceQualifiedId:requestData:clientEntitlementInfo:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5[26] = v4;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = *a4;
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8();
  }

  v5[27] = qword_1EB4CF2B8;
  v5[2] = v6;
  v5[3] = v7;
  v5[4] = v8;
  v5[5] = v9;
  v5[6] = v10;
  v5[7] = v11;
  v5[23] = v12;
  v13 = swift_task_alloc();
  v5[28] = v13;
  *v13 = v5;
  v13[1] = sub_1ABD35E34;
  sub_1ABA8BF40();

  return sub_1ABD361CC(v14, v15, v16, v17);
}

uint64_t sub_1ABD35E34()
{
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v3 + 232) = v0;

  if (!v0)
  {
    v10 = *(v7 + 8);

    __asm { BRAA            X3, X16 }
  }

  v9 = *(v3 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1ABD35F84, v9, 0);
}

uint64_t sub_1ABD35F84()
{
  v27 = v0;
  v1 = *(v0 + 232);
  *(v0 + 192) = v1;
  v2 = v1;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  sub_1ABAD219C(&qword_1EB4D5790, &unk_1ABF4B3A0);
  sub_1ABA841F4();
  if (swift_dynamicCast())
  {
    v3 = sub_1ABA8CD18();
    sub_1ABA946C0(v3, v4);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    sub_1ABA93E20((v0 + 64), v5);
    (*(v6 + 32))(v25, v5, v6);
    v7 = v25[0];
    v8 = v25[1];
    v9 = v25[2];
    v10 = v25[3];
    v11 = v26 | 0x100;
    sub_1ABA84B54((v0 + 64));
  }

  else
  {
    v12 = *(v0 + 232);
    *(v0 + 104) = 0u;
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0;
    sub_1ABAB08B8(v0 + 104, &qword_1EB4D5798, &unk_1ABF598E0);
    *(v0 + 200) = v12;
    v13 = v12;
    sub_1ABA8CD18();
    v7 = sub_1ABF23C94();
    v8 = v14;
    v9 = 0;
    v10 = 0;
    v11 = 512;
  }

  v15 = *(v0 + 208);
  v23 = objc_autoreleasePoolPush();
  sub_1ABD32A0C();
  v24 = v7;
  *(v0 + 144) = v7;
  *(v0 + 152) = v8;
  *(v0 + 160) = v9;
  *(v0 + 168) = v10;
  *(v0 + 176) = v11;
  *(v0 + 178) = 1;
  sub_1ABAD219C(&qword_1EB4D8B08, &qword_1ABF5B138);
  sub_1ABD36FAC();
  v16 = sub_1ABF21834();
  v17 = *(v0 + 232);
  v18 = v16;
  v20 = v19;

  objc_autoreleasePoolPop(v23);
  sub_1ABD37010(v24, v8, v9, v10, v11, 1);

  v21 = *(v0 + 8);

  return v21(v18, v20);
}

uint64_t sub_1ABD361CC(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v5 + 144) = a3;
  *(v5 + 152) = v4;
  *(v5 + 128) = a1;
  *(v5 + 136) = a2;
  v8 = sub_1ABF21F04();
  *(v5 + 160) = v8;
  v9 = *(v8 - 8);
  *(v5 + 168) = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = a1[1];
  *(v5 + 16) = *a1;
  *(v5 + 32) = v12;
  *(v5 + 48) = a1[2];
  v13 = *a4;
  *(v5 + 176) = v11;
  *(v5 + 184) = v13;
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  *(v5 + 192) = qword_1EB4CF2B8;

  return MEMORY[0x1EEE6DFA0](sub_1ABD362EC);
}

uint64_t sub_1ABD362EC()
{
  sub_1ABA8C1F8();
  v25 = v0;
  v1 = v0[19];
  v2 = v0[16];
  v24 = v0[23];
  sub_1ABD34F48(v2, &v24);
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];

  sub_1ABB0DBF0(v7, v6);
  sub_1ABAFEFB4((v0 + 2), (v0 + 8));

  sub_1ABF21EF4();
  v8 = *(v5 + 168);
  v0[25] = v8;
  v9 = swift_task_alloc();
  v9[2] = v4;
  v9[3] = v0 + 2;
  v9[4] = v7;
  v9[5] = v6;
  sub_1ABEA58D4(sub_1ABD3767C, v9, v8);

  swift_task_alloc();
  sub_1ABA8E8BC();
  v0[26] = v10;
  *v10 = v11;
  v10[1] = sub_1ABD36474;
  v12 = v0[23];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[17];
  sub_1ABA9A540();

  return sub_1ABD3678C(v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1ABD36474()
{
  sub_1ABA7BC04();
  v2 = *v1;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *(v2 + 208);
  v6 = *v1;
  v3[27] = v7;
  v3[28] = v8;
  v3[29] = v0;

  v9 = *(v2 + 192);
  if (v0)
  {
    v10 = sub_1ABD366E4;
  }

  else
  {
    v10 = sub_1ABD365A0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1ABD365A0()
{
  if ((*(v0 + 122) & 1) == 0)
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
    v3 = *(v0 + 232);
    v4 = *(v0 + 200);
    v5 = *(v0 + 176);
    v15 = *(v0 + 136);
    v16 = *(v0 + 216);
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = v0 + 16;
    *(v6 + 32) = v15;
    *(v6 + 48) = v16;
    *(v6 + 64) = v1;
    *(v6 + 72) = v2;
    *(v6 + 73) = HIBYTE(v2) & 1;
    sub_1ABEA58D4(sub_1ABD3769C, v6, v4);
  }

  v7 = *(v0 + 184);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 136);
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

  sub_1ABA96210(v10, v9);
  sub_1ABC1AFCC(v0 + 16);

  v11 = *(v0 + 8);
  v12 = *(v0 + 216);
  v13 = *(v0 + 224);

  return v11(v12, v13);
}

uint64_t sub_1ABD366E4()
{
  sub_1ABA7BC04();
  v1 = v0[23];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  (*(v0[21] + 8))(v0[22], v0[20]);

  sub_1ABA96210(v4, v3);
  sub_1ABC1AFCC((v0 + 2));

  v5 = v0[29];
  v6 = v0[22];

  sub_1ABA7BBE0();

  return v7();
}

uint64_t sub_1ABD3678C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[33] = a5;
  v6[34] = a6;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  v6[35] = qword_1EB4CF2B8;

  return MEMORY[0x1EEE6DFA0](sub_1ABD36830);
}

uint64_t sub_1ABD36830()
{
  v1 = *(v0 + 240);
  sub_1ABD34840(*(v0 + 264), v0 + 16);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = objc_autoreleasePoolPush();
  *(v0 + 288) = *(v4 + 200);
  sub_1ABD376DC();
  sub_1ABF217D4();
  v6 = *(v0 + 272);
  v19 = *(v0 + 240);
  objc_autoreleasePoolPop(v5);
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  *(v0 + 296) = v8;
  *(v0 + 304) = v7;
  v9 = *(v0 + 152);
  *(v0 + 312) = v9;
  v10 = *(v0 + 160);
  *(v0 + 161) = v10;
  v12 = *(v0 + 40);
  v11 = *(v0 + 48);
  sub_1ABA93E20((v0 + 16), v12);
  *(v0 + 80) = v12;
  *(v0 + 88) = *(v11 + 8);
  sub_1ABA93DC0((v0 + 56));
  sub_1ABA7D08C(v12);
  (*(v13 + 16))();
  *(v0 + 120) = &type metadata for InferenceFullRequestBase;
  *(v0 + 128) = &off_1F2080D70;
  v14 = swift_allocObject();
  *(v0 + 96) = v14;
  *(v14 + 16) = v8;
  *(v14 + 24) = v7;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  *(v0 + 200) = v19;
  *(v0 + 208) = v6;

  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v0 + 320) = v15;
  *v15 = v16;
  v15[1] = sub_1ABD36A58;
  sub_1ABA8BF40();

  return sub_1ABD34FC0();
}

uint64_t sub_1ABD36A58()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 320);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  v3[41] = v0;

  if (v0)
  {
    v9 = v3[38];
    v10 = v3[35];

    v11 = sub_1ABD36EBC;
  }

  else
  {
    v10 = v3[35];
    sub_1ABA84B54(v3 + 12);
    sub_1ABA84B54(v3 + 7);
    v11 = sub_1ABD36B74;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, 0);
}

void sub_1ABD36B74()
{
  sub_1ABA8C1F8();
  v1 = *(v0 + 161);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = *(v0 + 48);
  sub_1ABA93E20((v0 + 16), *(v0 + 40));
  *(v0 + 216) = v3;
  *(v0 + 224) = v2;
  *(v0 + 336) = sub_1ABD32A0C();
  v5 = *(v4 + 16);
  sub_1ABA994A4();
  v18 = v6 + *v6;
  v8 = *(v7 + 4);
  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v0 + 344) = v9;
  *v9 = v10;
  v9[1] = sub_1ABD36CDC;
  v11 = *(v0 + 304);
  v12 = *(v0 + 312);
  v13 = *(v0 + 296);
  v14 = *(v0 + 248);
  v15 = *(v0 + 256);
  v19 = *(v0 + 288);
  sub_1ABA9A540();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1ABD36CDC()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 344);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  v3[44] = v0;

  if (v0)
  {
    v9 = v3[42];
    v10 = v3[38];
    v11 = v3[35];

    v12 = sub_1ABD36F3C;
  }

  else
  {
    v13 = v3[42];
    v14 = v3[38];
    v11 = v3[35];

    v12 = sub_1ABD36E08;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_1ABD36E08()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 272);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);

  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = v7 < 0;
  v9 = v7 & 1;
  if (v8)
  {
    v6 = 0;
    v9 = 0;
  }

  *v3 = v6;
  *(v3 + 8) = v9;
  *(v3 + 10) = v8;
  sub_1ABA84B54((v0 + 16));
  v10 = *(v0 + 8);

  return v10(v5, v4);
}

uint64_t sub_1ABD36EBC()
{
  sub_1ABA7BBF8();
  v1 = v0[34];
  v2 = v0[30];

  sub_1ABA84B54(v0 + 12);
  sub_1ABA84B54(v0 + 7);
  sub_1ABA84B54(v0 + 2);
  v3 = v0[41];
  sub_1ABA7BBE0();

  return v4();
}

uint64_t sub_1ABD36F3C()
{
  sub_1ABA7BBF8();
  v1 = v0[34];
  v2 = v0[30];

  sub_1ABA84B54(v0 + 2);
  v3 = v0[44];
  sub_1ABA7BBE0();

  return v4();
}

unint64_t sub_1ABD36FAC()
{
  result = qword_1EB4D8B10;
  if (!qword_1EB4D8B10)
  {
    sub_1ABAE2850(&qword_1EB4D8B08, &qword_1ABF5B138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8B10);
  }

  return result;
}

uint64_t sub_1ABD37010(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char a6)
{
  if (a6)
  {
    return sub_1ABD37020(a1, a2, a3, a4, a5, SHIBYTE(a5));
  }

  else
  {
    return sub_1ABA96210(a1, a2);
  }
}

uint64_t sub_1ABD37020(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6 == 2)
  {
  }

  if (a6 == 1)
  {
    return sub_1ABD2F5F0(result, a2, a3, a4, a5);
  }

  return result;
}

unint64_t sub_1ABD37048()
{
  result = qword_1EB4CF2C0;
  if (!qword_1EB4CF2C0)
  {
    type metadata accessor for InferenceActor.MyActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF2C0);
  }

  return result;
}

uint64_t sub_1ABD370F0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7F)
  {
    if (a2 + 129 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 129) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 130;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v5 >= 0x7E)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *sub_1ABD37184(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7E)
  {
    v6 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABD372A4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1ABD37428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D8B20, &qword_1ABF5B3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABD374EC()
{
  result = qword_1EB4D8B38;
  if (!qword_1EB4D8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8B38);
  }

  return result;
}

uint64_t sub_1ABD37594()
{
  sub_1ABA8C1F8();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[8];
  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v1 + 16) = v13;
  *v13 = v14;
  v13[1] = sub_1ABA7FDA0;

  return sub_1ABD33958(v5, v3, v8, v9, v10, v11, v12, v6);
}

unint64_t sub_1ABD376DC()
{
  result = qword_1EB4D8B40;
  if (!qword_1EB4D8B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8B40);
  }

  return result;
}

uint64_t sub_1ABD37740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB4CF2B8;

  return MEMORY[0x1EEE6DFA0](sub_1ABD377DC, v7, 0);
}

uint64_t sub_1ABD377DC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for InferenceMessageResponse();
  sub_1ABA7B9B4(v3, 1, 1, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1ABD37878@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
  return sub_1ABD39888(v2, v3);
}

void sub_1ABD37894()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v5 = sub_1ABF217B4();
  v51 = sub_1ABA7BB64(v5);
  v52 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v51);
  sub_1ABA7BC58();
  v50[2] = v10 - v9;
  v53 = sub_1ABF21CF4();
  v11 = sub_1ABA7BB64(v53);
  v57 = v12;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v54 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v56 = v50 - v17;
  v55 = type metadata accessor for AssetRegistryAsset(0);
  v18 = sub_1ABA7BBB0(v55);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v23 = v22 - v21;
  v24 = *(*(sub_1ABAD219C(&qword_1EB4D8BE0, &qword_1ABF5B9F8) - 8) + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7ED98();
  v26 = type metadata accessor for AssetRegistryAssetLocalAvailabilityInfo(0);
  v27 = sub_1ABA7BBB0(v26);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = v50 - v33;
  v36 = *v4;
  v35 = v4[1];
  v37 = v4[2];
  v38 = v4[3];
  v39 = v4[4];
  v40 = v4[5];
  v41 = *(v0 + 16);
  AssetRegistry.locallyAvailableAsset(for:in:)();
  if (!v1)
  {
    v50[0] = v35;
    v50[1] = v36;
    v58 = v34;
    v42 = v23;
    v43 = v55;
    v44 = v56;
    v45 = v57;
    if (sub_1ABA7E1E0(v2, 1, v26) == 1)
    {
      sub_1ABD396B0(v2);
    }

    else
    {
      sub_1ABD397D0(v2, v58, type metadata accessor for AssetRegistryAssetLocalAvailabilityInfo);
      sub_1ABD3976C(v58, v32);
      if (sub_1ABA7E1E0(v32, 1, v43) != 1)
      {
        sub_1ABD397D0(v32, v42, type metadata accessor for AssetRegistryAsset);
        v46 = v54;
        v55 = v42;
        sub_1ABF21C84();
        sub_1ABF21C94();
        v47 = *(v45 + 8);
        v48 = v46;
        v49 = v53;
        v47(v48, v53);
        sub_1ABF21D34();
        v47(v44, v49);
        sub_1ABA80CF8();
        sub_1ABA7F540();
        goto LABEL_7;
      }

      sub_1ABD39830(v58, type metadata accessor for AssetRegistryAssetLocalAvailabilityInfo);
      sub_1ABD39830(v32, type metadata accessor for AssetRegistryAssetLocalAvailabilityInfo);
    }

    sub_1ABD39718();
    sub_1ABA7BD00();
    swift_willThrow();
  }

LABEL_7:
  sub_1ABA7BC90();
}

uint64_t sub_1ABD37CF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001ABF8E090 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001ABF8E0B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABD37E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD37CF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD37E2C(uint64_t a1)
{
  v2 = sub_1ABD38204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD37E68(uint64_t a1)
{
  v2 = sub_1ABD38204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD37EA4(uint64_t a1)
{
  v2 = sub_1ABD38258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD37EE0(uint64_t a1)
{
  v2 = sub_1ABD38258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD37F1C(uint64_t a1)
{
  v2 = sub_1ABD382AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD37F58(uint64_t a1)
{
  v2 = sub_1ABD382AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceServiceLoadInstanceError.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4D8B48, &qword_1ABF5B450);
  v4 = sub_1ABA7BB64(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v30 - v9;
  v10 = sub_1ABAD219C(&qword_1EB4D8B50, &qword_1ABF5B458);
  v11 = sub_1ABA7BB64(v10);
  v30 = v12;
  v31 = v11;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = sub_1ABAD219C(&qword_1EB4D8B58, &qword_1ABF5B460);
  sub_1ABA7BB64(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  v26 = *v0;
  v27 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABD38204();
  sub_1ABF252E4();
  v28 = (v20 + 8);
  if (v26)
  {
    sub_1ABD38258();
    v29 = v32;
    sub_1ABF24EC4();
    (*(v33 + 8))(v29, v34);
  }

  else
  {
    sub_1ABD382AC();
    sub_1ABF24EC4();
    (*(v30 + 8))(v17, v31);
  }

  (*v28)(v25, v18);
  sub_1ABA7BC90();
}

unint64_t sub_1ABD38204()
{
  result = qword_1EB4D8B60;
  if (!qword_1EB4D8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8B60);
  }

  return result;
}

unint64_t sub_1ABD38258()
{
  result = qword_1EB4D8B68;
  if (!qword_1EB4D8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8B68);
  }

  return result;
}

unint64_t sub_1ABD382AC()
{
  result = qword_1EB4D8B70;
  if (!qword_1EB4D8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8B70);
  }

  return result;
}

uint64_t InferenceServiceLoadInstanceError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

void InferenceServiceLoadInstanceError.init(from:)()
{
  sub_1ABA7BCA8();
  v56 = v0;
  v3 = v2;
  v53 = v4;
  v55 = sub_1ABAD219C(&qword_1EB4D8B78, &qword_1ABF5B468);
  sub_1ABA7BB64(v55);
  v52 = v5;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v48 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D8B80, &qword_1ABF5B470);
  sub_1ABA7BB64(v11);
  v51 = v12;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v48 - v16;
  v18 = sub_1ABAD219C(&qword_1EB4D8B88, &unk_1ABF5B478);
  sub_1ABA7BB64(v18);
  v54 = v19;
  v21 = *(v20 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7ED98();
  v23 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABD38204();
  v24 = v56;
  sub_1ABF252C4();
  if (v24)
  {
    goto LABEL_10;
  }

  v49 = v11;
  v50 = v17;
  v56 = v3;
  v25 = v55;
  v26 = sub_1ABF24EA4();
  v27 = sub_1ABAD4EA4(v26, 0);
  if (v29 == v30 >> 1)
  {
    v55 = v27;
LABEL_9:
    v40 = sub_1ABF24B44();
    sub_1ABA7BD00();
    v42 = v41;
    v43 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v42 = &type metadata for InferenceServiceLoadInstanceError;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v54 + 8))(v1, v18);
    v3 = v56;
LABEL_10:
    sub_1ABA84B54(v3);
LABEL_11:
    sub_1ABA7BC90();
    return;
  }

  v48[1] = 0;
  if (v29 < (v30 >> 1))
  {
    v31 = *(v28 + v29);
    v32 = sub_1ABAD4E90(v29 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 == v36 >> 1)
    {
      if (v31)
      {
        sub_1ABD38258();
        v37 = v10;
        sub_1ABA7E518();
        v38 = v53;
        v39 = v54;
        swift_unknownObjectRelease();
        (*(v52 + 8))(v37, v25);
      }

      else
      {
        sub_1ABD382AC();
        v44 = v50;
        sub_1ABA7E518();
        v38 = v53;
        v39 = v54;
        swift_unknownObjectRelease();
        (*(v51 + 8))(v44, v49);
      }

      v45 = *(v39 + 8);
      v46 = sub_1ABA90200();
      v47(v46);
      *v38 = v31;
      sub_1ABA84B54(v56);
      goto LABEL_11;
    }

    v55 = v32;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1ABD387CC(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

void sub_1ABD38814(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2;
  v6 = *a1;
  v7 = a1[1];
  v19 = *a1;
  v20 = *(a1 + 1);
  v21 = a1[4];
  v22 = a1[5];
  v8 = *sub_1ABA93E20(v4 + 2, v4[5]);
  sub_1ABD37894();
  if (!v3)
  {
    v11 = v10;
    if (v10 >> 60 == 15)
    {
      sub_1ABD3921C();
      swift_allocError();
      *v12 = 1;
      swift_willThrow();
    }

    else
    {
      v13 = v9;
      v14 = objc_autoreleasePoolPush();
      v15 = v4[12];
      sub_1ABD3965C();
      sub_1ABF217D4();
      objc_autoreleasePoolPop(v14);
      v16 = v20;
      if (v19 == v6 || (v17 = sub_1ABF25054(), v16 = v20, (v17 & 1) != 0))
      {
        *a2 = v13;
        a2[1] = v11;
        a2[2] = v19;
        a2[3] = v7;
        a2[4] = v16;
        a2[5] = *(&v20 + 1);
        a2[6] = v21;
      }

      else
      {

        sub_1ABD39608();
        swift_allocError();
        *v18 = 2;
        swift_willThrow();
        sub_1ABAC9310(v13, v11);
      }
    }
  }
}

void sub_1ABD38A28(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *a2;
  v14[0] = *a1;
  v14[1] = v3;
  v15 = v4;
  v16 = v5;
  sub_1ABD38814(v14, v13);
  if (!v2)
  {
    v7 = v13[6];
    sub_1ABA96210(v13[0], v13[1]);
    if (!v6 || (sub_1ABB130E0(), (v8 & 1) != 0))
    {

      return;
    }

    if (v7)
    {
      v9 = sub_1ABA90200();
      v11 = sub_1ABD3903C(v9, v10);

      if ((v11 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    sub_1ABD3921C();
    sub_1ABA7BD00();
    *v12 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1ABD38B38(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = *a1;
  v8[1] = v3;
  v9 = v4;
  sub_1ABD38814(v8, v7);
  if (!v2)
  {
    v1 = v7[4];
    sub_1ABA96210(v7[0], v7[1]);
  }

  return v1;
}

void sub_1ABD38BC0()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v35 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = v3;
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for InferenceServiceConfig();
  sub_1ABA7BB64(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7ED98();
  v17 = *v7;
  v16 = *(v7 + 8);
  v18 = *(v7 + 16);
  v19 = *(v7 + 32);
  v20 = *(v7 + 40);
  v37[0] = *v7;
  v37[1] = v16;
  v38 = v18;
  v39 = v19;
  v40 = v20;
  sub_1ABD38814(v37, v36);
  if (!v1)
  {
    v33 = v17;
    v34 = v12;
    v21 = v36[0];
    v22 = v36[1];

    v23 = objc_autoreleasePoolPush();
    sub_1ABD38ED8(v0, v21, v22, v5, v41, v36);
    v32 = v21;
    objc_autoreleasePoolPop(v23);
    (*(v34 + 32))(v35, AssociatedTypeWitness, v10);
    v24 = v35[2];
    v25 = v35[3];
    if (v24 == (*(v41 + 56))(v5, v41) && v25 == v26)
    {
    }

    else
    {
      v28 = sub_1ABF25054();

      if ((v28 & 1) == 0)
      {
        sub_1ABD39608();
        sub_1ABA7BD00();
        *v29 = 0;
        swift_willThrow();
        sub_1ABA96210(v32, v22);
        (*(v34 + 8))(v35, v10);
        goto LABEL_15;
      }
    }

    v30 = *v35 == v33 && v35[1] == v16;
    if (v30 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA96210(v32, v22);
    }

    else
    {
      sub_1ABD39608();
      sub_1ABA7BD00();
      *v31 = 1;
      swift_willThrow();
      sub_1ABA96210(v32, v22);
      (*(v34 + 8))(v35, v10);
    }
  }

LABEL_15:
  sub_1ABA7BC90();
}

uint64_t sub_1ABD38ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *(a1 + 96);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for InferenceServiceConfig();
  swift_getWitnessTable();
  result = sub_1ABF217D4();
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t *sub_1ABD38FD8()
{
  sub_1ABA84B54(v0 + 2);
  sub_1ABA84B54(v0 + 7);
  v1 = v0[12];

  return v0;
}

uint64_t sub_1ABD39008()
{
  sub_1ABD38FD8();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABD3903C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  v11 = *(a2 + 40);
  sub_1ABF25234();

  sub_1ABF23D34();
  v12 = sub_1ABF25294();
  v13 = ~(-1 << *(a2 + 32));
  do
  {
    v14 = v12 & v13;
    if (((*(v6 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v15 = (*(a2 + 48) + 16 * v14);
    if (*v15 == v10 && v15[1] == v9)
    {
      break;
    }

    v17 = sub_1ABF25054();
    v12 = v14 + 1;
  }

  while ((v17 & 1) == 0);

  return 0;
}

unint64_t sub_1ABD39174(uint64_t a1)
{
  result = sub_1ABB6ADDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABD391A0()
{
  result = qword_1EB4D8B90;
  if (!qword_1EB4D8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8B90);
  }

  return result;
}

unint64_t sub_1ABD391F4(uint64_t a1)
{
  result = sub_1ABD3921C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABD3921C()
{
  result = qword_1EB4D8B98;
  if (!qword_1EB4D8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8B98);
  }

  return result;
}

unint64_t sub_1ABD39270(uint64_t a1)
{
  result = sub_1ABC43B94();
  *(a1 + 8) = result;
  return result;
}

_BYTE *sub_1ABD392A4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABD393A4()
{
  result = qword_1EB4D8BA0;
  if (!qword_1EB4D8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BA0);
  }

  return result;
}

unint64_t sub_1ABD393FC()
{
  result = qword_1EB4D8BA8;
  if (!qword_1EB4D8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BA8);
  }

  return result;
}

unint64_t sub_1ABD39454()
{
  result = qword_1EB4D8BB0;
  if (!qword_1EB4D8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BB0);
  }

  return result;
}

unint64_t sub_1ABD394AC()
{
  result = qword_1EB4D8BB8;
  if (!qword_1EB4D8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BB8);
  }

  return result;
}

unint64_t sub_1ABD39504()
{
  result = qword_1EB4D8BC0;
  if (!qword_1EB4D8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BC0);
  }

  return result;
}

unint64_t sub_1ABD3955C()
{
  result = qword_1EB4D8BC8;
  if (!qword_1EB4D8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BC8);
  }

  return result;
}

unint64_t sub_1ABD395B4()
{
  result = qword_1EB4D8BD0;
  if (!qword_1EB4D8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BD0);
  }

  return result;
}

unint64_t sub_1ABD39608()
{
  result = qword_1EB4D8BD8;
  if (!qword_1EB4D8BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BD8);
  }

  return result;
}

unint64_t sub_1ABD3965C()
{
  result = qword_1EB4CED80;
  if (!qword_1EB4CED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED80);
  }

  return result;
}

uint64_t sub_1ABD396B0(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D8BE0, &qword_1ABF5B9F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABD39718()
{
  result = qword_1EB4D8BE8;
  if (!qword_1EB4D8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BE8);
  }

  return result;
}

uint64_t sub_1ABD3976C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetRegistryAssetLocalAvailabilityInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABD397D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1ABA7BBB0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1ABD39830(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1ABD39888(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

_BYTE *sub_1ABD3989C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1ABD39944(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABD3995C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABD399B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1ABD39A14(uint64_t a1)
{
  result = sub_1ABD39608();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABD39A40()
{
  result = qword_1EB4D8BF0;
  if (!qword_1EB4D8BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8BF0);
  }

  return result;
}

uint64_t sub_1ABD39ABC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD39B10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1ABD39D38()
{

  return sub_1ABF23C94();
}

uint64_t sub_1ABD39D88(uint64_t a1)
{
  v1 = sub_1ABA7BB64(a1);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  return sub_1ABF23C94();
}

uint64_t sub_1ABD39EAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D8D20, &qword_1ABF5C3C8);
  v4 = sub_1ABF23C94();
  v6 = v5;
  v7 = a1;
  result = sub_1ABF23C94();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  *(a2 + 24) = v9;
  *(a2 + 32) = 3;
  return result;
}

uint64_t sub_1ABD39F44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D8D48, &unk_1ABF5C3F0);
  v4 = sub_1ABF23C94();
  v6 = v5;
  sub_1ABD3C1B4(a1);
  result = sub_1ABF23C94();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  *(a2 + 24) = v8;
  *(a2 + 32) = 3;
  return result;
}

uint64_t sub_1ABD39FDC@<X0>(uint64_t a1@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D8D40, &qword_1ABF5C3E8);
  v2 = sub_1ABF23C94();
  v4 = v3;
  result = sub_1ABF23C94();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = result;
  *(a1 + 24) = v6;
  *(a1 + 32) = 3;
  return result;
}

uint64_t sub_1ABD3A058@<X0>(uint64_t a1@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D8D38, &qword_1ABF5C3E0);
  v2 = sub_1ABF23C94();
  v4 = v3;
  sub_1ABD3C1AC();
  result = sub_1ABF23C94();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = result;
  *(a1 + 24) = v6;
  *(a1 + 32) = 3;
  return result;
}

uint64_t sub_1ABD3A10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(a2 + 16))();
  v8 = v7;
  result = (*(a2 + 24))(a1, a2);
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = result;
  *(a3 + 24) = v10;
  *(a3 + 32) = 3;
  return result;
}

uint64_t sub_1ABD3A1E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4574736575716572 && a2 == 0xEC000000726F7272;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001ABF8E120 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001ABF8E140 == a2;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x727245726568746FLL && a2 == 0xEA0000000000726FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1ABD3A350(char a1)
{
  result = 0x4574736575716572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x727245726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABD3A3EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABD3A4B4(char a1)
{
  if (a1)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1ABD3A4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD3A1E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD3A520(uint64_t a1)
{
  v2 = sub_1ABD3ACA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD3A55C(uint64_t a1)
{
  v2 = sub_1ABD3ACA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD3A598(uint64_t a1)
{
  v2 = sub_1ABD3AD48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD3A5D4(uint64_t a1)
{
  v2 = sub_1ABD3AD48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD3A610(uint64_t a1)
{
  v2 = sub_1ABD3ADF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD3A64C(uint64_t a1)
{
  v2 = sub_1ABD3ADF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD3A690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD3A3EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD3A6B8(uint64_t a1)
{
  v2 = sub_1ABD3ACF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD3A6F4(uint64_t a1)
{
  v2 = sub_1ABD3ACF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD3A730(uint64_t a1)
{
  v2 = sub_1ABD3AE98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD3A76C(uint64_t a1)
{
  v2 = sub_1ABD3AE98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceServerErrorInfo.encode(to:)(void *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4D8BF8, &qword_1ABF5BC20);
  v4 = sub_1ABA7BB64(v3);
  v59 = v5;
  v60 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7FBE0();
  v58 = v9;
  v10 = sub_1ABAD219C(&qword_1EB4D8C00, &qword_1ABF5BC28);
  v11 = sub_1ABA7BB64(v10);
  v56 = v12;
  v57 = v11;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7FBE0();
  v55 = v16;
  v17 = sub_1ABAD219C(&qword_1EB4D8C08, &qword_1ABF5BC30);
  v18 = sub_1ABA7BB64(v17);
  v53 = v19;
  v54 = v18;
  v21 = *(v20 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v51 - v23;
  v25 = sub_1ABAD219C(&qword_1EB4D8C10, &qword_1ABF5BC38);
  sub_1ABA7BB64(v25);
  v52 = v26;
  v28 = *(v27 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v51 - v30;
  v32 = sub_1ABAD219C(&qword_1EB4D8C18, &qword_1ABF5BC40);
  v33 = sub_1ABA7BB64(v32);
  v65 = v34;
  v66 = v33;
  v36 = *(v35 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v51 - v38;
  v40 = *v1;
  v63 = v1[1];
  v64 = v40;
  v41 = v1[2];
  v61 = v1[3];
  v62 = v41;
  v42 = *(v1 + 32);
  v43 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABD3ACA0();
  sub_1ABF252E4();
  switch(v42)
  {
    case 1:
      LOBYTE(v67) = 1;
      sub_1ABD3ADF0();
      sub_1ABA7E8B4();
      LOBYTE(v67) = v64 & 1;
      sub_1ABD3AE44();
      v50 = v54;
      sub_1ABF24F84();
      (*(v53 + 8))(v24, v50);
      goto LABEL_9;
    case 2:
      LOBYTE(v67) = 2;
      sub_1ABD3AD48();
      v46 = v55;
      sub_1ABA7E8B4();
      v67 = v64;
      v68 = v63;
      sub_1ABD3AD9C();
      v47 = v57;
      sub_1ABF24F84();
      v48 = v56;
      goto LABEL_7;
    case 3:
      LOBYTE(v67) = 3;
      sub_1ABD3ACF4();
      v46 = v58;
      sub_1ABA7E8B4();
      LOBYTE(v67) = 0;
      v47 = v60;
      v49 = v71;
      sub_1ABF24F34();
      if (!v49)
      {
        LOBYTE(v67) = 1;
        sub_1ABF24F34();
      }

      v48 = v59;
LABEL_7:
      (*(v48 + 8))(v46, v47);
LABEL_9:
      result = (*(v65 + 8))(v39, v31);
      break;
    default:
      LOBYTE(v67) = 0;
      sub_1ABD3AE98();
      v44 = v66;
      sub_1ABF24EC4();
      v67 = v64;
      v68 = v63;
      v69 = v62;
      v70 = v61;
      sub_1ABD3AEEC();
      sub_1ABF24F84();
      (*(v52 + 8))(v31, v25);
      result = (*(v65 + 8))(v39, v44);
      break;
  }

  return result;
}

unint64_t sub_1ABD3ACA0()
{
  result = qword_1EB4D8C20;
  if (!qword_1EB4D8C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C20);
  }

  return result;
}

unint64_t sub_1ABD3ACF4()
{
  result = qword_1EB4D8C28;
  if (!qword_1EB4D8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C28);
  }

  return result;
}

unint64_t sub_1ABD3AD48()
{
  result = qword_1EB4D8C30;
  if (!qword_1EB4D8C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C30);
  }

  return result;
}

unint64_t sub_1ABD3AD9C()
{
  result = qword_1EB4D8C38;
  if (!qword_1EB4D8C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C38);
  }

  return result;
}

unint64_t sub_1ABD3ADF0()
{
  result = qword_1EB4D8C40;
  if (!qword_1EB4D8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C40);
  }

  return result;
}

unint64_t sub_1ABD3AE44()
{
  result = qword_1EB4D8C48;
  if (!qword_1EB4D8C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C48);
  }

  return result;
}

unint64_t sub_1ABD3AE98()
{
  result = qword_1EB4D8C50;
  if (!qword_1EB4D8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C50);
  }

  return result;
}

unint64_t sub_1ABD3AEEC()
{
  result = qword_1EB4D8C58;
  if (!qword_1EB4D8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C58);
  }

  return result;
}

uint64_t InferenceServerErrorInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = sub_1ABAD219C(&qword_1EB4D8C60, &qword_1ABF5BC48);
  v4 = sub_1ABA7BB64(v3);
  v98 = v5;
  v99 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7FBE0();
  v102 = v9;
  v10 = sub_1ABAD219C(&qword_1EB4D8C68, &qword_1ABF5BC50);
  v11 = sub_1ABA7BB64(v10);
  v96 = v12;
  v97 = v11;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7FBE0();
  v101 = v16;
  v17 = sub_1ABAD219C(&qword_1EB4D8C70, &qword_1ABF5BC58);
  v18 = sub_1ABA7BB64(v17);
  v94 = v19;
  v95 = v18;
  v21 = *(v20 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v87 - v23;
  v25 = sub_1ABAD219C(&qword_1EB4D8C78, &qword_1ABF5BC60);
  sub_1ABA7BB64(v25);
  v93 = v26;
  v28 = *(v27 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v87 - v30;
  v32 = sub_1ABAD219C(&qword_1EB4D8C80, &unk_1ABF5BC68);
  sub_1ABA7BB64(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v87 - v38;
  v40 = a1[3];
  v41 = a1[4];
  v103 = a1;
  sub_1ABA93E20(a1, v40);
  sub_1ABD3ACA0();
  v42 = v108;
  sub_1ABF252C4();
  if (v42)
  {
    goto LABEL_8;
  }

  v90 = v25;
  v91 = v31;
  v92 = v24;
  v43 = v102;
  v108 = v34;
  v44 = sub_1ABF24EA4();
  result = sub_1ABAD4EA4(v44, 0);
  v49 = v32;
  v50 = v39;
  if (v47 == v48 >> 1)
  {
LABEL_7:
    v58 = sub_1ABF24B44();
    swift_allocError();
    v60 = v59;
    v61 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v60 = &type metadata for InferenceServerErrorInfo;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69E6AF8], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    v62 = sub_1ABA7DA6C();
    v63(v62);
LABEL_8:
    v81 = v103;
    return sub_1ABA84B54(v81);
  }

  v89 = v49;
  if (v47 < (v48 >> 1))
  {
    v88 = *(v46 + v47);
    v51 = sub_1ABAD4E90(v47 + 1);
    v53 = v52;
    v55 = v54;
    swift_unknownObjectRelease();
    v56 = v100;
    if (v53 == v55 >> 1)
    {
      v57 = v89;
      switch(v88)
      {
        case 1:
          LOBYTE(v104) = 1;
          sub_1ABD3ADF0();
          sub_1ABA80D20();
          v81 = v103;
          sub_1ABD3B8FC();
          sub_1ABA93668();
          swift_unknownObjectRelease();
          v82 = sub_1ABA7F568();
          v83(v82);
          v84 = sub_1ABA7DA6C();
          v85(v84);
          v77 = 0;
          v79 = 0;
          v80 = 0;
          v78 = v104;
          break;
        case 2:
          LOBYTE(v104) = 2;
          sub_1ABD3AD48();
          sub_1ABA80D20();
          v81 = v103;
          sub_1ABD3B8A8();
          sub_1ABA93668();
          swift_unknownObjectRelease();
          v67 = sub_1ABA7F568();
          v68(v67);
          v69 = sub_1ABA7DA6C();
          v70(v69);
          v79 = 0;
          v80 = 0;
          v78 = v104;
          v77 = v105;
          break;
        case 3:
          LOBYTE(v104) = 3;
          sub_1ABD3ACF4();
          sub_1ABA80D20();
          v101 = v51;
          LOBYTE(v104) = 0;
          v64 = sub_1ABF24E14();
          v65 = v43;
          v81 = v103;
          v78 = v64;
          v77 = v71;
          LOBYTE(v104) = 1;
          v72 = sub_1ABF24E14();
          v73 = (v98 + 8);
          v74 = (v108 + 8);
          v108 = 0;
          v79 = v72;
          v80 = v86;
          swift_unknownObjectRelease();
          (*v73)(v65, v99);
          (*v74)(v50, v89);
          v56 = v100;
          break;
        default:
          LOBYTE(v104) = 0;
          sub_1ABD3AE98();
          sub_1ABA80D20();
          sub_1ABD3B950();
          sub_1ABA93668();
          v66 = v108;
          swift_unknownObjectRelease();
          v75 = sub_1ABA7F568();
          v76(v75);
          (*(v66 + 8))(v50, v57);
          v78 = v104;
          v77 = v105;
          v79 = v106;
          v80 = v107;
          v81 = v103;
          break;
      }

      *v56 = v78;
      *(v56 + 8) = v77;
      *(v56 + 16) = v79;
      *(v56 + 24) = v80;
      *(v56 + 32) = v88;
      return sub_1ABA84B54(v81);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABD3B7FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1ABD39D38();
}

uint64_t sub_1ABD3B890()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return sub_1ABD39CFC();
}

uint64_t sub_1ABD3B89C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return sub_1ABD3A058(a1);
}

unint64_t sub_1ABD3B8A8()
{
  result = qword_1EB4D8C88;
  if (!qword_1EB4D8C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C88);
  }

  return result;
}

unint64_t sub_1ABD3B8FC()
{
  result = qword_1EB4D8C90;
  if (!qword_1EB4D8C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C90);
  }

  return result;
}

unint64_t sub_1ABD3B950()
{
  result = qword_1EB4D8C98;
  if (!qword_1EB4D8C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8C98);
  }

  return result;
}

uint64_t sub_1ABD3B9B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 33))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_BYTE *storeEnumTagSinglePayload for InferenceServerErrorInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABD3BAFC(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InferenceServerErrorInfo.OtherErrorCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABD3BC88()
{
  result = qword_1EB4D8CA0;
  if (!qword_1EB4D8CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CA0);
  }

  return result;
}

unint64_t sub_1ABD3BCE0()
{
  result = qword_1EB4D8CA8;
  if (!qword_1EB4D8CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CA8);
  }

  return result;
}

unint64_t sub_1ABD3BD38()
{
  result = qword_1EB4D8CB0;
  if (!qword_1EB4D8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CB0);
  }

  return result;
}

unint64_t sub_1ABD3BD90()
{
  result = qword_1EB4D8CB8;
  if (!qword_1EB4D8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CB8);
  }

  return result;
}

unint64_t sub_1ABD3BDE8()
{
  result = qword_1EB4D8CC0;
  if (!qword_1EB4D8CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CC0);
  }

  return result;
}

unint64_t sub_1ABD3BE40()
{
  result = qword_1EB4D8CC8;
  if (!qword_1EB4D8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CC8);
  }

  return result;
}

unint64_t sub_1ABD3BE98()
{
  result = qword_1EB4D8CD0;
  if (!qword_1EB4D8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CD0);
  }

  return result;
}

unint64_t sub_1ABD3BEF0()
{
  result = qword_1EB4D8CD8;
  if (!qword_1EB4D8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CD8);
  }

  return result;
}

unint64_t sub_1ABD3BF48()
{
  result = qword_1EB4D8CE0;
  if (!qword_1EB4D8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CE0);
  }

  return result;
}

unint64_t sub_1ABD3BFA0()
{
  result = qword_1EB4D8CE8;
  if (!qword_1EB4D8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CE8);
  }

  return result;
}

unint64_t sub_1ABD3BFF8()
{
  result = qword_1EB4D8CF0;
  if (!qword_1EB4D8CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CF0);
  }

  return result;
}

unint64_t sub_1ABD3C050()
{
  result = qword_1EB4D8CF8;
  if (!qword_1EB4D8CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8CF8);
  }

  return result;
}

unint64_t sub_1ABD3C0A8()
{
  result = qword_1EB4D8D00;
  if (!qword_1EB4D8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8D00);
  }

  return result;
}

unint64_t sub_1ABD3C100()
{
  result = qword_1EB4D8D08;
  if (!qword_1EB4D8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8D08);
  }

  return result;
}

unint64_t sub_1ABD3C158()
{
  result = qword_1EB4D8D10;
  if (!qword_1EB4D8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8D10);
  }

  return result;
}

id sub_1ABD3C1B4(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t sub_1ABD3C1C8()
{
  sub_1ABD3C200(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t static InferenceServiceCachePolicy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && (v8 = *a1, v9 = *a2, v2 == v3);
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t InferenceServiceConfig.instanceId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InferenceServiceConfig.definitionId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1ABD3C330(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6174736E69 && a2 == 0xEA00000000006449;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6974696E69666564 && a2 == 0xEC00000064496E6FLL;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001ABF8E230 == a2;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1ABD3C4A0(char a1)
{
  result = 0x65636E6174736E69;
  switch(a1)
  {
    case 1:
      result = 0x6974696E69666564;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6574656D61726170;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1ABD3C534(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1ABD3C4A0(*v1);
}

uint64_t sub_1ABD3C540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1ABD3C330(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1ABD3C570@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_1ABB02A2C();
  *a2 = result;
  return result;
}

uint64_t sub_1ABD3C5A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABD3C5F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t InferenceServiceConfig.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v24[1] = *(a2 + 16);
  v25 = v4;
  type metadata accessor for InferenceServiceConfig.CodingKeys();
  sub_1ABA7DA80();
  swift_getWitnessTable();
  v5 = sub_1ABF24FC4();
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  v14 = v26;
  sub_1ABF252E4();
  v15 = *v14;
  v16 = v14[1];
  v31 = 0;
  v17 = v27;
  sub_1ABF24F34();
  if (!v17)
  {
    v18 = v25;
    v19 = v14[2];
    v20 = v14[3];
    sub_1ABA8E804();
    sub_1ABF24F34();
    v28 = v14[4];
    v30 = 2;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80D40(&qword_1EB4D4308);
    sub_1ABF24F14();
    v21 = *(a2 + 44);
    v29 = 3;
    v22 = *(v18 + 16);
    sub_1ABF24F84();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t InferenceServiceConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v39 = *(a2 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InferenceServiceConfig.CodingKeys();
  sub_1ABA7DA80();
  swift_getWitnessTable();
  v44 = sub_1ABF24EB4();
  sub_1ABA7BB64(v44);
  v41 = v9;
  v11 = *(v10 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v43 = a3;
  v15 = type metadata accessor for InferenceServiceConfig();
  sub_1ABA7BB64(v15);
  v38 = v16;
  v18 = *(v17 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v36 - v20);
  v22 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  v45 = v14;
  v23 = v46;
  sub_1ABF252C4();
  if (v23)
  {
    return sub_1ABA84B54(a1);
  }

  v37 = v15;
  v24 = v41;
  v46 = a2;
  v25 = v42;
  v26 = v43;
  v50 = 0;
  *v21 = sub_1ABF24E14();
  v21[1] = v27;
  sub_1ABA8E804();
  v21[2] = sub_1ABF24E14();
  v21[3] = v28;
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  v49 = 2;
  sub_1ABA7C41C(&qword_1ED870660);
  sub_1ABA7E8D4();
  v36 = 0;
  sub_1ABF24DF4();
  v29 = a1;
  v21[4] = v47;
  v48 = 3;
  v30 = *(v26 + 8);
  v31 = v25;
  v32 = v46;
  sub_1ABF24E64();
  (*(v24 + 8))(v45, v44);
  v33 = v37;
  (*(v39 + 32))(v21 + *(v37 + 44), v31, v32);
  v34 = v38;
  (*(v38 + 16))(v40, v21, v33);
  sub_1ABA84B54(v29);
  return (*(v34 + 8))(v21, v33);
}

uint64_t sub_1ABD3CCE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABD3CD54(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1ABF25054() & 1) != 0)
    {
      v6 = a1[4];
      v7 = a2[4];
      if (v6)
      {
        if (v7 && (sub_1ABB48494(v6, v7) & 1) != 0)
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1ABD3CDE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6174736E69 && a2 == 0xEA00000000006449;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6974696E69666564 && a2 == 0xEC00000064496E6FLL;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x80000001ABF8E230 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABD3CF08(char a1)
{
  if (!a1)
  {
    return 0x65636E6174736E69;
  }

  if (a1 == 1)
  {
    return 0x6974696E69666564;
  }

  return 0xD000000000000011;
}

uint64_t sub_1ABD3CF70(void *a1)
{
  v3 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4D8D68, &qword_1ABF5C8A8);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19[-v11];
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABD3DBA8();
  sub_1ABF252E4();
  v14 = *v3;
  v15 = v3[1];
  v21 = 0;
  sub_1ABF24F34();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    sub_1ABA8E804();
    sub_1ABF24F34();
    v20 = v3[4];
    v19[15] = 2;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80D40(&qword_1EB4D4308);
    sub_1ABF24F14();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1ABD3D124@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D8D60, &qword_1ABF5C8A0);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABD3DBA8();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  v10 = sub_1ABF24E14();
  v12 = v11;
  v19 = v10;
  sub_1ABA8E804();
  v17 = sub_1ABF24E14();
  v18 = v13;
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABA7C41C(&qword_1ED870660);
  sub_1ABA7E8D4();
  sub_1ABF24DF4();
  v14 = sub_1ABA7BCF0();
  v15(v14);
  result = sub_1ABA84B54(a1);
  *a2 = v19;
  a2[1] = v12;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v20;
  return result;
}

uint64_t sub_1ABD3D3A0(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void sub_1ABD3D400(uint64_t a1)
{
  sub_1ABD3D884();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1ABD3D498(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 40) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return sub_1ABA7E1E0((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1ABD3D628(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 40) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;

            sub_1ABA7B9B4(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_1ABD3D884()
{
  if (!qword_1EB4CE708)
  {
    sub_1ABAE2850(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    v0 = sub_1ABF247E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4CE708);
    }
  }
}

_BYTE *sub_1ABD3D8E8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABD3DA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD3CDE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD3DA48(uint64_t a1)
{
  v2 = sub_1ABD3DBA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD3DA84(uint64_t a1)
{
  v2 = sub_1ABD3DBA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1ABD3DAC4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1ABD3D124(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1ABD3DB24(uint64_t a1)
{
  *(a1 + 8) = sub_1ABD3965C();
  result = sub_1ABD3DB54();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABD3DB54()
{
  result = qword_1EB4D8D58;
  if (!qword_1EB4D8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8D58);
  }

  return result;
}

unint64_t sub_1ABD3DBA8()
{
  result = qword_1EB4CED98;
  if (!qword_1EB4CED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InferenceServiceConfigBase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABD3DCDC()
{
  result = qword_1EB4D8D70;
  if (!qword_1EB4D8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8D70);
  }

  return result;
}

unint64_t sub_1ABD3DD34()
{
  result = qword_1EB4CED88;
  if (!qword_1EB4CED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED88);
  }

  return result;
}

unint64_t sub_1ABD3DD8C()
{
  result = qword_1EB4CED90;
  if (!qword_1EB4CED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED90);
  }

  return result;
}

uint64_t InferenceServiceContextProtocol.model(for:in:configuration:)()
{
  sub_1ABA7BBF8();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[2] = v7;
  v1[3] = v8;
  v9 = *(v4 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64);
  v1[11] = sub_1ABA7E314();
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD3DE90()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  sub_1ABD3E998(v4, v0[8]);
  type metadata accessor for InferenceMLModel();
  (*(v2 + 16))(v1, v3, v4);

  v8 = v5;
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_1ABD3DFB0;
  v10 = v0[11];
  v11 = v0[7];
  v12 = v0[8];
  v13 = v0[5];
  v14 = v0[6];
  v15 = v0[3];
  v16 = v0[4];
  v17 = v0[2];

  return InferenceMLModel.__allocating_init<A>(domainId:assetId:configuration:context:)();
}

uint64_t sub_1ABD3DFB0()
{
  v2 = *v1;
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  sub_1ABA7D4E0();
  *v7 = v6;
  *(v2 + 104) = v0;

  if (!v0)
  {
    v8 = *(v2 + 88);

    v9 = *(v6 + 8);

    __asm { BRAA            X2, X16 }
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD3E0FC()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 88);

  sub_1ABA7BBE0();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t InferenceServiceRunContext.run<A>(with:on:interface:parentEventId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 112) = a8;
  *(v9 + 120) = v8;
  *(v9 + 96) = a5;
  *(v9 + 104) = a7;
  *(v9 + 288) = a6;
  *(v9 + 80) = a2;
  *(v9 + 88) = a4;
  *(v9 + 72) = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v9 + 128) = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  *(v9 + 136) = v12;
  v13 = *(v12 + 64);
  *(v9 + 144) = sub_1ABA7E314();
  v14 = type metadata accessor for InferenceMessageRequest();
  *(v9 + 152) = v14;
  v15 = *(v14 - 8);
  *(v9 + 160) = v15;
  v16 = *(v15 + 64);
  *(v9 + 168) = sub_1ABA7E314();
  *(v9 + 176) = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for InferenceMessageResponse();
  *(v9 + 184) = v17;
  v18 = *(v17 - 8);
  *(v9 + 192) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = *a3;
  *(v9 + 232) = *(a3 + 16);
  *(v9 + 240) = *(a3 + 24);
  *(v9 + 256) = *(a3 + 40);
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD3E360()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 288);
  sub_1ABD3E928();
  if (v2)
  {
    v3 = *(v0 + 120);
    v4 = (v3 + 24);
  }

  else
  {
    v4 = (v0 + 96);
    v3 = *(v0 + 120);
  }

  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v20 = *(v0 + 216);
  v21 = *(v0 + 232);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = *(v0 + 128);
  v24 = *(v0 + 112);
  v25 = *v4;
  v22 = *(v0 + 168);
  v23 = *(v0 + 104);
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  v12 = *(v3 + 16);
  *(v0 + 264) = *(v12 + 16);
  swift_unownedRetainStrong();
  *(v0 + 16) = v20;
  *(v0 + 32) = v21;
  *(v0 + 48) = v6;
  *(v0 + 56) = v5;
  (*(v7 + 16))(v8, v10, v9);
  sub_1ABD2B514(v8, v25, 0, v9, v23, v24, v22);
  *(v0 + 64) = *(v12 + 24);

  v13 = swift_task_alloc();
  *(v0 + 272) = v13;
  *v13 = v0;
  v13[1] = sub_1ABD3E4F8;
  v14 = *(v0 + 208);
  v15 = *(v0 + 168);
  v16 = *(v0 + 104);
  v17 = *(v0 + 112);
  v18 = *(v0 + 88);

  return sub_1ABD33398(v14, (v0 + 16), v18, v15, (v0 + 64), v16, v17);
}

uint64_t sub_1ABD3E4F8()
{
  v2 = *v1;
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = v4[34];
  v6 = v4[33];
  v7 = v4[21];
  v8 = v4[20];
  v9 = v4[19];
  v10 = *v1;
  sub_1ABA7D4E0();
  *v11 = v10;
  *(v2 + 280) = v0;

  v12 = *(v2 + 64);

  (*(v8 + 8))(v7, v9);
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD3E688()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[18];
  v8 = v0[9];
  (*(v4 + 16))(v1, v2, v3);
  sub_1ABD49C04(v1, v5, v8);
  (*(v4 + 8))(v2, v3);

  sub_1ABA7BBE0();

  return v9();
}

uint64_t sub_1ABD3E774()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[21];
  v4 = v0[18];

  sub_1ABA7BBE0();
  v6 = v0[35];

  return v5();
}

void sub_1ABD3E7FC(char a1)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock((v3 + 24));
  *(*(v3 + 16) + 16) = a1;

  os_unfair_lock_unlock((v3 + 24));
}

void *sub_1ABD3E844(void *a1)
{
  v2 = a1[1];
  v1[2] = *a1;
  v1[3] = v2;
  swift_unownedRetain();

  type metadata accessor for InferenceServiceContextMemberVariables.BoolClass();
  v3 = swift_allocObject();
  *(v3 + 16) = 1;
  sub_1ABAD219C(&qword_1EB4D8D78, qword_1ABF5CB60);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  v1[4] = v4;
  return v1;
}

void *InferenceServiceContextMemberVariables.deinit()
{
  v1 = v0[2];
  swift_unownedRelease();
  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t InferenceServiceContextMemberVariables.__deallocating_deinit()
{
  InferenceServiceContextMemberVariables.deinit();

  return swift_deallocClassInstance();
}

void sub_1ABD3E928()
{
  v1 = *(*(v0 + 16) + 32);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(*(v1 + 16) + 16);
  os_unfair_lock_unlock((v1 + 24));
  if (v2 != 1)
  {
    sub_1ABA80D64();
    sub_1ABA7DA98();
    __break(1u);
  }
}

uint64_t sub_1ABD3E998(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 8))() + 32);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(*(v2 + 16) + 16);
  os_unfair_lock_unlock((v2 + 24));

  if (v3 != 1)
  {
    sub_1ABA80D64();
    result = sub_1ABA7DA98();
    __break(1u);
  }

  return result;
}

uint64_t InferenceServiceContextProtocol.viewService()()
{
  if (qword_1ED870898 != -1)
  {
    swift_once();
  }

  return qword_1ED8708B8();
}

uint64_t InferenceServiceContextProtocol.asset(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  sub_1ABA814B0();
  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD3EACC()
{
  v21 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = type metadata accessor for AssetRegistry();
  v5 = *((*(v2 + 8))(v3, v2) + 16);
  swift_unownedRetainStrong();

  sub_1ABA93E64(v5 + 32, (v0 + 2));

  v6 = v0[5];
  v7 = v0[6];
  v8 = sub_1ABA93E20(v0 + 2, v6);
  v19[0] = sub_1ABAF31C0;
  v19[1] = 0;
  v20 = 0;
  v9 = *(v6 - 8);
  v10 = *(v9 + 64);
  v11 = sub_1ABA7E314();
  (*(v9 + 16))(v11, v8, v6);
  v0[15] = sub_1ABA94614(v11, v19, v4, v6, *(v7 + 8));

  sub_1ABA84B54(v0 + 2);
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_1ABD3ECA0;
  v13 = v0[10];
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[9];
  v17 = v0[7];

  return AssetRegistry.asset(for:in:)();
}

uint64_t sub_1ABD3ECA0()
{
  sub_1ABA7BBF8();
  v2 = *v1;
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_1ABA7D4E0();
  *v7 = v6;
  *(v2 + 136) = v0;

  if (!v0)
  {
    v8 = *(v2 + 120);

    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABD3EDC8()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 120);

  sub_1ABA7BBE0();
  v3 = *(v0 + 136);

  return v2();
}

uint64_t sub_1ABD3EE24(void *a1)
{
  v2 = v1;
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  type metadata accessor for InferenceServiceContextMemberVariables();
  v4 = swift_allocObject();
  sub_1ABD3E844(v6);
  *(v2 + 16) = v4;
  return v2;
}

uint64_t InferenceServiceInitContext.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABD3EEB8(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  type metadata accessor for InferenceServiceContextMemberVariables();
  v6 = swift_allocObject();
  sub_1ABD3E844(v8);
  *(v3 + 16) = v6;
  *(v3 + 24) = a2;
  return v3;
}

void InferenceServiceRunContext.provide<A>(feedback:for:using:)(void *a1, uint64_t a2)
{
  sub_1ABD3E928();
  v4 = [objc_allocWithZone(type metadata accessor for FeedbackService()) init];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  FeedbackService.record<A>(feedback:for:)(a1, a2, 0, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t InferenceServiceRunContext.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t InferenceServiceRunContext.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of static InferenceServiceDefinition.buildRunner(config:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 64);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1ABB385FC;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t static InferenceServiceDefinitionList.definitions.getter()
{
  sub_1ABAD219C(&qword_1EB4D8D80, &qword_1ABF5CC30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1ABF3BFC0;
  v1 = sub_1ABAD219C(&qword_1EB4D8D88, &qword_1ABF5CC38);
  v2 = sub_1ABA8F5D8();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_1ABD3F398();
  *(v0 + 32) = v2;
  v3 = sub_1ABAD219C(&qword_1EB4D8D90, &qword_1ABF5CC40);
  v4 = sub_1ABA8F5D8();
  *(v0 + 96) = v3;
  *(v0 + 104) = sub_1ABD3F6C4();
  *(v0 + 72) = v4;
  v5 = sub_1ABAD219C(&qword_1EB4D8D98, &qword_1ABF5CC48);
  v6 = sub_1ABA8F5D8();
  *(v0 + 136) = v5;
  *(v0 + 144) = sub_1ABD3FA44();
  *(v0 + 112) = v6;
  return v0;
}

unint64_t sub_1ABD3F398()
{
  result = qword_1EB4CEAC8[0];
  if (!qword_1EB4CEAC8[0])
  {
    sub_1ABAE2850(&qword_1EB4D8D88, &qword_1ABF5CC38);
    sub_1ABD3F4CC();
    sub_1ABD3F520();
    sub_1ABD3FC20(&qword_1EB4CEB98, type metadata accessor for PersonMatcherInferenceInterface.Output);
    sub_1ABD3FC20(&qword_1EB4CEBA0, type metadata accessor for PersonMatcherInferenceInterface.Output);
    sub_1ABD3F574();
    sub_1ABD3F5C8();
    sub_1ABD3F61C();
    sub_1ABD3F670();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4CEAC8);
  }

  return result;
}

unint64_t sub_1ABD3F4CC()
{
  result = qword_1EB4CEBC8;
  if (!qword_1EB4CEBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEBC8);
  }

  return result;
}

unint64_t sub_1ABD3F520()
{
  result = qword_1EB4CEBD0;
  if (!qword_1EB4CEBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEBD0);
  }

  return result;
}

unint64_t sub_1ABD3F574()
{
  result = qword_1EB4CEBA8;
  if (!qword_1EB4CEBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEBA8);
  }

  return result;
}

unint64_t sub_1ABD3F5C8()
{
  result = qword_1EB4CEBB0;
  if (!qword_1EB4CEBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEBB0);
  }

  return result;
}

unint64_t sub_1ABD3F61C()
{
  result = qword_1EB4CEBB8;
  if (!qword_1EB4CEBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEBB8);
  }

  return result;
}

unint64_t sub_1ABD3F670()
{
  result = qword_1EB4CEBC0;
  if (!qword_1EB4CEBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEBC0);
  }

  return result;
}

unint64_t sub_1ABD3F6C4()
{
  result = qword_1EB4CEAB8;
  if (!qword_1EB4CEAB8)
  {
    sub_1ABAE2850(&qword_1EB4D8D90, &qword_1ABF5CC40);
    sub_1ABD3F7A4();
    sub_1ABD3F7F8();
    sub_1ABD3F84C();
    sub_1ABD3F8A0();
    sub_1ABD3F8F4();
    sub_1ABD3F948();
    sub_1ABD3F99C();
    sub_1ABD3F9F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEAB8);
  }

  return result;
}

unint64_t sub_1ABD3F7A4()
{
  result = qword_1EB4CED08;
  if (!qword_1EB4CED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED08);
  }

  return result;
}

unint64_t sub_1ABD3F7F8()
{
  result = qword_1EB4CED10;
  if (!qword_1EB4CED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED10);
  }

  return result;
}

unint64_t sub_1ABD3F84C()
{
  result = qword_1EB4CECD8;
  if (!qword_1EB4CECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CECD8);
  }

  return result;
}

unint64_t sub_1ABD3F8A0()
{
  result = qword_1EB4CECE0;
  if (!qword_1EB4CECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CECE0);
  }

  return result;
}

unint64_t sub_1ABD3F8F4()
{
  result = qword_1EB4CECE8;
  if (!qword_1EB4CECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CECE8);
  }

  return result;
}

unint64_t sub_1ABD3F948()
{
  result = qword_1EB4CECF0;
  if (!qword_1EB4CECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CECF0);
  }

  return result;
}

unint64_t sub_1ABD3F99C()
{
  result = qword_1EB4CECF8;
  if (!qword_1EB4CECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CECF8);
  }

  return result;
}

unint64_t sub_1ABD3F9F0()
{
  result = qword_1EB4CED00;
  if (!qword_1EB4CED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED00);
  }

  return result;
}

unint64_t sub_1ABD3FA44()
{
  result = qword_1EB4CEAC0;
  if (!qword_1EB4CEAC0)
  {
    sub_1ABAE2850(&qword_1EB4D8D98, &qword_1ABF5CC48);
    sub_1ABD3FB78();
    sub_1ABD3FBCC();
    sub_1ABD3FC20(&qword_1EB4CEA60, type metadata accessor for LocationEmbedderInferenceInterface.Output);
    sub_1ABD3FC20(&qword_1EB4CEA68, type metadata accessor for LocationEmbedderInferenceInterface.Output);
    sub_1ABD3FC68();
    sub_1ABD3FCBC();
    sub_1ABD3FD10();
    sub_1ABD3FD64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEAC0);
  }

  return result;
}

unint64_t sub_1ABD3FB78()
{
  result = qword_1EB4CEA90;
  if (!qword_1EB4CEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA90);
  }

  return result;
}

unint64_t sub_1ABD3FBCC()
{
  result = qword_1EB4CEA98;
  if (!qword_1EB4CEA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA98);
  }

  return result;
}

uint64_t sub_1ABD3FC20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1ABD3FC68()
{
  result = qword_1EB4CEA70;
  if (!qword_1EB4CEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA70);
  }

  return result;
}

unint64_t sub_1ABD3FCBC()
{
  result = qword_1EB4CEA78;
  if (!qword_1EB4CEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA78);
  }

  return result;
}

unint64_t sub_1ABD3FD10()
{
  result = qword_1EB4CEA80;
  if (!qword_1EB4CEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA80);
  }

  return result;
}

unint64_t sub_1ABD3FD64()
{
  result = qword_1EB4CEA88;
  if (!qword_1EB4CEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA88);
  }

  return result;
}

uint64_t static InferenceServiceDefinitionList.localOnlyDefinitions.getter()
{
  sub_1ABAD219C(&qword_1EB4D8DA0, &qword_1ABF5CC50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1ABF3BFC0;
  v1 = sub_1ABAD219C(&qword_1EB4D8DA8, &qword_1ABF5CC58);
  v2 = sub_1ABA8F5D8();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_1ABD3FEF0(&qword_1EB4CEAA8, &qword_1EB4D8DA8, &qword_1ABF5CC58);
  *(v0 + 32) = v2;
  v3 = sub_1ABAD219C(&qword_1EB4D8DB0, &qword_1ABF5CC60);
  v4 = sub_1ABA8F5D8();
  *(v0 + 96) = v3;
  *(v0 + 104) = sub_1ABD3FEF0(&qword_1EB4CEAA0, &qword_1EB4D8DB0, &qword_1ABF5CC60);
  *(v0 + 72) = v4;
  v5 = sub_1ABAD219C(&qword_1EB4D8DB8, &qword_1ABF5CC68);
  v6 = sub_1ABA8F5D8();
  *(v0 + 136) = v5;
  *(v0 + 144) = sub_1ABD3FEF0(&qword_1EB4CEAB0, &qword_1EB4D8DB8, &qword_1ABF5CC68);
  *(v0 + 112) = v6;
  return v0;
}

uint64_t sub_1ABD3FEF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InferenceServiceDefinitionList(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1ABD40020(uint64_t a1, uint64_t a2)
{
  if (*((*(a2 + 8))() + 16))
  {
    sub_1ABA80D78();
    sub_1ABADE2BC();
    sub_1ABA7C440();
    do
    {
      sub_1ABA93E64(v3, v4 + 16);
      sub_1ABA93E20((v4 + 16), v22);
      v5 = *(v23 + 8);
      sub_1ABD40218();
      sub_1ABA7F578();
      if (v16)
      {
        sub_1ABA7DAC4(v14);
        sub_1ABADE2BC();
        v2 = v24;
      }

      sub_1ABA8F5F0(v6, v7, v8, v9, v10, v11, v12, v13, v15, v19, v20, v21);
    }

    while (!v17);
  }

  else
  {

    v2 = MEMORY[0x1E69E7CC0];
  }

  return sub_1ABBFA534(v2);
}

uint64_t sub_1ABD40114(uint64_t a1, uint64_t a2)
{
  if (*((*(a2 + 16))() + 16))
  {
    sub_1ABA80D78();
    sub_1ABADE2FC();
    sub_1ABA7C440();
    do
    {
      sub_1ABA93E64(v3, v4 + 16);
      sub_1ABA93E20((v4 + 16), v21);
      sub_1ABD40218();
      sub_1ABA7F578();
      if (v15)
      {
        sub_1ABA7DAC4(v13);
        sub_1ABADE2FC();
        v2 = v22;
      }

      sub_1ABA8F5F0(v5, v6, v7, v8, v9, v10, v11, v12, v14, v18, v19, v20);
    }

    while (!v16);
  }

  else
  {

    v2 = MEMORY[0x1E69E7CC0];
  }

  return sub_1ABBFA55C(v2);
}

uint64_t sub_1ABD40218()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1ABD402F4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABD403AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*(sub_1ABAD219C(&qword_1EB4D1AC0, &qword_1ABF33C50) - 8) + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - v10;
  sub_1ABD48D94(a3, v27 - v10);
  v12 = sub_1ABF24294();
  v13 = sub_1ABA7E1E0(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1ABA7E208(v11);
  }

  else
  {
    sub_1ABF24284();
    sub_1ABA7D08C(v12);
    v15 = *(v14 + 8);
    v16 = sub_1ABA954F0();
    v17(v16);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = sub_1ABF24244();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23 = sub_1ABF23CA4() + 32;

      if (v22 | v20)
      {
        v28[0] = 0;
        v28[1] = 0;
        v24 = v28;
        v28[2] = v20;
        v28[3] = v22;
      }

      else
      {
        v24 = 0;
      }

      v27[1] = 7;
      v27[2] = v24;
      v27[3] = v23;
      v25 = sub_1ABA97360();

      sub_1ABA7E208(a3);

      return v25;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1ABA7E208(a3);
  if (v22 | v20)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v20;
    v28[7] = v22;
  }

  return sub_1ABA97360();
}

uint64_t InferenceServiceInstanceQualifiedID.serviceInstanceId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1ABA7D000();
}

uint64_t InferenceServiceInstanceQualifiedID.assetRegistryAssetId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1ABA7D000();
}

uint64_t InferenceServiceInstanceQualifiedID.assetRegistryAssetDomain.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1ABA7D000();
}

uint64_t InferenceServiceInstanceQualifiedID.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v7 = v0[4];
  v8 = v0[5];

  sub_1ABAA2330();
  MEMORY[0x1AC5A9410](v3, v4);
  sub_1ABAA2330();
  v5 = sub_1ABA7E378();
  MEMORY[0x1AC5A9410](v5);
  return v7;
}

uint64_t static InferenceServiceInstanceQualifiedID.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_1ABF25054() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v4 == v7;
  if (!v11 && (sub_1ABF25054() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  sub_1ABA7D000();

  return sub_1ABF25054();
}

uint64_t sub_1ABD407AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001ABF8E4D0 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001ABF89260 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x80000001ABF8E4F0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_1ABD408C4(char a1)
{
  result = 0xD000000000000011;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0xD000000000000018;
    }
  }

  return result;
}

uint64_t sub_1ABD40924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD407AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD4094C(uint64_t a1)
{
  v2 = sub_1ABD40B4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD40988(uint64_t a1)
{
  v2 = sub_1ABD40B4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceServiceInstanceQualifiedID.encode(to:)()
{
  sub_1ABA7BCA8();
  v19 = v1;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D8DC0, &qword_1ABF5CE40);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v18[3] = v0[3];
  v18[4] = v14;
  v15 = v0[4];
  v18[1] = v0[5];
  v18[2] = v15;
  v16 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABD40B4C();
  sub_1ABF252E4();
  sub_1ABA8AF68();
  v17 = v19;
  sub_1ABF24F34();
  if (!v17)
  {
    sub_1ABA8E804();
    sub_1ABF24F34();
    sub_1ABF24F34();
  }

  (*(v6 + 8))(v11, v4);
  sub_1ABA7BC90();
}

unint64_t sub_1ABD40B4C()
{
  result = qword_1EB4CEA48;
  if (!qword_1EB4CEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA48);
  }

  return result;
}

uint64_t InferenceServiceInstanceQualifiedID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1ABF23D34();
  sub_1ABA7E378();
  sub_1ABF23D34();
  sub_1ABA8E7C4();

  return sub_1ABF23D34();
}

uint64_t InferenceServiceInstanceQualifiedID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF23D34();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

void InferenceServiceInstanceQualifiedID.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  v6 = sub_1ABAD219C(&qword_1EB4D8DC8, &qword_1ABF5CE48);
  sub_1ABA7BB64(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BCE0();
  v12 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABD40B4C();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v3);
  }

  else
  {
    v13 = sub_1ABF24E14();
    v22 = v14;
    sub_1ABA8E804();
    v20 = sub_1ABF24E14();
    v21 = v15;
    v16 = sub_1ABF24E14();
    v18 = v17;
    v19 = v16;
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    v5[1] = v22;
    v5[2] = v20;
    v5[3] = v21;
    v5[4] = v19;
    v5[5] = v18;

    sub_1ABA84B54(v3);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABD40EBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001ABF8E510 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABD40F58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001ABF8E530 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001ABF8E550 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1ABD4102C(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1ABD410A0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  sub_1ABF25234();
  InferenceServiceInstanceQualifiedID.hash(into:)();
  return sub_1ABF25294();
}

uint64_t sub_1ABD410FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD40EBC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABD41128(uint64_t a1)
{
  v2 = sub_1ABD41440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD41164(uint64_t a1)
{
  v2 = sub_1ABD41440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABD411A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD40F58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD411D0(uint64_t a1)
{
  v2 = sub_1ABD41494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD4120C(uint64_t a1)
{
  v2 = sub_1ABD41494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceServiceInstanceRequestError.encode(to:)()
{
  sub_1ABA7BCA8();
  v5 = v4;
  v6 = sub_1ABAD219C(&qword_1EB4D8DD0, &qword_1ABF5CE50);
  sub_1ABA7BB64(v6);
  v22 = v7;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA83634();
  v11 = sub_1ABAD219C(&qword_1EB4D8DD8, &qword_1ABF5CE58);
  sub_1ABA7BB64(v11);
  v21 = v12;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BCE0();
  v16 = v0[1];
  v19 = v0[2];
  v20 = *v0;
  v18 = v0[3];
  v17 = v5[4];
  sub_1ABA93E20(v5, v5[3]);
  sub_1ABD41440();
  sub_1ABF252E4();
  sub_1ABD41494();
  sub_1ABF24EC4();
  sub_1ABF24F34();
  if (!v1)
  {
    sub_1ABA8E804();
    sub_1ABF24F34();
  }

  (*(v22 + 8))(v2, v6);
  (*(v21 + 8))(v3, v11);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

unint64_t sub_1ABD41440()
{
  result = qword_1EB4D8DE0;
  if (!qword_1EB4D8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8DE0);
  }

  return result;
}

unint64_t sub_1ABD41494()
{
  result = qword_1EB4D8DE8;
  if (!qword_1EB4D8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D8DE8);
  }

  return result;
}

void InferenceServiceInstanceRequestError.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v46 = v4;
  v5 = sub_1ABAD219C(&qword_1EB4D8DF0, &qword_1ABF5CE60);
  sub_1ABA7BB64(v5);
  v43 = v6;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BCE0();
  v10 = sub_1ABAD219C(&qword_1EB4D8DF8, &unk_1ABF5CE68);
  sub_1ABA7BB64(v10);
  v44 = v11;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA83634();
  v15 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABD41440();
  sub_1ABF252C4();
  if (v0)
  {
    goto LABEL_8;
  }

  v16 = sub_1ABF24EA4();
  sub_1ABAD4EA4(v16, 0);
  v19 = v10;
  if (v17 == v18 >> 1)
  {
LABEL_7:
    v24 = sub_1ABF24B44();
    sub_1ABA7D104();
    swift_allocError();
    v26 = v25;
    v27 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v26 = &type metadata for InferenceServiceInstanceRequestError;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    v28 = *MEMORY[0x1E69E6AF8];
    sub_1ABA7D08C(v24);
    (*(v29 + 104))(v26);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v44 + 8))(v1, v19);
LABEL_8:
    v40 = v3;
    goto LABEL_9;
  }

  if (v17 < (v18 >> 1))
  {
    sub_1ABAD4E90(v17 + 1);
    v21 = v20;
    v23 = v22;
    swift_unknownObjectRelease();
    if (v21 == v23 >> 1)
    {
      sub_1ABD41494();
      sub_1ABF24D94();
      v41 = sub_1ABF24E14();
      v42 = v30;
      sub_1ABA8E804();
      v31 = (v44 + 8);
      v32 = sub_1ABF24E14();
      v45 = v33;
      swift_unknownObjectRelease();
      v34 = *(v43 + 8);
      v35 = sub_1ABA7EDF8();
      v36(v35);
      v37 = *v31;
      v38 = sub_1ABA8AF68();
      v39(v38);
      *v46 = v41;
      v46[1] = v42;
      v46[2] = v32;
      v46[3] = v45;
      v40 = v3;
LABEL_9:
      sub_1ABA84B54(v40);
      sub_1ABA8869C();
      sub_1ABA7BC90();
      return;
    }

    v19 = v10;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1ABD41944@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0;
}

uint64_t InferenceServiceInstanceRunEvent.instanceQualifiedId.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
}

uint64_t InferenceServiceInstanceRunEvent.variant.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v7 = v0[4];
  v8 = v0[5];

  swift_bridgeObjectRetain_n();
  sub_1ABAA2330();
  MEMORY[0x1AC5A9410](v3, v4);
  sub_1ABAA2330();
  v5 = sub_1ABA7D2D8();
  MEMORY[0x1AC5A9410](v5);

  return v7;
}

uint64_t sub_1ABD41ACC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001ABF8E470 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABD41B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD41ACC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABD41B98(uint64_t a1)
{
  v2 = sub_1ABD4838C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD41BD4(uint64_t a1)
{
  v2 = sub_1ABD4838C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceServiceInstanceRunEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v18 = sub_1ABAD219C(&qword_1EB4D8E00, &qword_1ABF5CE78);
  sub_1ABA7BB64(v18);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA83634();
  v8 = v0[1];
  v9 = v0[3];
  v16 = v0[2];
  v17 = *v0;
  v10 = v0[5];
  v15 = v0[4];
  v11 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABD4838C();

  sub_1ABF252E4();
  sub_1ABD483E0();
  sub_1ABF24F84();

  v12 = *(v4 + 8);
  v13 = sub_1ABA8AF68();
  v14(v13);
  sub_1ABA7BC90();
}

void InferenceServiceInstanceRunEvent.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D8E08, &qword_1ABF5CE80);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BCE0();
  v9 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABD4838C();
  sub_1ABF252C4();
  if (!v0)
  {
    sub_1ABD48434();
    sub_1ABF24E64();
    v10 = sub_1ABA7BFF0();
    v11(v10);
    *v4 = v12;
    *(v4 + 16) = v13;
    *(v4 + 32) = v14;
    *(v4 + 40) = v15;
  }

  sub_1ABA84B54(v2);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABD41F2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 8);
  sub_1ABA95334();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA8CD18();
  sub_1ABAA1358();
  sub_1ABAABCDC();
  v7 = type metadata accessor for InferenceServiceInstance();
  sub_1ABD373CC(a1, v11);
  v10 = sub_1ABD421DC(AssociatedTypeWitness, v11);
  a3[3] = v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABAA3168();
  sub_1ABA839F8();
  swift_getAssociatedConformanceWitness();
  sub_1ABA839F8();
  swift_getAssociatedConformanceWitness();
  sub_1ABAA3168();
  sub_1ABA839F8();
  swift_getAssociatedConformanceWitness();
  sub_1ABA839F8();
  swift_getAssociatedConformanceWitness();
  sub_1ABAA3168();
  swift_getAssociatedConformanceWitness();
  sub_1ABAA4150();
  swift_getAssociatedTypeWitness();
  sub_1ABA7BE8C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7BE8C();
  swift_getAssociatedConformanceWitness();
  sub_1ABAA4150();
  swift_getAssociatedTypeWitness();
  sub_1ABA7BE8C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7BE8C();
  swift_getAssociatedConformanceWitness();
  result = swift_getWitnessTable();
  a3[4] = result;
  *a3 = v10;
  return result;
}

uint64_t sub_1ABD421DC(uint64_t a1, void *a2)
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  v6 = swift_allocObject();
  sub_1ABD4254C(v6, a2);
  return v6;
}

uint64_t sub_1ABD4221C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7D000();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for InferenceServiceInstance();
  sub_1ABD373CC(a1, v7);
  result = sub_1ABD421DC(AssociatedTypeWitness, v7);
  a2[3] = v5;
  a2[4] = &off_1F20807E0;
  *a2 = result;
  return result;
}

uint64_t sub_1ABD422D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v25 = *(*v1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1ABF247E4();
  sub_1ABA7BB64(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  v19 = *(v3 + 120);
  sub_1ABA7F2A0();
  (*(v8 + 16))(v13, v1 + v19, v6);
  v20 = sub_1ABAB5704(v13);
  if (v20 == 1)
  {
    result = (*(v8 + 8))(v13, v6);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    (*(v14 + 32))(v18, v13, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(&v26, AssociatedTypeWitness, AssociatedConformanceWitness);
    result = (*(v14 + 8))(v18, AssociatedTypeWitness);
    v22 = v26;
    v23 = v27;
  }

  *a1 = v22;
  *(a1 + 8) = v23;
  *(a1 + 9) = v20 == 1;
  return result;
}

void *sub_1ABD4254C(uint64_t a1, void *a2)
{
  sub_1ABAA53DC();
  v5 = *(v4 + 120);
  v7 = *(v6 + 88);
  v8 = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v9, v10, v11, v12);
  *(v2 + *(*v2 + 128)) = 0;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[4];
  v17 = a2[5];
  v2[2] = *a2;
  v2[3] = v13;
  v2[4] = v14;
  v2[5] = v15;
  v2[6] = v16;
  v2[7] = v17;
  sub_1ABA93FC4((a2 + 6), (v2 + 8));
  v2[13] = a2[11];

  sub_1ABD45570();
  sub_1ABD37498(a2);
  return v2;
}

uint64_t sub_1ABD42688()
{
  sub_1ABF25234();
  sub_1ABAB8190(v2, *v0);
  return sub_1ABF25294();
}

uint64_t sub_1ABD426C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 72) = a7;
  *(v9 + 80) = v8;
  *(v9 + 296) = a8;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 40) = a2;
  *(v9 + 48) = a4;
  *(v9 + 32) = a1;
  v10 = *v8;
  sub_1ABAA4150();
  sub_1ABAB6938();
  *(v9 + 88) = type metadata accessor for InferenceMessageResponse();
  v11 = sub_1ABF247E4();
  *(v9 + 96) = v11;
  sub_1ABA7BBD0(v11);
  *(v9 + 104) = v12;
  v14 = *(v13 + 64);
  *(v9 + 112) = sub_1ABA7E314();
  *(v9 + 120) = *(v10 + 88);
  *(v9 + 128) = *(v10 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA95334();
  sub_1ABAB6938();
  *(v9 + 136) = type metadata accessor for InferenceMessageResponse();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v9 + 144) = TupleTypeMetadata2;
  sub_1ABA7BBD0(TupleTypeMetadata2);
  *(v9 + 152) = v16;
  v18 = *(v17 + 64) + 15;
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  sub_1ABA95334();
  sub_1ABAB6938();
  v19 = type metadata accessor for InferenceMessageRequest();
  *(v9 + 184) = v19;
  sub_1ABA93630();
  v20 = sub_1ABF247E4();
  *(v9 + 192) = v20;
  sub_1ABA7BBD0(v20);
  *(v9 + 200) = v21;
  v23 = *(v22 + 64);
  *(v9 + 208) = sub_1ABA7E314();
  sub_1ABAA4150();
  sub_1ABAB6938();
  sub_1ABAA1CE0();
  v24 = type metadata accessor for InferenceMessageRequest();
  *(v9 + 216) = v24;
  sub_1ABA7BBD0(v24);
  *(v9 + 224) = v25;
  v27 = *(v26 + 64);
  *(v9 + 232) = sub_1ABA7E314();
  v28 = *(v19 - 8);
  *(v9 + 240) = v28;
  v29 = *(v28 + 64);
  v30 = sub_1ABA7E314();
  v31 = *v36;
  v32 = v36[1];
  *(v9 + 248) = v30;
  *(v9 + 256) = v31;
  *(v9 + 264) = v32;
  if (qword_1EB4CFFC0 != -1)
  {
    sub_1ABA8F5B8();
  }

  *(v9 + 272) = qword_1EB4CF2B8;
  v33 = sub_1ABA7FCF4();

  return MEMORY[0x1EEE6DFA0](v33);
}

uint64_t sub_1ABD42A38()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  sub_1ABD44F48();
  v4 = v0[26];
  v5 = v0[23];
  (*(v0[28] + 16))(v0[29], v0[6], v0[27]);
  sub_1ABA97C10();
  if (swift_dynamicCast())
  {
    v7 = v0[32];
    v6 = v0[33];
    v9 = v0[30];
    v8 = v0[31];
    v10 = v0[22];
    v11 = v0[18];
    sub_1ABA7B9B4(v0[26], 0, 1, v0[23]);
    v12 = *(v9 + 32);
    v13 = sub_1ABA7EDF8();
    v14(v13);
    v15 = *(v11 + 48);
    v0[2] = v7;
    v0[3] = v6;
    swift_task_alloc();
    sub_1ABA8E8BC();
    v0[35] = v16;
    *v16 = v17;
    v16[1] = sub_1ABD42C70;
    v18 = v0[31];
    v19 = v0[22];
    v20 = v0[10];

    return sub_1ABD430EC();
  }

  else
  {
    v23 = v0[25];
    v22 = v0[26];
    v24 = v0[23];
    v25 = v0[24];
    v27 = v0[15];
    v26 = v0[16];
    sub_1ABA7ED8C();
    sub_1ABA7B9B4(v28, v29, v30, v31);
    v32 = *(v23 + 8);
    v33 = sub_1ABA7EDF8();
    v34(v33);
    sub_1ABAA6114();
    type metadata accessor for InferenceServiceInstance.RunErrorLocalConversion();
    sub_1ABA9091C();
    swift_getWitnessTable();
    sub_1ABA7D104();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();
    sub_1ABA96D18();

    sub_1ABA7BBE0();

    return v36();
  }
}

uint64_t sub_1ABD42C70()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v3 + 288) = v0;

  v9 = *(v3 + 272);
  if (v0)
  {
    v10 = sub_1ABD43034;
  }

  else
  {
    v10 = sub_1ABD42D70;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1ABD42D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1ABA8CFC8();
  v19 = v18[17];
  v20 = v18[14];
  v21 = v18[11];
  (*(v18[19] + 16))(v18[21], v18[22], v18[18]);
  sub_1ABA97C10();
  v22 = swift_dynamicCast();
  v23 = v18[30];
  v24 = v18[11];
  if (v22)
  {
    v25 = v18[29];
    a12 = v25;
    v70 = v18[26];
    a10 = v18[22];
    a11 = v18[31];
    v26 = v18[20];
    v71 = v18[21];
    v28 = v18[18];
    v27 = v18[19];
    v29 = v18[17];
    v30 = v18[14];
    v32 = v18[4];
    v31 = v18[5];
    (*(v23 + 8))(a11, v18[23]);
    sub_1ABA7B9B4(v30, 0, 1, v24);
    sub_1ABA7D08C(v24);
    (*(v33 + 32))(v32, v30, v24);
    (*(v27 + 32))(v26, a10, v28);
    v34 = (v26 + *(v28 + 48));
    v35 = *v34;
    LOBYTE(v34) = *(v34 + 8);
    *v31 = v35;
    *(v31 + 8) = v34;
    sub_1ABA7D08C(v29);
    v37 = *(v36 + 8);
    v38 = sub_1ABA8E7C4();
    v39(v38);

    sub_1ABA80A84();
  }

  else
  {
    v70 = v18[22];
    v71 = v18[23];
    v41 = v18[18];
    v40 = v18[19];
    v43 = v18[15];
    v42 = v18[16];
    v44 = v18[13];
    v45 = v18[14];
    v46 = v18[12];
    sub_1ABA7ED8C();
    v47 = v24;
    v49 = v48;
    sub_1ABA7B9B4(v50, v51, v52, v47);
    (*(v44 + 8))(v45, v46);
    sub_1ABAA6114();
    type metadata accessor for InferenceServiceInstance.RunErrorLocalConversion();
    sub_1ABA9091C();
    swift_getWitnessTable();
    sub_1ABA7D104();
    swift_allocError();
    *v53 = 1;
    swift_willThrow();
    (*(v40 + 8))(v70, v41);
    (*(v23 + 8))(v49, v71);
    v54 = v18[31];
    v55 = v18[29];
    v56 = v18[26];
    v58 = v18[21];
    v57 = v18[22];
    v59 = v18[20];
    v60 = v18[14];

    sub_1ABA7BBE0();
  }

  sub_1ABA8B690();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, v70, v71, a15, a16, a17, a18);
}

uint64_t sub_1ABD43034()
{
  sub_1ABA906D0();
  (*(v0[30] + 8))(v0[31], v0[23]);
  v1 = v0[36];
  sub_1ABA96D18();

  sub_1ABA7BBE0();

  return v2();
}