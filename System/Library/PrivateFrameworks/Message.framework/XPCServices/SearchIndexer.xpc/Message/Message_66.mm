unint64_t sub_1004321A8()
{
  result = qword_1005DC898;
  if (!qword_1005DC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC898);
  }

  return result;
}

uint64_t sub_1004321FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100432244(uint64_t result, int a2, int a3)
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
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double IMAPURL.init(server:query:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_100395528(v33);
  v30 = v33[9];
  v31 = v33[10];
  v32 = v33[11];
  v26 = v33[5];
  v27 = v33[6];
  v28 = v33[7];
  v29 = v33[8];
  v22 = v33[1];
  v23 = v33[2];
  v24 = v33[3];
  v25 = v33[4];
  v6 = a1[1];
  v18 = *a1;
  v19 = v6;
  v7 = a1[2];
  v21 = v33[0];
  *v20 = v7;
  *&v20[9] = *(a1 + 41);
  sub_100432440(a2, &v21);
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v49 = v32;
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  v34 = v18;
  v35 = v19;
  v36 = *v20;
  v37 = *&v20[16];
  v50[12] = v29;
  v50[13] = v30;
  v50[14] = v31;
  v50[15] = v32;
  v50[8] = v25;
  v50[9] = v26;
  v50[10] = v27;
  v50[11] = v28;
  v50[3] = *&v20[16];
  v50[4] = v21;
  v50[5] = v22;
  v50[6] = v23;
  v50[7] = v24;
  v50[0] = v18;
  v50[1] = v19;
  v50[2] = *v20;
  sub_10042ECA8(&v34, &v17);
  sub_10042ED04(v50);
  v8 = v47;
  a3[12] = v46;
  a3[13] = v8;
  v9 = v49;
  a3[14] = v48;
  a3[15] = v9;
  v10 = v43;
  a3[8] = v42;
  a3[9] = v10;
  v11 = v45;
  a3[10] = v44;
  a3[11] = v11;
  v12 = v39;
  a3[4] = v38;
  a3[5] = v12;
  v13 = v41;
  a3[6] = v40;
  a3[7] = v13;
  v14 = v35;
  *a3 = v34;
  a3[1] = v14;
  result = *&v36;
  v16 = v37;
  a3[2] = v36;
  a3[3] = v16;
  return result;
}

uint64_t sub_100432440(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DC860, &qword_100504BB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10043252C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DC860, &qword_100504BB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void IMAPURL.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v0 + 56);
  if (v1 == 1)
  {
    goto LABEL_4;
  }

  v6 = *v0;
  v7 = v0[3];
  v20 = v0[2];
  sub_1004A6EC4(1u);
  if (!v1)
  {
    sub_1004A6EC4(0);
    if (v7 == 1)
    {
      goto LABEL_4;
    }

LABEL_12:
    sub_1004A6EC4(1u);
    if (v7)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    goto LABEL_5;
  }

  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v7 != 1)
  {
    goto LABEL_12;
  }

LABEL_4:
  sub_1004A6EC4(0);
LABEL_5:
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v5)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v4);
  }

  v8 = *(v0 + 13);
  v21[8] = *(v0 + 12);
  v21[9] = v8;
  v9 = *(v0 + 15);
  v21[10] = *(v0 + 14);
  v21[11] = v9;
  v10 = *(v0 + 9);
  v21[4] = *(v0 + 8);
  v21[5] = v10;
  v11 = *(v0 + 11);
  v21[6] = *(v0 + 10);
  v21[7] = v11;
  v12 = *(v0 + 5);
  v21[0] = *(v0 + 4);
  v21[1] = v12;
  v13 = *(v0 + 7);
  v21[2] = *(v0 + 6);
  v21[3] = v13;
  if (sub_100432EB0(v21) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v14 = *(v0 + 13);
    v21[20] = *(v0 + 12);
    v21[21] = v14;
    v15 = *(v0 + 15);
    v21[22] = *(v0 + 14);
    v21[23] = v15;
    v16 = *(v0 + 9);
    v21[16] = *(v0 + 8);
    v21[17] = v16;
    v17 = *(v0 + 11);
    v21[18] = *(v0 + 10);
    v21[19] = v17;
    v18 = *(v0 + 5);
    v21[12] = *(v0 + 4);
    v21[13] = v18;
    v19 = *(v0 + 7);
    v21[14] = *(v0 + 6);
    v21[15] = v19;
    sub_1004A6EC4(1u);
    URLCommand.hash(into:)();
  }
}

Swift::Int IMAPURL.hashValue.getter()
{
  sub_1004A6E94();
  IMAPURL.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_1004327C0()
{
  sub_1004A6E94();
  IMAPURL.hash(into:)();
  return sub_1004A6F14();
}

BOOL sub_1004327FC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[13];
  v19[12] = a1[12];
  v19[13] = v2;
  v3 = a1[15];
  v19[14] = a1[14];
  v19[15] = v3;
  v4 = a1[9];
  v19[8] = a1[8];
  v19[9] = v4;
  v5 = a1[11];
  v19[10] = a1[10];
  v19[11] = v5;
  v6 = a1[5];
  v19[4] = a1[4];
  v19[5] = v6;
  v7 = a1[7];
  v19[6] = a1[6];
  v19[7] = v7;
  v8 = a1[1];
  v19[0] = *a1;
  v19[1] = v8;
  v9 = a1[3];
  v19[2] = a1[2];
  v19[3] = v9;
  v10 = a2[13];
  v20[12] = a2[12];
  v20[13] = v10;
  v11 = a2[15];
  v20[14] = a2[14];
  v20[15] = v11;
  v12 = a2[9];
  v20[8] = a2[8];
  v20[9] = v12;
  v13 = a2[11];
  v20[10] = a2[10];
  v20[11] = v13;
  v14 = a2[5];
  v20[4] = a2[4];
  v20[5] = v14;
  v15 = a2[7];
  v20[6] = a2[6];
  v20[7] = v15;
  v16 = a2[1];
  v20[0] = *a2;
  v20[1] = v16;
  v17 = a2[3];
  v20[2] = a2[2];
  v20[3] = v17;
  return _s12NIOIMAPCore27IMAPURLV23__derived_struct_equalsySbAC_ACtFZ_0(v19, v20);
}

uint64_t sub_1004328B0(_OWORD *a1)
{
  v3 = *(v1 + 20);
  result = sub_1002F178C(0x2F2F3A70616D69, 0xE700000000000000, (v1 + 8), *(v1 + 20));
  if (v5)
  {
    v6._countAndFlagsBits = 0x2F2F3A70616D69;
    v6._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
  }

  v7 = result;
  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v1 + 20) = v10;
  v11 = a1[1];
  v34[0] = *a1;
  v34[1] = v11;
  v35[0] = a1[2];
  *(v35 + 9) = *(a1 + 41);
  result = sub_100431BE4(v34);
  v12 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = *(v1 + 20);
  result = sub_1002F178C(47, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v14)
  {
    v15._countAndFlagsBits = 47;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v9 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v9)
  {
    goto LABEL_16;
  }

  *(v1 + 20) = v17;
  v18 = v12 + result;
  if (__OFADD__(v12, result))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v19 = a1[13];
  v33[8] = a1[12];
  v33[9] = v19;
  v20 = a1[15];
  v33[10] = a1[14];
  v33[11] = v20;
  v21 = a1[9];
  v33[4] = a1[8];
  v33[5] = v21;
  v22 = a1[11];
  v33[6] = a1[10];
  v33[7] = v22;
  v23 = a1[5];
  v33[0] = a1[4];
  v33[1] = v23;
  v24 = a1[7];
  v33[2] = a1[6];
  v33[3] = v24;
  if (sub_100432EB0(v33) == 1)
  {
    v25 = 0;
  }

  else
  {
    v26 = a1[13];
    v36[8] = a1[12];
    v36[9] = v26;
    v27 = a1[15];
    v36[10] = a1[14];
    v36[11] = v27;
    v28 = a1[9];
    v36[4] = a1[8];
    v36[5] = v28;
    v29 = a1[11];
    v36[6] = a1[10];
    v36[7] = v29;
    v30 = a1[5];
    v36[0] = a1[4];
    v36[1] = v30;
    v31 = a1[7];
    v36[2] = a1[6];
    v36[3] = v31;
    v25 = sub_1004A2080(v36);
  }

  v32 = __OFADD__(v18, v25);
  result = v18 + v25;
  if (v32)
  {
    goto LABEL_18;
  }

  return result;
}

BOOL _s12NIOIMAPCore27IMAPURLV23__derived_struct_equalsySbAC_ACtFZ_0(_OWORD *a1, _OWORD *a2)
{
  v4 = a1[1];
  v123[0] = *a1;
  v123[1] = v4;
  v124[0] = a1[2];
  *(v124 + 9) = *(a1 + 41);
  v5 = a2[1];
  v121[0] = *a2;
  v121[1] = v5;
  v122[0] = a2[2];
  *(v122 + 9) = *(a2 + 41);
  if ((_s12NIOIMAPCore210IMAPServerV23__derived_struct_equalsySbAC_ACtFZ_0(v123, v121) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[13];
  v7 = a1[11];
  v117 = a1[12];
  v118 = v6;
  v8 = a1[13];
  v9 = a1[15];
  v119 = a1[14];
  v120 = v9;
  v10 = a1[9];
  v11 = a1[7];
  v113 = a1[8];
  v114 = v10;
  v12 = a1[9];
  v13 = a1[11];
  v115 = a1[10];
  v116 = v13;
  v14 = a1[5];
  v110[0] = a1[4];
  v110[1] = v14;
  v15 = a1[7];
  v16 = a1[4];
  v17 = a1[5];
  v111 = a1[6];
  v112 = v15;
  v18 = a2[13];
  v19 = a2[11];
  v106 = a2[12];
  v107 = v18;
  v20 = a2[13];
  v21 = a2[15];
  v108 = a2[14];
  v109 = v21;
  v22 = a2[9];
  v23 = a2[7];
  v102 = a2[8];
  v103 = v22;
  v24 = a2[9];
  v25 = a2[11];
  v104 = a2[10];
  v105 = v25;
  v26 = a2[5];
  v99[0] = a2[4];
  v99[1] = v26;
  v27 = a2[7];
  v29 = a2[4];
  v28 = a2[5];
  v100 = a2[6];
  v101 = v27;
  v30 = a1[13];
  __src[8] = a1[12];
  __src[9] = v30;
  v31 = a1[15];
  __src[10] = a1[14];
  __src[11] = v31;
  v32 = a1[9];
  __src[4] = a1[8];
  __src[5] = v32;
  v33 = a1[11];
  __src[6] = a1[10];
  __src[7] = v33;
  v34 = a1[5];
  __src[0] = a1[4];
  __src[1] = v34;
  v35 = a1[7];
  __src[2] = a1[6];
  __src[3] = v35;
  __src[20] = v106;
  __src[21] = v20;
  v36 = a2[15];
  __src[22] = v108;
  __src[23] = v36;
  __src[16] = v102;
  __src[17] = v24;
  __src[18] = v104;
  __src[19] = v19;
  __src[12] = v29;
  __src[13] = v28;
  __src[14] = v100;
  __src[15] = v23;
  v98[8] = v117;
  v98[9] = v8;
  v37 = a1[15];
  v98[10] = v119;
  v98[11] = v37;
  v98[4] = v113;
  v98[5] = v12;
  v98[6] = v115;
  v98[7] = v7;
  v98[0] = v16;
  v98[1] = v17;
  v98[2] = v111;
  v98[3] = v11;
  if (sub_100432EB0(v98) != 1)
  {
    v50 = a2[13];
    v95[8] = a2[12];
    v95[9] = v50;
    v51 = a2[15];
    v95[10] = a2[14];
    v95[11] = v51;
    v52 = a2[9];
    v95[4] = a2[8];
    v95[5] = v52;
    v53 = a2[11];
    v95[6] = a2[10];
    v95[7] = v53;
    v54 = a2[5];
    v95[0] = a2[4];
    v95[1] = v54;
    v55 = a2[7];
    v95[2] = a2[6];
    v95[3] = v55;
    if (sub_100432EB0(v95) != 1)
    {
      v57 = a2[13];
      v58 = a2[11];
      v90 = a2[12];
      v91 = v57;
      v59 = a2[13];
      v60 = a2[15];
      v92 = a2[14];
      v93 = v60;
      v61 = a2[9];
      v62 = a2[7];
      v86 = a2[8];
      v87 = v61;
      v63 = a2[9];
      v64 = a2[11];
      v88 = a2[10];
      v89 = v64;
      v65 = a2[5];
      v83[0] = a2[4];
      v83[1] = v65;
      v66 = a2[7];
      v68 = a2[4];
      v67 = a2[5];
      v84 = a2[6];
      v85 = v66;
      __dst[8] = v90;
      __dst[9] = v59;
      v69 = a2[15];
      __dst[10] = v92;
      __dst[11] = v69;
      __dst[4] = v86;
      __dst[5] = v63;
      __dst[6] = v88;
      __dst[7] = v58;
      __dst[0] = v68;
      __dst[1] = v67;
      __dst[2] = v84;
      __dst[3] = v62;
      v70 = a1[13];
      v133 = a1[12];
      v134 = v70;
      v71 = a1[15];
      v135 = a1[14];
      v136 = v71;
      v72 = a1[9];
      v129 = a1[8];
      v130 = v72;
      v73 = a1[11];
      v131 = a1[10];
      v132 = v73;
      v74 = a1[5];
      v125 = a1[4];
      v126 = v74;
      v75 = a1[7];
      v127 = a1[6];
      v128 = v75;
      sub_10043252C(v110, v94);
      sub_10043252C(v99, v94);
      v76 = _s12NIOIMAPCore210URLCommandO21__derived_enum_equalsySbAC_ACtFZ_0(&v125, __dst);
      sub_100025F40(v83, &qword_1005DC860, &qword_100504BB8);
      v77 = a1[13];
      v94[8] = a1[12];
      v94[9] = v77;
      v78 = a1[15];
      v94[10] = a1[14];
      v94[11] = v78;
      v79 = a1[9];
      v94[4] = a1[8];
      v94[5] = v79;
      v80 = a1[11];
      v94[6] = a1[10];
      v94[7] = v80;
      v81 = a1[5];
      v94[0] = a1[4];
      v94[1] = v81;
      v82 = a1[7];
      v94[2] = a1[6];
      v94[3] = v82;
      sub_100025F40(v94, &qword_1005DC860, &qword_100504BB8);
      return (v76 & 1) != 0;
    }

LABEL_6:
    memcpy(__dst, __src, sizeof(__dst));
    sub_10043252C(v110, &v125);
    sub_10043252C(v99, &v125);
    sub_100025F40(__dst, &qword_1005DC8A8, &unk_100505000);
    return 0;
  }

  v38 = a2[13];
  __dst[8] = a2[12];
  __dst[9] = v38;
  v39 = a2[15];
  __dst[10] = a2[14];
  __dst[11] = v39;
  v40 = a2[9];
  __dst[4] = a2[8];
  __dst[5] = v40;
  v41 = a2[11];
  __dst[6] = a2[10];
  __dst[7] = v41;
  v42 = a2[5];
  __dst[0] = a2[4];
  __dst[1] = v42;
  v43 = a2[7];
  __dst[2] = a2[6];
  __dst[3] = v43;
  if (sub_100432EB0(__dst) != 1)
  {
    goto LABEL_6;
  }

  v44 = a1[13];
  v133 = a1[12];
  v134 = v44;
  v45 = a1[15];
  v135 = a1[14];
  v136 = v45;
  v46 = a1[9];
  v129 = a1[8];
  v130 = v46;
  v47 = a1[11];
  v131 = a1[10];
  v132 = v47;
  v48 = a1[5];
  v125 = a1[4];
  v126 = v48;
  v49 = a1[7];
  v127 = a1[6];
  v128 = v49;
  sub_10043252C(v110, v95);
  sub_10043252C(v99, v95);
  sub_100025F40(&v125, &qword_1005DC860, &qword_100504BB8);
  return 1;
}

uint64_t sub_100432EB0(uint64_t a1)
{
  v1 = (*(a1 + 16) >> 33) & 0x7FFFFFFF | ((*(a1 + 64) >> 9) << 31);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100432ED8()
{
  result = qword_1005DC8A0;
  if (!qword_1005DC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC8A0);
  }

  return result;
}

uint64_t sub_100432F2C(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100432F50(uint64_t a1)
{
  v1 = (*(a1 + 16) >> 33) & 0x7FFFFFFF | ((*(a1 + 64) >> 9) << 31);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100432F74(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_100432FB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100433000(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static IMAPURLAuthenticationMechanism.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_1004A6D34();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

void IMAPURLAuthenticationMechanism.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1004A6EB4(1uLL);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }
}

Swift::Int IMAPURLAuthenticationMechanism.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  if (a2)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1004331A8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A6E94();
  if (v2)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  return sub_1004A6F14();
}

void sub_100433218()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_1004A6EB4(1uLL);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }
}

Swift::Int sub_100433290()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A6E94();
  if (v2)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  return sub_1004A6F14();
}

unint64_t sub_100433300()
{
  result = qword_1005DC8B0;
  if (!qword_1005DC8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC8B0);
  }

  return result;
}

