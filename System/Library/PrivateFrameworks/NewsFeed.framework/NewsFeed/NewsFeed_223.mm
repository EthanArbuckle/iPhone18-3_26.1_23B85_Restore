uint64_t sub_1D6F65200()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 128);
  v3 = *(v0 + 80);
  v28[7] = *(v0 + 96);
  v28[8] = v1;
  v29[0] = v2;
  *(v29 + 9) = *(v0 + 137);
  v4 = *(v0 + 64);
  v28[4] = *(v0 + 48);
  v28[5] = v4;
  v28[6] = v3;
  v5 = *(v0 + 32);
  v28[2] = *(v0 + 16);
  v28[3] = v5;
  v22 = sub_1D6F63FC8();
  v6 = 0;
  v7 = *(v0 + 160);
  do
  {
    v12 = byte_1F50FC108[v6 + 32];
    v13 = 0x676E656C6C616863;
    if (v12 == 1)
    {
      v13 = 0x6574617265646F6DLL;
    }

    v14 = 0xEB00000000676E69;
    if (v12 == 1)
    {
      v14 = 0xE800000000000000;
    }

    if (byte_1F50FC108[v6 + 32])
    {
      v15 = v13;
    }

    else
    {
      v15 = 2037604709;
    }

    if (byte_1F50FC108[v6 + 32])
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE400000000000000;
    }

    if (!*(v7 + 16))
    {
LABEL_22:

      goto LABEL_4;
    }

    v17 = sub_1D5B69D90(v15, v16);
    v19 = v18;

    if (v19)
    {
      memmove(__dst, (*(v7 + 56) + 144 * v17), 0x8AuLL);
      if (sub_1D6F662C0(__dst) != 1)
      {
        v27[7] = __dst[5];
        v27[8] = __dst[6];
        v28[0] = v27[0];
        *(v28 + 9) = *(v27 + 9);
        v27[4] = __dst[2];
        v27[5] = __dst[3];
        v27[6] = __dst[4];
        v27[2] = __dst[0];
        v27[3] = __dst[1];
        v20 = sub_1D6F63FC8();
        if (!*(v20 + 16))
        {
          goto LABEL_22;
        }

        if (v12)
        {
          if (v12 == 1)
          {
            v8 = 0xE800000000000000;
            v9 = 0x6574617265646F6DLL;
          }

          else
          {
            v9 = 0x676E656C6C616863;
            v8 = 0xEB00000000676E69;
          }
        }

        else
        {
          v8 = 0xE400000000000000;
          v9 = 2037604709;
        }

        sub_1D5BB0DB0();
        v25 = v10;
        *&v24 = v20;
        sub_1D5B7C390(&v24, v23);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1D5BAFB24(v23, v9, v8, isUniquelyReferenced_nonNull_native);
      }
    }

LABEL_4:
    ++v6;
  }

  while (v6 != 3);
  return v22;
}

uint64_t PuzzleStatsInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6F654B0(uint64_t *a1, uint64_t a2, int a3)
{
  sub_1D60441D0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v77 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v76 = &v66[-v11];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v66[-v14];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v66[-v18];
  v20 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v66[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = a3;
  if (a3)
  {
    if (a3 == 1)
    {
      v24 = 0xE800000000000000;
      v25 = 0x6574617265646F6DLL;
    }

    else
    {
      v25 = 0x676E656C6C616863;
      v24 = 0xEB00000000676E69;
    }
  }

  else
  {
    v24 = 0xE400000000000000;
    v25 = 2037604709;
  }

  v71 = a1;
  v26 = *a1;
  if (*(v26 + 16))
  {
    v27 = sub_1D5B69D90(v25, v24);
    v29 = v28;

    if (v29)
    {
      v30 = (*(v26 + 56) + 144 * v27);
      v31 = v30[7];
      v103 = v30[6];
      v104[0] = v31;
      *(v104 + 10) = *(v30 + 122);
      v32 = v30[3];
      v99 = v30[2];
      v100 = v32;
      v33 = v30[5];
      v101 = v30[4];
      v102 = v33;
      v35 = *v30;
      v34 = v30[1];
      goto LABEL_11;
    }
  }

  else
  {
  }

  LOBYTE(v80) = 1;
  LOBYTE(v79) = 1;
  v96 = 1;
  v95 = 1;
  v94 = 1;
  v93 = 1;
  v92 = 1;
  v91 = 1;
  v90 = 1;
  *&v105 = 0;
  BYTE8(v105) = 1;
  *&v106 = 0;
  BYTE8(v106) = 1;
  *&v107 = 0;
  BYTE8(v107) = 1;
  *&v108 = 0;
  BYTE8(v108) = 1;
  *&v109 = 0;
  BYTE8(v109) = 1;
  *&v110 = 0;
  BYTE8(v110) = 1;
  *&v111 = 0;
  BYTE8(v111) = 1;
  *v112 = 0;
  v112[8] = 1;
  *&v112[16] = 0;
  v112[24] = 1;
  sub_1D6F662DC(&v105);
  v103 = v111;
  v104[0] = *v112;
  *(v104 + 10) = *&v112[10];
  v99 = v107;
  v100 = v108;
  v101 = v109;
  v102 = v110;
  v35 = v105;
  v34 = v106;
LABEL_11:
  v97 = v35;
  v98 = v34;
  sub_1D6F66188(a2, v23, type metadata accessor for PuzzleStatisticValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v37 = 0;
        v77 = 0;
        v78 = 0;
        v73 = 0;
        v74 = 0;
        v72 = 0;
        v75 = *v23;
        v76 = 0;
        v42 = v23[8];
        v69 = 1;
        v38 = 1;
        v40 = 1;
        v41 = 1;
LABEL_36:
        v43 = 1;
        goto LABEL_37;
      }

      sub_1D6F66120(v23, v19, sub_1D60441D0);
      sub_1D6F66188(v19, v15, sub_1D60441D0);
      v51 = type metadata accessor for PuzzleStreak();
      if ((*(*(v51 - 8) + 48))(v15, 1, v51) != 1)
      {
        v76 = PuzzleStreak.days.getter();
        sub_1D5CEB200(v19, sub_1D60441D0);
        sub_1D5CEB200(v15, type metadata accessor for PuzzleStreak);
        v37 = 0;
        v77 = 0;
        v78 = 0;
        v41 = 0;
        v74 = 0;
        v75 = 0;
        v72 = 0;
        v73 = 0;
        v69 = 1;
        v38 = 1;
        v40 = 1;
        goto LABEL_35;
      }

      sub_1D5CEB200(v19, sub_1D60441D0);
      v48 = v15;
    }

    else
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v37 = 0;
          v75 = 0;
          v76 = 0;
          v73 = 0;
          v74 = 0;
          v72 = 0;
          v77 = *v23;
          v78 = 0;
          v38 = v23[8];
          v69 = 1;
LABEL_33:
          v40 = 1;
LABEL_34:
          v41 = 1;
LABEL_35:
          v42 = 1;
          goto LABEL_36;
        }

        v77 = 0;
        v78 = 0;
        v75 = 0;
        v76 = 0;
        v73 = 0;
        v74 = 0;
        v72 = 0;
        v37 = *v23;
        v50 = v23[8];
LABEL_32:
        v69 = v50;
        v38 = 1;
        goto LABEL_33;
      }

      v45 = v76;
      sub_1D6F66120(v23, v76, sub_1D60441D0);
      v46 = v77;
      sub_1D6F66188(v45, v77, sub_1D60441D0);
      v47 = type metadata accessor for PuzzleStreak();
      if ((*(*(v47 - 8) + 48))(v46, 1, v47) != 1)
      {
        v78 = PuzzleStreak.days.getter();
        sub_1D5CEB200(v45, sub_1D60441D0);
        sub_1D5CEB200(v46, type metadata accessor for PuzzleStreak);
        v37 = 0;
        v76 = 0;
        v77 = 0;
        v40 = 0;
        v74 = 0;
        v75 = 0;
        v72 = 0;
        v73 = 0;
        v69 = 1;
        v38 = 1;
        goto LABEL_34;
      }

      sub_1D5CEB200(v45, sub_1D60441D0);
      v48 = v46;
    }

    sub_1D5CEB200(v48, sub_1D60441D0);
    v37 = 0;
    v77 = 0;
    v78 = 0;
    v75 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    v50 = 1;
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v37 = 0;
      v77 = 0;
      v78 = 0;
      v75 = 0;
      v76 = 0;
      v72 = 0;
      v73 = 0;
      v74 = *v23;
      v43 = v23[8];
      v69 = 1;
      v38 = 1;
      v40 = 1;
      v41 = 1;
      v42 = 1;
LABEL_37:
      v44 = 1;
      goto LABEL_38;
    }

    v37 = 0;
    v77 = 0;
    v78 = 0;
    v75 = 0;
    v76 = 0;
    v44 = 0;
    v72 = 0;
    v73 = *v23;
    v74 = 0;
    v69 = 1;
    v38 = 1;
    v40 = 1;
    v41 = 1;
    v42 = 1;
    v43 = 1;
  }

  else
  {
    v37 = 0;
    if (EnumCaseMultiPayload)
    {
      v77 = 0;
      v78 = 0;
      v75 = 0;
      v76 = 0;
      v73 = 0;
      v74 = 0;
      v49 = 0;
      v72 = *v23;
      v69 = 1;
      v38 = 1;
      v40 = 1;
      v41 = 1;
      v42 = 1;
      v43 = 1;
      v44 = 1;
      goto LABEL_39;
    }

    v39 = v23[8];
    v69 = 1;
    if ((v39 & 1) == 0)
    {
      v67 = 0;
      v77 = 0;
      v78 = 0;
      v68 = *v23;
      v38 = 1;
      v40 = 1;
      v75 = 0;
      v76 = 0;
      v41 = 1;
      v42 = 1;
      v73 = 0;
      v74 = 0;
      v43 = 1;
      LOBYTE(v44) = 1;
      goto LABEL_42;
    }

    v77 = 0;
    v78 = 0;
    v38 = 1;
    v40 = 1;
    v75 = 0;
    v76 = 0;
    v41 = 1;
    v42 = 1;
    v73 = 0;
    v74 = 0;
    v43 = 1;
    v44 = 1;
    v72 = 0;
  }

LABEL_38:
  v49 = 1;
LABEL_39:
  v111 = v103;
  *v112 = v104[0];
  *&v112[10] = *(v104 + 10);
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v110 = v102;
  v105 = v97;
  v106 = v98;
  v52 = sub_1D6F662C0(&v105);
  v53 = v105;
  if (v52 == 1)
  {
    v53 = 0;
  }

  v68 = v53;
  v67 = (v52 == 1) | BYTE8(v105);
  if (!v49)
  {
    if (!v44)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

LABEL_42:
  v111 = v103;
  *v112 = v104[0];
  *&v112[10] = *(v104 + 10);
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v110 = v102;
  v105 = v97;
  v106 = v98;
  if (sub_1D6F662C0(&v105) == 1)
  {
    v72 = 0;
    LOBYTE(v49) = 1;
    if ((v44 & 1) == 0)
    {
LABEL_50:
      v54 = 0;
      if (v43)
      {
        goto LABEL_51;
      }

LABEL_55:
      v55 = 0;
      if (!v42)
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    }
  }

  else
  {
    v72 = v106;
    LOBYTE(v49) = BYTE8(v106);
    if ((v44 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

LABEL_46:
  v111 = v103;
  *v112 = v104[0];
  *&v112[10] = *(v104 + 10);
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v110 = v102;
  v105 = v97;
  v106 = v98;
  if (sub_1D6F662C0(&v105) == 1)
  {
    v73 = 0;
    v54 = 1;
    if (v43)
    {
      goto LABEL_51;
    }

    goto LABEL_55;
  }

  v73 = v107;
  v54 = BYTE8(v107);
  if ((v43 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_51:
  v111 = v103;
  *v112 = v104[0];
  *&v112[10] = *(v104 + 10);
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v110 = v102;
  v105 = v97;
  v106 = v98;
  if (sub_1D6F662C0(&v105) == 1)
  {
    v74 = 0;
    v55 = 1;
    if ((v42 & 1) == 0)
    {
LABEL_60:
      v56 = 0;
      if (v41)
      {
        goto LABEL_61;
      }

LABEL_65:
      v57 = 0;
      if (!v40)
      {
        goto LABEL_70;
      }

      goto LABEL_66;
    }
  }

  else
  {
    v74 = v108;
    v55 = BYTE8(v108);
    if ((v42 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

LABEL_56:
  v111 = v103;
  *v112 = v104[0];
  *&v112[10] = *(v104 + 10);
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v110 = v102;
  v105 = v97;
  v106 = v98;
  if (sub_1D6F662C0(&v105) == 1)
  {
    v75 = 0;
    v56 = 1;
    if (v41)
    {
      goto LABEL_61;
    }

    goto LABEL_65;
  }

  v75 = v109;
  v56 = BYTE8(v109);
  if ((v41 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_61:
  v111 = v103;
  *v112 = v104[0];
  *&v112[10] = *(v104 + 10);
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v110 = v102;
  v105 = v97;
  v106 = v98;
  if (sub_1D6F662C0(&v105) == 1)
  {
    v76 = 0;
    v57 = 1;
    if ((v40 & 1) == 0)
    {
LABEL_70:
      v58 = 0;
      if (v38)
      {
        goto LABEL_71;
      }

      goto LABEL_75;
    }
  }

  else
  {
    v76 = v110;
    v57 = BYTE8(v110);
    if ((v40 & 1) == 0)
    {
      goto LABEL_70;
    }
  }

LABEL_66:
  v111 = v103;
  *v112 = v104[0];
  *&v112[10] = *(v104 + 10);
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v110 = v102;
  v105 = v97;
  v106 = v98;
  if (sub_1D6F662C0(&v105) == 1)
  {
    v78 = 0;
    v58 = 1;
    if (v38)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v78 = v111;
    v58 = BYTE8(v111);
    if (v38)
    {
LABEL_71:
      v111 = v103;
      *v112 = v104[0];
      *&v112[10] = *(v104 + 10);
      v107 = v99;
      v108 = v100;
      v109 = v101;
      v110 = v102;
      v105 = v97;
      v106 = v98;
      if (sub_1D6F662C0(&v105) == 1)
      {
        v77 = 0;
        v59 = 1;
        if ((v69 & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v77 = *v112;
        v59 = v112[8];
        if ((v69 & 1) == 0)
        {
LABEL_80:
          v60 = 0;
          goto LABEL_82;
        }
      }

LABEL_78:
      v111 = v103;
      *v112 = v104[0];
      *&v112[10] = *(v104 + 10);
      v107 = v99;
      v108 = v100;
      v109 = v101;
      v110 = v102;
      v105 = v97;
      v106 = v98;
      if (sub_1D6F662C0(&v105) == 1)
      {
        v37 = 0;
        v60 = 1;
      }

      else
      {
        v37 = *&v112[16];
        v60 = v112[24];
      }

      goto LABEL_82;
    }
  }

LABEL_75:
  v59 = 0;
  v60 = 0;
  if (v69)
  {
    goto LABEL_78;
  }

LABEL_82:
  v96 = v67 & 1;
  v95 = v49;
  v94 = v54;
  v93 = v55;
  v92 = v56;
  v91 = v57;
  v90 = v58;
  v89 = v59;
  v88 = v60;
  if (v70)
  {
    v61 = v71;
    if (v70 == 1)
    {
      v62 = 0xE800000000000000;
      v63 = 0x6574617265646F6DLL;
    }

    else
    {
      v63 = 0x676E656C6C616863;
      v62 = 0xEB00000000676E69;
    }
  }

  else
  {
    v62 = 0xE400000000000000;
    v61 = v71;
    v63 = 2037604709;
  }

  *&v80 = v68;
  BYTE8(v80) = v96;
  *&v81 = v72;
  BYTE8(v81) = v95;
  *&v82 = v73;
  BYTE8(v82) = v94;
  *&v83 = v74;
  BYTE8(v83) = v93;
  *&v84 = v75;
  BYTE8(v84) = v92;
  *&v85 = v76;
  BYTE8(v85) = v91;
  *&v86 = v78;
  BYTE8(v86) = v90;
  *&v87[0] = v77;
  BYTE8(v87[0]) = v89;
  *&v87[1] = v37;
  BYTE8(v87[1]) = v88;
  sub_1D6F662DC(&v80);
  v111 = v86;
  *v112 = v87[0];
  *&v112[10] = *(v87 + 10);
  v107 = v82;
  v108 = v83;
  v109 = v84;
  v110 = v85;
  v105 = v80;
  v106 = v81;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v61;
  sub_1D6D78E08(&v105, v63, v62, isUniquelyReferenced_nonNull_native);

  *v61 = v79;
  return result;
}

uint64_t sub_1D6F66120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6F66188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6F66240(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 137))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6F66260(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
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

  *(result + 137) = v3;
  return result;
}

uint64_t sub_1D6F662C0(uint64_t a1)
{
  if (*(a1 + 137))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t FeedRequestType.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t FeedRequestType.identifier.getter()
{
  if (*v0)
  {
    return 7368564;
  }

  else
  {
    return 0x746E65636572;
  }
}

unint64_t sub_1D6F663A4()
{
  result = qword_1EC898B18;
  if (!qword_1EC898B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898B18);
  }

  return result;
}

uint64_t sub_1D6F663F8()
{
  if (*v0)
  {
    return 7368564;
  }

  else
  {
    return 0x746E65636572;
  }
}

void sub_1D6F66438(uint64_t a1)
{
  if (*(v1 + qword_1EDF11058) == a1)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *(v1 + qword_1EDF11068);
      v5 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms;
      v6 = (v2 + 32);
      v7 = &selRef_setHyphenationFactor_;
      do
      {
        v28[0] = *v6;
        v9 = v6[1];
        v10 = v6[2];
        v11 = v6[4];
        v28[3] = v6[3];
        v28[4] = v11;
        v28[1] = v9;
        v28[2] = v10;
        v12 = v6[5];
        v13 = v6[6];
        v14 = v6[7];
        *(v29 + 9) = *(v6 + 121);
        v28[6] = v13;
        v29[0] = v14;
        v28[5] = v12;
        memmove(__dst, v6, 0x89uLL);
        v15 = sub_1D692954C(__dst);
        v16 = sub_1D5DA9098(__dst);
        if (v15 == 1)
        {
          v17 = &unk_1EDF17320;
          v18 = &qword_1EDF17318;
          v19 = &qword_1EDF045A8;
        }

        else
        {
          v17 = &unk_1EC88E4A0;
          v18 = &qword_1EDF17328;
          v19 = &qword_1EDF04638;
        }

        v20 = sub_1D69295B8(v17, v18, v19);
        v21 = *v16;
        swift_getObjectType();
        sub_1D6F68D00(v28, v27);
        if (sub_1D725DE8C())
        {
          sub_1D725DEAC();
          sub_1D725DE9C();
          swift_beginAccess();
          v22 = *&v4[v5];
          v23 = v21;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v4[v5] = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = sub_1D698BB50(0, v22[2] + 1, 1, v22);
            *&v4[v5] = v22;
          }

          v26 = v22[2];
          v25 = v22[3];
          if (v26 >= v25 >> 1)
          {
            v22 = sub_1D698BB50((v25 > 1), v26 + 1, 1, v22);
          }

          v22[2] = v26 + 1;
          v8 = &v22[2 * v26];
          v8[4] = v23;
          v8[5] = v20;
          *&v4[v5] = v22;
          swift_endAccess();
          v7 = &selRef_setHyphenationFactor_;
        }

        [v4 v7[135]];
        sub_1D6F68D5C(v28);

        v6 += 9;
        --v3;
      }

      while (v3);
    }

    sub_1D6F66B10();
    sub_1D6F66E0C();
  }
}

char *sub_1D6F666C4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = qword_1EDF11060;
  type metadata accessor for LayeredMediaViewDisplayStateCoordinator();
  swift_allocObject();
  *&v1[v5] = LayeredMediaViewDisplayStateCoordinator.init()();
  v6 = qword_1EDF11068;
  *&v2[v6] = [objc_allocWithZone(type metadata accessor for LayeredMediaContainerLayer(0)) init];
  *&v2[qword_1EDF11058] = a1;
  v16.receiver = v2;
  v16.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = *&v7[qword_1EDF11068];
  sub_1D6F68CB0(&qword_1EDF0B440, type metadata accessor for LayeredMediaContainerLayer);
  v9 = v7;
  v10 = v8;
  sub_1D725DE5C();

  v11 = *&v9[qword_1EDF11060];
  swift_beginAccess();
  v12 = *(v11 + 16);
  *(v11 + 16) = 0;
  if (v12)
  {
    *(v11 + 56) = 2;
  }

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  v14 = *(v11 + 24);
  *(v11 + 24) = sub_1D6F68CF8;
  *(v11 + 32) = v13;
  sub_1D5B74328(v14);

  return v9;
}

void sub_1D6F668B0(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(*&Strong[qword_1EDF11058] + 32);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v1 ^ 1 | v2;

      v8 = v6 - 1;
      for (i = 32; ; i += 144)
      {
        memmove(__dst, (v5 + i), 0x89uLL);
        v10 = sub_1D692954C(__dst);
        v11 = sub_1D5DA9098(__dst);
        if (v10 != 1)
        {
          goto LABEL_7;
        }

        v12 = *(v11 + 8);
        if (v7)
        {
          break;
        }

        [v12 playWithPlaybackKind:0 looping:1];
        if (!v8)
        {
LABEL_10:

          return;
        }

LABEL_8:
        --v8;
      }

      [v12 pause];
LABEL_7:
      if (!v8)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }
}

void sub_1D6F669D0(uint64_t a1)
{
  v2 = qword_1EDF11060;
  type metadata accessor for LayeredMediaViewDisplayStateCoordinator();
  swift_allocObject();
  *(a1 + v2) = LayeredMediaViewDisplayStateCoordinator.init()();
  v3 = qword_1EDF11068;
  *(a1 + v3) = [objc_allocWithZone(type metadata accessor for LayeredMediaContainerLayer(0)) init];
  sub_1D726402C();
  __break(1u);
}

Swift::Void __swiftcall LayeredMediaView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_traitCollectionDidChange_, isa);
  v3 = [v1 traitCollection];
  LODWORD(isa) = [v3 hasDifferentColorAppearanceComparedToTraitCollection_];

  if (isa)
  {
    sub_1D6F66B10();
  }
}

void sub_1D6F66B10()
{
  v1 = *(*&v0[qword_1EDF11058] + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = *&v0[qword_1EDF11068];
    v14 = MEMORY[0x1E69E7CC0];

    sub_1D5B8C520(0, v2, 0);
    v3 = v14;
    v4 = v1 + 40;
    do
    {
      v5 = *(v4 - 8);

      v6 = [v0 traitCollection];
      v7 = v5();

      v13 = sub_1D5B5A498(0, &qword_1EC898B38);

      *&v12 = v7;
      v14 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1D5B8C520((v8 > 1), v9 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v9 + 1;
      sub_1D5B7C390(&v12, (v3 + 32 * v9 + 32));
      v4 += 16;
      --v2;
    }

    while (v2);

    v10 = sub_1D726265C();

    [v11 setFilters_];
  }
}

void sub_1D6F66CB4(void *a1, uint64_t a2, void *a3)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v8.receiver;
  objc_msgSendSuper2(&v8, sel_traitCollectionDidChange_, v4);
  v6 = [v5 traitCollection];
  v7 = [v6 hasDifferentColorAppearanceComparedToTraitCollection_];

  if (v7)
  {
    sub_1D6F66B10();
  }
}

Swift::Void __swiftcall LayeredMediaView.didMoveToWindow()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_didMoveToWindow);
  LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
}

void sub_1D6F66DAC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_didMoveToWindow);
  LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
}