uint64_t sub_100433354(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1004A6D34();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_100433398(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1004333E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t *InitialResponse.empty.unsafeMutableAddressor()
{
  if (qword_1005DBB60 != -1)
  {
    swift_once();
  }

  return &static InitialResponse.empty;
}

uint64_t sub_10043349C()
{
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  static InitialResponse.empty = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  qword_1005DE988 = qword_1005DE390;
  dword_1005DE990 = dword_1005DE398;
  word_1005DE994 = word_1005DE39C;
  byte_1005DE996 = byte_1005DE39E;
}

uint64_t static InitialResponse.empty.getter()
{
  if (qword_1005DBB60 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1004335A4()
{
  result = qword_1005DC8B8;
  if (!qword_1005DC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC8B8);
  }

  return result;
}

NIOIMAPCore2::_UInt24 __swiftcall _UInt24.init(_:)(Swift::UInt32 a1)
{
  v1 = a1 >> 8;
  result._backing._0 = v1;
  return result;
}

uint64_t _UInt24._backing.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 2) = a2;
  return result;
}

uint64_t sub_1004336D0()
{
  v2 = *(v0 + 2) | (*v0 << 8);
  sub_1000D40AC();
  return sub_1004A64C4();
}

uint64_t initializeBufferWithCopyOfBuffer for _UInt24(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _UInt24(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0x1FFFFFF) >> 24)
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
}

uint64_t storeEnumTagSinglePayload for _UInt24(uint64_t result, int a2, int a3)
{
  if ((a3 + 0x1FFFFFF) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

uint64_t sub_100433834()
{
  v2 = *v0 | (*(v0 + 2) << 32) | (*(v0 + 6) << 48);
  sub_100433888();
  return sub_1004A64C4();
}

unint64_t sub_100433888()
{
  result = qword_1005DC8C0;
  if (!qword_1005DC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC8C0);
  }

  return result;
}

unint64_t sub_1004338EC(unint64_t a1)
{
  result = ServerMessageDate.components.getter(a1, &v30);
  if ((v31 - 1) > 0xB)
  {
    goto LABEL_23;
  }

  v3 = v32;
  v4 = v33;
  v5 = v34;
  v29 = v35;
  v6 = *&aJan_0[8 * v31 - 8];
  v36._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v36);

  v37._countAndFlagsBits = 45;
  v37._object = 0xE100000000000000;
  sub_1004A5994(v37);
  v38._countAndFlagsBits = v6;
  v38._object = 0xE300000000000000;
  sub_1004A5994(v38);

  v39._countAndFlagsBits = 45;
  v39._object = 0xE100000000000000;
  sub_1004A5994(v39);
  v40._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v40);

  v41._countAndFlagsBits = 32;
  v41._object = 0xE100000000000000;
  sub_1004A5994(v41);
  v7 = *(v1 + 20);
  v8 = sub_1002F178C(34, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v9)
  {
    v10._countAndFlagsBits = 34;
    v10._object = 0xE100000000000000;
    v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = v8;

  v12 = *(v1 + 20);
  v13 = __CFADD__(v12, v11);
  v14 = v12 + v11;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v1 + 20) = v14;
  result = sub_100433D60(v3, v4, v5);
  v15 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = *(v1 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v17)
  {
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
  }

  v19 = *(v1 + 20);
  v13 = __CFADD__(v19, result);
  v20 = v19 + result;
  if (v13)
  {
    goto LABEL_18;
  }

  *(v1 + 20) = v20;
  v21 = __OFADD__(v15, result);
  v22 = v15 + result;
  if (v21)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = sub_100433FB0(v29);
  v23 = v22 + result;
  if (__OFADD__(v22, result))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = *(v1 + 20);
  result = sub_1002F178C(34, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v25)
  {
    v26._countAndFlagsBits = 34;
    v26._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = *(v1 + 20);
  v13 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v13)
  {
    goto LABEL_21;
  }

  *(v1 + 20) = v28;
  v21 = __OFADD__(v23, result);
  result += v23;
  if (v21)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

void __swiftcall ServerMessageDate.Components.init(year:month:day:hour:minute:second:timeZoneMinutes:)(NIOIMAPCore2::ServerMessageDate::Components_optional *__return_ptr retstr, Swift::Int year, Swift::Int month, Swift::Int day, Swift::Int hour, Swift::Int minute, Swift::Int second, Swift::Int timeZoneMinutes)
{
  if ((day - 32) < 0xFFFFFFFFFFFFFFE1 || (month - 13) < 0xFFFFFFFFFFFFFFF4 || hour > 0x17 || minute > 0x3B || second > 0x3C || (timeZoneMinutes - 1441) < 0xFFFFFFFFFFFFF4BFLL || (year - 0x10000) < 0xFFFFFFFFFFFF0001)
  {
    year = 0;
    month = 0;
    day = 0;
    hour = 0;
    minute = 0;
    second = 0;
    timeZoneMinutes = 0;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  retstr->value.year = year;
  retstr->value.month = month;
  retstr->value.day = day;
  retstr->value.hour = hour;
  retstr->value.minute = minute;
  retstr->value.second = second;
  retstr->value.zoneMinutes = timeZoneMinutes;
  retstr->is_nil = v8;
}

unint64_t ServerMessageDate.components.getter@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result >> 5;
  if (result / 0x5F0A570060 == 0xFFFF * (((67109889 * (result / 0x5F0A570060)) >> 32) >> 10) || ((v3 = result & 0x1F, v4 = v2 - 13 * ((v2 * 0x13B13B13B13B13B2uLL) >> 64), v5 = result / 0x1A0 - 61 * ((result / 0x1A0 * 0x4325C53EF368EB1uLL) >> 64), v6 = result / 0x6320 - 61 * ((result / 0x6320 * 0x4325C53EF368EB1uLL) >> 64), v6 <= 0x3B) ? (v7 = v5 > 0x17) : (v7 = 1), !v7 ? (v8 = v3 == 0) : (v8 = 1), !v8 ? (v9 = v2 == 13 * ((v2 * 0x13B13B13B13B13B2uLL) >> 64)) : (v9 = 1), v9))
  {
    __break(1u);
  }

  else
  {
    if (-1431655765 * (result / 0x1FAE1D0020) < 0x55555556)
    {
      v10 = result / 0x5A0CC20 - 1441 * ((result / 0x5A0CC20 * 0x2D7AC25A9A8F31uLL) >> 64);
    }

    else
    {
      v10 = 1441 * ((result / 0x5A0CC20 * 0x2D7AC25A9A8F31uLL) >> 64) - result / 0x5A0CC20;
    }

    *a2 = result / 0x5F0A570060 - 0xFFFF * (((67109889 * (result / 0x5F0A570060)) >> 32) >> 10);
    a2[1] = v4;
    a2[2] = v3;
    a2[3] = v5;
    a2[4] = v6;
    a2[5] = result / 0x179EA0 - 61 * ((result / 0x179EA0 * 0x4325C53EF368EB1uLL) >> 64);
    a2[6] = v10;
  }

  return result;
}

uint64_t sub_100433D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1 <= 9)
  {
    v25._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v25);

    v7 = 48;
    v8 = 0xE100000000000000;
    if (a2 > 9)
    {
      goto LABEL_3;
    }

LABEL_6:
    v26._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v26);

    v9 = 48;
    v11 = 0xE100000000000000;
    if (a3 > 9)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v7 = sub_1004A6CE4();
  v8 = v15;
  if (a2 <= 9)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = sub_1004A6CE4();
  v11 = v10;
  if (a3 > 9)
  {
LABEL_4:
    v12 = sub_1004A6CE4();
    v14 = v13;
    goto LABEL_8;
  }

LABEL_7:
  v27._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v27);

  v12 = 48;
  v14 = 0xE100000000000000;
LABEL_8:
  v28._countAndFlagsBits = 58;
  v28._object = 0xE100000000000000;
  sub_1004A5994(v28);
  v29._countAndFlagsBits = v9;
  v29._object = v11;
  sub_1004A5994(v29);

  v30._countAndFlagsBits = 58;
  v30._object = 0xE100000000000000;
  sub_1004A5994(v30);
  v31._countAndFlagsBits = v12;
  v31._object = v14;
  sub_1004A5994(v31);

  v16 = *(v3 + 20);
  v17 = sub_1002F178C(v7, v8, (v3 + 8), *(v3 + 20));
  if (v18)
  {
    v19._countAndFlagsBits = v7;
    v19._object = v8;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
  }

  v20 = v17;

  v22 = *(v4 + 20);
  v23 = __CFADD__(v22, v20);
  v24 = v22 + v20;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 20) = v24;
    return v20;
  }

  return result;
}

uint64_t sub_100433FB0(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = result;
  if (result < 0)
  {
    v4 = -result;
    if (__OFSUB__(0, result))
    {
      goto LABEL_20;
    }
  }

  v5 = v4 % 60;
  v6 = __OFSUB__(v4, v4 % 60);
  v7 = v4 - v4 % 60;
  if (v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7 / 60;
  v9 = 100 * (v7 / 60);
  if ((v8 * 100) >> 64 != v9 >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__OFADD__(v9, v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = sub_1004A6CE4();
  v12 = v11;
  if (sub_1004A5924() > 3)
  {
    goto LABEL_9;
  }

  sub_1004A5874(4);
  result = sub_1004A5924();
  v13 = 4 - result;
  if (!__OFSUB__(4, result))
  {
    v24._countAndFlagsBits = 48;
    v24._object = 0xE100000000000000;
    v25._countAndFlagsBits = sub_1004A5A74(v24, v13);
    sub_1004A5974(v25);

    v26._countAndFlagsBits = v10;
    v26._object = v12;
    sub_1004A5994(v26);

    v10 = 0;
    v12 = 0xE000000000000000;
LABEL_9:
    v14 = 43;
    if (v3 < 0)
    {
      v14 = 45;
    }

    v23 = v14;
    v27._countAndFlagsBits = v10;
    v27._object = v12;
    sub_1004A5994(v27);

    v15 = *(v1 + 20);
    v16 = sub_1002F178C(v23, 0xE100000000000000, (v1 + 8), *(v1 + 20));
    if (v17)
    {
      v18._countAndFlagsBits = v23;
      v18._object = 0xE100000000000000;
      v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    v19 = v16;

    v20 = *(v2 + 20);
    v21 = __CFADD__(v20, v19);
    v22 = v20 + v19;
    if (!v21)
    {
      *(v2 + 20) = v22;
      return v19;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t *_s12NIOIMAPCore217ServerMessageDateVyA2C10ComponentsVcfC_0(unint64_t *result)
{
  v1 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v1 >> 16)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = result[6];
  v3 = v2;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v3 = -v2;
    if (__OFSUB__(0, v2))
    {
      goto LABEL_22;
    }
  }

  if (v3 >= 0x10000)
  {
    goto LABEL_15;
  }

  v4 = result[5];
  if (v4 > 255)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = result[4];
  if (v5 > 255)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result[3];
  if (v6 > 255)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result[1];
  if (v7 > 255)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = result[2];
  if (((v4 | v3 | v5 | v6 | v7 | v8) & 0x8000000000000000) == 0)
  {
    if (v8 <= 255)
    {
      return (32 * (13 * (61 * (61 * (61 * (1441 * (3 * v1 + (v2 >> 63)) + v3) + v4) + v5) + v6) + v7) + v8);
    }

    goto LABEL_21;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_10043427C()
{
  result = qword_1005DC8C8;
  if (!qword_1005DC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC8C8);
  }

  return result;
}

uint64_t sub_1004342E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100434300(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 56) = v3;
  return result;
}

unint64_t sub_10043434C()
{
  result = qword_1005DC8D0;
  if (!qword_1005DC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC8D0);
  }

  return result;
}

unint64_t sub_1004343A4()
{
  result = qword_1005DC8D8;
  if (!qword_1005DC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC8D8);
  }

  return result;
}

unint64_t sub_1004343FC()
{
  result = qword_1005DC8E0;
  if (!qword_1005DC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC8E0);
  }

  return result;
}

uint64_t sub_100434480()
{
  v1 = v0;
  v11._countAndFlagsBits = 0x3D4449553B2FLL;
  v11._object = 0xE600000000000000;
  sub_1004A5994(v11);
  sub_1004A6934();
  v2 = *(v0 + 20);
  v3 = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), *(v1 + 20));
  if (v4)
  {
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v3 = ByteBuffer._setStringSlowpath(_:at:)(v5, v2);
  }

  v6 = v3;

  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, v6);
  v10 = v8 + v6;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 20) = v10;
    return v6;
  }

  return result;
}

unint64_t sub_100434564()
{
  result = qword_1005DC8E8[0];
  if (!qword_1005DC8E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005DC8E8);
  }

  return result;
}

uint64_t KeyValue.init(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for KeyValue();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t static KeyValue.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a5 + 8);
  if (sub_1004A5724())
  {
    v8 = *(type metadata accessor for KeyValue() + 52);
    v9 = *(a6 + 8);
    v10 = sub_1004A5724();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

Swift::UInt32 (__swiftcall *KeyValue.value.modify(uint64_t a1, uint64_t a2))(IMAP2Persistence::CredentialsRequestID)
{
  result = UInt32.init(_:);
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t KeyValue.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  sub_1004A5564();
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  v8 = v2 + *(a2 + 52);
  return sub_1004A5564();
}

Swift::Int KeyValue.hashValue.getter(uint64_t a1)
{
  sub_1004A6E94();
  KeyValue.hash(into:)(v3, a1);
  return sub_1004A6F14();
}

Swift::Int sub_1004348F0(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  KeyValue.hash(into:)(v4, a2);
  return sub_1004A6F14();
}

uint64_t sub_100434960(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004349EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_100434BC8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t BodyStructure.LanguageLocation.location.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100051690(v3[1], v3[2], v3[3]);
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;
  return result;
}

void BodyStructure.LanguageLocation.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  sub_1004A6EB4(v8);
  if (v8)
  {
    v9 = (a2 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v9 += 2;
      --v8;
    }

    while (v8);
  }

  if (a5)
  {
    sub_1004A6EC4(1u);
    if (a4)
    {
      sub_1004A6EC4(1u);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EC4(0);
    }

    v12 = *(a5 + 16);
    sub_1004A6EB4(v12);
    if (v12)
    {
      v13 = (a5 + 55);
      do
      {
        v14 = *(v13 - 23);
        if (*v13)
        {
          sub_1004A6EB4(1uLL);
          sub_1004A6EB4(v14);
        }

        else
        {
          v15 = *(v13 - 15);
          v16 = *(v13 - 1);
          v17 = *(v13 - 3);
          v18 = *(v13 - 7);
          sub_1004A6EB4(0);
          if (v14)
          {
            v19 = v18 | ((v17 | (v16 << 16)) << 32);
            sub_1004A6EC4(1u);
            swift_beginAccess();
            v20 = *(v14 + 24) + ((v19 >> 24) & 0xFFFF00 | BYTE6(v19));
            sub_1004A6EA4();
          }

          else
          {
            sub_1004A6EC4(0);
          }
        }

        v13 += 24;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    sub_1004A6EC4(0);
  }
}

Swift::Int BodyStructure.LanguageLocation.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004A6E94();
  v7 = *(a1 + 16);
  sub_1004A6EB4(v7);
  if (v7)
  {
    v8 = (a1 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  if (a4)
  {
    sub_1004A6EC4(1u);
    if (a3)
    {
      sub_1004A6EC4(1u);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EC4(0);
    }

    v11 = *(a4 + 16);
    sub_1004A6EB4(v11);
    if (v11)
    {
      v12 = (a4 + 55);
      do
      {
        v13 = *(v12 - 23);
        if (*v12)
        {
          sub_1004A6EB4(1uLL);
          sub_1004A6EB4(v13);
        }

        else
        {
          v14 = *(v12 - 15);
          v15 = *(v12 - 1);
          v16 = *(v12 - 3);
          v17 = *(v12 - 7);
          sub_1004A6EB4(0);
          if (v13)
          {
            v18 = v17 | ((v16 | (v15 << 16)) << 32);
            sub_1004A6EC4(1u);
            swift_beginAccess();
            v19 = *(v13 + 24) + ((v18 >> 24) & 0xFFFF00 | BYTE6(v18));
            sub_1004A6EA4();
          }

          else
          {
            sub_1004A6EC4(0);
          }
        }

        v12 += 24;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    sub_1004A6EC4(0);
  }

  return sub_1004A6F14();
}

Swift::Int sub_100435270()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1004A6E94();
  BodyStructure.LanguageLocation.hash(into:)(v6, v1, v2, v4, v3);
  return sub_1004A6F14();
}

BOOL _s12NIOIMAPCore213BodyStructureO16LanguageLocationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((sub_10020FB40(a1, a5) & 1) == 0)
  {
    return 0;
  }

  if (a4)
  {
    if (a8)
    {
      if (!a3)
      {
        if (!a7)
        {
          goto LABEL_9;
        }

LABEL_14:
        sub_1003E25F0(a6, a7, a8);

        return 0;
      }

      if (a7)
      {
        if (a2 == a6 && a3 == a7 || (sub_1004A6D34() & 1) != 0)
        {
LABEL_9:

          v14 = sub_10039ED48(a4, a8);

          return (v14 & 1) != 0;
        }

        goto LABEL_14;
      }
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1004353E4()
{
  result = qword_1005DC970[0];
  if (!qword_1005DC970[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005DC970);
  }

  return result;
}

uint64_t static LastCommandMessageID.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v8;
  CommandMessageID = type metadata accessor for LastCommandMessageID();
  v10 = *(CommandMessageID - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(CommandMessageID);
  v35 = &v30 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(TupleTypeMetadata2);
  v18 = &v30 - v17;
  v20 = *(v19 + 48);
  v33 = v10;
  v21 = *(v10 + 16);
  v21(&v30 - v17, v34, CommandMessageID, v16);
  (v21)(&v18[v20], a2, CommandMessageID);
  v34 = v5;
  v22 = *(v5 + 48);
  if (v22(v18, 1, a3) == 1)
  {
    v23 = 1;
    if (v22(&v18[v20], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v21)(v35, v18, CommandMessageID);
    if (v22(&v18[v20], 1, a3) != 1)
    {
      v24 = v34;
      v25 = v31;
      (*(v34 + 32))(v31, &v18[v20], a3);
      v26 = *(*(v32 + 40) + 8);
      v27 = v35;
      v23 = sub_1004A5724();
      v28 = *(v24 + 8);
      v28(v25, a3);
      v28(v27, a3);
LABEL_8:
      v14 = v33;
      goto LABEL_9;
    }

    (*(v34 + 8))(v35, a3);
  }

  v23 = 0;
  CommandMessageID = TupleTypeMetadata2;
LABEL_9:
  (*(v14 + 8))(v18, CommandMessageID);
  return v23 & 1;
}

void LastCommandMessageID.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15, a2, v11);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    sub_1004A6EB4(1uLL);
  }

  else
  {
    (*(v4 + 32))(v7, v13, v3);
    sub_1004A6EB4(0);
    v16 = *(*(a2 + 24) + 40);
    sub_1004A5564();
    (*(v4 + 8))(v7, v3);
  }
}

Swift::Int LastCommandMessageID.hashValue.getter(uint64_t a1)
{
  sub_1004A6E94();
  LastCommandMessageID.hash(into:)(v3, a1);
  return sub_1004A6F14();
}

Swift::Int sub_1004359B4(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  LastCommandMessageID.hash(into:)(v4, a2);
  return sub_1004A6F14();
}

uint64_t sub_100435A20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_100435A7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
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
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_100435BFC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
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
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t static LastCommandSet.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v7 = type metadata accessor for MessageIdentifierSetNonEmpty();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v32 = &v32 - v10;
  v33 = a3;
  v34 = a4;
  CommandSet = type metadata accessor for LastCommandSet();
  v12 = *(CommandSet - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(CommandSet);
  v37 = &v32 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(TupleTypeMetadata2);
  v20 = &v32 - v19;
  v22 = *(v21 + 48);
  v35 = v12;
  v23 = *(v12 + 16);
  v23(&v32 - v19, v36, CommandSet, v18);
  (v23)(&v20[v22], a2, CommandSet);
  v36 = v8;
  v24 = *(v8 + 48);
  if (v24(v20, 1, v7) == 1)
  {
    v25 = 1;
    if (v24(&v20[v22], 1, v7) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v23)(v37, v20, CommandSet);
    if (v24(&v20[v22], 1, v7) != 1)
    {
      v26 = v36;
      v27 = &v20[v22];
      v28 = v32;
      (*(v36 + 32))(v32, v27, v7);
      v29 = v37;
      v25 = static MessageIdentifierSetNonEmpty.__derived_struct_equals(_:_:)(v37, v28, v33, v34);
      v30 = *(v26 + 8);
      v30(v28, v7);
      v30(v29, v7);
LABEL_8:
      v16 = v35;
      goto LABEL_9;
    }

    (*(v36 + 8))(v37, v7);
  }

  v25 = 0;
  CommandSet = TupleTypeMetadata2;
LABEL_9:
  (*(v16 + 8))(v20, CommandSet);
  return v25 & 1;
}

void LastCommandSet.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for MessageIdentifierSetNonEmpty();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = *(*(a2 - 8) + 64);
  v15 = __chkstk_darwin(v14);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v3, a2, v15);
  if ((*(v9 + 48))(v17, 1, v8) == 1)
  {
    sub_1004A6EB4(1uLL);
  }

  else
  {
    (*(v9 + 32))(v12, v17, v8);
    sub_1004A6EB4(0);
    MessageIdentifierSetNonEmpty.hash(into:)(a1, v8);
    (*(v9 + 8))(v12, v8);
  }
}

Swift::Int LastCommandSet.hashValue.getter(uint64_t a1)
{
  sub_1004A6E94();
  LastCommandSet.hash(into:)(v3, a1);
  return sub_1004A6F14();
}

Swift::Int sub_1004363AC(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  LastCommandSet.hash(into:)(v4, a2);
  return sub_1004A6F14();
}

uint64_t static LastCommandSet.range(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MessageIdentifierRange();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - v11;
  (*(v13 + 16))(&v16 - v11, a1, v10);
  MessageIdentifierSetNonEmpty.init(range:)(v12, a2, a3);
  v14 = type metadata accessor for MessageIdentifierSetNonEmpty();
  return (*(*(v14 - 8) + 56))(a4, 0, 1, v14);
}

uint64_t sub_100436540(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = type metadata accessor for MessageIdentifierSetNonEmpty();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t sub_1004365B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for MessageIdentifierSetNonEmpty();
  v8 = (*(*(v7 - 8) + 48))(a1, a2, v7);
  if (v8 >= 2)
  {
    return v8 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100436634(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (a2 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = type metadata accessor for MessageIdentifierSetNonEmpty();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v6, a3, v9);
}

uint64_t sub_1004366B8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x204E5255544552, 0xE700000000000000, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 0x204E5255544552;
    v7._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v1 + 20) = v10;
  result = sub_1002F178C(40, 0xE100000000000000, (v1 + 8), v10);
  if (v11)
  {
    v12._countAndFlagsBits = 40;
    v12._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = *(v1 + 20);
  v14 = (v13 + result);
  if (__CFADD__(v13, result))
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v14;
  v15 = __OFADD__(v8, result);
  v16 = v8 + result;
  if (v15)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    v35 = a1;
    result = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), v14);
    if (v18)
    {
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v14);
    }

    v20 = result;
    v21 = *(v2 + 20);
    v22 = __CFADD__(v21, result);
    v23 = v21 + result;
    if (v22)
    {
      goto LABEL_29;
    }

    *(v2 + 20) = v23;
    __chkstk_darwin(result);
    v34[2] = sub_10043691C;
    v34[3] = 0;
    v34[4] = v2;
    v34[5] = &v35;
    v34[6] = 32;
    v34[7] = 0xE100000000000000;
    result = sub_10045297C(0, sub_1004369B4, v34, a1);
    v24 = v20 + result;
    if (__OFADD__(v20, result))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v25 = *(v2 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
    if (v26)
    {
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
    }

    v28 = *(v2 + 20);
    LODWORD(v14) = v28 + result;
    if (__CFADD__(v28, result))
    {
      goto LABEL_31;
    }

    *(v2 + 20) = v14;
    v17 = v24 + result;
    if (__OFADD__(v24, result))
    {
LABEL_32:
      __break(1u);
      return result;
    }
  }

  v15 = __OFADD__(v16, v17);
  v29 = v16 + v17;
  if (v15)
  {
    goto LABEL_26;
  }

  result = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), v14);
  if (v30)
  {
    v31._countAndFlagsBits = 41;
    v31._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v14);
  }

  v32 = *(v2 + 20);
  v22 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v22)
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v33;
  v15 = __OFADD__(v29, result);
  result += v29;
  if (v15)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_10043691C(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return sub_100486D38(v4);
}

uint64_t sub_10043695C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v11 = *a1;
  v12 = *(a2 + 64);
  v13 = *a6;
  v14 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v14;
  v15 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v15;
  v18 = v12;
  result = sub_1004920BC(v11, v17, a3, a4, a5, v13, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

BOOL sub_1004369D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 32);
  if (a1[4])
  {
    if ((a2[4] & 1) == 0)
    {
      return 0;
    }

    v7 = a1[2];
    v8 = a1[3];
    v9 = a2[2];
    v10 = a2[3];
    if (v2 != v4 || v3 != v5)
    {
      v12 = a1;
      v13 = *a1;
      v14 = a2;
      v15 = sub_1004A6D34();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 != v9 || v8 != v10)
    {
      v18 = a1;
      v19 = a2;
      v20 = sub_1004A6D34();
      a2 = v19;
      v21 = v20;
      a1 = v18;
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (a2[4])
    {
      return 0;
    }

    if (v2 != v4 || v3 != v5)
    {
      v23 = a1;
      v24 = *a1;
      v25 = a2;
      v26 = sub_1004A6D34();
      a2 = v25;
      v27 = v26;
      a1 = v23;
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v29 = a1[5];
  v28 = a1[6];
  v30 = a1[7];
  v32 = a2[5];
  v31 = a2[6];
  v33 = a2[7];
  if (HIBYTE(v30) == 255)
  {
    if (HIBYTE(v33) == 255)
    {
      return 1;
    }

    goto LABEL_24;
  }

  if (HIBYTE(v33) == 255)
  {
LABEL_24:
    sub_1003A3378(a1[5], v28, v30);
    sub_1003A3378(v32, v31, v33);
    sub_1003A3390(v29, v28, v30);
    sub_1003A3390(v32, v31, v33);
    return 0;
  }

  if ((v30 & 0x100000000000000) != 0)
  {
    if ((v33 & 0x100000000000000) == 0)
    {
      return 0;
    }

    sub_1003A3378(a1[5], v28, v30);
    sub_1003A3378(v32, v31, v33);
    v35 = sub_100397AD8(v29, v32);
  }

  else
  {
    if ((v33 & 0x100000000000000) != 0)
    {
      return 0;
    }

    sub_1003A3378(a1[5], v28, v30);
    sub_1003A3378(v32, v31, v33);
    v35 = sub_10020FBD0(v29, v28, v30 & 0xFFFFFFFFFFFFFFLL, v32, v31, v33 & 0xFFFFFFFFFFFFFFLL);
  }

  v36 = v35;
  sub_1003A3390(v32, v31, v33);
  sub_1003A3390(v29, v28, v30);
  return (v36 & 1) != 0;
}

BOOL sub_100436BFC(void *a1, void *a2)
{
  v4 = type metadata accessor for ParameterValue();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  v13 = sub_10000C9C0(&qword_1005DBC70, &unk_100505A20);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v23 - v15;
  if (*a1 == *a2 && a1[1] == a2[1] || (v17 = sub_1004A6D34(), result = 0, (v17 & 1) != 0))
  {
    v19 = *(sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0) + 52);
    v20 = *(v13 + 48);
    sub_1003E0614(a1 + v19, v16);
    sub_1003E0614(a2 + v19, &v16[v20]);
    v21 = *(v5 + 48);
    if (v21(v16, 1, v4) == 1)
    {
      if (v21(&v16[v20], 1, v4) == 1)
      {
        sub_100025F40(v16, &qword_1005D7F50, &unk_100502FF0);
        return 1;
      }
    }

    else
    {
      sub_1003E0614(v16, v12);
      if (v21(&v16[v20], 1, v4) != 1)
      {
        sub_1002FC114(&v16[v20], v8);
        v22 = _s12NIOIMAPCore214ParameterValueO21__derived_enum_equalsySbAC_ACtFZ_0(v12, v8);
        sub_1002FC1DC(v8);
        sub_1002FC1DC(v12);
        sub_100025F40(v16, &qword_1005D7F50, &unk_100502FF0);
        return (v22 & 1) != 0;
      }

      sub_1002FC1DC(v12);
    }

    sub_100025F40(v16, &qword_1005DBC70, &unk_100505A20);
    return 0;
  }

  return result;
}

BOOL static ListSelectBaseOption.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (*(a1 + 32) == 0xFF)
  {
    v5 = ~*(a2 + 32);
    return *(a2 + 32) == 0xFF;
  }

  else
  {
    v19 = v2;
    v20 = v3;
    v7 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v7;
    v16 = v4;
    v17 = *(a1 + 40);
    v18 = *(a1 + 56);
    v8 = *(a2 + 32);
    if (*(a2 + 32) == 0xFF)
    {
      return 0;
    }

    else
    {
      v10 = *(a2 + 16);
      v11[0] = *a2;
      v11[1] = v10;
      v12 = v8;
      v13 = *(a2 + 40);
      v14 = *(a2 + 56);
      return sub_1004369D8(v15, v11);
    }
  }
}

void ListSelectBaseOption.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3 == 255)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    v4 = *v1;
    v5 = v1[1];
    v6 = v1[2];
    v7 = v1[3];
    v8 = v1[5];
    v9 = v1[6];
    v10 = v1[7];
    sub_1004A6EB4(1uLL);
    if (v3)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    sub_1003B0040(a1, v8, v9, v10);
  }
}

Swift::Int ListSelectBaseOption.hashValue.getter()
{
  sub_1004A6E94();
  v1 = *(v0 + 32);
  if (v1 == 255)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    v2 = *v0;
    v3 = v0[1];
    v4 = v0[2];
    v5 = v0[3];
    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[7];
    sub_1004A6EB4(1uLL);
    if (v1)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B0040(v10, v6, v7, v8);
  }

  return sub_1004A6F14();
}

void sub_100437150(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3 == 255)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    v4 = v1[2];
    v5 = v1[3];
    v6 = v1[5];
    v7 = v1[6];
    v8 = v1[7];
    v9 = *v1;
    v10 = v1[1];
    sub_1004A6EB4(1uLL);
    if (v3)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    sub_1003B0040(a1, v6, v7, v8);
  }
}

Swift::Int sub_10043724C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1004A6E94();
  if (v5 == 255)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    sub_1004A6EB4(1uLL);
    if (v5)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B0040(v10, v6, v7, v8);
  }

  return sub_1004A6F14();
}

BOOL sub_100437330(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (*(a1 + 32) == 0xFF)
  {
    return ~*(a2 + 32) == 0;
  }

  v18 = v2;
  v19 = v3;
  v7 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;
  v11 = v4;
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  if (v5 == 0xFF)
  {
    return 0;
  }

  else
  {
    v9 = *(a2 + 16);
    v14[0] = *a2;
    v14[1] = v9;
    v15 = v5;
    v16 = *(a2 + 40);
    v17 = *(a2 + 56);
    return sub_1004369D8(v10, v14);
  }
}

unint64_t sub_1004373D8()
{
  result = qword_1005DCA78;
  if (!qword_1005DCA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCA78);
  }

  return result;
}

uint64_t sub_100437444(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100437458(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10043746C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 64))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004374B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

double sub_100437500(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 32) = -a2;
  }

  return result;
}

BOOL static ListSelectIndependentOption.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 != 254)
  {
    if (v2 == 255)
    {
      v3 = ~*(a2 + 32);
      if (*(a2 + 32) == 0xFF)
      {
        return 1;
      }
    }

    else
    {
      v5 = *(a1 + 16);
      v13[0] = *a1;
      v13[1] = v5;
      v14 = v2;
      v15 = *(a1 + 40);
      v16 = *(a1 + 56);
      v6 = *(a2 + 32);
      if ((~*(a2 + 32) & 0xFELL) != 0)
      {
        v7 = *(a2 + 16);
        v9[0] = *a2;
        v9[1] = v7;
        v10 = v6;
        v11 = *(a2 + 40);
        v12 = *(a2 + 56);
        return sub_1004369D8(v13, v9);
      }
    }

    return 0;
  }

  return *(a2 + 32) == 254;
}

void ListSelectIndependentOption.hash(into:)(uint64_t a1)
{
  v3 = v1[4];
  if (v3 == 254)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (v3 == 255)
  {
    v4 = 0;
LABEL_5:
    sub_1004A6EB4(v4);
    return;
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  sub_1004A6EB4(1uLL);
  if (v3)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  sub_1003B0040(a1, v9, v10, v11);
}

Swift::Int ListSelectIndependentOption.hashValue.getter()
{
  sub_1004A6E94();
  v1 = v0[4];
  if (v1 == 254)
  {
    v2 = 2;
    goto LABEL_5;
  }

  if (v1 == 255)
  {
    v2 = 0;
LABEL_5:
    sub_1004A6EB4(v2);
    return sub_1004A6F14();
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  sub_1004A6EB4(1uLL);
  if (v1)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1003B0040(v11, v7, v8, v9);
  return sub_1004A6F14();
}

void sub_10043781C(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3 == 254)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (v3 == 255)
  {
    v4 = 0;
LABEL_5:
    sub_1004A6EB4(v4);
    return;
  }

  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = *v1;
  v11 = v1[1];
  sub_1004A6EB4(1uLL);
  if (v3)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  sub_1003B0040(a1, v7, v8, v9);
}

Swift::Int sub_100437928()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1004A6E94();
  if (v5 == 254)
  {
    v9 = 2;
    goto LABEL_5;
  }

  if (v5 == 255)
  {
    v9 = 0;
LABEL_5:
    sub_1004A6EB4(v9);
    return sub_1004A6F14();
  }

  sub_1004A6EB4(1uLL);
  if (v5)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1003B0040(v11, v6, v7, v8);
  return sub_1004A6F14();
}

BOOL sub_100437A1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 == 254)
  {
    v6 = *(a2 + 32) == 254;
    goto LABEL_5;
  }

  if (v4 == 255)
  {
    v6 = ~*(a2 + 32) == 0;
LABEL_5:
    v7 = v6;
    return v7 & 1;
  }

  v20 = v2;
  v21 = v3;
  v9 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v9;
  v13 = v4;
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  if ((~v5 & 0xFE) != 0)
  {
    v11 = *(a2 + 16);
    v16[0] = *a2;
    v16[1] = v11;
    v17 = v5;
    v18 = *(a2 + 40);
    v19 = *(a2 + 56);
    return sub_1004369D8(v12, v16);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100437AD8()
{
  result = qword_1005DCA80;
  if (!qword_1005DCA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCA80);
  }

  return result;
}