void sub_1D6F66E0C()
{
  [v0 setNeedsLayout];
  v1 = [v0 sublayers];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  sub_1D5B5A498(0, &unk_1EDF1A700);
  v3 = sub_1D726267C();

  if (v3 >> 62)
  {
    v4 = sub_1D7263BFC();
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_4:
      if (v4 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v4; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1DA6FB460](i, v3);
        }

        else
        {
          v6 = *(v3 + 8 * i + 32);
        }

        v7 = v6;
        sub_1D6F66E0C();
      }
    }
  }
}

id LayeredMediaView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_1D6F66FFC()
{

  v1 = *(v0 + qword_1EDF11068);
}

void sub_1D6F67050(uint64_t a1)
{

  v2 = *(a1 + qword_1EDF11068);
}

uint64_t LayeredMediaView.identifier.getter()
{
  v1 = *(*(v0 + qword_1EDF11058) + 16);

  return v1;
}

uint64_t sub_1D6F670E8()
{
  v1 = *(*(*v0 + qword_1EDF11058) + 16);

  return v1;
}

uint64_t sub_1D6F671C8()
{
  v1 = v0;
  v2 = sub_1D725D4FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransform;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v8(v6, v0 + v7, v2);
  sub_1D6F68CB0(&qword_1EC898B30, MEMORY[0x1E69D78F0]);
  v9 = sub_1D7261FBC();
  result = (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    v11 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms;
    swift_beginAccess();
    result = *(v1 + v11);
    v12 = *(result + 16);
    if (v12)
    {

      v15 = v1;
      v13 = v14 + 40;
      do
      {
        swift_getObjectType();
        v8(v6, v15 + v7, v2);
        swift_unknownObjectRetain();
        sub_1D725DEBC();
        swift_unknownObjectRelease();
        v13 += 16;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

void (*sub_1D6F673C8(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xD0uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 120) = v1;
  v6 = sub_1D725D4FC();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[17] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[18] = swift_coroFrameAlloc();
    v5[19] = swift_coroFrameAlloc();
    v5[20] = swift_coroFrameAlloc();
    v5[21] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[18] = malloc(*(v7 + 64));
    v5[19] = malloc(v9);
    v5[20] = malloc(v9);
    v5[21] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransform;
  v5[22] = v10;
  v5[23] = v12;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[24] = v13;
  v5[25] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_1D6F67574;
}

uint64_t sub_1D6F675BC()
{
  v1 = v0;
  v2 = sub_1D725E5FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionDisabledTransform;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v8(v6, v0 + v7, v2);
  sub_1D6F68CB0(&qword_1EC898B28, MEMORY[0x1E69D7F30]);
  v9 = sub_1D7261FBC();
  result = (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    v11 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms;
    swift_beginAccess();
    result = *(v1 + v11);
    v12 = *(result + 16);
    if (v12)
    {

      v15 = v1;
      v13 = v14 + 40;
      do
      {
        swift_getObjectType();
        v8(v6, v15 + v7, v2);
        swift_unknownObjectRetain();
        sub_1D725DECC();
        swift_unknownObjectRelease();
        v13 += 16;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

void (*sub_1D6F677BC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xD0uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 120) = v1;
  v6 = sub_1D725E5FC();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[17] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[18] = swift_coroFrameAlloc();
    v5[19] = swift_coroFrameAlloc();
    v5[20] = swift_coroFrameAlloc();
    v5[21] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[18] = malloc(*(v7 + 64));
    v5[19] = malloc(v9);
    v5[20] = malloc(v9);
    v5[21] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionDisabledTransform;
  v5[22] = v10;
  v5[23] = v12;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[24] = v13;
  v5[25] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_1D6F67968;
}

void sub_1D6F679B0(uint64_t a1, char a2, unint64_t *a3, void (*a4)(uint64_t), uint64_t a5, void (*a6)(void, void, void))
{
  v6 = a6;
  v7 = *a1;
  v8 = *(*a1 + 192);
  v10 = *(*a1 + 176);
  v9 = *(*a1 + 184);
  v64 = *a1;
  if (a2)
  {
    v11 = v7[19];
    v56 = v7[20];
    v13 = v7[17];
    v12 = v7[18];
    v14 = v7[15];
    v15 = v7[16];
    (v8)(v11, v10, v15);
    (v8)(v12, v14 + v9, v15);
    swift_beginAccess();
    (*(v13 + 24))(v14 + v9, v11, v15);
    swift_endAccess();
    (v8)(v56, v14 + v9, v15);
    sub_1D6F68CB0(a3, a4);
    v16 = sub_1D7261FBC();
    v17 = *(v13 + 8);
    v17(v56, v15);
    v18 = v7;
    if ((v16 & 1) == 0)
    {
      v19 = v7[15];
      v20 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms;
      swift_beginAccess();
      v21 = *(*(v19 + v20) + 16);
      if (v21)
      {
        v58 = v17;
        v22 = ( + 40);
        do
        {
          v23 = v18[24];
          v24 = v18[23];
          v25 = v18[20];
          v27 = v18[15];
          v26 = v18[16];
          v62 = *v22;
          ObjectType = swift_getObjectType();
          v23(v25, v27 + v24, v26);
          swift_unknownObjectRetain();
          v29 = ObjectType;
          v18 = v64;
          a6(v25, v29, v62);
          swift_unknownObjectRelease();
          v22 += 2;
          --v21;
        }

        while (v21);

        v17 = v58;
      }
    }

    v31 = v18[21];
    v30 = v18[22];
    v33 = v18[19];
    v32 = v18[20];
    v34 = v18[18];
    v35 = v18[16];
    v17(v34, v35);
    v17(v33, v35);
    v17(v30, v35);
  }

  else
  {
    v36 = v7[20];
    v37 = v7[16];
    v38 = v7[17];
    v39 = v7[15];
    v8();
    swift_beginAccess();
    (*(v38 + 24))(v39 + v9, v10, v37);
    swift_endAccess();
    (v8)(v36, v39 + v9, v37);
    sub_1D6F68CB0(a3, a4);
    v40 = sub_1D7261FBC();
    v41 = *(v38 + 8);
    v41(v36, v37);
    v18 = v7;
    if ((v40 & 1) == 0)
    {
      v42 = v7[15];
      v43 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms;
      swift_beginAccess();
      v44 = *(*(v42 + v43) + 16);
      if (v44)
      {
        v59 = v41;
        v45 = ( + 40);
        do
        {
          v46 = v18[24];
          v47 = v6;
          v48 = v18[23];
          v49 = v18[20];
          v51 = v18[15];
          v50 = v18[16];
          v63 = *v45;
          v52 = swift_getObjectType();
          v53 = v51 + v48;
          v6 = v47;
          v46(v49, v53, v50);
          swift_unknownObjectRetain();
          v54 = v52;
          v18 = v64;
          v47(v49, v54, v63);
          swift_unknownObjectRelease();
          v45 += 2;
          --v44;
        }

        while (v44);

        v41 = v59;
      }
    }

    v31 = v18[21];
    v30 = v18[22];
    v33 = v18[19];
    v32 = v18[20];
    v34 = v18[18];
    v55 = v18[16];
    v41(v31, v55);
    v41(v30, v55);
  }

  free(v30);
  free(v31);
  free(v32);
  free(v33);
  free(v34);

  free(v18);
}

void (*sub_1D6F67DC0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_isMotionEnabled;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v1 + v4);
  return sub_1D6F67E34;
}

uint64_t sub_1D6F67E4C(uint64_t result, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *a2;
  v5 = *(v3 + *a2);
  *(v3 + *a2) = result;
  if (v5 != (result & 1))
  {
    v7 = v3;
    v8 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms;
    result = swift_beginAccess();
    v9 = *(v7 + v8);
    v10 = *(v9 + 16);
    if (v10)
    {

      v11 = (v9 + 40);
      do
      {
        v12 = *v11;
        ObjectType = swift_getObjectType();
        v14 = *(v7 + v4);
        swift_unknownObjectRetain();
        a3(v14, ObjectType, v12);
        swift_unknownObjectRelease();
        v11 += 2;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

void (*sub_1D6F67F30(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_isMotionAllowed;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v1 + v4);
  return sub_1D6F67FA4;
}

void sub_1D6F67FBC(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v6 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v7 = *(*a1 + 64);
  v8 = *(v6 + v5);
  *(v6 + v5) = v7;
  if (a2)
  {
    if ((v7 ^ v8))
    {
      v9 = v4[6];
      v10 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms;
      swift_beginAccess();
      v11 = *(v9 + v10);
      v12 = *(v11 + 16);
      if (v12)
      {

        v13 = (v11 + 40);
        do
        {
          v15 = v4[6];
          v14 = v4[7];
          v16 = *v13;
          ObjectType = swift_getObjectType();
          v18 = *(v15 + v14);
          swift_unknownObjectRetain();
          a3(v18, ObjectType, v16);
          swift_unknownObjectRelease();
          v13 += 2;
          --v12;
        }

        while (v12);
LABEL_11:
      }
    }
  }

  else if ((v7 ^ v8))
  {
    v19 = v4[6];
    v20 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms;
    swift_beginAccess();
    v21 = *(v19 + v20);
    v22 = *(v21 + 16);
    if (v22)
    {

      v23 = (v21 + 40);
      do
      {
        v25 = v4[6];
        v24 = v4[7];
        v26 = *v23;
        v27 = swift_getObjectType();
        v28 = *(v25 + v24);
        swift_unknownObjectRetain();
        a3(v28, v27, v26);
        swift_unknownObjectRelease();
        v23 += 2;
        --v22;
      }

      while (v22);
      goto LABEL_11;
    }
  }

  free(v4);
}

uint64_t sub_1D6F68140()
{
  v1 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = v3 + 40;
    do
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1D725DEDC();
      swift_unknownObjectRelease();
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

id sub_1D6F68484(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransforms] = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionTransform;
  v5 = *MEMORY[0x1E69D78D8];
  v6 = sub_1D725D4FC();
  (*(*(v6 - 8) + 104))(&v1[v4], v5, v6);
  v7 = OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_motionDisabledTransform;
  v8 = *MEMORY[0x1E69D7F20];
  v9 = sub_1D725E5FC();
  (*(*(v9 - 8) + 104))(&v1[v7], v8, v9);
  v1[OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_isMotionEnabled] = 1;
  v1[OBJC_IVAR____TtC8NewsFeedP33_F669C03278D43A4B0F24735E6C90190F26LayeredMediaContainerLayer_isMotionAllowed] = 1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

uint64_t sub_1D6F686D8()
{
  result = sub_1D725D4FC();
  if (v1 <= 0x3F)
  {
    result = sub_1D725E5FC();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void (*sub_1D6F68814(uint64_t **a1))(void *)
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
  v2[4] = sub_1D6F673C8(v2);
  return sub_1D6F68DB4;
}

uint64_t sub_1D6F688A4@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_1D6F68964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, void (*a6)(_BYTE *))
{
  v10 = a4(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18[-v13];
  v15 = *a5;
  swift_beginAccess();
  (*(v11 + 16))(v14, v6 + v15, v10);
  swift_beginAccess();
  (*(v11 + 24))(v6 + v15, a1, v10);
  swift_endAccess();
  a6(v14);
  v16 = *(v11 + 8);
  v16(a1, v10);
  return (v16)(v14, v10);
}

void (*sub_1D6F68AD0(uint64_t **a1))(void *)
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
  v2[4] = sub_1D6F677BC(v2);
  return sub_1D6F68DB4;
}

void (*sub_1D6F68B84(uint64_t **a1))(void *)
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
  v2[4] = sub_1D6F67DC0(v2);
  return sub_1D6F68DB4;
}

void (*sub_1D6F68C38(uint64_t **a1))(void *)
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
  v2[4] = sub_1D6F67F30(v2);
  return sub_1D6F68CA8;
}

uint64_t sub_1D6F68CB0(unint64_t *a1, void (*a2)(uint64_t))
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

void *RecipeService.__allocating_init(assetManager:accessChecker:contentContext:tagController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t RecipeServiceType.fetchRecipes(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6F68E30, 0, 0);
}

{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6F699EC, 0, 0);
}

uint64_t sub_1D6F68E30()
{
  v8 = v0[4];
  v1 = [objc_opt_self() defaultCachePolicy];
  v0[6] = v1;
  v7 = (*(v8 + 16) + **(v8 + 16));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1D6F68F78;
  v3 = v0[4];
  v5 = v0[2];
  v4 = v0[3];

  return v7(v5, v1, v4, v3);
}

uint64_t sub_1D6F68F78(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6F690D0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1D6F690D0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t RecipeServiceType.fetchRecipe(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D6F6915C, 0, 0);
}

uint64_t sub_1D6F6915C()
{
  v11 = v0[5];
  v2 = v0[2];
  v1 = v0[3];
  sub_1D5B5D444(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = objc_opt_self();

  v5 = [v4 defaultCachePolicy];
  v0[8] = v5;
  v10 = (*(v11 + 16) + **(v11 + 16));
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1D6F69310;
  v7 = v0[5];
  v8 = v0[4];

  return v10(v3, v5, v8, v7);
}

uint64_t sub_1D6F69310(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_1D6F69518;
  }

  else
  {

    v4 = sub_1D6F69434;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D6F69434()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    result = sub_1D7263BFC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA6FB460](0, *(v0 + 80));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 80) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1D6F69518()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RecipeServiceType.fetchRecipes<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D6F695AC, 0, 0);
}

{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D6F6A12C, 0, 0);
}

uint64_t sub_1D6F695AC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v0[2] = v0[3];
  v4 = swift_task_alloc();
  *v4 = v3;
  v4[1] = v1;
  v4[2] = v2;
  KeyPath = swift_getKeyPath();

  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = KeyPath;
  type metadata accessor for FeedScoredRecipe();
  v7 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1D5B874E4(sub_1D6F6CD9C, v6, v7, &type metadata for FeedScoredItem, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);
  v0[8] = v10;

  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_1D6F69740;
  v12 = v0[6];
  v13 = v0[4];

  return RecipeServiceType.fetchRecipes(for:)(v10, v13, v12);
}

uint64_t sub_1D6F69740(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6F69898, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1D6F69898()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1D6F698FC@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  type metadata accessor for FeedScoredRecipe();
  FeedScoredRecipe.item.getter(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1D6F69958(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_unknownObjectRetain();
  v2 = v1;
  swift_getAtKeyPath();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D6F699EC()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v2 = (v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 48);
    v29 = v1;
    do
    {
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);
      v9 = *v5;
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      v11 = v9;
      if (v10)
      {
        swift_unknownObjectRetain_n();
        v6 = v7;
        MEMORY[0x1DA6F9CE0]();
        if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        swift_unknownObjectRelease_n();

        v29 = *v2;
      }

      else
      {
        swift_unknownObjectRetain();
        v31 = v7;
        v12 = v1;
        v13 = [v8 itemID];
        v14 = sub_1D726207C();
        v16 = v15;

        v17 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1D5B858EC(0, *(v12 + 2) + 1, 1, v12);
        }

        v19 = *(v17 + 2);
        v18 = *(v17 + 3);
        v20 = v17;
        if (v19 >= v18 >> 1)
        {
          v20 = sub_1D5B858EC((v18 > 1), v19 + 1, 1, v17);
        }

        swift_unknownObjectRelease();

        *(v20 + 2) = v19 + 1;
        v1 = v20;
        v21 = &v20[16 * v19];
        *(v21 + 4) = v14;
        *(v21 + 5) = v16;
      }

      v5 += 3;
      --v4;
    }

    while (v4);
  }

  else
  {
    v29 = v1;
  }

  v28[9] = v29;
  v28[10] = v29;
  v28[8] = v1;
  if (*(v1 + 2))
  {
    v32 = v28[6];
    v22 = [objc_opt_self() defaultCachePolicy];
    v28[11] = v22;
    v30 = (*(v32 + 16) + **(v32 + 16));
    v23 = swift_task_alloc();
    v28[12] = v23;
    *v23 = v28;
    v23[1] = sub_1D6F69D64;
    v24 = v28[6];
    v25 = v28[5];

    return v30(v1, v22, v25, v24);
  }

  else
  {

    v27 = v28[1];

    return v27(v29);
  }
}

uint64_t sub_1D6F69D64(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v5 = *(v3 + 88);
  if (v1)
  {

    v6 = sub_1D62D8464;
  }

  else
  {

    v6 = sub_1D6F69EB4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D6F69EB4()
{
  v0[3] = v0[4];
  v1 = v0[13];
  sub_1D5B5D444(0, &qword_1EDF052B0, &type metadata for FeedScoredItem, MEMORY[0x1E69E62F8]);
  sub_1D6155D1C();
  sub_1D6155D74();
  v2 = sub_1D72623BC();
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v4 = 0;
    v22 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v21[13] + 32;
    while (1)
    {
      if (v22)
      {
        v8 = MEMORY[0x1DA6FB460](v4, v21[13]);
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_16;
        }

        v8 = *(v6 + 8 * v4);
      }

      v9 = v8;
      v1 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = [v8 identifier];
      v11 = sub_1D726207C();
      v13 = v12;

      if (*(v2 + 16))
      {
        v14 = sub_1D5B69D90(v11, v13);
        v16 = v15;

        if (v16)
        {
          v7 = *(*(v2 + 56) + 24 * v14 + 8);
          goto LABEL_6;
        }
      }

      else
      {
      }

      v7 = 0;
LABEL_6:
      [v9 setScoreProfile_];

      ++v4;
      if (v1 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  v17 = v21[13];
  v18 = v21[10];

  sub_1D6986C10(v17);
  v19 = v21[1];

  return v19(v18);
}

uint64_t sub_1D6F6A12C()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1D5B874E4(sub_1D6F6CDC0, v2, v4, &type metadata for FeedScoredItem, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);
  *(v0 + 64) = v7;

  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1D6F6A26C;
  v9 = *(v0 + 48);
  v10 = *(v0 + 32);

  return RecipeServiceType.fetchRecipes(for:)(v7, v10, v9);
}

uint64_t sub_1D6F6A26C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6F6D4DC, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

id sub_1D6F6A3C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = [swift_unknownObjectRetain() scoreProfile];
  if (!result)
  {
    result = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
  }

  *a2 = v3;
  a2[1] = result;
  a2[2] = 0;
  return result;
}

uint64_t RecipeServiceType.fetchRecipes(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6F6A45C, 0, 0);
}

uint64_t sub_1D6F6A45C()
{
  v8 = v0[4];
  v1 = [objc_opt_self() defaultCachePolicy];
  v0[6] = v1;
  v7 = (*(v8 + 24) + **(v8 + 24));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1D6F6A5A4;
  v3 = v0[4];
  v5 = v0[2];
  v4 = v0[3];

  return v7(v5, v1, v4, v3);
}

uint64_t sub_1D6F6A5A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6F6D4E0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

void *RecipeService.init(assetManager:accessChecker:contentContext:tagController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t RecipeService.fetchRecipe(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6F6A730, 0, 0);
}

uint64_t sub_1D6F6A730()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_1D5B5D444(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1D6F6A830;
  v5 = v0[4];

  return sub_1D6F6ADCC(v3, v5, 25);
}

uint64_t sub_1D6F6A830(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1D6F6AA30;
  }

  else
  {

    v4 = sub_1D6F6A94C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D6F6A94C()
{
  v1 = *(v0 + 64);
  if (v1 >> 62)
  {
    result = sub_1D7263BFC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA6FB460](0, *(v0 + 64));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 64) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1D6F6AA30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RecipeService.fetchRecipes(for:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D6F6AAB8, 0, 0);
}

uint64_t sub_1D6F6AAB8()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v2 = v0[4];
    v3 = swift_allocObject();
    v0[6] = v3;
    swift_weakInit();
    v4 = swift_task_alloc();
    v0[7] = v4;
    v4[2] = v3;
    v4[3] = v1;
    v4[4] = 25;
    v4[5] = v2;
    v5 = swift_task_alloc();
    v0[8] = v5;
    sub_1D5E9D658();
    *v5 = v0;
    v5[1] = sub_1D6F6AC3C;

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000035, 0x80000001D73F9080, sub_1D6F6CDE4, v4, v6);
  }

  else
  {
    v7 = v0[1];
    v8 = MEMORY[0x1E69E7CC0];

    return v7(v8);
  }
}

uint64_t sub_1D6F6AC3C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D6F6AD60;
  }

  else
  {

    v2 = sub_1D5F77B74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6F6AD60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6F6ADCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6F6ADF0, 0, 0);
}