uint64_t sub_100437B2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100437B40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 64))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 > 1)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100437B88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = -2 - a2;
    }
  }

  return result;
}

__n128 ListSelectOptions.init(baseOption:options:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v5;
  *(a3 + 64) = a2;
  return result;
}

BOOL static ListSelectOption.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 > 0xFDu)
  {
    if (v2 == 254)
    {
      if (*(a2 + 32) != 254)
      {
        return 0;
      }
    }

    else
    {
      if (v2 != 255)
      {
        goto LABEL_10;
      }

      v3 = ~*(a2 + 32);
      if (*(a2 + 32) != 0xFF)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v2 == 252)
  {
    return *(a2 + 32) == 252;
  }

  if (v2 == 253)
  {
    return *(a2 + 32) == 253;
  }

LABEL_10:
  v4 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v4;
  v14 = v2;
  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  v5 = *(a2 + 32);
  if ((v5 & 0xFC | 2) == 0xFE)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v10 = v5;
  v11 = *(a2 + 40);
  v12 = *(a2 + 56);
  return sub_1004369D8(v13, v9);
}

void ListSelectOption.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  if (v8 > 0xFDu)
  {
    if (v8 == 254)
    {
      v11 = 1;
      goto LABEL_12;
    }

    if (v8 == 255)
    {
      v11 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (v8 == 252)
    {
      v11 = 3;
      goto LABEL_12;
    }

    if (v8 == 253)
    {
      v11 = 2;
LABEL_12:
      sub_1004A6EB4(v11);
      return;
    }
  }

  sub_1004A6EB4(4uLL);
  if (v8)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  sub_1003B0040(a1, v7, v9, v10);
}

Swift::Int ListSelectOption.hashValue.getter()
{
  sub_1004A6E94();
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  if (v6 > 0xFDu)
  {
    if (v6 == 254)
    {
      v9 = 1;
      goto LABEL_12;
    }

    if (v6 == 255)
    {
      v9 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (v6 == 252)
    {
      v9 = 3;
      goto LABEL_12;
    }

    if (v6 == 253)
    {
      v9 = 2;
LABEL_12:
      sub_1004A6EB4(v9);
      return sub_1004A6F14();
    }
  }

  sub_1004A6EB4(4uLL);
  if (v6)
  {
    sub_1004A6EB4(1uLL);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1003B0040(v11, v5, v7, v8);
  return sub_1004A6F14();
}

Swift::Int sub_100437F60()
{
  sub_1004A6E94();
  ListSelectOption.hash(into:)(v1);
  return sub_1004A6F14();
}

BOOL sub_100437F9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 > 0xFDu)
  {
    if (v4 == 254)
    {
      v6 = *(a2 + 32) == 254;
      goto LABEL_12;
    }

    if (v4 == 255)
    {
      v6 = ~*(a2 + 32) == 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (v4 == 252)
    {
      v6 = *(a2 + 32) == 252;
      goto LABEL_12;
    }

    if (v4 == 253)
    {
      v6 = *(a2 + 32) == 253;
LABEL_12:
      v9 = v6;
      return v9 & 1;
    }
  }

  v20 = v2;
  v21 = v3;
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v13 = v4;
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  if ((v5 & 0xFC | 2) == 0xFE)
  {
    return 0;
  }

  else
  {
    v11 = *(a2 + 16);
    v16[0] = *a2;
    v16[1] = v11;
    v17 = v5;
    v18 = *(a2 + 40);
    v19 = *(a2 + 56);
    return sub_1004369D8(v12, v16);
  }
}

uint64_t static ListSelectOptions.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (*(a1 + 32) == 0xFF)
  {
    if (v3 != 0xFF)
    {
      return 0;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    v13[0] = *a1;
    v13[1] = v4;
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    v14 = v2;
    if (v3 == 0xFF)
    {
      return 0;
    }

    v5 = *(a2 + 16);
    v17[0] = *a2;
    v17[1] = v5;
    v19 = *(a2 + 40);
    v20 = *(a2 + 56);
    v18 = v3;
    v6 = a1;
    v7 = a2;
    v8 = sub_1004369D8(v13, v17);
    a2 = v7;
    v9 = v8;
    a1 = v6;
    if (!v9)
    {
      return 0;
    }
  }

  v10 = *(a1 + 64);
  v11 = *(a2 + 64);

  return sub_1003988F4(v10, v11);
}

void ListSelectOptions.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 32);
  if (v4 == 255)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    v5 = *v2;
    v6 = v2[1];
    v7 = v2[2];
    v8 = v2[3];
    v9 = v2[5];
    v10 = v2[6];
    v11 = v2[7];
    sub_1004A6EB4(1uLL);
    if (v4)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B0040(a1, v9, v10, v11);
  }

  v12 = v2[8];

  sub_1003AD7B0(a1, v12);
}

Swift::Int ListSelectOptions.hashValue.getter()
{
  sub_1004A6E94();
  v1 = *(v0 + 32);
  if (v1 == 255)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    v2 = *v0;
    v3 = v0[1];
    v4 = v0[2];
    v5 = v0[3];
    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[7];
    sub_1004A6EB4(1uLL);
    if (v1)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B0040(v10, v6, v7, v8);
  }

  sub_1003AD7B0(v10, v0[8]);
  return sub_1004A6F14();
}

void sub_10043835C(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = v1[8];
  if (v3 == 255)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    v5 = v1[3];
    v11 = v1[2];
    v6 = v1[5];
    v7 = v1[6];
    v8 = v1[7];
    v9 = *v1;
    v10 = v1[1];
    sub_1004A6EB4(1uLL);
    if (v3)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B0040(a1, v6, v7, v8);
  }

  sub_1003AD7B0(a1, v4);
}

Swift::Int sub_10043845C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[7];
  v8 = v0[8];
  sub_1004A6E94();
  if (v5 == 255)
  {
    sub_1004A6EB4(0);
  }

  else
  {
    sub_1004A6EB4(1uLL);
    if (v5)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003B0040(v11, v6, v7, v9);
  }

  sub_1003AD7B0(v11, v8);
  return sub_1004A6F14();
}

uint64_t sub_10043854C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4 = *(a2 + 32);
  v5 = *(a2 + 64);
  if (*(a1 + 32) == 0xFF)
  {
    if (v4 != 0xFF)
    {
      return 0;
    }
  }

  else
  {
    v6 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v6;
    v10 = v2;
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    if (v4 == 0xFF)
    {
      return 0;
    }

    v7 = *(a2 + 16);
    v13[0] = *a2;
    v13[1] = v7;
    v14 = v4;
    v15 = *(a2 + 40);
    v16 = *(a2 + 56);
    if (!sub_1004369D8(v9, v13))
    {
      return 0;
    }
  }

  return sub_1003988F4(v3, v5);
}

uint64_t sub_10043861C(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = v7;
  if (v7 <= 0xFDu)
  {
    if (v7 == 252)
    {
      v2 = (v1 + 20);
      v19 = *(v1 + 5);
      result = sub_1002F178C(0x5649535255434552, 0xEE00484354414D45, v1 + 1, *(v1 + 5));
      if (v20)
      {
        v21._countAndFlagsBits = 0x5649535255434552;
        v21._object = 0xEE00484354414D45;
        result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
      }

      LODWORD(v7) = *v2 + result;
      if (!__CFADD__(*v2, result))
      {
        goto LABEL_26;
      }

      __break(1u);
LABEL_23:
      v23 = *(v2 + 5);
      v2 = (v2 + 20);
      v22 = v23;
      result = sub_1002F178C(0x45544F4D4552, 0xE600000000000000, (v2 - 12), v23);
      if (v24)
      {
        v25._countAndFlagsBits = 0x45544F4D4552;
        v25._object = 0xE600000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v25, v22);
      }

      LODWORD(v7) = *v2 + result;
      if (!__CFADD__(*v2, result))
      {
        goto LABEL_26;
      }

      goto LABEL_40;
    }

    if (v7 != 253)
    {
      goto LABEL_16;
    }

    v9 = 0x2D4C414943455053;
    v2 = (v1 + 20);
    v8 = *(v1 + 5);
    v10 = (v1 + 1);
    result = sub_1002F178C(0x2D4C414943455053, 0xEB00000000455355, v1 + 1, *(v1 + 5));
    if (v13)
    {
      v14._countAndFlagsBits = 0x2D4C414943455053;
      v14._object = 0xEB00000000455355;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v8);
    }

    LODWORD(v7) = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  if (v11 == 254)
  {
    goto LABEL_23;
  }

  if (v11 == 255)
  {
    v8 = 0x4249524353425553;
    v16 = *(v2 + 5);
    v2 = (v2 + 20);
    v15 = v16;
    v9 = v2 - 12;
    result = sub_1002F178C(0x4249524353425553, 0xEA00000000004445, (v2 - 12), v16);
    if (v17)
    {
      v18._countAndFlagsBits = 0x4249524353425553;
      v18._object = 0xEA00000000004445;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    LODWORD(v7) = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
LABEL_26:
      *v2 = v7;
      return result;
    }

    __break(1u);
  }

LABEL_16:
  if (v7)
  {
    result = sub_100462978(v4, v3, v5, v6);
  }

  else
  {
    v26 = *(v2 + 5);
    result = sub_1002F178C(v4, v3, v2 + 1, *(v2 + 5));
    if (v27)
    {
      v28._countAndFlagsBits = v4;
      v28._object = v3;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v26);
    }

    v29 = *(v2 + 5);
    v30 = __CFADD__(v29, result);
    v31 = v29 + result;
    if (v30)
    {
      goto LABEL_41;
    }

    *(v2 + 5) = v31;
  }

  if (HIBYTE(v10) == 255)
  {
    return result;
  }

  v32 = result;
  v33 = *(v2 + 5);
  sub_1003A30E8(v8, v9, v10, HIBYTE(v10) & 1);
  result = sub_1002F178C(32, 0xE100000000000000, v2 + 1, v33);
  if (v34)
  {
    v35._countAndFlagsBits = 32;
    v35._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v35, v33);
  }

  v36 = *(v2 + 5);
  v30 = __CFADD__(v36, result);
  v37 = v36 + result;
  if (v30)
  {
    goto LABEL_42;
  }

  *(v2 + 5) = v37;
  v38 = v32 + result;
  if (__OFADD__(v32, result))
  {
LABEL_43:
    __break(1u);
    return result;
  }

  v39 = sub_100462BEC(v8, v9, v10 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v10) & 1) << 56));
  sub_1003A3390(v8, v9, v10);
  result = v38 + v39;
  if (__OFADD__(v38, v39))
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  return result;
}

uint64_t sub_100438924(uint64_t *a1, uint64_t a2)
{
  v3 = sub_10043861C(a1);
  v4 = *(a2 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (a2 + 8), *(a2 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = *(a2 + 20);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(a2 + 20) = v10;
  v11 = __OFADD__(v3, result);
  result += v3;
  if (v11)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_100438A78()
{
  result = qword_1005DCA88;
  if (!qword_1005DCA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCA88);
  }

  return result;
}

unint64_t sub_100438AD0()
{
  result = qword_1005DCA90;
  if (!qword_1005DCA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCA90);
  }

  return result;
}

uint64_t sub_100438B24(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100438B38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 64))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 > 1)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 5)
  {
    return v4 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100438B80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = -4 - a2;
    }
  }

  return result;
}

uint64_t static BodyStructure.LocationAndExtensions.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a5)
    {
      if (a1 == a4 && a2 == a5)
      {
        goto LABEL_6;
      }

      v7 = a3;
      v8 = a6;
      v9 = sub_1004A6D34();
      a3 = v7;
      a6 = v8;
      if (v9)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  if (a5)
  {
    return 0;
  }

LABEL_6:

  return sub_10039ED48(a3, a6);
}

void BodyStructure.LocationAndExtensions.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  v5 = *(a4 + 16);
  sub_1004A6EB4(v5);
  if (v5)
  {
    v6 = (a4 + 55);
    do
    {
      v7 = *(v6 - 23);
      if (*v6)
      {
        sub_1004A6EB4(1uLL);
        sub_1004A6EB4(v7);
      }

      else
      {
        v8 = *(v6 - 15);
        v9 = *(v6 - 1);
        v10 = *(v6 - 3);
        v11 = *(v6 - 7);
        sub_1004A6EB4(0);
        if (v7)
        {
          v12 = v11 | ((v10 | (v9 << 16)) << 32);
          sub_1004A6EC4(1u);
          swift_beginAccess();
          v13 = *(v7 + 24) + ((v12 >> 24) & 0xFFFF00 | BYTE6(v12));
          sub_1004A6EA4();
        }

        else
        {
          sub_1004A6EC4(0);
        }
      }

      v6 += 24;
      --v5;
    }

    while (v5);
  }
}

Swift::Int BodyStructure.LocationAndExtensions.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6E94();
  if (a2)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  v5 = *(a3 + 16);
  sub_1004A6EB4(v5);
  if (v5)
  {
    v6 = (a3 + 55);
    do
    {
      v7 = *(v6 - 23);
      if (*v6)
      {
        sub_1004A6EB4(1uLL);
        sub_1004A6EB4(v7);
      }

      else
      {
        v8 = *(v6 - 15);
        v9 = *(v6 - 1);
        v10 = *(v6 - 3);
        v11 = *(v6 - 7);
        sub_1004A6EB4(0);
        if (v7)
        {
          v12 = v11 | ((v10 | (v9 << 16)) << 32);
          sub_1004A6EC4(1u);
          swift_beginAccess();
          v13 = *(v7 + 24) + ((v12 >> 24) & 0xFFFF00 | BYTE6(v12));
          sub_1004A6EA4();
        }

        else
        {
          sub_1004A6EC4(0);
        }
      }

      v6 += 24;
      --v5;
    }

    while (v5);
  }

  return sub_1004A6F14();
}

Swift::Int sub_100438F00()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1004A6E94();
  BodyStructure.LocationAndExtensions.hash(into:)(v5, v1, v2, v3);
  return sub_1004A6F14();
}

unint64_t sub_100438F5C()
{
  result = qword_1005DCA98;
  if (!qword_1005DCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCA98);
  }

  return result;
}

uint64_t sub_100438FB0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_1004A6D34() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_10039ED48(v4, v6);
}

uint64_t sub_10043905C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100439094()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1004390D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100439154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[1] = a4;
  v6 = sub_1004A48E4();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004A49D4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v31 = sub_100439C40();
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v18 = v31;
  v19 = v15 & 1;
  v20 = BYTE1(v15) & 1;
  v21 = BYTE2(v15) & 1;
  v22 = v16;
  v23 = v17;
  sub_1000EADE8();
  sub_1004390BC();
  v25[2] = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  v30 = v23;
  sub_1004A4994();
  sub_1004390D4(v9, &type metadata accessor for OSLogPrivacy);
  sub_1004390D4(v13, &type metadata accessor for OSLogStringAlignment);
  sub_1000B5158(v22);
}

uint64_t sub_100439324()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = v1();
  if ((result & &_mh_execute_header) != 0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10043938C(unint64_t a1, uint64_t (*a2)(unint64_t))
{
  v4 = HIDWORD(a1);
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  v5 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v6 = dword_1005DE398;
  v7 = word_1005DE39C;
  v8 = byte_1005DE39E;

  LOBYTE(v19) = 0;
  BYTE5(v19) = 0;
  *(&v19 + 1) = 65537;
  *(&v19 + 1) = v5;
  *&v20 = qword_1005DE390;
  DWORD2(v20) = v6;
  WORD6(v20) = v7;
  BYTE14(v20) = v8;
  *&v21 = sub_1003DBA20(_swiftEmptyArrayStorage);
  *(&v21 + 1) = v9;
  v22 = v10;
  result = a2(a1);
  if (a1 < v4)
  {
    v12 = DWORD1(v20);
    result = sub_1002F178C(58, 0xE100000000000000, &v19 + 1, DWORD1(v20));
    if (v13)
    {
      v14._countAndFlagsBits = 58;
      v14._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v12);
    }

    if (__CFADD__(DWORD1(v20), result))
    {
      goto LABEL_13;
    }

    DWORD1(v20) += result;
    result = a2(v4);
  }

  if (DWORD1(v20) < v20)
  {
    __break(1u);
  }

  else if (DWORD2(v20) - (BYTE14(v20) | (WORD6(v20) << 8)) >= DWORD1(v20))
  {
    v23[0] = *(&v19 + 1);
    v23[1] = v20;
    v24 = DWORD2(v20);
    v25 = WORD6(v20);
    v26 = BYTE14(v20);
    v27 = v20;
    v28 = DWORD1(v20);
    v15 = DWORD1(v20) - v20;
    *&v17[0] = 0;
    *(&v17[0] + 1) = 0xE000000000000000;

    sub_1004A5874(v15);
    sub_1003BB2E4(v23, v17);
    sub_1003A52D0(v23);
    v16 = *&v17[0];
    v17[0] = v19;
    v17[1] = v20;
    v17[2] = v21;
    v18 = v22;
    sub_1003E5C94(v17);
    return v16;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1004395B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A49D4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004A48E4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1004A48B4();
  sub_1000EADE8();
  sub_1004A4964();
  sub_1004390D4(v7, &type metadata accessor for OSLogStringAlignment);
  sub_1004390D4(v11, &type metadata accessor for OSLogPrivacy);
}

uint64_t sub_100439734(uint64_t (*a1)(unint64_t))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3();
  return sub_10043938C(v5, a1);
}

uint64_t sub_1004397E8(void (*a1)(__n128), uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(__int128 *))
{
  v7 = sub_10000C9C0(a3, a4);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v14[-v10];
  a1(v9);
  v15 = v11;
  v12 = sub_1003E5B04(a5);
  sub_100121C40(v11);
  return v12;
}

uint64_t sub_1004398F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100439940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[1] = a4;
  v6 = sub_1004A48E4();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004A49D4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v31 = sub_1004A49F4();
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v18 = v31;
  v19 = v15 & 1;
  v20 = BYTE1(v15) & 1;
  v21 = BYTE2(v15) & 1;
  v22 = v16;
  v23 = v17;
  sub_1000EADE8();
  sub_1004390BC();
  v25[2] = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  v30 = v23;
  sub_1004A4994();
  sub_1004390D4(v9, &type metadata accessor for OSLogPrivacy);
  sub_1004390D4(v13, &type metadata accessor for OSLogStringAlignment);
  sub_1000B5158(v22);
}

uint64_t sub_100439B30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = v1();
  if ((result & &_mh_execute_header) != 0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100439B80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100439BC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = v1();
  if ((result & &_mh_execute_header) != 0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100439C18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100439CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[1] = a4;
  v6 = sub_1004A48E4();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004A49D4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v31 = sub_100439C40();
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v18 = v31;
  v19 = v15 & 1;
  v20 = BYTE1(v15) & 1;
  v21 = BYTE2(v15) & 1;
  v22 = v16;
  v23 = v17;
  sub_1000EADE8();
  sub_1004390BC();
  v25[2] = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  v30 = v23;
  sub_1004A49A4();
  sub_1004390D4(v9, &type metadata accessor for OSLogPrivacy);
  sub_1004390D4(v13, &type metadata accessor for OSLogStringAlignment);
  sub_1000B5158(v22);
}

uint64_t sub_100439EA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = v1();
  if (v4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100439EF0(uint64_t (*a1)(void))
{
  v1 = a1();
  v3 = v2;
  v5 = v4;
  v6 = SectionSpecifier.debugDescription.getter(v1, v2, v4);

  sub_1000511A4(v3, v5);
  return v6;
}

uint64_t sub_100439F94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1();
  v4 = SectionSpecifier.Part.debugDescription.getter(v3);

  return v4;
}

uint64_t sub_10043A004(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(v1 + 16);
  if (v2)
  {
    v58 = _swiftEmptyArrayStorage;
    sub_100134BC4(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v37 = v2 - 1;
    for (i = 32; ; i += 8)
    {
      v5 = *(v1 + i);
      v56 = 91;
      v57 = 0xE100000000000000;
      v6 = qword_1005DB9D0;

      if (v6 != -1)
      {
        swift_once();
      }

      v7 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
      v8 = qword_1005DE390;
      v9 = word_1005DE39C;
      v10 = byte_1005DE39E;

      *&v11 = *(&qword_1005DE390 + 4);
      v38 = v11;
      result = sub_1003DBA20(_swiftEmptyArrayStorage);
      LOBYTE(v52) = 0;
      BYTE5(v52) = 0;
      *(&v52 + 1) = 65537;
      *(&v52 + 1) = v7;
      LODWORD(v53) = v8;
      *(&v53 + 4) = v38;
      WORD6(v53) = v9;
      BYTE14(v53) = v10;
      *&v54 = result;
      *(&v54 + 1) = v13;
      v55 = v14;
      v51 = v5;
      v15 = v5[2];
      if (v15)
      {
        v16 = v38;
        result = sub_1002F178C(0, 0xE000000000000000, &v52 + 1, v38);
        if (v17)
        {
          v18._countAndFlagsBits = 0;
          v18._object = 0xE000000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
        }

        if (__CFADD__(DWORD1(v53), result))
        {
          goto LABEL_26;
        }

        DWORD1(v53) += result;
      }

      __chkstk_darwin(result);
      v36[2] = sub_1004945DC;
      v36[3] = 0;
      v36[4] = &v52;
      v36[5] = &v51;
      v36[6] = 46;
      v36[7] = 0xE100000000000000;
      result = sub_100452D20(0, sub_10043BF1C, v36, v5);
      v19 = DWORD1(v53);
      if (v15)
      {
        result = sub_1002F178C(0, 0xE000000000000000, &v52 + 1, DWORD1(v53));
        if (v20)
        {
          v21._countAndFlagsBits = 0;
          v21._object = 0xE000000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
        }

        LODWORD(v19) = DWORD1(v53) + result;
        if (__CFADD__(DWORD1(v53), result))
        {
          goto LABEL_27;
        }

        DWORD1(v53) += result;
      }

      v22 = v53;
      if (v19 < v53)
      {
        break;
      }

      if (DWORD2(v53) - (BYTE14(v53) | (WORD6(v53) << 8)) < v19)
      {
        goto LABEL_25;
      }

      v23 = v1;
      v41 = *(&v52 + 1);
      v42 = v53;
      v43 = v19;
      v44 = DWORD2(v53);
      v45 = WORD6(v53);
      v46 = BYTE14(v53);
      v47 = v53;
      v48 = v19;
      v24 = v19 - v53;
      v39 = 0;
      v40 = 0xE000000000000000;

      sub_1004A5874(v24);
      v25 = v41;
      v26 = v45;
      v27 = v46;
      swift_beginAccess();
      sub_10049DE0C(*(v25 + 24) + (v27 | (v26 << 8)) + v22, v24, &v39);
      sub_1003A52D0(&v41);
      v28 = v39;
      v29 = v40;
      v49[0] = v52;
      v49[1] = v53;
      v49[2] = v54;
      v50 = v55;
      sub_1003E5C94(v49);
      v59._countAndFlagsBits = v28;
      v59._object = v29;
      sub_1004A5994(v59);

      v60._countAndFlagsBits = 93;
      v60._object = 0xE100000000000000;
      sub_1004A5994(v60);

      v30 = v56;
      v31 = v57;
      v58 = v3;
      v33 = v3[2];
      v32 = v3[3];
      if (v33 >= v32 >> 1)
      {
        sub_100134BC4((v32 > 1), v33 + 1, 1);
        v3 = v58;
      }

      v3[2] = v33 + 1;
      v34 = &v3[2 * v33];
      v34[4] = v30;
      v34[5] = v31;
      v1 = v23;
      if (!v37)
      {

        goto LABEL_23;
      }

      --v37;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
LABEL_23:
    *&v52 = v3;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v35 = sub_1004A5614();

    return v35;
  }

  return result;
}

uint64_t sub_10043A4AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10043A4F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t OSLogInterpolation.appendInterpolation(_:)(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1004A49D4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A48E4();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = a1(v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v13;
  v18[4] = v15;
  v18[5] = v17;
  sub_1004A48B4();
  sub_1000EADE8();
  sub_1004A4964();
  sub_1004390D4(v5, &type metadata accessor for OSLogStringAlignment);
  sub_1004390D4(v9, &type metadata accessor for OSLogPrivacy);

  v22._countAndFlagsBits = sub_1004A58F4("/", 1uLL, 1);
  sub_1004A49B4(v22);

  v19 = swift_allocObject();
  v19[2] = v11;
  v19[3] = v13;
  v19[4] = v15;
  v19[5] = v17;
  sub_1004A48B4();
  sub_1000EADE8();
  sub_1004A4964();
  sub_1004390D4(v5, &type metadata accessor for OSLogStringAlignment);
  sub_1004390D4(v9, &type metadata accessor for OSLogPrivacy);
}

uint64_t sub_10043A7CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10043A83C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_1004A49D4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004A48E4();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21._countAndFlagsBits = sub_1004A58F4(a3, 1uLL, 1);
  sub_1004A49B4(v21);

  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  sub_1004A48B4();
  sub_1000EADE8();
  sub_1004A4964();
  sub_1004390D4(v13, &type metadata accessor for OSLogStringAlignment);
  sub_1004390D4(v17, &type metadata accessor for OSLogPrivacy);

  v22._countAndFlagsBits = sub_1004A58F4(a6, 1uLL, 1);
  sub_1004A49B4(v22);
}

uint64_t sub_10043AA68(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100134BC4(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];

      if (v7 >= v6 >> 1)
      {
        sub_100134BC4((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v7];
      v8[4] = v5;
      v8[5] = v4;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  v9 = sub_1004A5614();

  return v9;
}

uint64_t sub_10043ABD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1();
  v4 = ResponseTextCode.debugDescription.getter(v3);
  sub_100011160(v3);
  return v4;
}

uint64_t sub_10043AC90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A48C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A48E4();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004A49D4();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_1004A49C4();
  (*(v5 + 104))(v8, enum case for OSLogPrivacy._MailMask.mailbox(_:), v4);
  sub_1004A48A4();
  (*(v5 + 8))(v8, v4);
  sub_1004A4964();
  sub_1004390D4(v12, &type metadata accessor for OSLogPrivacy);
  sub_1004390D4(v16, &type metadata accessor for OSLogStringAlignment);
}

uint64_t sub_10043AEA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1())
  {
    return sub_1004A5824();
  }

  else
  {
    return 8425698;
  }
}

uint64_t sub_10043B560()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1();

  return v3;
}

uint64_t sub_10043B598()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1();

  return HIWORD(v3);
}

uint64_t sub_10043BCFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10043BD24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1();
  return v3;
}

uint64_t sub_10043BD54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1();

  return v3;
}

uint64_t sub_10043BD8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1();
  return v3;
}

uint64_t sub_10043BDBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1();
  return sub_1004A5824();
}

Swift::Int MailboxLoggingCounter.hashValue.getter(Swift::UInt16 a1)
{
  sub_1004A6E94();
  sub_1004A6ED4(a1);
  return sub_1004A6F14();
}

unint64_t sub_10043BE90()
{
  result = qword_1005DCAA0;
  if (!qword_1005DCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCAA0);
  }

  return result;
}

uint64_t sub_10043C008(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE800000000000000;
    v12 = 0xE700000000000000;
    v13 = 0x5458454E444955;
    if (a1 != 2)
    {
      v13 = 0x44494C4156444955;
      v12 = 0xEB00000000595449;
    }

    v14 = 0x544E45434552;
    if (a1)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v14 = 0x534547415353454DLL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x4D54534548474948;
    v4 = 0xED0000514553444FLL;
    v5 = 0x494C444E45505041;
    v6 = 0xEB0000000054494DLL;
    if (a1 != 7)
    {
      v5 = 0x49584F424C49414DLL;
      v6 = 0xE900000000000044;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xE600000000000000;
    v8 = 0x4E4545534E55;
    if (a1 != 4)
    {
      v8 = 1163544915;
      v7 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v15 = 0x44494C4156444955;
        v16 = 5854281;
LABEL_45:
        v17 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v9 != v15)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v17 = 0xE700000000000000;
      if (v9 != 0x5458454E444955)
      {
        goto LABEL_52;
      }
    }

    else if (a2)
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x544E45434552)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v17 = 0xE800000000000000;
      if (v9 != 0x534547415353454DLL)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x4E4545534E55)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v17 = 0xE400000000000000;
      if (v9 != 1163544915)
      {
LABEL_52:
        v18 = sub_1004A6D34();
        goto LABEL_53;
      }
    }
  }

  else
  {
    if (a2 != 6)
    {
      if (a2 != 7)
      {
        v17 = 0xE900000000000044;
        if (v9 != 0x49584F424C49414DLL)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v15 = 0x494C444E45505041;
      v16 = 5523789;
      goto LABEL_45;
    }

    v17 = 0xED0000514553444FLL;
    if (v9 != 0x4D54534548474948)
    {
      goto LABEL_52;
    }
  }

LABEL_50:
  if (v10 != v17)
  {
    goto LABEL_52;
  }

  v18 = 1;
LABEL_53:

  return v18 & 1;
}

uint64_t sub_10043C2DC()
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_10043C43C(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v20 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), *(v1 + 20));
    if (v6)
    {
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
    }

    v8 = result;
    v9 = *(v2 + 20);
    v10 = __CFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      goto LABEL_17;
    }

    *(v2 + 20) = v11;
  }

  else
  {
    v8 = 0;
  }

  __chkstk_darwin(result);
  v19[2] = sub_10043E1C0;
  v19[3] = 0;
  v19[4] = v2;
  v19[5] = &v20;
  v19[6] = 32;
  v19[7] = 0xE100000000000000;
  result = sub_100452370(0, sub_10043E1A8, v19, v3);
  v12 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    result += v8;
    return result;
  }

  v13 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
  if (v14)
  {
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v2 + 20);
  v10 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v10)
  {
    goto LABEL_18;
  }

  *(v2 + 20) = v17;
  v18 = __OFADD__(v12, result);
  result += v12;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

void __swiftcall MailboxStatus.init(messageCount:recentCount:nextUID:uidValidity:unseenCount:size:highestModificationSequence:appendLimit:mailboxID:)(NIOIMAPCore2::MailboxStatus *__return_ptr retstr, Swift::Int_optional messageCount, Swift::Int_optional recentCount, NIOIMAPCore2::UID_optional nextUID, NIOIMAPCore2::UIDValidity_optional uidValidity, Swift::Int_optional unseenCount, Swift::Int_optional size, NIOIMAPCore2::ModificationSequenceValue_optional highestModificationSequence, Swift::Int_optional appendLimit, NIOIMAPCore2::MailboxID_optional mailboxID)
{
  v15[184] = messageCount.is_nil;
  v15[176] = recentCount.is_nil;
  v15[168] = nextUID.is_nil;
  v15[160] = uidValidity.is_nil;
  v15[152] = unseenCount.is_nil;
  v15[144] = size.is_nil;
  v15[136] = highestModificationSequence.is_nil;
  v15[128] = appendLimit.is_nil;
  *&v16 = messageCount.value;
  BYTE8(v16) = messageCount.is_nil;
  *&v17 = recentCount.value;
  BYTE8(v17) = recentCount.is_nil;
  HIDWORD(v17) = nextUID.value.rawValue;
  LOBYTE(v18) = nextUID.is_nil;
  DWORD1(v18) = uidValidity.value.rawValue;
  BYTE8(v18) = uidValidity.is_nil;
  *&v19 = unseenCount.value;
  BYTE8(v19) = unseenCount.is_nil;
  v20.objectID.rawValue._countAndFlagsBits = size.value;
  LOBYTE(v20.objectID.rawValue._object) = size.is_nil;
  *&v21 = highestModificationSequence.value.value;
  BYTE8(v21) = highestModificationSequence.is_nil;
  *&v22 = appendLimit.value;
  BYTE8(v22) = appendLimit.is_nil;
  value = mailboxID.value;
  v24 = messageCount.value;
  is_nil = messageCount.is_nil;
  v26 = recentCount.value;
  v27 = recentCount.is_nil;
  rawValue = nextUID.value.rawValue;
  v29 = nextUID.is_nil;
  v30 = uidValidity.value.rawValue;
  v31 = uidValidity.is_nil;
  v32 = unseenCount.value;
  v33 = unseenCount.is_nil;
  v34 = size.value;
  v35 = size.is_nil;
  v36 = highestModificationSequence.value.value;
  v37 = highestModificationSequence.is_nil;
  v38 = appendLimit.value;
  v39 = appendLimit.is_nil;
  countAndFlagsBits = mailboxID.value.objectID.rawValue._countAndFlagsBits;
  object = mailboxID.value.objectID.rawValue._object;
  sub_1000CB8B8(&v16, v15);
  sub_10009A0FC(&v24);
  v11 = v21;
  retstr->mailboxID.value = v20;
  *&retstr->mailboxID.is_nil = v11;
  v12 = value;
  *(&retstr[1].recentCount.value + 6) = v22;
  *(&retstr[1].unseenCount.value + 3) = v12;
  v13 = v17;
  *&retstr->messageCount.value = v16;
  *(&retstr->recentCount.value + 7) = v13;
  v14 = v19;
  *(&retstr->unseenCount.value + 4) = v18;
  *(&retstr->highestModificationSequence.value.value + 2) = v14;
}

uint64_t MailboxAttribute.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x534547415353454DLL;
    v6 = 0x5458454E444955;
    if (a1 != 2)
    {
      v6 = 0x44494C4156444955;
    }

    if (a1)
    {
      v5 = 0x544E45434552;
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
    v1 = 0x4D54534548474948;
    v2 = 0x494C444E45505041;
    if (a1 != 7)
    {
      v2 = 0x49584F424C49414DLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x4E4545534E55;
    if (a1 != 4)
    {
      v3 = 1163544915;
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

Swift::Int sub_10043C850()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_10043C2DC();
  return sub_1004A6F14();
}

Swift::Int sub_10043C8A0()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_10043C2DC();
  return sub_1004A6F14();
}

uint64_t sub_10043C8E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s12NIOIMAPCore216MailboxAttributeO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10043C914@<X0>(uint64_t *a1@<X8>)
{
  result = MailboxAttribute.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t MailboxStatus.messageCount.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t SearchCorrelator.uidValidity.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t MailboxStatus.uidValidity.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = BYTE4(result) & 1;
  return result;
}

uint64_t MailboxStatus.size.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t MailboxStatus.size.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t MailboxStatus.highestModificationSequence.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t MailboxStatus.highestModificationSequence.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t MailboxStatus.appendLimit.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t MailboxStatus.appendLimit.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

void MailboxStatus.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v1 = *v0;
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v1);
  }

  if (*(v0 + 24) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v2 = *(v0 + 16);
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v2);
  }

  if (*(v0 + 32) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v3 = *(v0 + 28);
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v3);
  }

  if (*(v0 + 40) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v4 = *(v0 + 36);
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v4);
  }

  if (*(v0 + 56) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v5 = *(v0 + 48);
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v5);
  }

  if (*(v0 + 72) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v6 = *(v0 + 64);
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v6);
  }

  if (*(v0 + 88) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v7 = *(v0 + 80);
    sub_1004A6EC4(1u);
    sub_1004A6EF4(v7);
  }

  if (*(v0 + 104) != 1)
  {
    v9 = *(v0 + 96);
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v9);
    if (*(v0 + 120))
    {
      goto LABEL_24;
    }