uint64_t sub_1D6F6ADF0()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v2 = v0[5];
    v3 = v0[4];
    v4 = swift_allocObject();
    v0[7] = v4;
    swift_weakInit();
    v5 = swift_task_alloc();
    v0[8] = v5;
    v5[2] = v4;
    v5[3] = v1;
    v5[4] = v2;
    v5[5] = v3;
    v6 = swift_task_alloc();
    v0[9] = v6;
    sub_1D5E9D658();
    *v6 = v0;
    v6[1] = sub_1D6F6AF74;

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000035, 0x80000001D73F9080, sub_1D6F6D4CC, v5, v7);
  }

  else
  {
    v8 = v0[1];
    v9 = MEMORY[0x1E69E7CC0];

    return v8(v9);
  }
}

uint64_t sub_1D6F6AF74()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D6F6D4D4;
  }

  else
  {

    v2 = sub_1D5F77B74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t RecipeService.fetchRecipes(from:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D6F6B0BC, 0, 0);
}

uint64_t sub_1D6F6B0BC()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v2 = v0[4];
    v3 = swift_allocObject();
    v0[6] = v3;
    swift_weakInit();
    v4 = swift_task_alloc();
    v0[7] = v4;
    v4[2] = v3;
    v4[3] = v1;
    v4[4] = 25;
    v4[5] = v2;
    v5 = swift_task_alloc();
    v0[8] = v5;
    sub_1D6F6CDFC();
    *v5 = v0;
    v5[1] = sub_1D6F6B244;

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000039, 0x80000001D73F90C0, sub_1D6F6CDF0, v4, v6);
  }

  else
  {
    v7 = sub_1D605ACEC(MEMORY[0x1E69E7CC0]);
    v8 = v0[1];

    return v8(v7);
  }
}

uint64_t sub_1D6F6B244()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D6F6D4D0;
  }

  else
  {

    v2 = sub_1D5F77B74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6F6B368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6F6B38C, 0, 0);
}

uint64_t sub_1D6F6B38C()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v2 = v0[5];
    v3 = v0[4];
    v4 = swift_allocObject();
    v0[7] = v4;
    swift_weakInit();
    v5 = swift_task_alloc();
    v0[8] = v5;
    v5[2] = v4;
    v5[3] = v1;
    v5[4] = v2;
    v5[5] = v3;
    v6 = swift_task_alloc();
    v0[9] = v6;
    sub_1D6F6CDFC();
    *v6 = v0;
    v6[1] = sub_1D6F6B514;

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000039, 0x80000001D73F90C0, sub_1D6F6D4C8, v5, v7);
  }

  else
  {
    v8 = sub_1D605ACEC(MEMORY[0x1E69E7CC0]);
    v9 = v0[1];

    return v9(v8);
  }
}

uint64_t sub_1D6F6B514()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D6F6B638;
  }

  else
  {

    v2 = sub_1D5E6E754;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6F6B638()
{

  v1 = *(v0 + 8);

  return v1();
}

id *RecipeService.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t RecipeService.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6F6B72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5BAF844;

  return RecipeService.fetchRecipe(for:cachePolicy:)(a1, a2, a3);
}

uint64_t sub_1D6F6B7DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5BAFDD0;

  return sub_1D6F6ADCC(a1, a2, 25);
}

uint64_t sub_1D6F6B888(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5BAFDD0;

  return sub_1D6F6B368(a1, a2, 25);
}

void sub_1D6F6B934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D6F6D2F0(0, &unk_1EDF048D0, sub_1D5E9D658);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v29 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v30 = a4;
    v15 = Strong[3];
    v16 = Strong[4];
    v32 = a1;
    v33 = Strong;
    v17 = Strong[5];
    v18 = objc_allocWithZone(MEMORY[0x1E69B5590]);
    swift_unknownObjectRetain();
    v19 = v15;
    v20 = v17;
    v31 = a5;
    v21 = v20;
    v22 = sub_1D726265C();
    v23 = sub_1D726265C();
    v24 = [v18 initWithContext:v16 accessChecker:v19 tagController:v21 recipeIDs:v22 recipeListIDs:v23];
    swift_unknownObjectRelease();

    [v24 setQualityOfService_];
    v25 = v24;
    [v25 setRelativePriority_];

    [v25 setCachePolicy_];
    (*(v10 + 16))(v13, v32, v9);
    v26 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v27 = swift_allocObject();
    (*(v10 + 32))(v27 + v26, v13, v9);
    aBlock[4] = sub_1D6F6D3F4;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D6DC0B78;
    aBlock[3] = &block_descriptor_44_0;
    v28 = _Block_copy(aBlock);

    [v25 setFetchCompletionHandler_];
    _Block_release(v28);
    [v25 start];
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D726287C();
  }
}

void sub_1D6F6BC64(void *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    goto LABEL_34;
  }

  v5 = a1;
  v6 = &selRef_superfeedConfigResourceID;
  v7 = [v5 recipes];
  sub_1D5B5A498(0, &qword_1EDF3C6B0);
  v8 = sub_1D726267C();

  if (v8 >> 62)
  {
LABEL_39:
    v9 = sub_1D7263BFC();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v9)
  {

LABEL_34:
    if (a2)
    {
      v40 = a2;
      v30 = a2;
      sub_1D6F6D2F0(0, &unk_1EDF048D0, sub_1D5E9D658);
      sub_1D726286C();
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC0];
      sub_1D6F6D2F0(0, &unk_1EDF048D0, sub_1D5E9D658);
      sub_1D726287C();
    }

    return;
  }

  a2 = [v5 v6[289]];
  v10 = sub_1D726267C();

  v42 = MEMORY[0x1E69E7CC0];
  if (v10 >> 62)
  {
    v11 = sub_1D7263BFC();
    if (v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_7:
      v33 = v5;
      v34 = a3;
      v5 = 0;
      v38 = v10 & 0xFFFFFFFFFFFFFF8;
      v39 = v10 & 0xC000000000000001;
      v35 = v11;
      v36 = v10;
      while (1)
      {
        if (v39)
        {
          v12 = MEMORY[0x1DA6FB460](v5, v10);
        }

        else
        {
          if (v5 >= *(v38 + 16))
          {
            goto LABEL_38;
          }

          v12 = *(v10 + 8 * v5 + 32);
        }

        v13 = v12;
        v6 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        a2 = [objc_opt_self() sharedAccount];
        v14 = [a2 contentStoreFrontID];

        if (v14)
        {
          v15 = sub_1D726207C();
          v17 = v16;

          v18 = [v13 blockedStorefrontIDs];
          if (v18)
          {
            v19 = v18;
            v20 = sub_1D726267C();
          }

          else
          {
            v20 = MEMORY[0x1E69E7CC0];
          }

          v21 = [v13 allowedStorefrontIDs];
          if (v21)
          {
            v23 = v21;
            v24 = sub_1D726267C();
          }

          else
          {
            v24 = MEMORY[0x1E69E7CC0];
          }

          v40 = v15;
          v41 = v17;
          MEMORY[0x1EEE9AC00](v21, v22);
          v32 = &v40;
          v25 = sub_1D5BD0418(sub_1D5BD04C4, v31, v20);
          v37 = v25;
          if (*(v24 + 16))
          {
            v40 = v15;
            v41 = v17;
            MEMORY[0x1EEE9AC00](v25, v26);
            v32 = &v40;
            a2 = sub_1D5BD0418(sub_1D5BD04C4, v31, v24);
          }

          else
          {
            a2 = 1;
          }

          v27 = [objc_opt_self() sharedInstance];
          if (!v27)
          {
            __break(1u);
            return;
          }

          a3 = v27;

          v28 = [a3 isNewsVersionAllowed_];

          if (v28)
          {
            v11 = v35;
            if ((a2 & 1) != 0 && (v37 & 1) == 0)
            {
              sub_1D7263E9C();
              a2 = *(v42 + 16);
              sub_1D7263EDC();
              sub_1D7263EEC();
              sub_1D7263EAC();
              v10 = v36;
            }

            else
            {

              v10 = v36;
            }
          }

          else
          {

            v11 = v35;
            v10 = v36;
          }
        }

        else
        {
        }

        ++v5;
        if (v6 == v11)
        {
          v29 = v42;
          v5 = v33;
          goto LABEL_42;
        }
      }
    }
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_42:

  v40 = v29;
  sub_1D6F6D2F0(0, &unk_1EDF048D0, sub_1D5E9D658);
  sub_1D726287C();
}

void sub_1D6F6C150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D6F6D2F0(0, &qword_1EDF04900, sub_1D6F6CDFC);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v31 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = a4;
    v15 = Strong[3];
    v16 = Strong[4];
    v34 = v9;
    v35 = Strong;
    v17 = Strong[5];
    v18 = objc_allocWithZone(MEMORY[0x1E69B5590]);
    swift_unknownObjectRetain();
    v19 = v15;
    v20 = v17;
    v33 = a1;
    v21 = v20;
    v22 = sub_1D726265C();
    v31 = a5;
    v23 = v22;
    v24 = sub_1D726265C();
    v25 = [v18 initWithContext:v16 accessChecker:v19 tagController:v21 recipeIDs:v23 recipeListIDs:v24];
    swift_unknownObjectRelease();

    [v25 setQualityOfService_];
    v26 = v25;
    [v26 setRelativePriority_];

    [v26 setCachePolicy_];
    v27 = v34;
    (*(v10 + 16))(v13, v33, v34);
    v28 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v29 = swift_allocObject();
    (*(v10 + 32))(v29 + v28, v13, v27);
    aBlock[4] = sub_1D6F6D2BC;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D6DC0B78;
    aBlock[3] = &block_descriptor_120;
    v30 = _Block_copy(aBlock);

    [v26 setFetchCompletionHandler_];
    _Block_release(v30);
    [v26 start];
  }

  else
  {
    aBlock[0] = sub_1D605ACEC(MEMORY[0x1E69E7CC0]);
    sub_1D726287C();
  }
}

void sub_1D6F6C488(void *a1, id a2, uint64_t a3)
{
  if (!a1)
  {
    if (a2)
    {
      v95 = a2;
      v32 = a2;
      sub_1D6F6D2F0(0, &qword_1EDF04900, sub_1D6F6CDFC);
      sub_1D726286C();
    }

    else
    {
      v95 = sub_1D605ACEC(MEMORY[0x1E69E7CC0]);
      sub_1D6F6D2F0(0, &qword_1EDF04900, sub_1D6F6CDFC);
      sub_1D726287C();
    }

    return;
  }

  v88 = a3;
  v3 = a1;
  v4 = [v3 recipes];
  sub_1D5B5A498(0, &qword_1EDF3C6B0);
  v5 = sub_1D726267C();

  v87 = v3;
  v6 = [v3 recipeLists];
  sub_1D5B5A498(0, &qword_1EDF04658);
  v7 = sub_1D726267C();

  v97 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
    goto LABEL_62;
  }

  v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v9 = MEMORY[0x1E69E7CC0];
  v89 = v7;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_34;
  }

  v10 = 0;
  v11 = 0;
  v93 = v5 & 0xFFFFFFFFFFFFFF8;
  v94 = v5 & 0xC000000000000001;
  v90 = v8;
  v91 = v5;
  while (1)
  {
    if (v94)
    {
      v12 = MEMORY[0x1DA6FB460](v10, v5);
    }

    else
    {
      if (v10 >= *(v93 + 16))
      {
        goto LABEL_57;
      }

      v12 = *(v5 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      v8 = sub_1D7263BFC();
      goto LABEL_4;
    }

    v7 = [objc_opt_self() sharedAccount];
    v15 = [v7 contentStoreFrontID];

    if (v15)
    {
      break;
    }

LABEL_7:
    ++v10;
    if (v14 == v8)
    {
      v9 = v97;
LABEL_34:

      if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
      {
        v7 = sub_1D7263BFC();
        v91 = v11;
        if (v7)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v7 = *(v9 + 16);
        v91 = v11;
        if (v7)
        {
LABEL_37:
          v33 = 0;
          v94 = v9 & 0xC000000000000001;
          v34 = MEMORY[0x1E69E7CC8];
          v93 = v9;
          while (1)
          {
            if (v94)
            {
              v38 = MEMORY[0x1DA6FB460](v33, v9);
            }

            else
            {
              if (v33 >= *(v9 + 16))
              {
                goto LABEL_59;
              }

              v38 = *(v9 + 8 * v33 + 32);
            }

            v39 = v38;
            v40 = (v33 + 1);
            if (__OFADD__(v33, 1))
            {
              goto LABEL_58;
            }

            v41 = v7;
            v42 = [v38 identifier];
            v43 = sub_1D726207C();
            v5 = v44;

            v45 = v39;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v95 = v34;
            v7 = v34;
            v47 = sub_1D5B69D90(v43, v5);
            v49 = v34[2];
            v50 = (v48 & 1) == 0;
            v51 = __OFADD__(v49, v50);
            v52 = v49 + v50;
            if (v51)
            {
              goto LABEL_60;
            }

            v53 = v48;
            if (v34[3] < v52)
            {
              break;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_49;
            }

            v7 = &v95;
            v58 = v47;
            sub_1D6D7D928();
            v47 = v58;
            if (v53)
            {
LABEL_38:
              v35 = v47;

              v34 = v95;
              v36 = *(v95 + 56);
              v5 = *(v36 + 8 * v35);
              *(v36 + 8 * v35) = v45;

              goto LABEL_39;
            }

LABEL_50:
            v34 = v95;
            *(v95 + 8 * (v47 >> 6) + 64) |= 1 << v47;
            v55 = (v34[6] + 16 * v47);
            *v55 = v43;
            v55[1] = v5;
            *(v34[7] + 8 * v47) = v45;

            v56 = v34[2];
            v51 = __OFADD__(v56, 1);
            v57 = v56 + 1;
            if (v51)
            {
              goto LABEL_61;
            }

            v34[2] = v57;
LABEL_39:
            ++v33;
            v7 = v41;
            v37 = v40 == v41;
            v9 = v93;
            if (v37)
            {
              goto LABEL_65;
            }
          }

          sub_1D6D66324(v52, isUniquelyReferenced_nonNull_native);
          v7 = v95;
          v47 = sub_1D5B69D90(v43, v5);
          if ((v53 & 1) != (v54 & 1))
          {
            goto LABEL_101;
          }

LABEL_49:
          if (v53)
          {
            goto LABEL_38;
          }

          goto LABEL_50;
        }
      }

      v34 = MEMORY[0x1E69E7CC8];
LABEL_65:

      v59 = v89;
      v60 = v89 & 0xFFFFFFFFFFFFFF8;
      if (v89 >> 62)
      {
LABEL_97:
        v61 = sub_1D7263BFC();
        if (v61)
        {
LABEL_67:
          v62 = 0;
          v63 = v59 & 0xC000000000000001;
          v64 = MEMORY[0x1E69E7CC8];
          v65 = &off_1E84D3000;
          do
          {
            v66 = v62;
            while (1)
            {
              if (v63)
              {
                v67 = MEMORY[0x1DA6FB460](v66, v59);
              }

              else
              {
                if (v66 >= *(v60 + 16))
                {
                  goto LABEL_95;
                }

                v67 = v59[v66 + 4];
              }

              v68 = v67;
              v62 = v66 + 1;
              if (__OFADD__(v66, 1))
              {
                __break(1u);
LABEL_95:
                __break(1u);
LABEL_96:
                __break(1u);
                goto LABEL_97;
              }

              v69 = [v67 v65[434]];
              if (v69)
              {
                break;
              }

              ++v66;
              if (v62 == v61)
              {
                goto LABEL_99;
              }
            }

            v92 = v61;
            v93 = v63;
            v70 = v69;
            v71 = sub_1D726267C();

            v95 = MEMORY[0x1E69E7CC0];
            v72 = *(v71 + 16);
            if (v72)
            {
              v73 = 0;
              v85 = v72 - 1;
              v86 = v64;
              v94 = MEMORY[0x1E69E7CC0];
              v90 = v60;
LABEL_79:
              v74 = (v71 + 40 + 16 * v73);
              v60 = v73;
              while (v60 < *(v71 + 16))
              {
                if (v34[2])
                {
                  v75 = *(v74 - 1);
                  v76 = *v74;

                  v77 = v75;
                  v59 = v34;
                  v78 = sub_1D5B69D90(v77, v76);
                  if (v79)
                  {
                    v80 = *(v34[7] + 8 * v78);

                    v59 = &v95;
                    MEMORY[0x1DA6F9CE0](v81);
                    if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_1D726272C();
                    }

                    v73 = v60 + 1;
                    sub_1D726278C();
                    v94 = v95;
                    v64 = v86;
                    v37 = v85 == v60;
                    v60 = v90;
                    if (v37)
                    {
                      goto LABEL_92;
                    }

                    goto LABEL_79;
                  }
                }

                ++v60;
                v74 += 2;
                if (v72 == v60)
                {
                  v60 = v90;
                  v64 = v86;
                  goto LABEL_92;
                }
              }

              goto LABEL_96;
            }

            v94 = MEMORY[0x1E69E7CC0];
LABEL_92:

            v82 = swift_isUniquelyReferenced_nonNull_native();
            v95 = v64;
            sub_1D6D7C7C0(v94, v68, v82);

            v64 = v95;
            v61 = v92;
            v63 = v93;
            v59 = v89;
            v65 = &off_1E84D3000;
          }

          while (v62 != v92);
          goto LABEL_99;
        }
      }

      else
      {
        v61 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v61)
        {
          goto LABEL_67;
        }
      }

      v64 = MEMORY[0x1E69E7CC8];
LABEL_99:

      v95 = v64;
      sub_1D6F6D2F0(0, &qword_1EDF04900, sub_1D6F6CDFC);
      sub_1D726287C();

      return;
    }
  }

  v16 = sub_1D726207C();
  v7 = v17;

  v18 = [v13 blockedStorefrontIDs];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1D726267C();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = [v13 allowedStorefrontIDs];
  if (v21)
  {
    v23 = v21;
    v24 = sub_1D726267C();
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v95 = v16;
  v96 = v7;
  MEMORY[0x1EEE9AC00](v21, v22);
  v84 = &v95;
  v25 = sub_1D5BD0418(sub_1D5BD0538, v83, v20);
  LODWORD(v92) = v25;
  if (*(v24 + 16))
  {
    v95 = v16;
    v96 = v7;
    MEMORY[0x1EEE9AC00](v25, v26);
    v84 = &v95;
    v27 = sub_1D5BD0418(sub_1D5BD04C4, v83, v24);
    v28 = v11;
  }

  else
  {
    v28 = v11;
    v27 = 1;
  }

  v29 = [objc_opt_self() sharedInstance];
  if (v29)
  {
    v30 = v29;

    v31 = [v30 isNewsVersionAllowed_];

    if (v31 && (v27 & 1) != 0 && (v92 & 1) == 0)
    {
      v7 = &v97;
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    else
    {
    }

    v11 = v28;
    v8 = v90;
    v5 = v91;
    goto LABEL_7;
  }

  __break(1u);
LABEL_101:
  sub_1D726493C();
  __break(1u);
}

void sub_1D6F6CDFC()
{
  if (!qword_1EDF05610)
  {
    sub_1D5B5A498(255, &qword_1EDF04658);
    sub_1D5E9D658();
    sub_1D6F6CE88();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05610);
    }
  }
}

unint64_t sub_1D6F6CE88()
{
  result = qword_1EDF04650;
  if (!qword_1EDF04650)
  {
    sub_1D5B5A498(255, &qword_1EDF04658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04650);
  }

  return result;
}