LABEL_28:
    sub_1004A6EC4(0);
    return;
  }

  sub_1004A6EC4(0);
  if (!*(v0 + 120))
  {
    goto LABEL_28;
  }

LABEL_24:
  v8 = *(v0 + 112);
  sub_1004A6EC4(1u);

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int MailboxStatus.hashValue.getter()
{
  sub_1004A6E94();
  MailboxStatus.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_10043CC70()
{
  sub_1004A6E94();
  MailboxStatus.hash(into:)();
  return sub_1004A6F14();
}

BOOL sub_10043CCAC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s12NIOIMAPCore213MailboxStatusV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14);
}

uint64_t sub_10043CD20(unsigned __int8 a1)
{
  v2 = v1;
  if (a1 <= 3u)
  {
    v11 = 0xE800000000000000;
    v12 = 0x534547415353454DLL;
    v13 = 0xE700000000000000;
    v14 = 0x5458454E444955;
    if (a1 != 2)
    {
      v14 = 0x44494C4156444955;
      v13 = 0xEB00000000595449;
    }

    if (a1)
    {
      v12 = 0x544E45434552;
      v11 = 0xE600000000000000;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v14;
    }

    if (a1 <= 1u)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0xED0000514553444FLL;
    v4 = 0x4D54534548474948;
    v5 = 0xEB0000000054494DLL;
    v6 = 0x494C444E45505041;
    if (a1 != 7)
    {
      v6 = 0x49584F424C49414DLL;
      v5 = 0xE900000000000044;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE600000000000000;
    v8 = 0x4E4545534E55;
    if (a1 != 4)
    {
      v8 = 1163544915;
      v7 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (a1 <= 5u)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  v15 = *(v1 + 20);
  v16 = sub_1002F178C(v9, v10, (v1 + 8), *(v1 + 20));
  if (v17)
  {
    v18._countAndFlagsBits = v9;
    v18._object = v10;
    v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
  }

  v19 = v16;

  v21 = *(v2 + 20);
  v22 = __CFADD__(v21, v19);
  v23 = v21 + v19;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 20) = v23;
    return v19;
  }

  return result;
}

uint64_t sub_10043CED8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x20535554415453, 0xE700000000000000, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 0x20535554415453;
    v7._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_28;
  }

  *(v1 + 20) = v10;
  v36 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), v10);
    if (v12)
    {
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v1 + 20);
    LODWORD(v10) = v15 + result;
    if (__CFADD__(v15, result))
    {
      goto LABEL_35;
    }

    *(v1 + 20) = v10;
  }

  else
  {
    v14 = 0;
  }

  result = sub_1002F178C(40, 0xE100000000000000, (v1 + 8), v10);
  if (v16)
  {
    v17._countAndFlagsBits = 40;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v10);
  }

  v18 = *(v1 + 20);
  v19 = __CFADD__(v18, result);
  v20 = v18 + result;
  if (v19)
  {
    goto LABEL_29;
  }

  *(v1 + 20) = v20;
  v21 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __chkstk_darwin(result);
  v35[2] = sub_10043E1C0;
  v35[3] = 0;
  v35[4] = v2;
  v35[5] = &v36;
  v35[6] = 32;
  v35[7] = 0xE100000000000000;
  result = sub_100452370(0, sub_10043E138, v35, a1);
  v22 = v21 + result;
  if (__OFADD__(v21, result))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v23 = *(v2 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v24)
  {
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v2 + 20);
  v27 = (v26 + result);
  if (__CFADD__(v26, result))
  {
    goto LABEL_32;
  }

  *(v2 + 20) = v27;
  v28 = __OFADD__(v22, result);
  v29 = v22 + result;
  if (v28)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v11)
  {
    v34 = v29;
    goto LABEL_24;
  }

  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), v27);
  if (v30)
  {
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v27);
  }

  v32 = *(v2 + 20);
  v19 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v19)
  {
    goto LABEL_36;
  }

  *(v2 + 20) = v33;
  v34 = v29 + result;
  if (__OFADD__(v29, result))
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_24:
  result = v8 + v34;
  if (__OFADD__(v8, v34))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

uint64_t sub_10043D17C(__int128 *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = _swiftEmptyArrayStorage;
  KeyPath = swift_getKeyPath();
  sub_10043D558(KeyPath, 0x534547415353454DLL, 0xE800000000000000, a1, v4);

  v6 = swift_getKeyPath();
  sub_10043D558(v6, 0x544E45434552, 0xE600000000000000, a1, v4);

  v7 = swift_getKeyPath();
  sub_10043D6F0(v7, 0x5458454E444955, 0xE700000000000000, a1, v4);

  v8 = swift_getKeyPath();
  sub_10043D6F0(v8, 0x44494C4156444955, 0xEB00000000595449, a1, v4);

  v9 = swift_getKeyPath();
  sub_10043D558(v9, 0x4E4545534E55, 0xE600000000000000, a1, v4);

  v10 = swift_getKeyPath();
  sub_10043D558(v10, 1163544915, 0xE400000000000000, a1, v4);

  v11 = swift_getKeyPath();
  sub_10043D88C(v11, 0x4D54534548474948, 0xED0000514553444FLL, a1, v4);

  v12 = swift_getKeyPath();
  sub_10043D558(v12, 0x494C444E45505041, 0xEB0000000054494DLL, a1, v4);

  v13 = swift_getKeyPath();
  sub_10043DA24(v13, 0x49584F424C49414DLL, 0xE900000000000044, a1, v4);

  result = swift_beginAccess();
  v32 = *(v4 + 16);
  v15 = v32;
  if (*(v32 + 16))
  {
    v16 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), *(v1 + 20));
    if (v17)
    {
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
    }

    v19 = result;
    v20 = *(v2 + 20);
    v21 = __CFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      goto LABEL_17;
    }

    *(v2 + 20) = v22;
  }

  else
  {
    v19 = 0;
  }

  __chkstk_darwin(result);
  v31[2] = sub_10043DBC4;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_100452DD0(0, sub_10043E114, v31, v15);
  v23 = v19 + result;
  if (__OFADD__(v19, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (!*(v15 + 16))
  {

    return v23;
  }

  v24 = *(v2 + 20);
  v25 = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
  if (v26)
  {
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v24);
  }

  v28 = v25;

  v29 = *(v2 + 20);
  v21 = __CFADD__(v29, v28);
  v30 = v29 + v28;
  if (v21)
  {
    goto LABEL_18;
  }

  *(v2 + 20) = v30;
  result = v23 + v28;
  if (__OFADD__(v23, v28))
  {
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10043D558(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v19 = a4[4];
  v20 = a4[5];
  v21 = a4[6];
  v22 = a4[7];
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a4[3];
  sub_1000CB8B8(a4, v23);
  swift_getAtKeyPath();
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v23[7] = v22;
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  result = sub_10009A0FC(v23);
  if ((v14 & 1) == 0)
  {

    sub_1004A6934();
    swift_beginAccess();
    v9 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_100461F9C(0, v9[2] + 1, 1, v9);
      *(a5 + 16) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_100461F9C((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[4 * v12];
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = 0;
    v13[7] = 0xE000000000000000;
    *(a5 + 16) = v9;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10043D6F0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v19 = a4[4];
  v20 = a4[5];
  v21 = a4[6];
  v22 = a4[7];
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a4[3];
  sub_1000CB8B8(a4, v23);
  swift_getAtKeyPath();
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v23[7] = v22;
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  result = sub_10009A0FC(v23);
  if ((v14 & 1) == 0)
  {

    sub_1004A6934();
    swift_beginAccess();
    v9 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_100461F9C(0, v9[2] + 1, 1, v9);
      *(a5 + 16) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_100461F9C((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[4 * v12];
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = 0;
    v13[7] = 0xE000000000000000;
    *(a5 + 16) = v9;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10043D88C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v19 = a4[4];
  v20 = a4[5];
  v21 = a4[6];
  v22 = a4[7];
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a4[3];
  sub_1000CB8B8(a4, v23);
  swift_getAtKeyPath();
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v23[7] = v22;
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  result = sub_10009A0FC(v23);
  if ((v14 & 1) == 0)
  {

    sub_1004A6934();
    swift_beginAccess();
    v9 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_100461F9C(0, v9[2] + 1, 1, v9);
      *(a5 + 16) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_100461F9C((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[4 * v12];
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = 0;
    v13[7] = 0xE000000000000000;
    *(a5 + 16) = v9;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10043DA24(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v19 = a4[4];
  v20 = a4[5];
  v21 = a4[6];
  v22 = a4[7];
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a4[3];
  sub_1000CB8B8(a4, v23);
  swift_getAtKeyPath();
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v23[7] = v22;
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  result = sub_10009A0FC(v23);
  if (v14)
  {

    sub_1004A6934();
    swift_beginAccess();
    v9 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_100461F9C(0, v9[2] + 1, 1, v9);
      *(a5 + 16) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_100461F9C((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[4 * v12];
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = 0;
    v13[7] = 0xE000000000000000;
    *(a5 + 16) = v9;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10043DBC4(Swift::String *a1, uint64_t a2)
{
  countAndFlagsBits = a1[1]._countAndFlagsBits;
  object = a1[1]._object;
  v13 = *a1;

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  sub_1004A5994(v14);
  v15._countAndFlagsBits = countAndFlagsBits;
  v15._object = object;
  sub_1004A5994(v15);
  v5 = *(a2 + 20);
  v6 = sub_1002F178C(v13._countAndFlagsBits, v13._object, (a2 + 8), *(a2 + 20));
  if (v7)
  {
    v6 = ByteBuffer._setStringSlowpath(_:at:)(v13, v5);
  }

  v8 = v6;

  v10 = *(a2 + 20);
  v11 = __CFADD__(v10, v8);
  v12 = v10 + v8;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 20) = v12;
    return v8;
  }

  return result;
}

uint64_t sub_10043DC8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v11 = *a1;
  v12 = *(a2 + 32);
  v13 = *a6;
  v14 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v14;
  v17 = v12;
  result = sub_100492644(v11, v16, a3, a4, a5, v13, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

BOOL _s12NIOIMAPCore213MailboxStatusV23__derived_struct_equalsySbAC_ACtFZ_0(_BOOL8 result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(result + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*result != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(result + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 32);
  if (*(result + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 28) != *(result + 28))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 40);
  if (*(result + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 36) != *(a2 + 36))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a2 + 56);
  if (*(result + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 48) != *(a2 + 48))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = *(a2 + 72);
  if (*(result + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 64) != *(a2 + 64))
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  v8 = *(a2 + 88);
  if (*(result + 88))
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      return 0;
    }

LABEL_43:
    v11 = *(a2 + 104);
    if (*(result + 104))
    {
      if (!*(a2 + 104))
      {
        return 0;
      }
    }

    else
    {
      if (*(result + 96) != *(a2 + 96))
      {
        v11 = 1;
      }

      if (v11)
      {
        return 0;
      }
    }

    v12 = *(result + 120);
    v13 = *(a2 + 120);
    if (v12)
    {
      return v13 && (*(result + 112) == *(a2 + 112) && v12 == v13 || (sub_1004A6D34() & 1) != 0);
    }

    return !v13;
  }

  if (*(a2 + 88))
  {
    return 0;
  }

  v9 = *(result + 80);
  v10 = *(a2 + 80);
  if (((v10 | v9) & 0x8000000000000000) == 0)
  {
    if (v10 != v9)
    {
      return 0;
    }

    goto LABEL_43;
  }

  __break(1u);
  return result;
}

uint64_t _s12NIOIMAPCore216MailboxAttributeO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005BB688;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10043DED8()
{
  result = qword_1005DCAA8;
  if (!qword_1005DCAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCAA8);
  }

  return result;
}

unint64_t sub_10043DF30()
{
  result = qword_1005DCAB0;
  if (!qword_1005DCAB0)
  {
    sub_10000DEFC(&qword_1005D7E20, &qword_100506180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCAB0);
  }

  return result;
}

unint64_t sub_10043DF98()
{
  result = qword_1005DCAB8;
  if (!qword_1005DCAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCAB8);
  }

  return result;
}

uint64_t sub_10043DFFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 120);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10043E058(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2;
    }
  }

  return result;
}

uint64_t sub_10043E0DC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10043E150@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1004918F8(*a1, *a2, *(a2 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void MailboxData.hash(into:)(uint64_t a1)
{
  v3 = v1[7];
  v41[6] = v1[6];
  v41[7] = v3;
  v41[8] = v1[8];
  v4 = v1[3];
  v41[2] = v1[2];
  v41[3] = v4;
  v5 = v1[5];
  v41[4] = v1[4];
  v41[5] = v5;
  v6 = v1[1];
  v41[0] = *v1;
  v41[1] = v6;
  v7 = sub_1003045D0(v41);
  v8 = sub_1003045DC(v41);
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 == 5)
      {
        v30 = *(v8 + 8);
        v31 = *(v8 + 96);
        v46 = *(v8 + 80);
        v47 = v31;
        v32 = *(v8 + 128);
        v48 = *(v8 + 112);
        v49 = v32;
        v33 = *(v8 + 32);
        v42 = *(v8 + 16);
        v43 = v33;
        v34 = *(v8 + 64);
        v44 = *(v8 + 48);
        v45 = v34;
        sub_1004A6EB4(5uLL);
        sub_1004A6EB4(v30 | (v30 << 32));
        MailboxStatus.hash(into:)();
      }

      else
      {
        v9 = *v8;
        if (v7 == 6)
        {
          v10 = 6;
        }

        else
        {
          v10 = 7;
        }

        sub_1004A6EB4(v10);
        sub_1004A6EB4(v9);
      }

      return;
    }

    if (v7 == 8)
    {
      v35 = *v8;
      v36 = *(v8 + 8);
      v37 = *(v8 + 16);
      sub_1004A6EB4(8uLL);
      sub_1003AF0EC(a1, v35);
      sub_1003AF0EC(a1, v36);
      sub_1003AF0EC(a1, v37);
      return;
    }

    if (v7 != 9)
    {
      v40 = *(v8 + 16);
      v42 = *v8;
      v43 = v40;
      v44 = *(v8 + 32);
      sub_1004A6EB4(0xAuLL);
      UIDBatchesResponse.hash(into:)();
      return;
    }

    v18 = *v8;
    v17 = *(v8 + 8);
    sub_1004A6EB4(9uLL);
    v19 = *(v18 + 16);
    sub_1004A6EB4(v19);
    if (v19)
    {
      v20 = (v18 + 32);
      do
      {
        v21 = *v20++;
        sub_1004A6EB4(v21);
        --v19;
      }

      while (v19);
    }

    v22 = v17;
LABEL_35:
    sub_1004A6EF4(v22);
    return;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        v38 = *(v8 + 16);
        v42 = *v8;
        v43 = v38;
        v44 = *(v8 + 32);
        sub_1004A6EB4(4uLL);
        ExtendedSearchResponse.hash(into:)();
        return;
      }

      v12 = *v8;
      v11 = *(v8 + 8);
      v13 = *(v8 + 16);
      sub_1004A6EB4(3uLL);
      v14 = *(v12 + 16);
      sub_1004A6EB4(v14);
      if (v14)
      {
        v15 = (v12 + 32);
        do
        {
          v16 = *v15++;
          sub_1004A6EE4(v16);
          --v14;
        }

        while (v14);
      }

      if (v13)
      {
        sub_1004A6EC4(0);
        return;
      }

      sub_1004A6EC4(1u);
      v22 = v11;
      goto LABEL_35;
    }

    v28 = *(v8 + 16);
    v42 = *v8;
    v43 = v28;
    v44 = *(v8 + 32);
    v29 = 2;
LABEL_30:
    sub_1004A6EB4(v29);
    MailboxInfo.hash(into:)(a1);
    return;
  }

  if (v7)
  {
    v39 = *(v8 + 16);
    v42 = *v8;
    v43 = v39;
    v44 = *(v8 + 32);
    v29 = 1;
    goto LABEL_30;
  }

  v23 = *v8;
  sub_1004A6EB4(0);
  v24 = *(v23 + 16);
  sub_1004A6EB4(v24);
  if (v24)
  {
    v25 = (v23 + 40);
    do
    {
      v26 = *(v25 - 1);
      v27 = *v25;
      sub_1004A5834();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v25 += 2;
      --v24;
    }

    while (v24);
  }
}

Swift::Int MailboxData.hashValue.getter()
{
  sub_1004A6E94();
  MailboxData.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10043E538()
{
  sub_1004A6E94();
  MailboxData.hash(into:)(v1);
  return sub_1004A6F14();
}

uint64_t sub_10043E574(_OWORD *a1, __int128 *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v11[8] = a1[8];
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v12[8] = a2[8];
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  return _s12NIOIMAPCore211MailboxDataO21__derived_enum_equalsySbAC_ACtFZ_0(v11, v12) & 1;
}

void MailboxData.SearchSort.hash(into:)(uint64_t a1, uint64_t a2, Swift::UInt64 a3)
{
  v5 = *(a2 + 16);
  sub_1004A6EB4(v5);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      sub_1004A6EB4(v7);
      --v5;
    }

    while (v5);
  }

  sub_1004A6EF4(a3);
}

Swift::Int MailboxData.SearchSort.hashValue.getter(uint64_t a1, Swift::UInt64 a2)
{
  sub_1004A6E94();
  v4 = *(a1 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1004A6EB4(v6);
      --v4;
    }

    while (v4);
  }

  sub_1004A6EF4(a2);
  return sub_1004A6F14();
}

void sub_10043E6DC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(*v0 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      sub_1004A6EB4(v5);
      --v3;
    }

    while (v3);
  }

  sub_1004A6EF4(v1);
}

Swift::Int sub_10043E738()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1004A6E94();
  v3 = *(v2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      sub_1004A6EB4(v5);
      --v3;
    }

    while (v3);
  }

  sub_1004A6EF4(v1);
  return sub_1004A6F14();
}

uint64_t sub_10043E7C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v46 = *result;
  v4 = v46;
  if (v46[2])
  {
    v5 = *(a2 + 20);
    result = sub_1002F178C(32, 0xE100000000000000, (a2 + 8), *(a2 + 20));
    if (v6)
    {
      v7._countAndFlagsBits = 32;
      v7._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
    }

    v8 = result;
    v9 = *(a2 + 20);
    v10 = __CFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      goto LABEL_41;
    }

    *(a2 + 20) = v11;
  }

  else
  {
    v8 = 0;
  }

  __chkstk_darwin(result);
  v45[2] = sub_10043EAC4;
  v45[3] = 0;
  v45[4] = a2;
  v45[5] = &v46;
  v45[6] = 32;
  v45[7] = 0xE100000000000000;
  result = sub_100452D20(0, sub_10043BF1C, v45, v4);
  v12 = v8 + result;
  if (__OFADD__(v8, result))
  {
    goto LABEL_32;
  }

  if (v4[2])
  {
    v13 = *(a2 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, (a2 + 8), *(a2 + 20));
    if (v14)
    {
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
    }

    v16 = *(a2 + 20);
    v10 = __CFADD__(v16, result);
    v17 = v16 + result;
    if (v10)
    {
      goto LABEL_42;
    }

    *(a2 + 20) = v17;
    v18 = __OFADD__(v12, result);
    v12 += result;
    if (v18)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  v19 = *(a2 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (a2 + 8), *(a2 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(a2 + 20);
  v23 = (v22 + result);
  if (__CFADD__(v22, result))
  {
    goto LABEL_33;
  }

  *(a2 + 20) = v23;
  v24 = v12 + result;
  if (__OFADD__(v12, result))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  result = sub_1002F178C(0x20514553444F4D28, 0xE800000000000000, (a2 + 8), v23);
  if (v25)
  {
    v26._countAndFlagsBits = 0x20514553444F4D28;
    v26._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
  }

  v27 = *(a2 + 20);
  v10 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v10)
  {
    goto LABEL_35;
  }

  *(a2 + 20) = v28;
  v18 = __OFADD__(v24, result);
  v29 = v24 + result;
  if (v18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v46 = *(v3 + 8);
  v30 = sub_1004A6CE4();
  v32 = v31;
  v33 = *(a2 + 20);
  v34 = sub_1002F178C(v30, v31, (a2 + 8), *(a2 + 20));
  if (v35)
  {
    v36._countAndFlagsBits = v30;
    v36._object = v32;
    v34 = ByteBuffer._setStringSlowpath(_:at:)(v36, v33);
  }

  v37 = v34;

  v38 = *(a2 + 20);
  v39 = (v38 + v37);
  if (__CFADD__(v38, v37))
  {
    goto LABEL_37;
  }

  *(a2 + 20) = v39;
  v40 = v29 + v37;
  if (__OFADD__(v29, v37))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  result = sub_1002F178C(41, 0xE100000000000000, (a2 + 8), v38 + v37);
  if (v41)
  {
    v42._countAndFlagsBits = 41;
    v42._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v42, v39);
  }

  v43 = *(a2 + 20);
  v10 = __CFADD__(v43, result);
  v44 = v43 + result;
  if (v10)
  {
    goto LABEL_39;
  }

  *(a2 + 20) = v44;
  v18 = __OFADD__(v40, result);
  result += v40;
  if (v18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  return result;
}

uint64_t sub_10043EAC4(uint64_t *a1, uint64_t a2)
{
  v15 = *a1;
  v3 = sub_1004A6CE4();
  v5 = v4;
  v6 = *(a2 + 20);
  v7 = sub_1002F178C(v3, v4, (a2 + 8), *(a2 + 20));
  if (v8)
  {
    v9._countAndFlagsBits = v3;
    v9._object = v5;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = v7;

  v12 = *(a2 + 20);
  v13 = __CFADD__(v12, v10);
  v14 = v12 + v10;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 20) = v14;
    return v10;
  }

  return result;
}

uint64_t sub_10043EB74(_OWORD *a1)
{
  v3 = a1[7];
  v66[6] = a1[6];
  v66[7] = v3;
  v66[8] = a1[8];
  v4 = a1[3];
  v66[2] = a1[2];
  v66[3] = v4;
  v5 = a1[5];
  v66[4] = a1[4];
  v66[5] = v5;
  v6 = a1[1];
  v66[0] = *a1;
  v66[1] = v6;
  LODWORD(v7) = sub_1003045D0(v66);
  result = sub_1003045DC(v66);
  if (v7 > 4)
  {
    if (v7 > 7)
    {
      if (v7 == 8)
      {
        return sub_10046002C(*result, *(result + 8), *(result + 16));
      }

      if (v7 != 9)
      {
        v64 = *(result + 16);
        v67 = *result;
        v68 = v64;
        v69 = *(result + 32);
        return sub_1004A0994(&v67);
      }

      v67 = *result;
      v19 = *(v1 + 20);
      result = sub_1002F178C(0x484352414553, 0xE600000000000000, (v1 + 8), *(v1 + 20));
      if (v20)
      {
        v21._countAndFlagsBits = 0x484352414553;
        v21._object = 0xE600000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
      }

      v7 = result;
      v22 = *(v1 + 20);
      v17 = __CFADD__(v22, result);
      v23 = v22 + result;
      if (v17)
      {
        goto LABEL_53;
      }

      *(v1 + 20) = v23;
      v65 = v67;
      v24 = sub_10043E7C4(&v65, v1);
      v25 = __OFADD__(v7, v24);
      result = v7 + v24;
      if (!v25)
      {
        return result;
      }

      __break(1u);
      goto LABEL_22;
    }

    if (v7 == 5)
    {
      goto LABEL_35;
    }

    v2 = v1;
    if (v7 != 6)
    {
      goto LABEL_44;
    }

    *&v65 = *result;
    *&v67 = sub_1004A6CE4();
    *(&v67 + 1) = v9;
    v75._countAndFlagsBits = 0x53545349584520;
    v75._object = 0xE700000000000000;
    sub_1004A5994(v75);
    v7 = *(&v67 + 1);
    v10 = v67;
    v11 = v1;
    v12 = *(v1 + 20);
    v13 = sub_1002F178C(v67, *(&v67 + 1), (v1 + 8), *(v1 + 20));
    if (v14)
    {
      v15._countAndFlagsBits = v10;
      v15._object = v7;
      v13 = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
      v11 = v1;
    }

    v1 = v13;

    v16 = *(v11 + 20);
    result = v1;
    v17 = __CFADD__(v16, v1);
    v18 = v16 + v1;
    if (!v17)
    {
      goto LABEL_47;
    }

    __break(1u);
  }

  if (v7 <= 1)
  {
LABEL_22:
    if (!v7)
    {
      v26 = *result;
      v27 = *(v1 + 20);
      result = sub_1002F178C(0x205347414C46, 0xE600000000000000, (v1 + 8), *(v1 + 20));
      if (v28)
      {
        v29._countAndFlagsBits = 0x205347414C46;
        v29._object = 0xE600000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v29, v27);
      }

      v30 = result;
      v31 = *(v1 + 20);
      v17 = __CFADD__(v31, result);
      v32 = v31 + result;
      if (v17)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        return result;
      }

      *(v1 + 20) = v32;
      v33 = sub_1003F0FE8(v26);
      v25 = __OFADD__(v30, v33);
      result = v30 + v33;
      if (!v25)
      {
        return result;
      }

      __break(1u);
LABEL_29:
      v34 = *(result + 16);
      v67 = *result;
      v68 = v34;
      v69 = *(result + 32);
      v35 = *(v1 + 20);
      result = sub_1002F178C(0x204255534CLL, 0xE500000000000000, (v1 + 8), *(v1 + 20));
      if (v36)
      {
        v37._countAndFlagsBits = 0x204255534CLL;
        v37._object = 0xE500000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v37, v35);
      }

      v38 = result;
      v39 = *(v1 + 20);
      v17 = __CFADD__(v39, result);
      v40 = v39 + result;
      if (!v17)
      {
        *(v1 + 20) = v40;
        v41 = sub_100444458(&v67);
        v25 = __OFADD__(v38, v41);
        result = v38 + v41;
        if (!v25)
        {
          return result;
        }

        __break(1u);
LABEL_35:
        v42 = *result;
        v43 = *(result + 8);
        v44 = *(result + 96);
        v71 = *(result + 80);
        v72 = v44;
        v45 = *(result + 128);
        v73 = *(result + 112);
        v74 = v45;
        v46 = *(result + 32);
        v67 = *(result + 16);
        v68 = v46;
        v47 = *(result + 64);
        v69 = *(result + 48);
        v70 = v47;
        return sub_10043F344(v42, v43, &v67);
      }

      __break(1u);
      goto LABEL_51;
    }

    v49 = *(result + 16);
    v67 = *result;
    v68 = v49;
    v69 = *(result + 32);
    v50 = *(v1 + 20);
    result = sub_1002F178C(0x205453494CLL, 0xE500000000000000, (v1 + 8), *(v1 + 20));
    if (v51)
    {
      v52._countAndFlagsBits = 0x205453494CLL;
      v52._object = 0xE500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v52, v50);
    }

    v53 = result;
    v54 = *(v1 + 20);
    v17 = __CFADD__(v54, result);
    v55 = v54 + result;
    if (v17)
    {
      goto LABEL_52;
    }

    *(v1 + 20) = v55;
    v56 = sub_100444458(&v67);
    v25 = __OFADD__(v53, v56);
    result = v53 + v56;
    if (!v25)
    {
      return result;
    }

    __break(1u);
LABEL_44:
    *&v65 = *result;
    *&v67 = sub_1004A6CE4();
    *(&v67 + 1) = v57;
    v76._countAndFlagsBits = 0x544E4543455220;
    v76._object = 0xE700000000000000;
    sub_1004A5994(v76);
    v58 = v67;
    v11 = v2;
    v59 = *(v2 + 20);
    v60 = sub_1002F178C(v67, *(&v67 + 1), (v2 + 8), *(v2 + 20));
    if (v61)
    {
      v60 = ByteBuffer._setStringSlowpath(_:at:)(v58, v59);
      v11 = v2;
    }

    v62 = v60;

    v63 = *(v11 + 20);
    result = v62;
    v17 = __CFADD__(v63, v62);
    v18 = v63 + v62;
    if (!v17)
    {
LABEL_47:
      *(v11 + 20) = v18;
      return result;
    }

    goto LABEL_54;
  }

  if (v7 == 2)
  {
    goto LABEL_29;
  }

  if (v7 == 3)
  {
    return sub_10043F020(*result, *(result + 8), *(result + 16));
  }

  v48 = *(result + 16);
  v67 = *result;
  v68 = v48;
  v69 = *(result + 32);
  return sub_1003EBA78(&v67);
}

uint64_t sub_10043F020(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(v3 + 20);
  result = sub_1002F178C(0x484352414553, 0xE600000000000000, (v3 + 8), *(v3 + 20));
  if (v10)
  {
    v11._countAndFlagsBits = 0x484352414553;
    v11._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = result;
  v13 = *(v3 + 20);
  v14 = (v13 + result);
  if (__CFADD__(v13, result))
  {
    goto LABEL_34;
  }

  *(v3 + 20) = v14;
  v53 = a1;
  v15 = *(a1 + 16);
  if (v15)
  {
    result = sub_1002F178C(32, 0xE100000000000000, (v3 + 8), v14);
    if (v16)
    {
      v17._countAndFlagsBits = 32;
      v17._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
    }

    v18 = result;
    v19 = *(v4 + 20);
    v20 = __CFADD__(v19, result);
    v21 = v19 + result;
    if (v20)
    {
      goto LABEL_38;
    }

    *(v4 + 20) = v21;
  }

  else
  {
    v18 = 0;
  }

  __chkstk_darwin(result);
  v52[2] = sub_10043F4B8;
  v52[3] = 0;
  v52[4] = v4;
  v52[5] = &v53;
  v52[6] = 32;
  v52[7] = 0xE100000000000000;
  result = sub_100452EBC(0, sub_10044007C, v52, a1);
  v22 = v18 + result;
  if (__OFADD__(v18, result))
  {
    goto LABEL_35;
  }

  if (!v15)
  {
    result = 0;
    v28 = v22;
    goto LABEL_16;
  }

  v23 = *(v4 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, (v4 + 8), *(v4 + 20));
  if (v24)
  {
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v4 + 20);
  v20 = __CFADD__(v26, result);
  v27 = v26 + result;
  if (v20)
  {
    goto LABEL_39;
  }

  *(v4 + 20) = v27;
  v28 = v22 + result;
  if (__OFADD__(v22, result))
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_16:
  v29 = v12 + v28;
  if (__OFADD__(v12, v28))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (a3)
  {
    v30 = 0;
  }

  else
  {
    v31 = *(v4 + 20);
    result = sub_1002F178C(0x514553444F4D2820, 0xE900000000000020, (v4 + 8), *(v4 + 20));
    if (v32)
    {
      v33._countAndFlagsBits = 0x514553444F4D2820;
      v33._object = 0xE900000000000020;
      result = ByteBuffer._setStringSlowpath(_:at:)(v33, v31);
    }

    v34 = result;
    v35 = *(v4 + 20);
    v36 = (v35 + result);
    if (__CFADD__(v35, result))
    {
      goto LABEL_40;
    }

    *(v4 + 20) = v36;
    v53 = a2;
    v37 = sub_1004A6CE4();
    v39 = v38;
    v40 = sub_1002F178C(v37, v38, (v4 + 8), v36);
    if (v41)
    {
      v42._countAndFlagsBits = v37;
      v42._object = v39;
      v40 = ByteBuffer._setStringSlowpath(_:at:)(v42, v36);
    }

    v43 = v40;

    v44 = *(v4 + 20);
    v45 = (v44 + v43);
    if (__CFADD__(v44, v43))
    {
      goto LABEL_41;
    }

    *(v4 + 20) = v45;
    v46 = __OFADD__(v34, v43);
    v47 = v34 + v43;
    if (v46)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    result = sub_1002F178C(41, 0xE100000000000000, (v4 + 8), v44 + v43);
    if (v48)
    {
      v49._countAndFlagsBits = 41;
      v49._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v49, v45);
    }

    v50 = *(v4 + 20);
    v20 = __CFADD__(v50, result);
    v51 = v50 + result;
    if (v20)
    {
      goto LABEL_43;
    }

    *(v4 + 20) = v51;
    v30 = v47 + result;
    if (__OFADD__(v47, result))
    {
LABEL_44:
      __break(1u);
      return result;
    }
  }

  result = v29 + v30;
  if (__OFADD__(v29, v30))
  {
    goto LABEL_37;
  }

  return result;
}