uint64_t dispatch thunk of RecipeServiceType.fetchRecipe(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5E97EA8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of RecipeServiceType.fetchRecipes(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5F77AD4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RecipeServiceType.fetchRecipes(from:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5F77AD4;

  return v11(a1, a2, a3, a4);
}

void sub_1D6F6D2F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D5BA6EF4();
    v4 = sub_1D726288C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroy_32Tm_0(unint64_t *a1, void (*a2)(uint64_t))
{
  sub_1D6F6D2F0(0, a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_1D6F6D428(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D6F6D2F0(0, a3, a4);
  v9 = v5 + ((*(*(v8 - 8) + 80) + 16) & ~*(*(v8 - 8) + 80));

  return a5(a1, a2, v9);
}

uint64_t ViewAutomation.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ViewAutomation.init(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1D725D05C();
  a3[1] = v6;
  v7 = type metadata accessor for ViewAutomation();
  v8 = *(*(a2 - 8) + 32);
  v9 = a3 + *(v7 + 36);

  return v8(v9, a1, a2);
}

uint64_t sub_1D6F6D5F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6F6D648(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ViewAutomation.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v12[0] = *(a2 + 24);
  v12[1] = v4;
  type metadata accessor for ViewAutomation.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1D726446C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  v14 = 0;
  v10 = v12[3];
  sub_1D72643FC();
  if (!v10)
  {
    v13 = 1;
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ViewAutomation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v26 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v29 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewAutomation.CodingKeys();
  swift_getWitnessTable();
  v31 = sub_1D726435C();
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v8);
  v10 = &v23 - v9;
  v30 = a3;
  v11 = type metadata accessor for ViewAutomation();
  v25 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v23 - v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v32;
  sub_1D7264B0C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v24 = v11;
  v16 = v28;
  v17 = v29;
  v34 = 0;
  v18 = v14;
  *v14 = sub_1D72642BC();
  v14[1] = v19;
  v23 = v19;
  v33 = 1;
  sub_1D726431C();
  (*(v16 + 8))(v10, v31);
  v20 = v24;
  (*(v26 + 32))(v14 + *(v24 + 36), v17, a2);
  v21 = v25;
  (*(v25 + 16))(v27, v18, v20);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return (*(v21 + 8))(v18, v20);
}

uint64_t BasicViewAutomation.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D6F6DC60(uint64_t a1)
{
  v2 = sub_1D6F6DE24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F6DC9C(uint64_t a1)
{
  v2 = sub_1D6F6DE24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BasicViewAutomation.encode(to:)(void *a1)
{
  sub_1D6F6DFFC(0, &qword_1EC898B40, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F6DE24();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D6F6DE24()
{
  result = qword_1EC898B48;
  if (!qword_1EC898B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898B48);
  }

  return result;
}

uint64_t BasicViewAutomation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6F6DFFC(0, qword_1EC898B50, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F6DE24();
  sub_1D7264B0C();
  if (!v2)
  {
    v11 = sub_1D72642BC();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6F6DFFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6F6DE24();
    v7 = a3(a1, &type metadata for BasicViewAutomation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6F6E064()
{
  result = qword_1EDF0FCC8;
  if (!qword_1EDF0FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FCC8);
  }

  return result;
}

unint64_t sub_1D6F6E0BC()
{
  result = qword_1EDF0FCD0[0];
  if (!qword_1EDF0FCD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0FCD0);
  }

  return result;
}

uint64_t sub_1D6F6E128(void *a1)
{
  sub_1D6F6DFFC(0, &qword_1EC898B40, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F6DE24();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D6F6E2B4()
{
  result = qword_1EC898BD8;
  if (!qword_1EC898BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898BD8);
  }

  return result;
}

unint64_t sub_1D6F6E30C()
{
  result = qword_1EC898BE0;
  if (!qword_1EC898BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898BE0);
  }

  return result;
}

unint64_t sub_1D6F6E364()
{
  result = qword_1EC898BE8;
  if (!qword_1EC898BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898BE8);
  }

  return result;
}

uint64_t FeedAdGroupDataProvider.groupData(for:includeAdjacentGroups:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v28 = a2;
  v31 = a3;
  v32 = a1;
  v4 = *v3;
  v5 = sub_1D72605EC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v29 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v4 + 80);
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = *(v4 + 88);
  *&v12 = v8;
  *(&v12 + 1) = v11;
  v30 = v4;
  v33 = *(v4 + 112);
  v34 = v12;
  v35 = v33;
  v13 = sub_1D725D68C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v27[-v16];
  sub_1D7258DAC();
  *&v34 = v8;
  *(&v34 + 1) = v11;
  v35 = v33;
  sub_1D725FACC();
  sub_1D725FAFC();
  sub_1D725D61C();
  (*(v14 + 8))(v17, v13);
  sub_1D5B49474(0, &qword_1EDF36570);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(&v34, v38);
    v18 = v39;
    v19 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    (*(v19 + 16))(v18, v19);
    sub_1D5C2371C(v32, 2, (v28 & 1) == 0);
    v20 = v39;
    v21 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    (*(v21 + 24))(v20, v21);
    v22 = v39;
    v23 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    (*(v23 + 32))(v22, v23);
    sub_1D72605FC();
    sub_1D726062C();
    *&v34 = v8;
    *(&v34 + 1) = v11;
    v35 = *(v30 + 96);
    v36 = v33;
    v37 = *(v30 + 128);
    type metadata accessor for FeedAdGroupDataProvider.FailureReason();
    swift_getWitnessTable();
    sub_1D7264ABC();
    swift_storeEnumTagMultiPayload();
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    *&v36 = 0;
    v34 = 0u;
    v35 = 0u;
    sub_1D617D2E4(&v34, &qword_1EDF36568, &qword_1EDF36570, &protocol descriptor for FeedAdGroupDataProviding);
    sub_1D726062C();
    v25 = v30;
    v26 = v31;
    *v31 = 0;
    v26[1] = 0;
    *&v34 = v8;
    *(&v34 + 1) = v11;
    v35 = *(v25 + 96);
    v36 = v33;
    v37 = *(v25 + 128);
    type metadata accessor for FeedAdGroupDataProvider.FailureReason();
    swift_getWitnessTable();
    sub_1D7264ABC();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t FeedAdGroupDataProvider.FailureReason.description.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0xD000000000000019;
  }

  if (v1 == 1)
  {
    return 0x2073692064656546;
  }

  v3 = *v0;
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](v3, v1);
  MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73F9280);
  return 0x746E6563616A6441;
}

uint64_t sub_1D6F6E950()
{
  result = sub_1D725FACC();
  if (v1 <= 0x3F)
  {
    result = sub_1D725D34C();
    if (v2 <= 0x3F)
    {
      result = sub_1D725E9DC();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1D6F6EAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a7;
  v36 = a6;
  v30 = a4;
  v31 = a5;
  v32 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v32, v10);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatOption();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;

  FormatOptionCollection.subscript.getter(a2, a3, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D5D28420(v16, sub_1D5E04C00);
    *v12 = a2;
    v12[1] = a3;
    v23 = v32;
    swift_storeEnumTagMultiPayload();
    v24 = *(v22 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
    sub_1D5D285FC();
    v25 = swift_allocError();
    sub_1D5D2885C(v12, v26, type metadata accessor for FormatLayoutError);
    if (v24)
    {
      v35[0] = 0x3A676E697373694DLL;
      v35[1] = 0xEB000000007B7B20;
      MEMORY[0x1DA6F9910](v31, v36);
      MEMORY[0x1DA6F9910](32125, 0xE200000000000000);
      v23 = v35[0];
      sub_1D5D28420(v12, type metadata accessor for FormatLayoutError);
    }

    else
    {
      swift_willThrow();
      sub_1D5D28420(v12, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {

    sub_1D5D247E0(v16, v21);
    v23 = *(v21 + 2);

    v27 = v33;
    sub_1D6B744A8(v22, v35);
    if (v27)
    {
      sub_1D5D28420(v21, type metadata accessor for FormatOption);
    }

    else
    {

      v23 = sub_1D6B7DB60(v35[0], a2, a3, v30, v22);

      sub_1D5D28420(v21, type metadata accessor for FormatOption);
    }
  }

  return v23;
}

uint64_t sub_1D6F6EEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a7;
  v48 = a6;
  v30 = a4;
  v31 = a5;
  v33 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v33, v10);
  v34 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for FormatOption();
  v16 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v17);
  v32 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 80);
  v43 = *(a1 + 64);
  v44 = v19;
  v45 = *(a1 + 96);
  v20 = *(a1 + 16);
  v39 = *a1;
  v40 = v20;
  v21 = *(a1 + 48);
  v41 = *(a1 + 32);
  v42 = v21;
  v22 = off_1F51B1B98[0];

  v22(a2, a3, v15);
  if ((*(v16 + 48))(v15, 1, v35) == 1)
  {
    v23 = *(a1 + 8);
    sub_1D5D28420(v15, sub_1D5E04C00);
    v24 = v34;
    *v34 = a2;
    *(v24 + 8) = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5D285FC();
    v25 = swift_allocError();
    sub_1D5D2885C(v24, v26, type metadata accessor for FormatLayoutError);
    if (v23)
    {
      v38[0] = 0x3A676E697373694DLL;
      v38[1] = 0xEB000000007B7B20;
      MEMORY[0x1DA6F9910](v31, v48);
      MEMORY[0x1DA6F9910](32125, 0xE200000000000000);
      v23 = v38[0];
      sub_1D5D28420(v24, type metadata accessor for FormatLayoutError);
    }

    else
    {
      swift_willThrow();
      sub_1D5D28420(v24, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {

    v27 = v32;
    sub_1D5D247E0(v15, v32);
    v23 = *(v27 + 16);
    v47[4] = v43;
    v47[5] = v44;
    v47[6] = v45;
    v47[0] = v39;
    v47[1] = v40;
    v47[2] = v41;
    v47[3] = v42;

    v28 = v36;
    sub_1D6B74D28(v47, v38);
    if (v28)
    {
      sub_1D5D28420(v27, type metadata accessor for FormatOption);
    }

    else
    {

      v46[4] = v43;
      v46[5] = v44;
      v46[6] = v45;
      v46[0] = v39;
      v46[1] = v40;
      v46[2] = v41;
      v46[3] = v42;
      v23 = sub_1D6B7DC5C(v38[0], a2, a3, v30, v46);

      sub_1D5D28420(v27, type metadata accessor for FormatOption);
    }
  }

  return v23;
}

unint64_t sub_1D6F6F34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a2;
  v65 = a7;
  v67 = a6;
  v56 = a4;
  v57 = a5;
  v64 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v64, v9);
  v11 = (&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v54 - v18;
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FormatOption();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v58 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  sub_1D5D2885C(a1, v19, type metadata accessor for FormatOptionsNodeStatementContext);
  v59 = v12;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5EB9920();
    v60 = v15;
    v28 = v11;
    v30 = *(v29 + 48);

    v55 = v24;
    v31 = v62;
    FormatOptionCollection.subscript.getter(v62, a3, v23);

    sub_1D5EB9994();
    v33 = v32;
    v34 = *(*(v32 - 8) + 8);
    v35 = &v19[v30];
    v11 = v28;
    v15 = v60;
    v34(v35, v33);
    v36 = v31;
    v24 = v55;
  }

  else
  {

    v36 = v62;
    FormatOptionCollection.subscript.getter(v62, a3, v23);
  }

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1D5D28420(v23, sub_1D5E04C00);
    *v11 = v36;
    v11[1] = a3;
    v62 = v11;
    swift_storeEnumTagMultiPayload();
    sub_1D5D2885C(v63, v15, type metadata accessor for FormatOptionsNodeStatementContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v38 = *v15;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EB9920();
      v59 = *(v39 + 48);
      v60 = v15;
      LODWORD(v63) = *(v38 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
      v40 = *(v38 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 40);
      v41 = *(v38 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
      v42 = *(v38 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 56);
      v43 = *(v38 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
      v44 = *(v38 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 72);
      v45 = *(v38 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);

      sub_1D60B297C(v40, v41, v42, v43, v44, v45);

      sub_1D5EB9994();
      (*(*(v46 - 8) + 8))(v60 + v59, v46);
    }

    else
    {

      LODWORD(v63) = *(v38 + 48);
      v40 = *(v38 + 88);
      v41 = *(v38 + 96);
      v42 = *(v38 + 104);
      v43 = *(v38 + 112);
      v44 = *(v38 + 120);
      v45 = *(v38 + 128);

      sub_1D60B297C(v40, v41, v42, v43, v44, v45);
    }

    sub_1D60B29F8(v40, v41, v42, v43, v44, v45);
    sub_1D5D285FC();
    v50 = swift_allocError();
    v51 = v62;
    sub_1D5D2885C(v62, v52, type metadata accessor for FormatLayoutError);
    if (v63)
    {
      v66[0] = 0x3A676E697373694DLL;
      v66[1] = 0xEB000000007B7B20;
      MEMORY[0x1DA6F9910](v57, v67);
      MEMORY[0x1DA6F9910](32125, 0xE200000000000000);
      v40 = v66[0];
      sub_1D5D28420(v51, type metadata accessor for FormatLayoutError);
    }

    else
    {
      swift_willThrow();
      sub_1D5D28420(v51, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {

    v47 = v58;
    sub_1D5D247E0(v23, v58);
    v40 = *(v47 + 16);

    v48 = v63;
    v49 = v61;
    sub_1D6B75E28(v63, v66);
    if (!v49)
    {

      v40 = sub_1D6B810D0(v66[0], v36, a3, v56, v48);
    }

    sub_1D5D28420(v47, type metadata accessor for FormatOption);
  }

  return v40;
}

void *sub_1D6F6FA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v58 = a2;
  v56 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v56, v6);
  v57 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v51 - v14;
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FormatOption();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v53 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  sub_1D5D2885C(a1, v15, type metadata accessor for FormatOptionsNodeStatementContext);
  v54 = v8;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5EB9920();
    v51 = v11;
    v26 = *(v25 + 48);

    FormatOptionCollection.subscript.getter(v58, a3, v19);

    sub_1D5EB9994();
    v28 = v27;
    v29 = *(*(v27 - 8) + 8);
    v30 = &v15[v26];
    v24 = a1;
    v11 = v51;
    v29(v30, v28);
  }

  else
  {

    FormatOptionCollection.subscript.getter(v58, a3, v19);
  }

  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1D5D28420(v19, sub_1D5E04C00);
    v31 = v57;
    *v57 = v58;
    v31[1] = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5D2885C(v24, v11, type metadata accessor for FormatOptionsNodeStatementContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v33 = *v11;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EB9920();
      v55 = *(v34 + 48);
      v35 = *(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
      v36 = *(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 40);
      v37 = *(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
      v38 = *(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 56);
      v39 = v11;
      v41 = *(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
      v40 = *(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 72);
      v42 = *(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);

      v58 = v35;

      sub_1D60B297C(v36, v37, v38, v41, v40, v42);

      sub_1D5EB9994();
      (*(*(v43 - 8) + 8))(&v39[v55], v43);
    }

    else
    {

      v48 = v33[8];
      v36 = v33[11];
      v37 = v33[12];
      v38 = v33[13];
      v41 = v33[14];
      v40 = v33[15];
      v42 = v33[16];

      v58 = v48;

      sub_1D60B297C(v36, v37, v38, v41, v40, v42);
    }

    sub_1D60B29F8(v36, v37, v38, v41, v40, v42);
    sub_1D5D285FC();
    swift_allocError();
    v45 = v57;
    sub_1D5D2885C(v57, v49, type metadata accessor for FormatLayoutError);
    swift_willThrow();
    sub_1D5D28420(v45, type metadata accessor for FormatLayoutError);
  }

  else
  {

    v44 = v53;
    sub_1D5D247E0(v19, v53);
    v45 = *(v44 + 16);

    v46 = v55;
    sub_1D6B75E28(v24, &v59);
    v47 = v58;
    if (!v46)
    {

      v45 = sub_1D6B810D0(v59, v47, a3, v52, v24);
    }

    sub_1D5D28420(v44, type metadata accessor for FormatOption);
  }

  return v45;
}

uint64_t sub_1D6F6FFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v55 = a5;
  v56 = a4;
  v62 = a2;
  v60 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v60, v7);
  v61 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v53 - v15;
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FormatOption();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v57 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_1D5D2885C(a1, v16, type metadata accessor for FormatOptionsNodeStatementContext);
  v58 = v9;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5EB9920();
    v54 = v12;
    v27 = *(v26 + 48);

    FormatOptionCollection.subscript.getter(v62, a3, v20);

    sub_1D5EB9994();
    v29 = v28;
    v30 = *(*(v28 - 8) + 8);
    v31 = &v16[v27];
    v25 = a1;
    v12 = v54;
    v30(v31, v29);
  }

  else
  {

    FormatOptionCollection.subscript.getter(v62, a3, v20);
  }

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1D5D28420(v20, sub_1D5E04C00);
    v32 = v61;
    *v61 = v62;
    v32[1] = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5D2885C(v25, v12, type metadata accessor for FormatOptionsNodeStatementContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v34 = *v12;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EB9920();
      v59 = *(v35 + 48);
      v36 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
      v37 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 40);
      v38 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
      v39 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 56);
      v41 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
      v40 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 72);
      v42 = v12;
      v43 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);

      v62 = v36;

      sub_1D60B297C(v37, v38, v39, v41, v40, v43);

      sub_1D5EB9994();
      (*(*(v44 - 8) + 8))(&v42[v59], v44);
    }

    else
    {

      v50 = v34[8];
      v37 = v34[11];
      v38 = v34[12];
      v39 = v34[13];
      v41 = v34[14];
      v40 = v34[15];
      v43 = v34[16];

      v62 = v50;

      sub_1D60B297C(v37, v38, v39, v41, v40, v43);
    }

    sub_1D60B29F8(v37, v38, v39, v41, v40, v43);
    sub_1D5D285FC();
    swift_allocError();
    v51 = v61;
    sub_1D5D2885C(v61, v52, type metadata accessor for FormatLayoutError);
    swift_willThrow();
    return sub_1D5D28420(v51, type metadata accessor for FormatLayoutError);
  }

  else
  {

    v45 = v57;
    sub_1D5D247E0(v20, v57);
    v46 = *(v45 + 16);

    v47 = v59;
    sub_1D6B75E28(&v63, v25, v46);
    v48 = v62;
    if (!v47)
    {

      sub_1D6B81124(v63, v48, a3, v56, v25, v55);
    }

    sub_1D5D28420(v45, type metadata accessor for FormatOption);
  }
}

void sub_1D6F70570(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v65 = a2;
  v60 = a4;
  v61 = a5;
  v67 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v67, v7);
  v63 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v58 - v15;
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FormatOption();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  sub_1D5D2885C(a1, v16, type metadata accessor for FormatOptionsNodeStatementContext);
  v62 = v9;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5EB9920();
    v59 = v12;
    v27 = *(v26 + 48);

    v58 = v25;
    v28 = v65;
    FormatOptionCollection.subscript.getter(v65, a3, v20);

    sub_1D5EB9994();
    v30 = v29;
    v31 = *(*(v29 - 8) + 8);
    v32 = &v16[v27];
    v12 = v59;
    v31(v32, v30);
    v33 = v28;
    v25 = v58;
  }

  else
  {

    v33 = v65;
    FormatOptionCollection.subscript.getter(v65, a3, v20);
  }

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1D5D28420(v20, sub_1D5E04C00);
    v34 = v63;
    *v63 = v33;
    *(v34 + 8) = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5D2885C(v66, v12, type metadata accessor for FormatOptionsNodeStatementContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v36 = *v12;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EB9920();
      v62 = *(v37 + 48);
      LODWORD(v66) = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
      v38 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
      v39 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 40);
      v40 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
      v41 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 56);
      v42 = v12;
      v43 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
      v44 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 72);
      v45 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);

      v65 = v38;

      sub_1D60B297C(v39, v40, v41, v43, v44, v45);

      sub_1D5EB9994();
      v47 = v46;
      v48 = *(*(v46 - 8) + 8);
      v49 = v42 + v62;
      v34 = v63;
      v48(v49, v47);
    }

    else
    {

      LODWORD(v66) = *(v36 + 48);
      v54 = *(v36 + 64);
      v39 = *(v36 + 88);
      v40 = *(v36 + 96);
      v41 = *(v36 + 104);
      v43 = *(v36 + 112);
      v44 = *(v36 + 120);
      v45 = *(v36 + 128);

      v65 = v54;

      sub_1D60B297C(v39, v40, v41, v43, v44, v45);
    }

    sub_1D60B29F8(v39, v40, v41, v43, v44, v45);
    sub_1D5D285FC();
    v55 = swift_allocError();
    sub_1D5D2885C(v34, v56, type metadata accessor for FormatLayoutError);
    if (v66)
    {
      v57 = swift_allocObject();
      *(v57 + 16) = 2;
      *(v57 + 24) = 0x3FF0000000000000;
      *(v57 + 32) = 0;
      *v61 = v57 | 0x1000000000000000;
      sub_1D5D28420(v34, type metadata accessor for FormatLayoutError);
    }

    else
    {
      swift_willThrow();
      sub_1D5D28420(v34, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {

    sub_1D5D247E0(v20, v25);
    v50 = a3;
    v51 = *(v25 + 2);

    v52 = v66;
    v53 = v64;
    sub_1D6B75E28(&v68, v66, v51);
    if (!v53)
    {

      sub_1D6B81178(v68, v33, v50, v60, v52, v61);
    }

    sub_1D5D28420(v25, type metadata accessor for FormatOption);
  }
}

void sub_1D6F70BAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a5;
  v58 = a4;
  v63 = a2;
  v7 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v56 - v16;
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FormatOption();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v59 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  sub_1D5D2885C(a1, v17, type metadata accessor for FormatOptionsNodeStatementContext);
  v60 = v10;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v65 = v7;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920();
    v56 = v13;
    v28 = *(v27 + 48);

    v29 = v63;
    FormatOptionCollection.subscript.getter(v63, a3, v21);

    sub_1D5EB9994();
    v31 = v30;
    v32 = *(*(v30 - 8) + 8);
    v33 = &v17[v28];
    v13 = v56;
    v32(v33, v31);
  }

  else
  {

    v29 = v63;
    FormatOptionCollection.subscript.getter(v63, a3, v21);
  }

  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1D5D28420(v21, sub_1D5E04C00);
    v34 = v62;
    *v62 = v29;
    *(v34 + 8) = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5D2885C(v64, v13, type metadata accessor for FormatOptionsNodeStatementContext);
    v35 = swift_getEnumCaseMultiPayload();
    v36 = *v13;
    if (v35 == 1)
    {
      sub_1D5EB9920();
      v61 = *(v37 + 48);
      LODWORD(v64) = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
      v38 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
      v39 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 40);
      v40 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
      v41 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 56);
      v42 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
      v43 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 72);
      v44 = v13;
      v45 = *(v36 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);

      v63 = v38;

      sub_1D60B297C(v39, v40, v41, v42, v43, v45);

      sub_1D5EB9994();
      v47 = v46;
      v48 = *(*(v46 - 8) + 8);
      v49 = v44 + v61;
      v34 = v62;
      v48(v49, v47);
    }

    else
    {

      LODWORD(v64) = *(v36 + 48);
      v53 = *(v36 + 64);
      v39 = *(v36 + 88);
      v40 = *(v36 + 96);
      v41 = *(v36 + 104);
      v42 = *(v36 + 112);
      v43 = *(v36 + 120);
      v45 = *(v36 + 128);

      v63 = v53;

      sub_1D60B297C(v39, v40, v41, v42, v43, v45);
    }

    sub_1D60B29F8(v39, v40, v41, v42, v43, v45);
    sub_1D5D285FC();
    v54 = swift_allocError();
    sub_1D5D2885C(v34, v55, type metadata accessor for FormatLayoutError);
    if (v64)
    {
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D5D28420(v34, type metadata accessor for FormatLayoutError);
    }

    else
    {
      swift_willThrow();
      sub_1D5D28420(v34, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {

    v50 = v59;
    sub_1D5D247E0(v21, v59);

    v51 = v64;
    v52 = v61;
    sub_1D6B75E28(v64, &v66);
    if (!v52)
    {

      sub_1D6B811CC(v66, v29, a3, v58, v51, v57);
    }

    sub_1D5D28420(v50, type metadata accessor for FormatOption);
  }
}

uint64_t sub_1D6F711B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a5;
  v55 = a4;
  v61 = a2;
  v59 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v59, v7);
  v60 = (&v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v52 - v15;
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FormatOption();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v56 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_1D5D2885C(a1, v16, type metadata accessor for FormatOptionsNodeStatementContext);
  v57 = v9;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5EB9920();
    v53 = v12;
    v27 = *(v26 + 48);

    FormatOptionCollection.subscript.getter(v61, a3, v20);

    sub_1D5EB9994();
    v29 = v28;
    v30 = *(*(v28 - 8) + 8);
    v31 = &v16[v27];
    v25 = a1;
    v12 = v53;
    v30(v31, v29);
  }

  else
  {

    FormatOptionCollection.subscript.getter(v61, a3, v20);
  }

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1D5D28420(v20, sub_1D5E04C00);
    v32 = v60;
    *v60 = v61;
    v32[1] = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5D2885C(v25, v12, type metadata accessor for FormatOptionsNodeStatementContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v34 = *v12;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5EB9920();
      v58 = *(v35 + 48);
      v36 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
      v37 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 40);
      v38 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
      v39 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 56);
      v41 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
      v40 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 72);
      v42 = v12;
      v43 = *(v34 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);

      v61 = v36;

      sub_1D60B297C(v37, v38, v39, v41, v40, v43);

      sub_1D5EB9994();
      (*(*(v44 - 8) + 8))(&v42[v58], v44);
    }

    else
    {

      v49 = v34[8];
      v37 = v34[11];
      v38 = v34[12];
      v39 = v34[13];
      v41 = v34[14];
      v40 = v34[15];
      v43 = v34[16];

      v61 = v49;

      sub_1D60B297C(v37, v38, v39, v41, v40, v43);
    }

    sub_1D60B29F8(v37, v38, v39, v41, v40, v43);
    sub_1D5D285FC();
    swift_allocError();
    v50 = v60;
    sub_1D5D2885C(v60, v51, type metadata accessor for FormatLayoutError);
    swift_willThrow();
    return sub_1D5D28420(v50, type metadata accessor for FormatLayoutError);
  }

  else
  {

    v45 = v56;
    sub_1D5D247E0(v20, v56);

    v46 = v58;
    sub_1D6B75E28(v25, &v62);
    v47 = v61;
    if (!v46)
    {

      sub_1D6B818D4(v62, v47, a3, v55, v25, v54);
    }

    sub_1D5D28420(v45, type metadata accessor for FormatOption);
  }
}