uint64_t sub_10043F344(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = *(v3 + 20);
  result = sub_1002F178C(0x20535554415453, 0xE700000000000000, (v3 + 8), *(v3 + 20));
  if (v8)
  {
    v9._countAndFlagsBits = 0x20535554415453;
    v9._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = result;
  v11 = *(v3 + 20);
  v12 = __CFADD__(v11, result);
  v13 = v11 + result;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(v3 + 20) = v13;
  result = sub_100441F24(a1);
  v14 = v10 + result;
  if (__OFADD__(v10, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = *(v3 + 20);
  result = sub_1002F178C(10272, 0xE200000000000000, (v3 + 8), *(v3 + 20));
  if (v16)
  {
    v17._countAndFlagsBits = 10272;
    v17._object = 0xE200000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = *(v3 + 20);
  v12 = __CFADD__(v18, result);
  v19 = v18 + result;
  if (v12)
  {
    goto LABEL_17;
  }

  *(v3 + 20) = v19;
  v20 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_10043D17C(a3);
  v21 = __OFADD__(v20, result);
  v22 = v20 + result;
  if (v21)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = *(v3 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v3 + 8), *(v3 + 20));
  if (v24)
  {
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v3 + 20);
  v12 = __CFADD__(v26, result);
  v27 = v26 + result;
  if (v12)
  {
    goto LABEL_20;
  }

  *(v3 + 20) = v27;
  v21 = __OFADD__(v22, result);
  result += v22;
  if (v21)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

BOOL _s12NIOIMAPCore211MailboxDataO10SearchSortV23__derived_struct_equalsySbAE_AEtFZ_0(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    if (((a4 | a2) & 0x8000000000000000) == 0)
    {
      return a4 == a2;
    }
  }

  else
  {
    v6 = (result + 32);
    v7 = (a3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s12NIOIMAPCore211MailboxDataO21__derived_enum_equalsySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v3 = a1[7];
  v156[6] = a1[6];
  v156[7] = v3;
  v156[8] = a1[8];
  v4 = a1[3];
  v156[2] = a1[2];
  v156[3] = v4;
  v5 = a1[5];
  v156[4] = a1[4];
  v156[5] = v5;
  v6 = a1[1];
  v156[0] = *a1;
  v156[1] = v6;
  v7 = sub_1003045D0(v156);
  if (v7 <= 4)
  {
    if (v7 <= 1)
    {
      if (!v7)
      {
        v40 = *sub_1003045DC(v156);
        v41 = a2[3];
        v149 = a2[2];
        v150 = v41;
        v42 = a2[1];
        v147 = *a2;
        v148 = v42;
        v43 = a2[8];
        v154 = a2[7];
        v155 = v43;
        v44 = a2[6];
        v152 = a2[5];
        v153 = v44;
        v151 = a2[4];
        if (sub_1003045D0(&v147))
        {
          goto LABEL_87;
        }

        v45 = sub_1003045DC(&v147);
        v46 = sub_10010321C(v40, *v45);
        return v46 & 1;
      }

      v107 = sub_1003045DC(v156);
      v49 = *v107;
      v48 = *(v107 + 8);
      v50 = *(v107 + 16);
      v51 = *(v107 + 20);
      v53 = *(v107 + 32);
      v52 = *(v107 + 40);
      v108 = a2[7];
      v153 = a2[6];
      v154 = v108;
      v155 = a2[8];
      v109 = a2[3];
      v149 = a2[2];
      v150 = v109;
      v110 = a2[5];
      v151 = a2[4];
      v152 = v110;
      v111 = a2[1];
      v147 = *a2;
      v148 = v111;
      if (sub_1003045D0(&v147) != 1)
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v7 != 2)
      {
        if (v7 == 3)
        {
          v13 = sub_1003045DC(v156);
          v15 = *v13;
          v14 = *(v13 + 8);
          v16 = *(v13 + 16);
          v17 = a2[7];
          v153 = a2[6];
          v154 = v17;
          v155 = a2[8];
          v18 = a2[1];
          v147 = *a2;
          v148 = v18;
          v19 = a2[3];
          v149 = a2[2];
          v150 = v19;
          v20 = a2[5];
          v151 = a2[4];
          v152 = v20;
          if (sub_1003045D0(&v147) != 3)
          {
            goto LABEL_87;
          }

          result = sub_1003045DC(&v147);
          v22 = *result;
          v23 = *(v15 + 16);
          if (v23 != *(*result + 16))
          {
            goto LABEL_87;
          }

          v24 = *(result + 8);
          v25 = *(result + 16);
          if (v23 && v15 != v22)
          {
            v26 = (v15 + 32);
            v27 = (v22 + 32);
            while (*v27 == *v26)
            {
              ++v26;
              ++v27;
              if (!--v23)
              {
                goto LABEL_17;
              }
            }

            goto LABEL_87;
          }

LABEL_17:
          if (v16)
          {
            if ((*(result + 16) & 1) == 0)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          }

          if (*(result + 16))
          {
            goto LABEL_87;
          }

          if ((v24 | v14) < 0)
          {
            goto LABEL_90;
          }

          if (v24 != v14)
          {
            goto LABEL_87;
          }

LABEL_86:
          v46 = 1;
          return v46 & 1;
        }

        v87 = sub_1003045DC(v156);
        v89 = *v87;
        v88 = *(v87 + 8);
        v91 = *(v87 + 16);
        v90 = *(v87 + 24);
        v92 = *(v87 + 32);
        v93 = *(v87 + 33);
        v94 = *(v87 + 40);
        v95 = a2[7];
        v153 = a2[6];
        v154 = v95;
        v155 = a2[8];
        v96 = a2[3];
        v149 = a2[2];
        v150 = v96;
        v97 = a2[5];
        v151 = a2[4];
        v152 = v97;
        v98 = a2[1];
        v147 = *a2;
        v148 = v98;
        if (sub_1003045D0(&v147) != 4)
        {
          goto LABEL_87;
        }

        v142 = v93;
        v140 = v94;
        v99 = sub_1003045DC(&v147);
        v100 = *v99;
        v101 = *(v99 + 8);
        v102 = *(v99 + 16);
        v103 = *(v99 + 24);
        v104 = *(v99 + 32);
        v105 = *(v99 + 33);
        v106 = *(v99 + 40);
        if (v88)
        {
          if (v101)
          {
            *v146 = *v99;
            *&v146[8] = v101;
            *&v146[16] = v102;
            *&v146[24] = v103;
            v146[32] = v104 & 1;
            *v145 = v89;
            *&v145[8] = v88;
            *&v145[16] = v91;
            *&v145[24] = v90;
            v145[32] = v92 & 1;
            v139 = v106;
            v138 = v105;
            v137 = _s12NIOIMAPCore216SearchCorrelatorV23__derived_struct_equalsySbAC_ACtFZ_0(v145, v146);
            sub_1003E97D0(v100, v101);
            sub_1003E97D0(v89, v88);

            sub_100073984(v89, v88);
            v105 = v138;
            v106 = v139;
            if (!v137)
            {
              goto LABEL_87;
            }

            goto LABEL_72;
          }
        }

        else if (!v101)
        {
LABEL_72:
          if (((v142 ^ v105) & 1) != 0 || (sub_100397CD4(v140, v106) & 1) == 0)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        }

        sub_1003E97D0(*v99, v101);
        sub_1003E97D0(v89, v88);
        sub_100073984(v89, v88);
        sub_100073984(v100, v101);
        goto LABEL_87;
      }

      v47 = sub_1003045DC(v156);
      v49 = *v47;
      v48 = *(v47 + 8);
      v50 = *(v47 + 16);
      v51 = *(v47 + 20);
      v53 = *(v47 + 32);
      v52 = *(v47 + 40);
      v54 = a2[7];
      v153 = a2[6];
      v154 = v54;
      v155 = a2[8];
      v55 = a2[3];
      v149 = a2[2];
      v150 = v55;
      v56 = a2[5];
      v151 = a2[4];
      v152 = v56;
      v57 = a2[1];
      v147 = *a2;
      v148 = v57;
      if (sub_1003045D0(&v147) != 2)
      {
        goto LABEL_87;
      }
    }

    v112 = sub_1003045DC(&v147);
    v113 = *(v112 + 8);
    v114 = *(v112 + 16);
    v115 = *(v112 + 20);
    v116 = *(v112 + 32);
    v143 = *(v112 + 40);
    if ((sub_1003A3710(v49, *v112) & 1) == 0 || (v50 | (v50 << 32)) != (v114 | (v114 << 32)) || (sub_1000FFC98(v48, v113) & 1) == 0 || v51 != v115 || (sub_1003A0868(v53, v116) & 1) == 0 || (sub_1003A0B30(v52, v143) & 1) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (v7 <= 7)
  {
    if (v7 != 5)
    {
      if (v7 == 6)
      {
        v8 = *sub_1003045DC(v156);
        v9 = a2[3];
        v149 = a2[2];
        v150 = v9;
        v10 = a2[1];
        v147 = *a2;
        v148 = v10;
        v11 = a2[8];
        v154 = a2[7];
        v155 = v11;
        v12 = a2[6];
        v152 = a2[5];
        v153 = v12;
        v151 = a2[4];
        if (sub_1003045D0(&v147) != 6)
        {
          goto LABEL_87;
        }

        goto LABEL_60;
      }

      v8 = *sub_1003045DC(v156);
      v117 = a2[3];
      v149 = a2[2];
      v150 = v117;
      v118 = a2[1];
      v147 = *a2;
      v148 = v118;
      v119 = a2[8];
      v154 = a2[7];
      v155 = v119;
      v120 = a2[6];
      v152 = a2[5];
      v153 = v120;
      v151 = a2[4];
      if (sub_1003045D0(&v147) == 7)
      {
LABEL_60:
        v46 = v8 == *sub_1003045DC(&v147);
        return v46 & 1;
      }

      goto LABEL_87;
    }

    v58 = sub_1003045DC(v156);
    v59 = *v58;
    v60 = *(v58 + 8);
    v61 = *(v58 + 92);
    v62 = *(v58 + 124);
    *&v146[96] = *(v58 + 108);
    *&v146[112] = v62;
    *&v146[128] = *(v58 + 140);
    v63 = *(v58 + 28);
    v64 = *(v58 + 60);
    *&v146[32] = *(v58 + 44);
    *&v146[48] = v64;
    *&v146[64] = *(v58 + 76);
    *&v146[80] = v61;
    *v146 = *(v58 + 12);
    *&v146[16] = v63;
    v65 = a2[8];
    v154 = a2[7];
    v155 = v65;
    v66 = a2[6];
    v152 = a2[5];
    v153 = v66;
    v67 = a2[4];
    v150 = a2[3];
    v151 = v67;
    v68 = a2[2];
    v148 = a2[1];
    v149 = v68;
    v147 = *a2;
    if (sub_1003045D0(&v147) != 5)
    {
      goto LABEL_87;
    }

    v69 = sub_1003045DC(&v147);
    v70 = *v69;
    v71 = *(v69 + 8);
    v72 = *(v69 + 92);
    v73 = *(v69 + 124);
    *&v145[96] = *(v69 + 108);
    *&v145[112] = v73;
    *&v145[128] = *(v69 + 140);
    v74 = *(v69 + 28);
    v75 = *(v69 + 60);
    *&v145[32] = *(v69 + 44);
    *&v145[48] = v75;
    *&v145[64] = *(v69 + 76);
    *&v145[80] = v72;
    *v145 = *(v69 + 12);
    *&v145[16] = v74;
    if ((v60 | (v60 << 32)) != (v71 | (v71 << 32)) || (sub_1000FFC98(v59, v70) & 1) == 0)
    {
      goto LABEL_87;
    }

    v157[4] = *&v146[68];
    v157[5] = *&v146[84];
    v157[6] = *&v146[100];
    v157[7] = *&v146[116];
    v157[0] = *&v146[4];
    v157[1] = *&v146[20];
    v157[2] = *&v146[36];
    v157[3] = *&v146[52];
    v158[2] = *&v145[36];
    v158[3] = *&v145[52];
    v158[0] = *&v145[4];
    v158[1] = *&v145[20];
    v158[6] = *&v145[100];
    v158[7] = *&v145[116];
    v158[4] = *&v145[68];
    v158[5] = *&v145[84];
    v46 = _s12NIOIMAPCore213MailboxStatusV23__derived_struct_equalsySbAC_ACtFZ_0(v157, v158);
    return v46 & 1;
  }

  if (v7 == 8)
  {
    v76 = sub_1003045DC(v156);
    v78 = *v76;
    v77 = v76[1];
    v79 = v76[2];
    v80 = a2[7];
    v153 = a2[6];
    v154 = v80;
    v155 = a2[8];
    v81 = a2[1];
    v147 = *a2;
    v148 = v81;
    v82 = a2[3];
    v149 = a2[2];
    v150 = v82;
    v83 = a2[5];
    v151 = a2[4];
    v152 = v83;
    if (sub_1003045D0(&v147) != 8)
    {
      goto LABEL_87;
    }

    v84 = sub_1003045DC(&v147);
    v85 = v84[1];
    v86 = v84[2];
    if ((sub_10039EF50(v78, *v84) & 1) == 0 || (sub_10039EF50(v77, v85) & 1) == 0 || (sub_10039EF50(v79, v86) & 1) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (v7 != 9)
  {
    v121 = sub_1003045DC(v156);
    v122 = *v121;
    v123 = *(v121 + 8);
    v124 = *(v121 + 16);
    v126 = *(v121 + 24);
    v125 = *(v121 + 28);
    v127 = *(v121 + 32);
    v128 = *(v121 + 40);
    v129 = a2[7];
    v153 = a2[6];
    v154 = v129;
    v155 = a2[8];
    v130 = a2[3];
    v149 = a2[2];
    v150 = v130;
    v131 = a2[5];
    v151 = a2[4];
    v152 = v131;
    v132 = a2[1];
    v147 = *a2;
    v148 = v132;
    if (sub_1003045D0(&v147) != 10)
    {
      goto LABEL_87;
    }

    v133 = sub_1003045DC(&v147);
    v134 = *(v133 + 16);
    v135 = *(v133 + 24);
    v141 = *(v133 + 28);
    v136 = *(v133 + 32);
    v144 = *(v133 + 40);
    if ((v122 != *v133 || v123 != *(v133 + 8)) && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_87;
    }

    if (v124)
    {
      if (!v134 || (v126 | (v126 << 32)) != (v135 | (v135 << 32)) || (sub_1000FFC98(v124, v134) & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    else if (v134)
    {
      goto LABEL_87;
    }

    if (v127)
    {
      if ((v136 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    else if ((v136 & 1) != 0 || v125 != v141)
    {
      goto LABEL_87;
    }

    if ((sub_100102A80(v128, v144) & 1) == 0)
    {
LABEL_87:
      v46 = 0;
      return v46 & 1;
    }

    goto LABEL_86;
  }

  v28 = sub_1003045DC(v156);
  v30 = *v28;
  v29 = v28[1];
  v31 = a2[7];
  v153 = a2[6];
  v154 = v31;
  v155 = a2[8];
  v32 = a2[3];
  v149 = a2[2];
  v150 = v32;
  v33 = a2[5];
  v151 = a2[4];
  v152 = v33;
  v34 = a2[1];
  v147 = *a2;
  v148 = v34;
  if (sub_1003045D0(&v147) != 9)
  {
    goto LABEL_87;
  }

  result = sub_1003045DC(&v147);
  v35 = *result;
  v36 = *(v30 + 16);
  if (v36 != *(*result + 16))
  {
    goto LABEL_87;
  }

  v37 = *(result + 8);
  if (v36 && v30 != v35)
  {
    v38 = (v30 + 32);
    v39 = (v35 + 32);
    while (*v38 == *v39)
    {
      ++v38;
      ++v39;
      if (!--v36)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_87;
  }

LABEL_29:
  if (((v37 | v29) & 0x8000000000000000) == 0)
  {
    if (v37 != v29)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  __break(1u);
LABEL_90:
  __break(1u);
  return result;
}

unint64_t sub_10043FE4C()
{
  result = qword_1005DCAC0;
  if (!qword_1005DCAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCAC0);
  }

  return result;
}

unint64_t sub_10043FEA4()
{
  result = qword_1005DCAC8;
  if (!qword_1005DCAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCAC8);
  }

  return result;
}

__n128 sub_10043FF04(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_10043FF30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 1) & 0x7FFFFFFF | ((*(a1 + 56) >> 1) << 31);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_10043FF8C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (-2 * a2);
      *(a1 + 56) = 2;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      return result;
    }

    *(a1 + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_100440010(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[4].i64[1] & 1;
  v3 = a1[5].i64[1] & 1;
  v4 = a1[6].i64[1] & 1;
  v5 = a1[7].i64[1] & 1 | (a2 << 60);
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v2;
  a1[5].i64[1] = v3;
  a1[6].i64[1] = v4;
  a1[7].i64[1] = v5;
  return result;
}

uint64_t sub_10044007C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100492780(*a1, *a2, *(a2 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

NIOIMAPCore2::Mailboxes_optional __swiftcall Mailboxes.init(_:)(NIOIMAPCore2::Mailboxes_optional result)
{
  if (!*(result.value.content._rawValue + 2))
  {

    return 0;
  }

  return result;
}

void Mailboxes.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      v4 += 4;
      sub_1004A6EB4(v5 | (v5 << 32));
      --v3;
    }

    while (v3);
  }
}

Swift::Int Mailboxes.hashValue.getter(uint64_t a1)
{
  sub_1004A6E94();
  v2 = *(a1 + 16);
  sub_1004A6EB4(v2);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *v3;
      v3 += 4;
      sub_1004A6EB4(v4 | (v4 << 32));
      --v2;
    }

    while (v2);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1004401DC()
{
  v1 = *v0;
  sub_1004A6E94();
  Mailboxes.hash(into:)(v3, v1);
  return sub_1004A6F14();
}

uint64_t sub_10044022C(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), *(v1 + 20));
    if (v7)
    {
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v12;
  }

  else
  {
    v9 = 0;
    v12 = *(v1 + 20);
  }

  v13 = v12;
  result = sub_1002F178C(40, 0xE100000000000000, (v1 + 8), v12);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v11 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v11)
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v17;
  v18 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __chkstk_darwin(result);
  v31[2] = sub_10044044C;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_100452C54(0, sub_100440540, v31, a1);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v2 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v19, result);
  v26 = v19 + result;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return v26;
  }

  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), v24);
  if (v27)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v24);
  }

  v29 = *(v2 + 20);
  v11 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v11)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v30;
  v25 = __OFADD__(v26, result);
  result += v26;
  if (v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}