unint64_t sub_1D6F71740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a7;
  v39 = a6;
  v32 = a4;
  v33 = a5;
  v41 = a1;
  v34 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v34, v9);
  v35 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatOption();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = off_1F513B088[0];
  type metadata accessor for FormatDecorationContext();

  v21 = a2;
  v22 = a2;
  v36 = a3;
  v23 = v41;
  v20(v22, a3, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D5D28420(v14, sub_1D5E04C00);
    v25 = v35;
    v24 = v36;
    *v35 = v21;
    *(v25 + 8) = v24;
    swift_storeEnumTagMultiPayload();
    v26 = *(v41 + 8);
    sub_1D5D285FC();
    v27 = swift_allocError();
    sub_1D5D2885C(v25, v28, type metadata accessor for FormatLayoutError);
    if (v26)
    {
      v40[0] = 0x3A676E697373694DLL;
      v40[1] = 0xEB000000007B7B20;
      MEMORY[0x1DA6F9910](v33, v39);
      MEMORY[0x1DA6F9910](32125, 0xE200000000000000);
      v23 = v40[0];
      sub_1D5D28420(v25, type metadata accessor for FormatLayoutError);
    }

    else
    {
      swift_willThrow();
      sub_1D5D28420(v25, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {
    v29 = v36;

    sub_1D5D247E0(v14, v19);

    v23 = v41;
    v30 = v37;
    sub_1D6B766A8(v41, v40);
    if (v30)
    {
      sub_1D5D28420(v19, type metadata accessor for FormatOption);
    }

    else
    {

      v23 = sub_1D6B8273C(v40[0], v21, v29, v32, v23);

      sub_1D5D28420(v19, type metadata accessor for FormatOption);
    }
  }

  return v23;
}

uint64_t static FormatOptionBinding.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D6341C50(v2, v3);
}

uint64_t FormatOptionBinding.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatOptionBinding.modifiers.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

unint64_t sub_1D6F71C48(uint64_t a1)
{
  result = sub_1D6F71C70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F71C70()
{
  result = qword_1EC898BF0;
  if (!qword_1EC898BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898BF0);
  }

  return result;
}

uint64_t sub_1D6F71CC4()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1D5C3C480();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  return v3;
}

uint64_t sub_1D6F71D20(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D6341C50(v2, v3);
}

unint64_t sub_1D6F71D94(void *a1)
{
  a1[1] = sub_1D5C6A164();
  a1[2] = sub_1D66F5218();
  result = sub_1D6F71DCC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6F71DCC()
{
  result = qword_1EC898BF8;
  if (!qword_1EC898BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898BF8);
  }

  return result;
}

uint64_t FeedCursor.unwrappedFeedPool.getter@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v2 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1D726393C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - v7;
  v9 = *(v2 + 224);
  swift_beginAccess();
  (*(v5 + 16))(v8, &v1[v9], v4);
  v10 = *(AssociatedTypeWitness - 8);
  if ((*(v10 + 48))(v8, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v10 + 32))(v14, v8, AssociatedTypeWitness);
  }

  (*(v5 + 8))(v8, v4);
  type metadata accessor for FeedServiceError();
  swift_getWitnessTable();
  swift_allocError();
  *v11 = 6;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 6;
  return swift_willThrow();
}

uint64_t FeedNextCursor.syncCursor.getter()
{
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
  }
}

uint64_t FeedCursor.canExpand.getter()
{
  v23 = *v0;
  v1 = *(v23 + 88);
  v2 = *(v23 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = &v22 - v7;
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v22 - v13;
  v15 = *(v0 + 32);
  if (((1 << v15) & 0x67) != 0)
  {
    (*(v1 + 64))(v2, v1, v12);
    (*(AssociatedConformanceWitness + 40))(v9, AssociatedConformanceWitness);
    (*(v10 + 8))(v14, v9);
    v16 = swift_getAssociatedConformanceWitness();
    v17 = (*(v16 + 48))(AssociatedTypeWitness, v16);
    v18 = (*(v5 + 8))(v8, AssociatedTypeWitness);
    v24 = v17;
    MEMORY[0x1EEE9AC00](v18, v19);
    *(&v22 - 2) = v2;
    *(&v22 - 1) = v1;
    swift_getAssociatedTypeWitness();
    sub_1D72627FC();
    swift_getWitnessTable();
    v20 = sub_1D72624DC();
  }

  else
  {
    v20 = v15 != 3;
  }

  return v20 & 1;
}

uint64_t FeedCursor.walkCursorChain(_:)(void (*a1)(uint64_t))
{
  v2 = v1;
  v4 = swift_retain_n();
  a1(v4);
  v5 = sub_1D5BE1A00();

  if (v5)
  {
    do
    {

      a1(v6);
      v7 = sub_1D5BE1A00();
    }

    while (v7);
  }

  v8 = *(*v2 + 272);
  swift_beginAccess();
  v9 = *(v2 + v8);

  if (v9)
  {
    while (1)
    {
      v11 = *(v9 + 16);
      if (v11 < 0)
      {
        break;
      }

      if (!v11)
      {
        break;
      }

      a1(v11);
      v12 = sub_1D5BD9E58();

      v9 = v12;
      if (!v12)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t static FeedCursor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D6DE53B8(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FeedCursorGroup();
  swift_getWitnessTable();
  if ((sub_1D726280C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FeedDatabaseGroup();
  swift_getWitnessTable();
  if ((sub_1D726280C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FeedGroupEmitter();
  sub_1D72627FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  if ((sub_1D7261E2C() & 1) == 0 || (sub_1D726280C() & 1) == 0 || (sub_1D726280C() & 1) == 0 || (sub_1D726280C() & 1) == 0 || *(a1 + qword_1EDFFCF00) != *(a2 + qword_1EDFFCF00) || *(a1 + qword_1EDFFCEF8) != *(a2 + qword_1EDFFCEF8))
  {
    return 0;
  }

  v5 = a1 + *(*a1 + 248);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = a2 + *(*a2 + 248);
  v9 = *v8;
  v10 = *(v8 + 8);
  if (v7 != 1)
  {
    if ((v10 & 1) == 0)
    {
      return v6 == v9;
    }

    return 0;
  }

  if (v6 == 0.0)
  {
    if (v9 == 0.0)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else if (v9 == 0.0)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

void *sub_1D6F72868()
{
  v1 = *v0;
  v22 = sub_1D6F73BA4();
  v18 = *(v1 + 80);
  v19 = *(v1 + 88);
  type metadata accessor for FeedCursorGroup();
  v2 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1D5B874E4(sub_1D6A9A910, v17, v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v4);

  v6 = sub_1D5B86020(v5);

  v7 = MEMORY[0x1E69E7CD0];
  v22 = MEMORY[0x1E69E7CD0];
  v21 = MEMORY[0x1E69E7CD0];
  type metadata accessor for FeedNextCursor();
  swift_allocObject();

  sub_1D5BD9700(v8);
  v9 = sub_1D5BD9E58();
  if (!v9)
  {
    v15 = v7;
    goto LABEL_12;
  }

  do
  {
    v10 = *(v9 + 16);
    if (v10 < 0)
    {

      if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {

        v14 = FeedCursorManifest.consumedGroupIdentifiers(excludingCursorIdentifier:)();

        sub_1D5B886D0(v14);
      }

LABEL_3:

      goto LABEL_4;
    }

    if (!v10)
    {
      goto LABEL_3;
    }

    v20 = *(v10 + qword_1EDFFCF38);
    MEMORY[0x1EEE9AC00](v11, v12);
    type metadata accessor for FeedDatabaseGroup();
    sub_1D72627FC();

    swift_getWitnessTable();
    v13 = sub_1D726242C();

    sub_1D5B87D50(v13);

LABEL_4:
    v9 = sub_1D5BD9E58();
  }

  while (v9);
  v15 = v22;
  v7 = v21;
LABEL_12:

  type metadata accessor for FeedCursorDedupper();
  return sub_1D5E31FC4(v6, v15, v7);
}

uint64_t sub_1D6F72B98()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1D6F72BE0, 0, 0);
}

uint64_t sub_1D6F72BE0()
{
  v1 = *(v0[4] + 16);
  v0[6] = v1;
  if (v1 < 0)
  {

    sub_1D725B77C();
    v4 = v0[2];
    v0[7] = v4;
    v5 = swift_task_alloc();
    v0[8] = v5;
    v6 = type metadata accessor for FeedCursor();
    v7 = sub_1D5BA6EF4();
    *v5 = v0;
    v5[1] = sub_1D6F72D20;
    v8 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 3, v4, v6, v7, v8);
  }

  else
  {
    v9 = v0[1];

    return v9(v2);
  }
}

uint64_t sub_1D6F72D20()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D6F72EBC;
  }

  else
  {
    v2 = sub_1D6F72E50;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6F72E50()
{

  v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D6F72EBC()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_1D6F72F24()
{
  v56 = *v0;
  v1 = v56;
  v2 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v60 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v5 = sub_1D726393C();
  v49 = v5;
  v51 = *(v5 - 8);
  v6 = v51;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v39 - v8;
  v46 = &v39 - v8;
  v10 = sub_1D725891C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v14;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v53 = &v39 - v18;
  v19 = v0[3];
  v55 = v0[2];
  v45 = v19;
  v54 = *(v1 + 256);
  v59 = *(v0 + *(v1 + 264));
  v65[0] = *(v0 + 32);
  v20 = *(v11 + 16);
  v20(&v39 - v18, v0 + qword_1EDFFCF50, v10, v17);
  (v20)(v14, v0 + qword_1EDFFCF58, v10);
  v44 = *(v0 + qword_1EDFFCF48);
  v58 = *(v0 + qword_1EDFFCF08);
  v41 = *(v0 + qword_1EDFFCF10);
  v57 = *(v0 + qword_1EDFFCF20);
  v42 = *(v0 + qword_1EDFFCF40);
  v43 = *(v0 + qword_1EDFFCF38);
  v50 = *(v0 + qword_1EDFFCEF8);
  v48 = *(v0 + qword_1EDFFCF60);
  v47 = *(v0 + qword_1EDFFCF18);
  v39 = *(v0 + qword_1EDFFCF30);
  v40 = *(v0 + qword_1EDFFCF28);
  v21 = *(*v0 + 224);
  swift_beginAccess();
  (*(v6 + 16))(v9, v0 + v21, v5);
  sub_1D5BE6814(v0 + *(*v0 + 232), v60);
  v22 = *v0;
  v23 = (v0 + *(*v0 + 240));
  v24 = v23[1];
  v25 = v23[2];
  *&v63 = *v23;
  *(&v63 + 1) = v24;
  v64 = v25;
  v26 = v0 + v22[31];
  v27 = *v26;
  LOBYTE(v26) = *(v26 + 8);
  v61 = v27;
  v62 = v26;
  v28 = *(v0 + v22[35]);
  v29 = *(v0 + v22[36]);

  v30 = v42;

  v31 = v43;

  v32 = v39;

  v33 = v40;

  v34 = sub_1D5BE1A00();
  swift_allocObject();
  v38 = v29;
  v35 = v46;
  v36 = sub_1D5BE1A84(v55, v45, v0 + v54, v59, v65, v53, v52, v44, v58, v41, v57, v30, v31, v50, v48, v47, v32, v33, v46, v60, &v63, &v61, v28, v38, 0, v34);
  (*(v51 + 8))(v35, v49);

  return v36;
}

uint64_t sub_1D6F73578(uint64_t a1)
{
  type metadata accessor for FeedCursorGroup();
  result = sub_1D726279C();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else if (result + 1 == *(v1 + qword_1EDFFCF00))
  {
    return 1;
  }

  else
  {
    v4 = *(v1 + qword_1EDFFCF08);
    type metadata accessor for FeedGroupEmitter();
    sub_1D72627FC();
    nullsub_1(v4);
    sub_1D7261DCC();
    swift_getWitnessTable();
    sub_1D72624FC();
    return (v6 == 1 || FeedCursor.nextSlotIndex.getter() >= v5) && a1 == 1;
  }

  return result;
}

uint64_t sub_1D6F73704(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v52 = a3;
  v53 = a5;
  v54 = a4;
  v43 = a2;
  v42 = a1;
  v7 = *v5;
  v8 = sub_1D725891C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v7 + 80);
  swift_getAssociatedTypeWitness();
  v16 = sub_1D726393C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v41 - v19;
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v41 - v24;
  (*(v26 + 16))(&v41 - v24, &v6[*(v7 + 256)], v15, v23);
  v50 = sub_1D6F76A5C();
  v49 = sub_1D6F76BD0();
  v48 = *&v6[qword_1EDFFCF40];

  v47 = sub_1D6F73BA4();
  v46 = sub_1D6F767E8(FeedCursor.allEmittedGroups.getter, type metadata accessor for FeedCursorGroup);
  v27 = *&v6[qword_1EDFFCF38];

  v45 = sub_1D6F74CF4();
  v44 = sub_1D6F767E8(sub_1D6F76684, type metadata accessor for FeedDatabaseGroup);
  v28 = *(*v6 + 224);
  swift_beginAccess();
  (*(v17 + 16))(v20, &v6[v28], v16);
  v29 = *&v6[qword_1EDFFCF30];
  if (*(v29 + 16) && (v30 = sub_1D5B69D90(v42, v43), (v31 & 1) != 0))
  {
    sub_1D5B76B10(*(v29 + 56) + 32 * v30, v58);
  }

  else
  {
    memset(v58, 0, sizeof(v58));
  }

  type metadata accessor for FeedGroupEmitterCursor();
  sub_1D5BE6814(&v6[*(*v6 + 232)], v14);
  v32 = *v6;
  v33 = &v6[*(*v6 + 248)];
  v34 = *v33;
  LOBYTE(v33) = v33[8];
  v56 = v34;
  v57 = v33;
  v55 = v6[32];
  v35 = *&v6[*(v32 + 280)];
  v36 = *&v6[*(v32 + 288)];
  v37 = v53;

  v38 = v52;

  v39 = v51;
  sub_1D725890C();
  return sub_1D70AC314(v25, v50, v49, v48, v47, v46, v27, v45, v44, v20, v58, v14, &v56, &v55, v35, v39, v54 & 1, v37, v38, v36);
}

uint64_t FeedCursor.absoluteSlotIndex.getter()
{
  if (sub_1D5BE1A00())
  {
    v0 = FeedCursor.absoluteSlotIndex.getter();
    v1 = FeedCursor.nextSlotIndex.getter();

    result = v0 + v1;
    if (__OFADD__(v0, v1))
    {
      __break(1u);
    }
  }

  else
  {

    return FeedCursor.nextSlotIndex.getter();
  }

  return result;
}

char *FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10, uint64_t a11, uint64_t a12, uint64_t a13, _BYTE *a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v160 = a8;
  v143 = a7;
  v142 = a6;
  v159 = a5;
  v147 = a4;
  v137 = a3;
  v156 = *v28;
  v29 = v156;
  v157 = a1;
  v30 = MEMORY[0x1E69E6720];
  sub_1D5BFCA08(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v152 = &v123[-v33];
  v150 = type metadata accessor for FeedContext();
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150, v34);
  v154 = &v123[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = *(v29 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v155 = sub_1D726393C();
  v166 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155, v38);
  v145 = &v123[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v40, v41);
  v164 = &v123[-v42];
  sub_1D5BFCA08(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v30);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v141 = &v123[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v46, v47);
  v138 = &v123[-v48];
  v49 = sub_1D725891C();
  v140 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v50);
  v163 = &v123[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v52, v53);
  v162 = &v123[-v54];
  v55 = sub_1D726393C();
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v57);
  v59 = &v123[-v58];
  v165 = v36;
  v60 = *(v36 - 8);
  v64 = MEMORY[0x1EEE9AC00](v61, v62);
  v161 = &v123[-v65];
  v66 = *v159;
  v67 = a24[1];
  v148 = *a24;
  v158 = a24[2];
  v159 = v67;
  v125 = *a25;
  v124 = *(a25 + 8);
  v146 = *(a25 + 9);
  v144 = AssociatedTypeWitness;
  v139 = v63;
  if (v63)
  {
    v151 = v63;
  }

  else
  {
    v68 = *(v28 + 24);
    v157 = *(v28 + 16);
    v151 = v68;
  }

  (*(v56 + 16))(v59, v137, v55, v64);
  v69 = *(v60 + 48);
  v70 = v165;
  v71 = v69(v59, 1, v165);
  v153 = v60;
  if (v71 == 1)
  {
    (*(v60 + 16))(v161, v28 + *(*v28 + 256), v70);
    if (v69(v59, 1, v70) != 1)
    {
      v72 = *(v56 + 8);

      v72(v59, v55);
      goto LABEL_9;
    }
  }

  else
  {
    (*(v60 + 32))(v161, v59, v70);
  }

LABEL_9:
  v73 = v140;
  if (!v147)
  {
    v147 = *(v28 + *(*v28 + 264));
  }

  v74 = v138;
  if (v66 == 7)
  {
    LOBYTE(v66) = *(v28 + 32);
  }

  v171 = v66;
  sub_1D5B758F8(v142, v138, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  v75 = *(v73 + 48);
  if (v75(v74, 1, v49) == 1)
  {
    (*(v73 + 16))(v162, v28 + qword_1EDFFCF50, v49);
    v76 = v75(v74, 1, v49);

    v77 = v76 == 1;
    v78 = v160;
    if (!v77)
    {
      sub_1D5B87B48(v74, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    (*(v73 + 32))(v162, v74, v49);

    v78 = v160;
  }

  v79 = v141;
  sub_1D5B758F8(v143, v141, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  if (v75(v79, 1, v49) == 1)
  {
    (*(v73 + 16))(v163, v28 + qword_1EDFFCF58, v49);
    if (v75(v79, 1, v49) != 1)
    {
      sub_1D5B87B48(v79, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    }

    v80 = a9;
    if (v78)
    {
LABEL_21:
      v143 = v78;
      v81 = a10;
      if (v80)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

  else
  {
    (*(v73 + 32))(v163, v79, v49);
    v80 = a9;
    if (v78)
    {
      goto LABEL_21;
    }
  }

  v143 = *(v28 + qword_1EDFFCF48);

  v81 = a10;
  if (v80)
  {
LABEL_22:
    v142 = v80;
    v82 = a11;
    if (v81)
    {
      goto LABEL_23;
    }

LABEL_28:
    v141 = *(v28 + qword_1EDFFCF10);

    v83 = a12;
    if (v82)
    {
      goto LABEL_24;
    }

    goto LABEL_29;
  }

LABEL_27:
  v142 = *(v28 + qword_1EDFFCF08);

  v82 = a11;
  if (!v81)
  {
    goto LABEL_28;
  }

LABEL_23:
  v141 = v81;
  v83 = a12;
  if (v82)
  {
LABEL_24:
    v140 = v82;
    goto LABEL_30;
  }

LABEL_29:
  v140 = *(v28 + qword_1EDFFCF20);

LABEL_30:
  v132 = v80;
  v131 = v81;
  if (v83)
  {
    v139 = v83;
  }

  else
  {
    v139 = *(v28 + qword_1EDFFCF40);
  }

  v130 = v82;
  if (a13)
  {
    v137 = a13;
  }

  else
  {
    v137 = *(v28 + qword_1EDFFCF38);
  }

  if (a15)
  {
    a14 = *(v28 + qword_1EDFFCEF8);
  }

  if ((a17 & 1) == 0)
  {
    v87 = a20;
    if ((a19 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_43:
    a18 = *(v28 + qword_1EDFFCF18);
    v88 = a21;
    v89 = a22;
    if (v87)
    {
      goto LABEL_41;
    }

    goto LABEL_44;
  }

  a16 = *(v28 + qword_1EDFFCF60);
  v87 = a20;
  if (a19)
  {
    goto LABEL_43;
  }

LABEL_40:
  v88 = a21;
  v89 = a22;
  if (v87)
  {
LABEL_41:
    v134 = v87;
    goto LABEL_45;
  }

LABEL_44:
  v134 = *(v28 + qword_1EDFFCF30);

LABEL_45:
  v126 = a23;
  v138 = a14;
  v136 = a16;
  v135 = a18;
  v129 = v83;
  v128 = a13;
  v127 = v87;
  if (v88)
  {
    v133 = v88;
  }

  else
  {
    v133 = *(v28 + qword_1EDFFCF28);
  }

  v90 = *(v166 + 16);
  v91 = v145;
  v92 = v155;
  v90(v145, v89, v155);
  v93 = v144;
  v94 = *(v144 - 8);
  v95 = *(v94 + 48);
  if (v95(v91, 1, v144) == 1)
  {
    v96 = *(*v28 + 224);
    swift_beginAccess();
    v90(v164, v28 + v96, v92);
    v97 = v92;
    if (v95(v91, 1, v93) == 1)
    {
    }

    else
    {
      v99 = *(v166 + 8);

      v99(v91, v92);
    }
  }

  else
  {
    v98 = v164;
    (*(v94 + 32))(v164, v91, v93);
    (*(v94 + 56))(v98, 0, 1, v93);

    v97 = v92;
  }

  v100 = v152;
  v101 = v148;
  sub_1D5B758F8(v126, v152, qword_1EDF34CA0, type metadata accessor for FeedContext);
  v102 = *(v149 + 48);
  v103 = v150;
  v104 = v102(v100, 1, v150);
  v105 = v165;
  v106 = v154;
  if (v104 == 1)
  {
    sub_1D5BE6814(v28 + *(*v28 + 232), v154);
    if (v102(v100, 1, v103) != 1)
    {
      sub_1D5B87B48(v100, qword_1EDF34CA0, type metadata accessor for FeedContext);
    }

    if (v101)
    {
      goto LABEL_57;
    }
  }

  else
  {
    sub_1D5C25D20(v100, v154);
    if (v101)
    {
LABEL_57:
      v107 = v101;
      v109 = v158;
      v108 = v159;
      goto LABEL_60;
    }
  }

  v110 = (v28 + *(*v28 + 240));
  v107 = *v110;
  v108 = v110[1];
  v109 = v110[2];

LABEL_60:
  *&v169 = v107;
  *(&v169 + 1) = v108;
  v170 = v109;
  if (v146)
  {
    v111 = v28 + *(*v28 + 248);
    v112 = *v111;
    v113 = *(v111 + 8);
  }

  else
  {
    v112 = v125;
    v113 = v124;
  }

  v167 = v112;
  v168 = v113 & 1;
  if (!a26)
  {
    v114 = *(v28 + *(*v28 + 280));

    if (a27)
    {
      goto LABEL_65;
    }

LABEL_67:
    v115 = *(v28 + *(*v28 + 288));

    goto LABEL_68;
  }

  v114 = a26;
  if (!a27)
  {
    goto LABEL_67;
  }

LABEL_65:
  v115 = a27;
LABEL_68:
  sub_1D5C08658(v101);

  v116 = sub_1D6F76D6C(a28, v28);
  v117 = sub_1D5BE1A00();
  swift_allocObject();
  v122 = v114;
  v118 = v164;
  v119 = v161;
  v120 = sub_1D5BE1A84(v157, v151, v161, v147, &v171, v162, v163, v143, v142, v141, v140, v139, v137, v138, v136, v135, v134, v133, v164, v106, &v169, &v167, v122, v115, v116, v117);
  (*(v166 + 8))(v118, v97);

  (*(v153 + 8))(v119, v105);
  return v120;
}

uint64_t FeedNextCursor.identifier.getter()
{
  v0 = sub_1D6F790F0();

  return v0;
}

uint64_t sub_1D6F74CB4(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1D5BD9700(a1);
  return v2;
}

uint64_t sub_1D6F74D28(void (*a1)(void), void (*a2)(void, uint64_t, uint64_t))
{
  v5 = *v2;
  if (sub_1D5BE1A00())
  {
    a1();

    v6 = *(v5 + 80);
    v7 = *(v5 + 88);
  }

  else
  {
    v6 = *(v5 + 80);
    v7 = *(v5 + 88);
    a2(0, v6, v7);
    sub_1D726275C();
  }

  a2(0, v6, v7);
  v8 = sub_1D726274C();

  return v8;
}

uint64_t sub_1D6F74E20(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v78 = type metadata accessor for FeedContext;
  v5 = MEMORY[0x1E69E6720];
  sub_1D5BFCA08(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v82 = &v61 - v8;
  v9 = *(v4 + 88);
  v10 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = sub_1D726393C();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v12);
  v81 = &v61 - v13;
  v75 = MEMORY[0x1E6969530];
  sub_1D5BFCA08(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v5);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v61 - v20;
  v69 = &v61 - v20;
  v74 = sub_1D726393C();
  v73 = *(v74 - 8);
  v23 = MEMORY[0x1EEE9AC00](v74, v22);
  v70 = &v61 - v24;
  (*(*(v10 - 8) + 56))(&v61 - v24, 1, 1, v10, v23);
  v99 = 0x2020403020102uLL >> (8 * v2[32]);
  v25 = sub_1D725891C();
  v26 = *(*(v25 - 8) + 56);
  v26(v21, 1, 1, v25);
  v26(v17, 1, 1, v25);
  type metadata accessor for FeedGroupEmitter();
  v67 = sub_1D726275C();
  v27 = sub_1D72627FC();
  v28 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v29 = sub_1D726275C();
  v65 = sub_1D6F78E04(v29, v28, v27, MEMORY[0x1E69E6540]);

  v64 = sub_1D726275C();
  *&v97 = *&v2[qword_1EDFFCF40];
  v90 = v10;
  v91 = v9;
  v79 = a1;
  v92 = a1;
  type metadata accessor for FeedCursorGroup();
  v30 = sub_1D72627FC();

  swift_getWitnessTable();
  v66 = v30;
  v31 = sub_1D7263E7C();
  *&v97 = *&v2[qword_1EDFFCF38];
  v87 = v10;
  v88 = v9;
  v89 = a1;
  type metadata accessor for FeedDatabaseGroup();
  sub_1D72627FC();

  swift_getWitnessTable();
  v32 = sub_1D7263E7C();
  v62 = AssociatedTypeWitness;
  v33 = *(AssociatedTypeWitness - 8);
  v61 = *(v33 + 56);
  v63 = v33 + 56;
  v34 = v81;
  v61(v81, 1, 1, AssociatedTypeWitness);
  v35 = type metadata accessor for FeedContext();
  v36 = v82;
  (*(*(v35 - 8) + 56))(v82, 1, 1, v35);
  v80 = v2;
  v37 = *&v2[*(*v2 + 240)];
  v84 = v10;
  v85 = v9;
  v86 = v79;

  v38 = sub_1D62EDEF4(sub_1D6F798C4, v83, v37);
  v71 = v10;
  v72 = v9;
  FeedJournal.init(entries:)(v38, &v97);
  v95 = v97;
  v96 = v98;
  v93 = 0;
  v94 = 256;
  v60 = v34;
  v39 = v70;
  v40 = v69;
  v41 = v68;
  v42 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v70, 0, &v99, v69, v68, v67, v65, 0, v64, v31, v32, 0, 1, 0, 1, 0, 1, 0, 0, v60, v36, &v95, &v93, 0, 0, 0);

  sub_1D5C086A4(v95);
  sub_1D5B87B48(v82, qword_1EDF34CA0, v78);
  v43 = v76;
  v44 = v81;
  v45 = v77;
  (*(v76 + 8))(v81, v77);
  v46 = v41;
  v47 = v75;
  sub_1D5B87B48(v46, &qword_1EDF45B00, v75);
  sub_1D5B87B48(v40, &qword_1EDF45B00, v47);
  (*(v73 + 8))(v39, v74);
  v48 = v44;
  v61(v44, 1, 1, v62);
  v49 = *(*v42 + 224);
  swift_beginAccess();
  (*(v43 + 40))(&v42[v49], v48, v45);
  swift_endAccess();
  v50 = *(*v80 + 272);
  v51 = v80;
  swift_beginAccess();
  if (*&v51[v50])
  {

    v52 = sub_1D6F771BC(v79);
  }

  else
  {
    v52 = 0;
  }

  sub_1D6F793CC(v52);

  v53 = *(*v42 + 272);
  swift_beginAccess();
  if (*&v42[v53])
  {

    swift_weakAssign();
    sub_1D5BD9EBC();
  }

  type metadata accessor for FeedNextCursor();
  v54 = swift_allocObject();

  sub_1D5BD9700(v55);
  v56 = *(v54 + 16);

  for (i = v54; (v56 & 0x8000000000000000) == 0; i = v58)
  {

    if (!v56)
    {
      break;
    }

    v93 = *(v56 + qword_1EDFFCF40);
    swift_getWitnessTable();
    if ((sub_1D7262CCC() & 1) == 0 || (FeedCursor.reachedEnd.getter() & 1) == 0)
    {

      goto LABEL_15;
    }

    v58 = sub_1D5BD9E58();

    if (!v58)
    {

      return 0;
    }

    v56 = *(v58 + 16);
  }

LABEL_15:

  return i;
}

uint64_t sub_1D6F758D8()
{
  v1 = v0;
  v2 = *(*v0 + 272);

  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3)
  {
  }

  while (1)
  {

    swift_weakAssign();
    sub_1D5BD9EBC();

    v4 = *(v3 + 16);
    if (v4 < 0)
    {
      v4 = 0;
    }

    else
    {
    }

    if (!v4)
    {
      break;
    }

    v6 = *(*v4 + 272);
    swift_beginAccess();
    v3 = *(v4 + v6);
    if (!v3)
    {
    }
  }

  return result;
}

uint64_t sub_1D6F759D8()
{
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t FeedCursor.identifier.getter()
{
  v0 = sub_1D5C036AC();

  return v0;
}

uint64_t sub_1D6F75A64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1D725891C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t FeedCursor.feedPool.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 224);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1D726393C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t FeedCursor.feedJournal.getter@<X0>(void *a1@<X8>)
{
  v2 = (v1 + *(*v1 + 240));
  v3 = v2[1];
  v4 = v2[2];
  *a1 = *v2;
  a1[1] = v3;
  a1[2] = v4;
}

void FeedCursor.cachePolicy.getter(uint64_t a1@<X8>)
{
  v2 = (v1 + *(*v1 + 248));
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_1D6F75DD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 272);
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D6F75E38()
{
  v1 = v0;
  v2 = *(*v0 + 272);
  result = swift_beginAccess();
  if (*(v1 + v2))
  {

    swift_weakAssign();
    sub_1D5BD9EBC();
  }

  return result;
}

char *FeedCursor.__allocating_init(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:parentCursor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 *a21, uint64_t *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = sub_1D6F79100(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  v29 = *(v26 + 80);
  swift_getAssociatedTypeWitness();
  v30 = sub_1D726393C();
  (*(*(v30 - 8) + 8))(a19, v30);

  (*(*(v29 - 8) + 8))(a3, v29);
  return v28;
}

char *FeedCursor.init(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:parentCursor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 *a21, uint64_t *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = *v26;
  v29 = sub_1D5BE1A84(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  v30 = *(v28 + 80);
  swift_getAssociatedTypeWitness();
  v31 = sub_1D726393C();
  (*(*(v31 - 8) + 8))(a19, v31);

  (*(*(v30 - 8) + 8))(a3, v30);
  return v29;
}

uint64_t sub_1D6F76160()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 48);
  v2 = swift_checkMetadataState();
  return v1(v2, AssociatedConformanceWitness) & 1;
}

uint64_t FeedCursor.activeEmitters.getter()
{
  type metadata accessor for FeedGroupEmitter();
  sub_1D72627FC();
  sub_1D7261DEC();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D72624BC();

  v0 = sub_1D726274C();

  return v0;
}

uint64_t FeedCursor.reduceCursorChain<A>(into:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = v4;
  v10 = *(a3 - 8);
  (*(v10 + 16))(a4, a1, a3);
  swift_retain_n();
  a2(a4, v4);
  if (v5)
  {
    (*(v10 + 8))(a4, a3);
  }

  else
  {
    while (1)
    {
      v11 = sub_1D5BE1A00();

      if (!v11)
      {
        break;
      }

      a2(a4, v11);
    }

    v13 = *(*v4 + 272);
    swift_beginAccess();
    v14 = *(v6 + v13);

    if (v14)
    {
      while (1)
      {
        v15 = *(v14 + 16);
        if (v15 < 0)
        {
          break;
        }

        if (!v15)
        {
          break;
        }

        a2(a4, v15);
        v16 = sub_1D5BD9E58();

        v14 = v16;
        if (!v16)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D6F766B8(uint64_t a1, void (*a2)(uint64_t), void (*a3)(void, uint64_t, uint64_t))
{
  v6 = *v3;
  v7 = *(*v3 + 272);
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8 && (v9 = *(v8 + 16), (v9 & 0x8000000000000000) == 0) && (v10 = , v9))
  {
    a2(v10);

    v12 = *(v6 + 80);
    v11 = *(v6 + 88);
  }

  else
  {
    v12 = *(v6 + 80);
    v11 = *(v6 + 88);
    a3(0, v12, v11);
    sub_1D726275C();
  }

  a3(0, v12, v11);
  v13 = sub_1D726274C();

  return v13;
}

uint64_t sub_1D6F767E8(uint64_t (*a1)(uint64_t), void (*a2)(void, void, void))
{
  v5 = *v2;
  v6 = *(*v2 + 272);
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7 && (v8 = *(v7 + 16), (v8 & 0x8000000000000000) == 0) && (v9 = , v8))
  {
    v10 = a1(v9);

    return v10;
  }

  else
  {
    a2(0, *(v5 + 80), *(v5 + 88));
    return sub_1D726275C();
  }
}

uint64_t sub_1D6F768D0()
{
  v1 = *(*v0 + 80);
  sub_1D5D0DDD4(v1, v1);
  v2 = *(v1 - 8);
  swift_allocObject();
  v3 = sub_1D726270C();
  (*(v2 + 16))(v4, v0 + *(*v0 + 256), v1);
  v5 = *(*v0 + 272);
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (v6 && (v7 = *(v6 + 16), (v7 & 0x8000000000000000) == 0) && (v8 = , v7))
  {
    sub_1D6F768D0(v8);
  }

  else
  {
    sub_1D726275C();
  }

  sub_1D5BFCB60(v3);
  v9 = sub_1D726274C();

  return v9;
}

uint64_t sub_1D6F76A5C()
{
  v1 = *v0;
  if (sub_1D5BE1A00())
  {
    sub_1D6F76A5C();

    v2 = *(v1 + 80);
  }

  else
  {
    v2 = *(v1 + 80);
    sub_1D726275C();
  }

  sub_1D5D0DDD4(v2, v2);
  v3 = *(v2 - 8);
  swift_allocObject();
  v4 = sub_1D726270C();
  (*(v3 + 16))(v5, v0 + *(*v0 + 256), v2);
  sub_1D5BFCB60(v4);
  v6 = sub_1D726274C();

  return v6;
}

uint64_t sub_1D6F76BD0()
{
  v1 = *(*v0 + 272);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return sub_1D726275C();
  }

  v3 = *(v2 + 16);
  if (v3 < 0)
  {
    return sub_1D726275C();
  }

  if (!v3)
  {
    return sub_1D726275C();
  }

  v4 = sub_1D6F768D0();

  return v4;
}

uint64_t sub_1D6F76C90@<X0>(uint64_t *a1@<X8>)
{
  sub_1D725C4CC();
  sub_1D725C73C();

  if (v5)
  {
    sub_1D725C89C();

    sub_1D725C58C();
    if (v1)
    {

LABEL_5:
      result = FeedDatabaseGroup.identifier.getter();
      *a1 = result;
      a1[1] = v4;
      return result;
    }

    if ((v6 & 0xFE) == 2)
    {
      goto LABEL_5;
    }

    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6F76D6C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    type metadata accessor for FeedNextCursor();
    v2 = swift_allocObject();

    sub_1D5BD9700(v3);
  }

  else
  {
    v4 = *(*a2 + 272);
    swift_beginAccess();
    v2 = *(a2 + v4);
  }

  return v2;
}

uint64_t sub_1D6F76E14()
{
  type metadata accessor for FeedCursorGroup();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 88);
  v2 = swift_checkMetadataState();
  v1(&v8, v2, AssociatedConformanceWitness);
  if ((v8 & 0xFE) != 2)
  {
    return 0;
  }

  v3 = FeedCursorGroup.identifier.getter();
  v5 = v4;
  type metadata accessor for FeedCursorTrackerSnapshot();
  v6._countAndFlagsBits = v3;
  v6._object = v5;
  LOBYTE(v3) = FeedCursorTrackerSnapshot.contains(identifier:)(v6);

  return v3 & 1;
}

uint64_t sub_1D6F76FA4()
{
  sub_1D725C4CC();
  sub_1D725C73C();

  if (v7)
  {
    sub_1D725C89C();

    sub_1D725C58C();
    if (v0)
    {
    }

    else
    {

      if ((v8 & 0xFE) != 2)
      {
        return 0;
      }
    }

    v2 = FeedDatabaseGroup.identifier.getter();
    v4 = v3;
    type metadata accessor for FeedCursorTrackerSnapshot();
    v5._countAndFlagsBits = v2;
    v5._object = v4;
    v6 = FeedCursorTrackerSnapshot.contains(identifier:)(v5);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6F770C4(uint64_t result)
{
  v1 = *result;
  if (*(*result + 16))
  {
    sub_1D5C0C678(v1 + 32, v6);
    FeedJournalGroupResult.repooling.getter(&v7);
    result = sub_1D5C074F4(v6);
    if ((v7 & 0xFE) != 2)
    {
      return 0;
    }

    if (*(v1 + 16))
    {
      sub_1D5C0C678(v1 + 32, v6);
      v2 = v6[0];
      v3 = v6[1];

      sub_1D5C074F4(v6);
      type metadata accessor for FeedCursorTrackerSnapshot();
      v4._countAndFlagsBits = v2;
      v4._object = v3;
      v5 = FeedCursorTrackerSnapshot.contains(identifier:)(v4);

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6F771BC(uint64_t a1)
{
  if ((*(v1 + 16) & 0x8000000000000000) != 0)
  {
  }

  else
  {

    v3 = sub_1D6F74E20(a1);

    return v3;
  }
}

uint64_t sub_1D6F77258()
{
  swift_getWitnessTable();

  return sub_1D725B0BC();
}

uint64_t sub_1D6F772B8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1D6F772F8(a1);
  return v2;
}

uint64_t sub_1D6F772F8(uint64_t a1)
{
  swift_weakInit();
  *(v1 + 16) = a1 | 0x8000000000000000;
  swift_weakLoadStrong();
  swift_weakAssign();

  return v1;
}

void *sub_1D6F77350()
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  v10 = *(v0 + 32);
  v4 = v0[5];
  v6 = v0[7];
  v5 = v0[8];
  v7 = swift_allocObject();
  v7[2] = *(v1 + 80);
  v7[3] = *(v1 + 88);
  v7[4] = v6;
  v7[5] = v5;
  swift_allocObject();

  v8 = sub_1D6F79208(v3, v2, &v10, v4, 0, &unk_1D73788D8, v7);

  return v8;
}

uint64_t sub_1D6F77494@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 < 0)
  {
    v6 = a1 & 0x7FFFFFFFFFFFFFFFLL;
    sub_1D5BFCA08(0, &qword_1EDF19560, sub_1D5BE1388, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 32) = 0x656E6961746E6F63;
    v8 = MEMORY[0x1E69E6158];
    *(inited + 16) = xmmword_1D7270C10;
    *(inited + 40) = 0xE900000000000072;
    *(inited + 48) = 0x727543636E797361;
    *(inited + 56) = 0xEB00000000726F73;
    *(inited + 72) = v8;
    *(inited + 80) = 1684957547;
    *(inited + 88) = 0xE400000000000000;
    v9 = *(v6 + 32);
    if (v9 > 3)
    {
      if (*(v6 + 32) > 5u)
      {
        if (v9 != 6)
        {
          *(inited + 120) = v8;
          *(inited + 96) = 0x6E776F6E6B6E55;
          v11 = 0xE700000000000000;
          goto LABEL_18;
        }

        v11 = 0xE800000000000000;
        v10 = 0x6465646E61707845;
      }

      else if (v9 == 4)
      {
        v11 = 0xE600000000000000;
        v10 = 0x646568636143;
      }

      else
      {
        v11 = 0xE800000000000000;
        v10 = 0x64656C6F6F706552;
      }
    }

    else if (*(v6 + 32) > 1u)
    {
      if (v9 == 2)
      {
        v11 = 0xE600000000000000;
        v10 = 0x6E657A6F7246;
      }

      else
      {
        v11 = 0xEB00000000646565;
        v10 = 0x4620666F20646E45;
      }
    }

    else
    {
      v10 = 1852138835;
      if (*(v6 + 32))
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v10 = 0x657669746341;
        v11 = 0xE600000000000000;
      }
    }

    *(inited + 120) = v8;
    *(inited + 96) = v10;
LABEL_18:
    *(inited + 104) = v11;
    sub_1D5BE1168(inited);
    swift_setDeallocating();
    sub_1D5BE1388();
    goto LABEL_19;
  }

  sub_1D5BFCA08(0, &qword_1EDF19560, sub_1D5BE1388, MEMORY[0x1E69E6F90]);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1D7270C10;
  *(v4 + 32) = 0x656E6961746E6F63;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 40) = 0xE900000000000072;
  *(v4 + 48) = 0x726F73727563;
  *(v4 + 56) = 0xE600000000000000;
  *(v4 + 72) = v5;
  *(v4 + 80) = 1684957547;
  *(v4 + 88) = 0xE400000000000000;
  LOBYTE(v5) = *(a1 + 32);
  *(v4 + 120) = &type metadata for FeedCursorKind;
  *(v4 + 96) = v5;
  sub_1D5BE1168(v4);
  swift_setDeallocating();
  sub_1D5BE1388();
LABEL_19:
  swift_arrayDestroy();
  type metadata accessor for FeedNextCursor();
  a2[3] = sub_1D725B0DC();
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_1D725B0CC();
}

uint64_t sub_1D6F777F4()
{
  swift_getWitnessTable();

  return sub_1D725B0BC();
}

uint64_t FeedNextCursor.deinit()
{

  swift_weakDestroy();
  return v0;
}

uint64_t sub_1D6F77874()
{
  v0 = sub_1D6F790F0();

  return v0;
}

uint64_t FeedNextCursor.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1D5BD9E58();
  if (v4)
  {
    v5 = v4;
    sub_1D5BFCA08(0, &qword_1EDF19560, sub_1D5BE1388, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7279970;
    *(inited + 32) = 0x696669746E656469;
    *(inited + 40) = 0xEA00000000007265;
    v7 = *((v1[2] & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v8 = MEMORY[0x1E69E6158];
    *(inited + 48) = *((v1[2] & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    *(inited + 56) = v7;
    *(inited + 72) = v8;
    *(inited + 80) = 0x656E6961746E6F63;
    *(inited + 88) = 0xE900000000000072;
    v9 = v1[2];
    v10 = type metadata accessor for FeedNextCursor.Container();
    *(inited + 96) = v9;
    *(inited + 120) = v10;
    *(inited + 128) = 0x737275437478656ELL;
    *(inited + 168) = v3;
    *(inited + 136) = 0xEA0000000000726FLL;
    *(inited + 144) = v5;

    sub_1D5BE1168(inited);
    swift_setDeallocating();
    sub_1D5BE1388();
    swift_arrayDestroy();
    a1[3] = sub_1D725B0DC();
    a1[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_1D725B0CC();
  }

  else
  {
    sub_1D5BFCA08(0, &qword_1EDF19560, sub_1D5BE1388, MEMORY[0x1E69E6F90]);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1D7270C10;
    *(v12 + 32) = 0x696669746E656469;
    *(v12 + 40) = 0xEA00000000007265;
    v13 = *((v1[2] & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v14 = MEMORY[0x1E69E6158];
    *(v12 + 48) = *((v1[2] & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    *(v12 + 56) = v13;
    *(v12 + 72) = v14;
    *(v12 + 80) = 0x656E6961746E6F63;
    *(v12 + 88) = 0xE900000000000072;
    v15 = v1[2];
    *(v12 + 120) = type metadata accessor for FeedNextCursor.Container();
    *(v12 + 96) = v15;

    sub_1D5BE1168(v12);
    swift_setDeallocating();
    sub_1D5BE1388();
    swift_arrayDestroy();
    a1[3] = sub_1D725B0DC();
    a1[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_1D725B0CC();
  }
}

uint64_t sub_1D6F77BEC()
{
  swift_getWitnessTable();

  return sub_1D725B0BC();
}

uint64_t sub_1D6F77C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  sub_1D5BFCA08(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v21 - v16;
  v18 = sub_1D726294C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a5;
  v19[5] = a6;
  v19[6] = a1;
  v19[7] = a2;
  v19[8] = a3;
  v19[9] = a4;
  type metadata accessor for FeedCursor();

  result = sub_1D70ABFA4(0, 0, v17, &unk_1D73788B8, v19);
  *a7 = result;
  return result;
}

uint64_t sub_1D6F77DC8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 24) = v10;
  *v10 = v7;
  v10[1] = sub_1D5E6D548;

  return v12(a6, a7);
}

uint64_t sub_1D6F77ED4()
{
  v1 = *v0;
  v2 = swift_allocObject();
  swift_weakLoadStrong();
  swift_weakInit();

  v3 = swift_allocObject();
  v3[2] = *(v1 + 80);
  v3[3] = *(v1 + 88);
  v3[4] = v2;
  sub_1D725B78C();
}

uint64_t sub_1D6F77FC0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5BFCA08(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v16 - v9;
  v11 = *a1;
  v12 = sub_1D726294C();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = v11;
  v14[7] = v13;

  sub_1D6BD1334(0, 0, v10, &unk_1D73788C8, v14);
}

uint64_t sub_1D6F7815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  v7 = swift_task_alloc();
  *(v5 + 56) = v7;
  v8 = type metadata accessor for FeedCursor();
  v9 = sub_1D5BA6EF4();
  *v7 = v5;
  v7[1] = sub_1D6F7823C;
  v10 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v5 + 40, a4, v8, v9, v10);
}

uint64_t sub_1D6F7823C()
{

  if (v0)
  {

    v1 = sub_1D6DC3420;
  }

  else
  {
    v1 = sub_1D6F78354;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D6F78354()
{
  swift_beginAccess();
  swift_weakLoadStrong();

  sub_1D5BE232C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6F783F4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a5;
  v9 = MEMORY[0x1E69E6720];
  sub_1D5BFCA08(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  v5[6] = swift_task_alloc();
  v5[7] = swift_getAssociatedTypeWitness();
  v10 = sub_1D726393C();
  v5[8] = v10;
  v5[9] = *(v10 - 8);
  v5[10] = swift_task_alloc();
  sub_1D5BFCA08(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v9);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v11 = sub_1D726393C();
  v5[13] = v11;
  v5[14] = *(v11 - 8);
  v5[15] = swift_task_alloc();
  v14 = (a3 + *a3);
  v12 = swift_task_alloc();
  v5[16] = v12;
  *v12 = v5;
  v12[1] = sub_1D6F786B0;

  return v14(a1, a2);
}

uint64_t sub_1D6F786B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6F78830, 0, 0);
  }
}

uint64_t sub_1D6F78830()
{
  v31 = v0;
  v1 = v0[17];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  sub_1D5BD9834();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v27 = 7;
  v9 = sub_1D725891C();
  v10 = *(*(v9 - 8) + 56);
  v10(v3, 1, 1, v9);
  v10(v4, 1, 1, v9);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v11 = type metadata accessor for FeedContext();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  v30 = 256;
  v12 = *(*v1 + 272);
  swift_beginAccess();
  if (*(v1 + v12))
  {

    v13 = sub_1D5BD976C();
  }

  else
  {
    v13 = 0;
  }

  v14 = v0[14];
  v15 = v0[15];
  v16 = v0[12];
  v26 = v0[13];
  v17 = v0[10];
  v18 = v0[11];
  v19 = v0[9];
  v24 = v0[8];
  v20 = v0[6];
  v25 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v15, 0, &v27, v16, v18, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v17, v20, v28, &v29, 0, 0, v13);

  sub_1D5B87B48(v20, qword_1EDF34CA0, type metadata accessor for FeedContext);
  (*(v19 + 8))(v17, v24);
  v21 = MEMORY[0x1E6969530];
  sub_1D5B87B48(v18, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  sub_1D5B87B48(v16, &qword_1EDF45B00, v21);
  (*(v14 + 8))(v15, v26);

  v22 = v0[1];

  return v22(v25);
}

uint64_t sub_1D6F78BAC()
{

  swift_weakDestroy();
  return v0;
}

uint64_t sub_1D6F78BEC()
{
  sub_1D6F78BAC();

  return swift_deallocClassInstance();
}

unint64_t sub_1D6F78C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7261E7C();

  return sub_1D6F78C7C(a1, v6, a2, a3);
}

unint64_t sub_1D6F78C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1D7261FBC();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1D6F78E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v11);
  v13 = v24 - v12;
  if (sub_1D726279C())
  {
    sub_1D726413C();
    v14 = sub_1D726412C();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1D726279C();
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (sub_1D726277C())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1D7263DBC();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1D6F78C20(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

void *sub_1D6F79208(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = *v7;
  v16 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v18 = *a3;
  swift_weakInit();
  v8[2] = a1;
  v8[3] = a2;
  *(v8 + 32) = v18;
  v8[5] = a4;
  v8[7] = a6;
  v8[8] = a7;
  v19 = *(v15 + 80);
  v20 = *(v15 + 88);
  type metadata accessor for FeedCursor();
  sub_1D5BA6EF4();
  sub_1D726297C();
  sub_1D725B7BC();
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a1;
  v21[7] = a2;
  swift_retain_n();

  sub_1D5BA6F58();
  v8[6] = sub_1D725B79C();
  swift_weakAssign();
  return v8;
}

uint64_t sub_1D6F793CC(uint64_t a1)
{
  v3 = *(*v1 + 272);
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_1D6F75E38();
}

uint64_t sub_1D6F794B0()
{
  result = sub_1D725891C();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1D726393C();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FeedContext();
      if (v3 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D6F79818()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D6F798E8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *a3;
  swift_weakInit();
  type metadata accessor for FeedAsyncCursor();
  v15 = v13;
  swift_allocObject();
  *(v7 + 16) = sub_1D6F79208(a1, a2, &v15, a4, 0, a5, a6) | 0x8000000000000000;
  return v7;
}

uint64_t sub_1D6F79A50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64684;

  return sub_1D6F77DC8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D6F79B64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[6];
  v6 = v1[7];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64684;

  return sub_1D6F7815C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D6F79C38(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v8 = v2[4];
  v7 = v2[5];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D5E97EA8;

  return sub_1D6F783F4(a1, a2, v8, v7, v6);
}

uint64_t sub_1D6F79D3C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D6F79DD4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D6F79E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v39 = a1;
  v40 = a3;
  v42 = a5;
  sub_1D6F7A7DC();
  v8 = v7;
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F7A898(0, &qword_1EC898C20, sub_1D6F7A7DC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v36 - v18;
  v20 = *(a4 + 40);
  if (*(v20 + 16))
  {
    type metadata accessor for DebugFormatBindingTree();
    sub_1D6F7AA0C(&qword_1EC880C48, type metadata accessor for DebugFormatBindingTree);

    v21 = a2;
    v22 = sub_1D7260F8C();
    v24 = v23;
  }

  else
  {
    v21 = a2;
    v22 = 0;
    v24 = 0;
    v20 = 0;
  }

  v25 = a4;
  v26 = *(a4 + 32);
  if (*(v26 + 16))
  {
    v43 = v26;
    v36[2] = swift_getKeyPath();
    v27 = swift_allocObject();
    v37 = v8;
    v38 = v22;
    v28 = v40;
    v27[2] = v39;
    v27[3] = v21;
    v27[4] = v28;
    v27[5] = v25;
    sub_1D6F7A898(0, &qword_1EC898C30, type metadata accessor for FeedItemAuxiliaryItem, MEMORY[0x1E69E62F8]);
    v39 = v29;
    v30 = sub_1D6F7A8FC();
    v40 = v15;
    v36[1] = v30;
    sub_1D5EFF28C();
    v31 = v41;

    v22 = v38;
    v15 = v40;
    sub_1D72619DC();
    v32 = v37;
    (*(v31 + 32))(v19, v11, v37);
    (*(v31 + 56))(v19, 0, 1, v32);
  }

  else
  {
    (*(v41 + 56))(v19, 1, 1, v8);
  }

  sub_1D6F7AA60(v19, v15);
  v33 = v42;
  *v42 = v22;
  v33[1] = v24;
  v33[2] = v20;
  sub_1D6F7A6C8();
  sub_1D6F7AA60(v15, v33 + *(v34 + 48));
  sub_1D5EFF2E0(v22, v24);
  sub_1D5EFF324(v22, v24);
  sub_1D6F7AAF4(v19);
  sub_1D6F7AAF4(v15);
  return sub_1D5EFF324(v22, v24);
}

uint64_t sub_1D6F7A24C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FeedItemAuxiliaryItem();
  v5 = *(a1 + *(v4 + 20));
  v6 = *(a1 + *(v4 + 24));
  v14[3] = type metadata accessor for FeedItem(0);
  v14[4] = sub_1D6F7AA0C(&qword_1EDF34F30, type metadata accessor for FeedItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_1D5BC8CF4(a1, boxed_opaque_existential_1);
  type metadata accessor for DebugFormatBindingTreeItem();
  v8 = swift_allocObject();
  sub_1D5B68374(v14, v8 + 16);
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = v5;
  *(v8 + 112) = v6;
  swift_beginAccess();

  sub_1D726009C();
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v14);
  type metadata accessor for DebugFormatBindingTree();
  sub_1D6F7AA0C(&qword_1EC880C48, type metadata accessor for DebugFormatBindingTree);
  v9 = sub_1D7260F8C();
  v11 = v10;
  sub_1D6F7AA0C(&qword_1EC880C70, type metadata accessor for DebugFormatBindingTreeItem);
  result = sub_1D7260F8C();
  *a2 = v9;
  a2[1] = v11;
  a2[2] = result;
  a2[3] = v13;
  return result;
}

void sub_1D6F7A440(uint64_t a1@<X8>)
{
  *a1 = 0x6C75622E7473696CLL;
  *(a1 + 8) = 0xEB0000000074656CLL;
  *(a1 + 16) = 0x7261696C69787541;
  *(a1 + 24) = 0xE900000000000079;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 1;
}

uint64_t sub_1D6F7A498()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D6F7A78C(0, &qword_1EC898C00, &type metadata for FeedItemAuxiliary, type metadata accessor for DebugFormatBindingTreeSection);
  sub_1D6F7A640();
  sub_1D7260F9C();
  swift_getKeyPath();
  sub_1D7260FAC();

  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;
  sub_1D6F7A898(0, &qword_1EC898C10, sub_1D6F7A6C8, MEMORY[0x1E6981F40]);
  sub_1D5EFF0C0();
  sub_1D6F7A984();

  return sub_1D7260FFC();
}

unint64_t sub_1D6F7A640()
{
  result = qword_1EC898C08;
  if (!qword_1EC898C08)
  {
    sub_1D6F7A78C(255, &qword_1EC898C00, &type metadata for FeedItemAuxiliary, type metadata accessor for DebugFormatBindingTreeSection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898C08);
  }

  return result;
}

void sub_1D6F7A6C8()
{
  if (!qword_1EC898C18)
  {
    sub_1D6F7A78C(255, &qword_1EC880C10, &type metadata for DebugFormatBindingTreeOptionView, MEMORY[0x1E69E6720]);
    sub_1D6F7A898(255, &qword_1EC898C20, sub_1D6F7A7DC, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC898C18);
    }
  }
}

void sub_1D6F7A78C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D6F7A7DC()
{
  if (!qword_1EC898C28)
  {
    sub_1D6F7A898(255, &qword_1EC898C30, type metadata accessor for FeedItemAuxiliaryItem, MEMORY[0x1E69E62F8]);
    sub_1D6F7A8FC();
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC898C28);
    }
  }
}

void sub_1D6F7A898(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D6F7A8FC()
{
  result = qword_1EC898C38;
  if (!qword_1EC898C38)
  {
    sub_1D6F7A898(255, &qword_1EC898C30, type metadata accessor for FeedItemAuxiliaryItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898C38);
  }

  return result;
}

unint64_t sub_1D6F7A984()
{
  result = qword_1EC898C40;
  if (!qword_1EC898C40)
  {
    sub_1D6F7A898(255, &qword_1EC898C10, sub_1D6F7A6C8, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898C40);
  }

  return result;
}

uint64_t sub_1D6F7AA0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6F7AA60(uint64_t a1, uint64_t a2)
{
  sub_1D6F7A898(0, &qword_1EC898C20, sub_1D6F7A7DC, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6F7AAF4(uint64_t a1)
{
  sub_1D6F7A898(0, &qword_1EC898C20, sub_1D6F7A7DC, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6F7AB80()
{
  if (!qword_1EC898C50)
  {
    sub_1D6F7A898(255, &qword_1EC898C10, sub_1D6F7A6C8, MEMORY[0x1E6981F40]);
    sub_1D5EFF0C0();
    sub_1D6F7A984();
    v0 = sub_1D726100C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC898C50);
    }
  }
}

void FormatAuxiliaryNode.bind(binder:context:)(uint64_t a1)
{
  v3 = v1;
  v127 = a1;
  v4 = type metadata accessor for GroupLayoutContext();
  v126 = *(v4 - 8);
  v5 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v7 = type metadata accessor for FormatOption();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D6BEC994();
  if (v2)
  {
    swift_beginAccess();
    if (*(v1 + 56) == 1)
    {
      swift_willThrow();
    }

    else
    {
    }

    return;
  }

  v125 = v8;
  v140 = v11;
  v129 = v7;
  v13 = (v12 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
  v14 = *(v12 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
  v15 = v12;
  if (v14 == 255 || (v14 & 1) == 0)
  {
    type metadata accessor for FormatLayoutError();
    sub_1D5B574F8(&qword_1EDF2F560, 255, type metadata accessor for FormatLayoutError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return;
  }

  v118 = 0;
  v109 = v5;
  v111 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v13;
  v16 = v13[1];
  v18 = v13[2];
  v19 = v13[3];
  v20 = v13[4];
  v113 = v12 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
  v120 = v13[5];
  v121 = v20;
  swift_beginAccess();
  v21 = v3[3];
  v112 = v3[2];
  v123 = v21;
  swift_beginAccess();
  v122 = v3;
  v22 = v3[6];
  v23 = *(v22 + 16);
  v124 = v15;
  v119 = v19;
  v114 = v18;
  v115 = v16;
  v24 = v18;
  v117 = v14;
  v116 = v17;
  if (v23)
  {
    v25 = v16;
    v26 = MEMORY[0x1E69E7CC0];

    sub_1D62E312C(v17, v25, v24, v19, v121, v120, v14);
    *&v131 = v26;

    sub_1D5D24610(0, v23, 0);
    v27 = v131;
    v28 = v22 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
    v128 = *(v125 + 72);
    v29 = v140;
    do
    {
      sub_1D5D254C4(v28, v29, type metadata accessor for FormatOption);
      v30 = swift_allocBox();
      sub_1D5D5E3A4(v29, v31, type metadata accessor for FormatOption);
      *&v131 = v27;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1D5D24610((v32 > 1), v33 + 1, 1);
        v27 = v131;
      }

      *(v27 + 16) = v33 + 1;
      *(v27 + 8 * v33 + 32) = v30 | 0x6000000000000000;
      v28 += v128;
      --v23;
      v29 = v140;
    }

    while (v23);

    v34 = v123;
    v15 = v124;
    v19 = v119;
  }

  else
  {

    sub_1D62E312C(v17, v16, v18, v19, v121, v120, v14);
    v34 = v123;

    v27 = MEMORY[0x1E69E7CC0];
  }

  v35 = *(v19 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    *&v131 = MEMORY[0x1E69E7CC0];
    sub_1D5D24610(0, v35, 0);
    v36 = v131;
    v37 = v19 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
    v128 = *(v125 + 72);
    v38 = v140;
    do
    {
      sub_1D5D254C4(v37, v38, type metadata accessor for FormatOption);
      v39 = swift_allocBox();
      sub_1D5D5E3A4(v38, v40, type metadata accessor for FormatOption);
      *&v131 = v36;
      v42 = *(v36 + 16);
      v41 = *(v36 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1D5D24610((v41 > 1), v42 + 1, 1);
        v36 = v131;
      }

      *(v36 + 16) = v42 + 1;
      *(v36 + 8 * v42 + 32) = v39 | 0x2000000000000000;
      v37 += v128;
      --v35;
      v38 = v140;
    }

    while (v35);
    v34 = v123;
    v15 = v124;
  }

  *&v131 = v27;
  sub_1D6985C44(v36);
  v43 = v131;
  v44 = v122;
  swift_beginAccess();
  v45 = v44[5];
  v139 = 0;
  memset(v138, 0, sizeof(v138));
  v137 = 0;

  v128 = sub_1D6E8DE74(v112, v34);

  swift_beginAccess();
  v137 = 1;

  v46 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors;
  v47 = *(v15 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors);
  if (!*(v45 + 16))
  {
    goto LABEL_24;
  }

  if (sub_1D6D0A744(v47, v45))
  {
    v47 = *(v15 + v46);
LABEL_24:
    v140 = v47;

    v48 = 0;
    goto LABEL_26;
  }

  v48 = 1;
  v137 = 1;
  v49 = *(v15 + v46);

  v140 = sub_1D5D6021C(v45, v49);
LABEL_26:
  v129 = v45;
  if (!*(v43 + 16))
  {

    v52 = *(v15 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
LABEL_31:
    v112 = v52;

    goto LABEL_32;
  }

  v50 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v51 = sub_1D6F619D8(v43);

  if (!v51)
  {
    v52 = *(v15 + v50);
    goto LABEL_31;
  }

  v112 = v51;
  v48 = 1;
  v137 = 1;
LABEL_32:
  v53 = *(v15 + 40);
  v110 = *(v15 + 32);
  v125 = v53;

  v123 = sub_1D6BEC5F4(MEMORY[0x1E69E7CC0], v15, &v137);
  v54 = *(v113 + 8);
  v55 = *(v113 + 16);
  v56 = *(v113 + 24);
  v58 = *(v113 + 32);
  v57 = *(v113 + 40);
  v59 = *(v113 + 48);
  v113 = *v113;
  sub_1D62E312C(v113, v54, v55, v56, v58, v57, v59);
  v60 = sub_1D6BEC878(v138, v15, &v137);
  v63 = *(v15 + 80);
  v62 = *(v15 + 96);
  v136 = *(v15 + 128);
  v64 = *(v15 + 112);
  v134 = v62;
  v135 = v64;
  v65 = *(v15 + 64);
  v131 = *(v15 + 48);
  v132 = v65;
  v133 = v63;
  if (v137 == 1)
  {
    v101 = v61;
    v102 = v60;
    v103 = v59;
    v104 = v57;
    v105 = v58;
    v106 = v56;
    v107 = v55;
    v108 = v54;
    if (v48)
    {
      sub_1D67C846C(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
      v66 = v111;
      sub_1D5D254C4(v15 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v111, type metadata accessor for GroupLayoutContext);
      v67 = (*(v126 + 80) + 16) & ~*(v126 + 80);
      v68 = (v109 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
      v69 = swift_allocObject();
      v70 = v66;
      sub_1D5D5E3A4(v66, v69 + v67, type metadata accessor for GroupLayoutContext);
      v71 = v112;
      *(v69 + v68) = v112;
      v72 = v140;
      *(v69 + ((v68 + 15) & 0xFFFFFFFFFFFFFFF8)) = v140;
      v15 = v124;
      sub_1D5CF6A5C(&v131, v130);

      v140 = v72;

      v126 = sub_1D725A80C();
    }

    else
    {
      v74 = *(v15 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions);
      sub_1D5CF6A5C(&v131, v130);
      v126 = v74;

      v70 = v111;
      v71 = v112;
    }

    v75 = *(v15 + 16);
    sub_1D5D254C4(v15 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v70, type metadata accessor for GroupLayoutContext);
    v76 = *(v15 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData);
    sub_1D5B68374(v124 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger, v130);
    type metadata accessor for FormatNodeBinderContext();
    v73 = swift_allocObject();
    v77 = v128;
    *(v73 + 16) = v75;
    *(v73 + 24) = v77;
    v78 = v134;
    v79 = v135;
    *(v73 + 80) = v133;
    *(v73 + 96) = v78;
    *(v73 + 112) = v79;
    *(v73 + 128) = v136;
    v80 = v132;
    *(v73 + 48) = v131;
    *(v73 + 64) = v80;
    *(v73 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v71;
    *(v73 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v140;
    sub_1D5D254C4(v70, v73 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, type metadata accessor for GroupLayoutContext);
    v81 = v125;
    *(v73 + 32) = v110;
    *(v73 + 40) = v81;
    *(v73 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v123;
    *(v73 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v76;
    sub_1D5B68374(v130, v73 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
    v82 = v73 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
    v83 = v107;
    v84 = v108;
    *v82 = v113;
    *(v82 + 8) = v84;
    *(v82 + 16) = v83;
    v85 = v105;
    *(v82 + 24) = v106;
    *(v82 + 32) = v85;
    *(v82 + 40) = v104;
    *(v82 + 48) = v103;
    v86 = (v73 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
    v87 = v101;
    *v86 = v102;
    v86[1] = v87;

    __swift_destroy_boxed_opaque_existential_1(v130);
    sub_1D5EF8F94(v70);
    sub_1D62E3214(v138);
    *(v73 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v126;
  }

  else
  {

    sub_1D62E31A0(v113, v54, v55, v56, v58, v57, v59);

    sub_1D62E3214(v138);

    v73 = v15;
  }

  v89 = v115;
  v88 = v116;
  v130[0] = v116;
  v130[1] = v115;
  v90 = v114;
  v91 = v119;
  v92 = v120;
  v130[2] = v114;
  v130[3] = v119;
  v93 = v121;
  v130[4] = v121;
  v130[5] = v120;
  v94 = v127;
  sub_1D6195A38(v130);
  v95 = v90;
  v96 = v94;
  sub_1D62E31A0(v88, v89, v95, v91, v93, v92, v117);
  v97 = v122;
  v98 = v122[6];

  v99 = v118;
  sub_1D6213004(v96, v73, v98);

  if (v99)
  {
  }

  else
  {
    swift_beginAccess();
    v100 = v97[4];

    sub_1D6215F90(v96, v73, v100);
  }
}

uint64_t sub_1D6F7B844()
{
  sub_1D5EB99F0();
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = v3;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 76) = -16384;
  *(v2 + 72) = 0;
  v9 = v2;
  swift_beginAccess();

  sub_1D6C4D418(v4);
  if (v1)
  {
  }

  else
  {

    v5 = *(v0 + 48);

    sub_1D626DA28(&v9, v5);

    swift_beginAccess();
    v6 = *(v0 + 32);

    sub_1D626DB9C(&v9, v6);

    v8 = swift_allocObject();
    *(v8 + 16) = v9;

    sub_1D6C4D24C(v8);
  }
}

uint64_t FormatAuxiliaryNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatAuxiliaryNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatAuxiliaryNode.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t FormatAuxiliaryNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t FormatAuxiliaryNode.options.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatAuxiliaryNode.throws.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t FormatAuxiliaryNode.deinit()
{

  return v0;
}

uint64_t FormatAuxiliaryNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6F7BE00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6675724(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D6F7BEA4(uint64_t a1, uint64_t a2)
{
  result = sub_1D5B574F8(&qword_1EC898C58, a2, type metadata accessor for FormatAuxiliaryNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6F7BF20(void *a1, uint64_t a2)
{
  a1[1] = sub_1D5B574F8(&qword_1EDF2CBC0, a2, type metadata accessor for FormatAuxiliaryNode);
  a1[2] = sub_1D5B574F8(&qword_1EDF0FCA0, v3, type metadata accessor for FormatAuxiliaryNode);
  result = sub_1D5B574F8(&qword_1EC898C60, v4, type metadata accessor for FormatAuxiliaryNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6F7BFCC(uint64_t a1, uint64_t a2)
{
  result = sub_1D5B574F8(&qword_1EC898C68, a2, type metadata accessor for FormatAuxiliaryNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6F7C03C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatSystemFactory();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6F7C0F0()
{
  result = sub_1D72585BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed34SportsDataServiceHTTPRequestMethodO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D6F7C190(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6F7C1E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void *sub_1D6F7C238(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[3] = (a2 - 1);
  }

  return result;
}

void sub_1D6F7C2B4()
{
  sub_1D5C3C04C(319, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D6F7C410()
{
  result = type metadata accessor for SportsDataServiceURLRequest(319);
  if (v1 <= 0x3F)
  {
    result = sub_1D72585BC();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for SportsDataServiceResourceRequest(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D6F7C528(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  a4(319);
  if (v10 <= 0x3F)
  {
    sub_1D5C3C04C(319, a5, a6, a7);
    if (v11 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D6F7C5D0(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[3];
  if (a1[3])
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = *a2;
    v6 = a2[1];
    sub_1D5E3E824(*a1, v4);
    if (v2)
    {
      v7 = sub_1D6DF1464(v3, v4, v5, v6);
      sub_1D5B952F8(v3, v4);
      return v7 & 1;
    }

    sub_1D5B952F8(v3, v4);
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t static CoverView.loading.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D725EC4C();
  v3 = sub_1D725EC3C();
  v4 = MEMORY[0x1E69D8270];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = v3;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  v7 = sub_1D726213C();
  v9 = v8;

  a1[5] = v7;
  a1[6] = v9;
  v10 = *MEMORY[0x1E69D8820];
  v11 = sub_1D725FB1C();
  v12 = *(*(v11 - 8) + 104);

  return v12(a1, v10, v11);
}

uint64_t sub_1D6F7C7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v27[0] = *v3;
  v7 = *(v27[0] + 16);
  if (v7)
  {
    v9 = (v27[0] + 32);

    for (i = v7 - 1; ; --i)
    {
      v12 = v9[1];
      v11 = v9[2];
      v13 = *v9;
      *&v26[43] = *(v9 + 43);
      *&v26[16] = v12;
      *&v26[32] = v11;
      *v26 = v13;
      v25 = v13;
      v14 = sub_1D6F7F700(v26, v24, qword_1EDF2F000, type metadata accessor for FormatSwitchValue.CaseValue);
      v15 = sub_1D71C3ED0(v14);
      if (v16)
      {
        v17 = (v15)(a2, a1);
        sub_1D6B4D3F4();
        if (v17)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v18 = v15(a2);
        sub_1D6B4D3F4();
        if (v18)
        {
LABEL_9:
          sub_1D5D2859C(v27, sub_1D6D1C664);
          sub_1D5CF5DBC(&v26[8], v24);
          result = sub_1D62B7904(v26);
          v20 = *&v26[24];
          *a3 = *&v26[8];
          *(a3 + 16) = v20;
          *(a3 + 32) = *&v26[40];
          *(a3 + 47) = *&v26[55];
          return result;
        }
      }

      sub_1D62B7904(v26);
      if (!i)
      {
        break;
      }

      v9 += 4;
    }

    sub_1D5D2859C(v27, sub_1D6D1C664);
  }

  v21 = *(v4 + 3);
  *v26 = *(v4 + 1);
  *&v26[16] = v21;
  *&v26[32] = *(v4 + 5);
  v22 = *&v26[32];
  *&v26[47] = *(v4 + 55);
  v23 = *&v26[47];
  *a3 = *v26;
  *(a3 + 16) = v21;
  *(a3 + 32) = v22;
  *(a3 + 47) = v23;
  return sub_1D6F7F700(v26, v24, qword_1EDF2EEF8, type metadata accessor for FormatSwitchValue.DefaultValue);
}

uint64_t sub_1D6F7C9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v17 = a4;
    v18 = a5;

    v9 = (a3 + 40);
    while (1)
    {
      v10 = *v9;

      v12 = sub_1D71C3ED0(v11);
      if (v13)
      {
        v14 = (v12)(a2, a1);
        sub_1D6B4D3F4();
        if (v14)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v15 = v12(a2);
        sub_1D6B4D3F4();
        if (v15)
        {
LABEL_12:

          *v18 = v10;
          return result;
        }
      }

      v9 += 2;

      if (!--v5)
      {

        a4 = v17;
        a5 = v18;
        break;
      }
    }
  }

  *a5 = a4;
}

uint64_t sub_1D6F7CB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v17 = a4;
    v18 = a5;

    v9 = (a3 + 40);
    while (1)
    {
      v10 = *v9;

      v12 = sub_1D71C3ED0(v11);
      if (v13)
      {
        v14 = v12(a2, a1);
        sub_1D6B4D3F4();
        if (v14)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v15 = (v12)(a2);
        sub_1D6B4D3F4();
        if (v15)
        {
LABEL_12:

          *v18 = v10;
          return result;
        }
      }

      v9 += 2;

      if (!--v5)
      {

        a4 = v17;
        a5 = v18;
        break;
      }
    }
  }

  *a5 = a4;
}

uint64_t sub_1D6F7CC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    v20 = a6;
    v21 = a4;
    v22 = a5;
    v23 = a7;

    v10 = (a3 + 56);
    while (1)
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v13 = *(v10 - 2);

      v15 = sub_1D71C3ED0(v14);
      if (v16)
      {
        v17 = (v15)(a2, a1);
        sub_1D6B4D3F4();
        if (v17)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v18 = v15(a2);
        sub_1D6B4D3F4();
        if (v18)
        {
LABEL_12:

          *v23 = v13;
          v23[1] = v12;
          v23[2] = v11;
          return result;
        }
      }

      v10 += 4;

      if (!--v7)
      {

        a7 = v23;
        a4 = v21;
        a5 = v22;
        a6 = v20;
        break;
      }
    }
  }

  *a7 = a4;
  a7[1] = a5;
  a7[2] = a6;
}

uint64_t sub_1D6F7CE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v17 = a4;
    v18 = a5;

    v9 = (a3 + 40);
    while (1)
    {
      v10 = *v9;

      v12 = sub_1D71C3ED0(v11);
      if (v13)
      {
        v14 = (v12)(a2, a1);
        sub_1D6B4D3F4();
        if (v14)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v15 = v12(a2);
        sub_1D6B4D3F4();
        if (v15)
        {
LABEL_12:

          *v18 = v10;
          return result;
        }
      }

      v9 += 2;

      if (!--v5)
      {

        a4 = v17;
        a5 = v18;
        break;
      }
    }
  }

  *a5 = a4;
}

uint64_t sub_1D6F7CF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = *(a3 + 16);
  if (v5)
  {

    v9 = (a3 + 40);
    while (1)
    {
      v4 = *v9;

      v11 = sub_1D71C3ED0(v10);
      if (v12)
      {
        v13 = (v11)(a2, a1);
        sub_1D6B4D3F4();
        if (v13)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v14 = v11(a2);
        sub_1D6B4D3F4();
        if (v14)
        {
LABEL_10:

          return v4;
        }
      }

      v9 += 2;

      if (!--v5)
      {

        v4 = a4;
        break;
      }
    }
  }

  return v4;
}

uint64_t sub_1D6F7D0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = *(a3 + 16);
  if (v5)
  {

    v9 = (a3 + 40);
    while (1)
    {
      v4 = *v9;

      v11 = sub_1D71C3ED0(v10);
      if (v12)
      {
        v13 = (v11)(a2, a1);
        sub_1D6B4D3F4();
        if (v13)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v14 = v11(a2);
        sub_1D6B4D3F4();
        if (v14)
        {
LABEL_10:

          return v4;
        }
      }

      v9 += 2;

      if (!--v5)
      {

        v4 = a4;
        break;
      }
    }
  }

  return v4;
}

uint64_t sub_1D6F7D230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t (*a6)(uint64_t)@<X5>, void *a7@<X8>)
{
  v7 = *(a3 + 16);
  if (v7)
  {
    v20 = a4;
    v21 = a7;

    v12 = (a3 + 40);
    while (1)
    {
      v13 = *v12;

      v14 = a5(v13);
      v15 = sub_1D71C3ED0(v14);
      if (v16)
      {
        v17 = (v15)(a2, a1);
        sub_1D6B4D3F4();
        if (v17)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v18 = v15(a2);
        sub_1D6B4D3F4();
        if (v18)
        {
LABEL_12:

          a5(v13);

          result = a6(v13);
          *v21 = v13;
          return result;
        }
      }

      v12 += 2;

      a6(v13);
      if (!--v7)
      {

        a7 = v21;
        a4 = v20;
        break;
      }
    }
  }

  *a7 = a4;

  return a5(a4);
}

uint64_t sub_1D6F7D3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *v3 >> 60;
  if (v7 <= 4)
  {
    goto LABEL_6;
  }

  if (v7 > 6)
  {
    if (v7 == 7)
    {
      swift_retain_n();

      a1 = sub_1D6F7D3CC(a1, a2, a3);

      return a1;
    }

    if (v7 == 8)
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D6F7F6B0(0, &qword_1EDF19878, &type metadata for FormatNodeCacheKey, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7270C10;

      *(inited + 32) = sub_1D6F7D3CC(a1, a2, a3);
      *(inited + 40) = v11;
      *(inited + 48) = v12 & 1;

      v13 = sub_1D6E5BFA0(a1, a2, a3, v8);
      v15 = v14;
      v17 = v16;

      *(inited + 56) = v13;
      *(inited + 64) = v15;
      *(inited + 72) = v17 & 1;
      a1 = sub_1D60ED798(inited);
      swift_setDeallocating();
      swift_arrayDestroy();

      return a1;
    }

LABEL_6:

    return a1;
  }

  v19 = v6 & 0xFFFFFFFFFFFFFFFLL;
  if (v7 == 5)
  {
    v20 = *(v19 + 24);

    sub_1D6E5D1E8(v21, v20);
  }

  else
  {
    sub_1D6F7F6B0(0, &qword_1EDF19878, &type metadata for FormatNodeCacheKey, MEMORY[0x1E69E6F90]);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_1D7270C10;

    *(v24 + 32) = sub_1D6F7D3CC(a1, a2, a3);
    *(v24 + 40) = v25;
    *(v24 + 48) = v26 & 1;
    *(v24 + 56) = sub_1D6F7D3CC(a1, a2, a3);
    *(v24 + 64) = v27;
    *(v24 + 72) = v28 & 1;
    a1 = sub_1D60ED798(v24);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  return a1;
}

void sub_1D6F7D724(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v113 = a2;
  sub_1D6CDD04C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v4;
  v21 = *v4 >> 60;
  if (v21 > 4)
  {
    if (v21 <= 6)
    {
      v110 = a3;
      if (v21 != 5)
      {
        v111 = a4;
        v81 = v20 & 0xFFFFFFFFFFFFFFFLL;
        v82 = *(v81 + 16);
        v83 = *(v81 + 24);
        v84 = swift_allocObject();
        *&v117 = v82;

        swift_retain_n();
        v85 = v113;
        v86 = v110;
        sub_1D6F7D724(a1, v113, v110);

        if (v5)
        {

          swift_deallocUninitializedObject();
        }

        else
        {
          *&v117 = v83;

          sub_1D6F7D724(a1, v85, v86);

          *v111 = v84 | 0x8000000000000000;
        }

        return;
      }

      v39 = v20 & 0xFFFFFFFFFFFFFFFLL;
      v40 = *(v39 + 16);
      v41 = *(v39 + 24);

      v42 = v113;
      sub_1D6F7CB04(v113, a1, v40, v41, &v117);
      sub_1D6F7D724(a1, v42, v110);
    }

    else
    {
      if (v21 == 7)
      {
        v111 = a4;
        v59 = v20 & 0xFFFFFFFFFFFFFFFLL;
        v60 = *(v59 + 16);
        v61 = *(v59 + 32);

        swift_bridgeObjectRetain_n();
        v62 = sub_1D6B0ACE8(v61, 0);

        *&v115[0] = v60;

        sub_1D6F7D724(v62, v113, a3);
        if (v5)
        {
        }

        else
        {

          v88 = v117;
          v89 = (*(v62 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
          swift_beginAccess();
          v90 = *v89;
          v91 = v89[1];

          v113 = sub_1D6FBB580(v92, v62, v90, v91);

          v105 = swift_allocObject();
          v106 = v113;
          *(v105 + 16) = v88;
          *(v105 + 24) = v106;
          *v111 = v105 | 0xA000000000000000;
        }

        return;
      }

      if (v21 != 8)
      {
        *a4 = 0xC000000000000000;
        return;
      }

      v30 = v20 & 0xFFFFFFFFFFFFFFFLL;
      v31 = *(v30 + 16);
      v32 = *(v30 + 24);

      sub_1D5F9FFD0(v31, v32, &v117);
      *&v115[0] = v117;
      sub_1D6F7D724(a1, v113, a3);
    }

    return;
  }

  v112 = v5;
  if (v21 > 1)
  {
    if (v21 != 2)
    {
      if (v21 == 3)
      {
        v22 = (v20 & 0xFFFFFFFFFFFFFFFLL);
        v23 = v22[2];
        v24 = v22[3];
        v25 = v22[4];
        MEMORY[0x1EEE9AC00](v16, v17);
        v26 = v113;
        *(&v107 - 4) = a1;
        *(&v107 - 3) = v26;
        *(&v107 - 2) = v27;

        v28 = v112;
        v29 = sub_1D6F7EAC8(a1, sub_1D6F7F678, (&v107 - 6), v23, v24, v25);
        if (v28)
        {
        }

        else
        {
          v93 = a4;
          v94 = v29;

          v95 = swift_allocObject();
          *(v95 + 16) = v94;
          *v93 = v95 | 0x4000000000000000;
        }
      }

      else
      {
        v113 = v16;
        v63 = v20 & 0xFFFFFFFFFFFFFFFLL;
        v64 = *(v63 + 96);
        v124[4] = *(v63 + 80);
        v124[5] = v64;
        v124[6] = *(v63 + 112);
        v125 = *(v63 + 128);
        v65 = *(v63 + 32);
        v124[0] = *(v63 + 16);
        v124[1] = v65;
        v66 = *(v63 + 64);
        v124[2] = *(v63 + 48);
        v124[3] = v66;
        sub_1D5D093E8(v124, &v117);
        sub_1D7259F1C();
        v68 = v67;
        type metadata accessor for GroupLayoutContext();
        sub_1D7259CAC();
        v69 = sub_1D725A3AC();
        (*(*(v69 - 8) + 56))(v12, 0, 1, v69);
        v70 = v112;
        sub_1D6D55650(a1, v12, v19, v68);
        sub_1D5D09904(v124);
        sub_1D5D2859C(v12, sub_1D6CDD04C);
        if (!v70)
        {
          sub_1D68B76A4();
          v97 = v96;
          v98 = swift_allocBox();
          v111 = a4;
          v100 = v99;
          v101 = *(v97 + 48);
          (*(v14 + 32))(v99, v19, v113);
          v102 = *(a3 + 96);
          v119 = *(a3 + 80);
          v120 = v102;
          v121 = *(a3 + 112);
          LOBYTE(v122) = *(a3 + 128);
          v103 = *(a3 + 64);
          v117 = *(a3 + 48);
          v118 = v103;
          memmove((v100 + v101), (a3 + 48), 0x51uLL);
          *v111 = v98 | 0x6000000000000000;
          sub_1D673F334(&v117, v115);
        }
      }

      return;
    }

    v43 = v20 & 0xFFFFFFFFFFFFFFFLL;
    v44 = *(v43 + 16);
    v45 = *(v43 + 24);
    v46 = *(v43 + 32);
    v47 = *(v43 + 40);
    v48 = *(v43 + 48);
    v49 = *(v43 + 56);
    v50 = *(v43 + 64);
    LODWORD(v113) = v50;
    v109 = v48;
    v110 = v49;
    v108 = v44;
    if (v47)
    {

      sub_1D5E433CC(v48, v49, v50);
      if (qword_1EDF2F8C8 != -1)
      {
        swift_once();
      }

      v51 = sub_1D619EFB4(v46, v47);
      if (v51)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v111 = objc_opt_self();

      sub_1D5E433CC(v48, v49, v50);
      v51 = [v111 mainBundle];
      if (v51)
      {
LABEL_20:
        v111 = a4;
        v52 = *(a3 + 40);
        v53 = v51;
        v54 = v52;
        v55 = v108;
        v56 = sub_1D726203C();
        v57 = [objc_opt_self() imageNamed:v56 inBundle:v53 compatibleWithTraitCollection:v54];

        if (v57)
        {

          sub_1D5E4342C(v109, v110, v113);
          v58 = swift_allocObject();
          *(v58 + 16) = v57;
          *v111 = v58;
          return;
        }

        type metadata accessor for FormatLayoutError();
        sub_1D5D285FC();
        swift_allocError();
        *v104 = v51;
        v104[1] = v55;
        v104[2] = v45;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        goto LABEL_38;
      }
    }

    type metadata accessor for FormatLayoutError();
    sub_1D5D285FC();
    swift_allocError();
    *v87 = v46;
    v87[1] = v47;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_38:

    sub_1D5E4342C(v109, v110, v113);
    return;
  }

  v111 = a4;
  if (v21)
  {
    v71 = v20 & 0xFFFFFFFFFFFFFFFLL;
    v72 = *(v71 + 80);
    v120 = *(v71 + 64);
    v121 = v72;
    v122 = *(v71 + 96);
    v123 = *(v71 + 112);
    v73 = *(v71 + 32);
    v117 = *(v71 + 16);
    v118 = v73;
    v74 = *(v71 + 64);
    v119 = *(v71 + 48);
    v75 = *(v71 + 80);
    v76 = *(v71 + 96);
    v115[3] = v74;
    v115[4] = v75;
    v115[5] = v76;
    v116 = *(v71 + 112);
    v77 = *(v71 + 32);
    v115[0] = *(v71 + 16);
    v115[1] = v77;
    v115[2] = *(v71 + 48);
    sub_1D5D0322C(&v117, &v114);
    v78 = v112;
    v79 = sub_1D5F9CDD4(a1);
    sub_1D5D07BBC(&v117);
    if (!v78)
    {
      v80 = swift_allocObject();
      *(v80 + 16) = v79;
      *v111 = v80;
    }
  }

  else
  {
    v33 = *(v20 + 16);
    v34 = *(v20 + 24);
    v35 = *(v20 + 32);
    v36 = *(v20 + 40);
    v110 = a3;
    v37 = *(v20 + 48);
    v38 = *(v20 + 56);
    *&v117 = v33;
    *(&v117 + 1) = v34;
    *&v118 = v35;
    *(&v118 + 1) = v36;
    *&v119 = v37;
    BYTE8(v119) = v38;
    sub_1D62B4B68(v33, v34, v35, v36, v37, v38);
    sub_1D6B7C580(a1, v113, v110);
    sub_1D62B4C5C(v33, v34, v35, v36, v37, v38);
  }
}