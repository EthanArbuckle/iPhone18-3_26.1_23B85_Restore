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

uint64_t sub_1001D3F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A5384();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Deflate.InputBuffer(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return v14 - 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1001D405C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1004A5384();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Deflate.InputBuffer(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1001D4164()
{
  result = sub_1004A5384();
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

uint64_t sub_1001D4214(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001D4294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001D4304()
{
  result = sub_1004A5384();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001D4394()
{
  result = sub_1004A5384();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1001D4400()
{
  result = qword_1005D44F8;
  if (!qword_1005D44F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D44F8);
  }

  return result;
}

uint64_t sub_1001D4488@<X0>(uint64_t a1@<X8>)
{
  v31 = type metadata accessor for Deflate.InputBuffer(0);
  v3 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Deflate.Result(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C9C0(&qword_1005D4500, &qword_1004E0320);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v29 - v11;
  v13 = _s12OutputHelperV5ChunkVMa(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s12OutputHelperVMa(0);
  v19 = v18[6];
  sub_1001D4888(v1 + v19, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1001D48F8(v12);
  }

  else
  {
    v30 = a1;
    sub_1001D4960(v12, v17);
    v20 = v1;
    v21 = *(v1 + v18[7]);
    v22 = sub_1004A5384();
    (*(*(v22 - 8) + 16))(v5, v17, v22);
    swift_storeEnumTagMultiPayload();
    v23 = v33;
    sub_1001D0774(v5, v17[*(v13 + 20)], v32);
    if (v23)
    {
      sub_1001D49C4(v5, type metadata accessor for Deflate.InputBuffer);
      sub_1001D49C4(v17, _s12OutputHelperV5ChunkVMa);
      sub_1001D48F8(v20 + v19);
      return (*(v14 + 56))(v20 + v19, 1, 1, v13);
    }

    sub_1001D49C4(v5, type metadata accessor for Deflate.InputBuffer);
    v25 = v20 + v18[5];
    v26 = v32;
    sub_1004A5354();
    sub_1001D49C4(v26, type metadata accessor for Deflate.Result);
    sub_1001D49C4(v17, _s12OutputHelperV5ChunkVMa);
    sub_1001D48F8(v20 + v19);
    (*(v14 + 56))(v20 + v19, 1, 1, v13);
    v1 = v20;
    a1 = v30;
  }

  v27 = v18[5];
  v28 = sub_1004A5384();
  return (*(*(v28 - 8) + 16))(a1, v1 + v27, v28);
}

uint64_t sub_1001D4888(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D4500, &qword_1004E0320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D48F8(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D4500, &qword_1004E0320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001D4960(uint64_t a1, uint64_t a2)
{
  v4 = _s12OutputHelperV5ChunkVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D49C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001D4A38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1004A5384();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_10000C9C0(&qword_1005D4500, &qword_1004E0320);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1001D4B60(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1004A5384();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_10000C9C0(&qword_1005D4500, &qword_1004E0320);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_1001D4C70()
{
  sub_1004A5384();
  if (v0 <= 0x3F)
  {
    sub_1001D4D1C();
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

void sub_1001D4D1C()
{
  if (!qword_1005D4570)
  {
    _s12OutputHelperV5ChunkVMa(255);
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D4570);
    }
  }
}

uint64_t sub_1001D4D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A5384();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1001D4E54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004A5384();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1001D4F0C()
{
  result = sub_1004A5384();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1001D4F90@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v7 = a7;
  if (a4)
  {
    *&v46 = a1;
    *(&v46 + 1) = a2;
    *&v47 = a3;
    BYTE8(v47) = a4 | 0x40;
    sub_100197E60(&v46);
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
    UInt32.init(_:)(&v58);
    sub_10001123C(a1, a2, a3, a4);
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
    goto LABEL_28;
  }

  v40 = *(a5 + 16);
  if (!v40)
  {
    goto LABEL_24;
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
    sub_1004A6E94();

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v45 = v19;
    if (v20)
    {
      sub_1004A6EC4(0);
    }

    else
    {
      sub_1004A6EC4(1u);
      sub_1004A6EF4(v19 >> 14);
    }

    v22 = sub_1004A6F14();
    v23 = -1 << *(v12 + 32);
    v24 = v22 & ~v23;
    if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      goto LABEL_26;
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
      if (v30 || (sub_1004A6D34() & 1) != 0)
      {
        if (v29)
        {
          if (v20)
          {
            goto LABEL_23;
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
LABEL_23:

            v14 = v39;
            v12 = a6;
            v13 = v44;
            if (v44 == v40)
            {
LABEL_24:
              sub_1001D5450(&v46);
              goto LABEL_27;
            }

            goto LABEL_5;
          }
        }
      }

      v24 = (v24 + 1) & v25;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  v32 = v16[1];

LABEL_26:
  *&v46 = v18;
  *(&v46 + 1) = v17;
  *&v47 = 0;
  BYTE8(v47) = 0x80;
  sub_100197E60(&v46);
LABEL_27:
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
  UInt32.init(_:)(&v58);
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
LABEL_28:
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

uint64_t sub_1001D5300@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 8);
  *(a1 + 64) = 3;
}

uint64_t sub_1001D5314(uint64_t a1)
{
  v2 = type metadata accessor for UntaggedResponse(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100124EFC(a1, v5);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    return sub_100124F60(v5);
  }

  sub_1001FC92C(*v5);
}

double sub_1001D53D0@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  sub_1001D4F90(a1, a2, a3, a4, *(v5 + 8), *(v5 + 16), v13);
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

double sub_1001D5450(uint64_t a1)
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

void *sub_1001D5494(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100091A08(0, v1, 0);
  v3 = -1 << *(a1 + 32);
  v26 = a1 + 56;
  result = sub_1004A6554();
  v5 = result;
  v6 = 0;
  v25 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v26 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    v11 = *(a1 + 48) + 32 * v5;
    v27 = *v11;
    v28 = *(v11 + 8);
    v29 = *(v11 + 16);
    v30 = *(v11 + 24);

    result = sub_1004A5804();
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v23 = v12;
      v24 = result;
      sub_100091A08((v13 > 1), v14 + 1, 1);
      v12 = v23;
      result = v24;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    v15[4] = result;
    v15[5] = v12;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v16 = *(v26 + 8 * v9);
    if ((v16 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v5 & 0x3F));
    if (v17)
    {
      v7 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v25;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v8 = v25;
      v20 = (a1 + 64 + 8 * v9);
      while (v19 < (v7 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_100020944(v5, v10, 0);
          v7 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return _swiftEmptyArrayStorage;
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
  __chkstk_darwin(v2 - 8);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
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

      v30 = 0x3E7974706D653CLL;
      if (a1 != 0x8000000000000008)
      {
        v30 = 0xD000000000000010;
      }

      if (a1 == 0x8000000000000000)
      {
        return 0xD000000000000014;
      }

      else
      {
        return v30;
      }
    }

    if (v6 != 4)
    {
      v31 = (a1 & 0xFFFFFFFFFFFFFFFLL);
      v32 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      if (!v32)
      {
        return 0xD000000000000018;
      }

      v34 = v31[4];
      v33 = v31[5];
      v35 = v31[2];
      *&v53 = 0;
      *(&v53 + 1) = 0xE000000000000000;
      sub_10010E780(v34, v33, v32);
      sub_10010E780(v34, v33, v32);

      sub_1004A6724(27);

      *&v49[0] = 0xD000000000000019;
      *(&v49[0] + 1) = 0x80000001004ABC60;
      *&v53 = v34;
      *(&v53 + 1) = v33;
      *&v54 = v32;
      sub_1000110B0(v34);

      v61._countAndFlagsBits = sub_1004A5824();
      sub_1004A5994(v61);

      sub_10001114C(v34);

      sub_10010E7C0(v34, v33, v32);
      return *&v49[0];
    }

    v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) | (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x14) << 32);
    if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30))
    {
      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30) != 1)
      {
        *&v53 = Tag.debugDescription.getter(v13);
        *(&v53 + 1) = v47;
        v14._countAndFlagsBits = 1145127456;
        v14._object = 0xE400000000000000;
        goto LABEL_42;
      }

      *&v53 = Tag.debugDescription.getter(v13);
      *(&v53 + 1) = v14._object;
      v14._countAndFlagsBits = 5197344;
    }

    else
    {
      *&v53 = Tag.debugDescription.getter(v13);
      *(&v53 + 1) = v14._object;
      v14._countAndFlagsBits = 4935456;
    }

    v14._object = 0xE300000000000000;
LABEL_42:
    sub_1004A5994(v14);
    return v53;
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v54 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v55 = v11;
      v56[0] = v12;
      *(v56 + 11) = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x4B);
      v53 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v51 = 0;
      v52 = 0xE000000000000000;
      sub_1000CB914(&v53, v49);
      v58._countAndFlagsBits = 0x656C657320646944;
      v58._object = 0xEC00000027207463;
      sub_1004A5994(v58);
      v49[2] = v55;
      v50[0] = v56[0];
      *(v50 + 11) = *(v56 + 11);
      v49[0] = v53;
      v49[1] = v54;
      sub_1004A6934();
      sub_1000CB970(&v53);
      v59._countAndFlagsBits = 39;
      v59._object = 0xE100000000000000;
      sub_1004A5994(v59);
      return v51;
    }

    else
    {
      v28 = swift_projectBox();
      sub_100124EFC(v28, v5);
      *&v53 = 8234;
      *(&v53 + 1) = 0xE200000000000000;
      v60._countAndFlagsBits = UntaggedResponse.name.getter();
      sub_1004A5994(v60);

      v29 = v53;
      sub_100124F60(v5);
      return v29;
    }
  }

  if (!v6)
  {
    *&v53 = sub_1001D5494(*(a1 + 16));
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v8 = sub_1004A5614();
    v10 = v9;

    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    sub_1004A6724(33);

    *&v53 = 0xD00000000000001ELL;
    *(&v53 + 1) = 0x80000001004ABCA0;
    v57._countAndFlagsBits = v8;
    v57._object = v10;
    sub_1004A5994(v57);
LABEL_32:

    v14._countAndFlagsBits = 125;
    v14._object = 0xE100000000000000;
    goto LABEL_42;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v16 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v17 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v18 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v19 = *(v17 + 16);
  *&v49[0] = _swiftEmptyArrayStorage;
  sub_100091A08(0, v19, 0);
  v20 = *&v49[0];
  ConnectionCommandIDSet.makeIterator()(v16, v17, v18);
  if (!v19)
  {
LABEL_30:
    sub_1004A6AA4();
    if ((BYTE8(v53) & 1) == 0)
    {
      v39 = v53;
      do
      {
        LOBYTE(v53) = v39;
        DWORD1(v53) = HIDWORD(v39);
        v40 = sub_1004A5804();
        *&v49[0] = v20;
        v43 = *(v20 + 16);
        v42 = *(v20 + 24);
        if (v43 >= v42 >> 1)
        {
          v45 = v40;
          v46 = v41;
          sub_100091A08((v42 > 1), v43 + 1, 1);
          v41 = v46;
          v40 = v45;
          v20 = *&v49[0];
        }

        *(v20 + 16) = v43 + 1;
        v44 = v20 + 16 * v43;
        *(v44 + 32) = v40;
        *(v44 + 40) = v41;
        sub_1004A6AA4();
        v39 = v53;
      }

      while (BYTE8(v53) != 1);
    }

    *&v53 = v20;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v36 = sub_1004A5614();
    v38 = v37;

    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    sub_1004A6724(29);
    v62._countAndFlagsBits = 0xD000000000000015;
    v62._object = 0x80000001004ABC80;
    sub_1004A5994(v62);
    *&v49[0] = v15;
    sub_1004A6934();
    v63._countAndFlagsBits = 8069161;
    v63._object = 0xE300000000000000;
    sub_1004A5994(v63);
    v64._countAndFlagsBits = v36;
    v64._object = v38;
    sub_1004A5994(v64);
    goto LABEL_32;
  }

  while (1)
  {
    result = sub_1004A6AA4();
    if (BYTE8(v53))
    {
      break;
    }

    v21 = sub_1004A5804();
    *&v49[0] = v20;
    v24 = *(v20 + 16);
    v23 = *(v20 + 24);
    if (v24 >= v23 >> 1)
    {
      v26 = v21;
      v27 = v22;
      sub_100091A08((v23 > 1), v24 + 1, 1);
      v22 = v27;
      v21 = v26;
      v20 = *&v49[0];
    }

    *(v20 + 16) = v24 + 1;
    v25 = v20 + 16 * v24;
    *(v25 + 32) = v21;
    *(v25 + 40) = v22;
    if (!--v19)
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
  sub_1000CB7C8(v1);
  return v1;
}

unint64_t Event.payload.setter(uint64_t a1)
{
  result = sub_1000CB848(*(v1 + 8));
  *(v1 + 8) = a1;
  return result;
}

uint64_t Event.runningCommandIDs.getter()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

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
    sub_10001123C(v6, v7, v8, v9);
    v4(v5, v6, v7, v8, v9);

    return sub_100173584(v6, v7, v8, v9);
  }

  return result;
}

char *sub_1001D5FAC(char *a1, int64_t a2, char a3)
{
  result = sub_1001D60AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D5FCC(char *a1, int64_t a2, char a3)
{
  result = sub_1001D61B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D5FEC(char *a1, int64_t a2, char a3)
{
  result = sub_1001D62D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001D600C(void *a1, int64_t a2, char a3)
{
  result = sub_1001D63C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D602C(char *a1, int64_t a2, char a3)
{
  result = sub_1001D64F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D604C(char *a1, int64_t a2, char a3)
{
  result = sub_1001D6610(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D606C(char *a1, int64_t a2, char a3)
{
  result = sub_1001D6710(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D608C(char *a1, int64_t a2, char a3)
{
  result = sub_1001D6804(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D60AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEE80, &qword_1004D1D50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001D61B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D4650, &qword_1004E2A70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001D62D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D4668, &qword_1004E05F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1001D63C4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005D4658, &unk_10050A050);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_10000C9C0(&qword_1005D4660, &qword_1004E05E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001D64F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D4670, &qword_1004E05F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001D6610(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D4648, &qword_1004E05E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1001D6710(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001D6804(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D4638, &qword_1004E05D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

Swift::Int _s15IMAP2Connection5EventV7PayloadO21__derived_enum_equalsySbAE_AEtFZ_0(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for UntaggedResponse(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
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
          sub_1000CB914(&v62, v57);
          v12 = _s15IMAP2Connection15SelectedMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(&v58, &v62);
          sub_1000CB970(&v62);
          return v12 & 1;
        }
      }

      else if (a2 >> 60 == 3)
      {
        v44 = swift_projectBox();
        v45 = swift_projectBox();
        sub_100124EFC(v44, v10);
        sub_100124EFC(v45, v7);
        v12 = static UntaggedResponse.__derived_enum_equals(_:_:)(v10, v7);
        sub_100124F60(v7);
        sub_100124F60(v10);
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
        if (sub_1001B00A0(v13, v19))
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
    if ((_s15IMAP2Connection07CommandB0C12RecentErrorsV23__derived_struct_equalsySbAE_AEtFZ_0(*(v36 + 16), v40) & 1) == 0 || v37 != v41 || (sub_1001B42A0(v39, v43) & 1) == 0 || (sub_1001B42A0(v38, v42) & 1) == 0)
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
      if ((sub_1000FFC98(v48, *(v47 + 16)) & 1) == 0)
      {
        goto LABEL_54;
      }

      if (v51)
      {
        if (!v55)
        {
          goto LABEL_54;
        }

        sub_10010E780(v53, v54, v55);
        sub_10010E780(v53, v54, v55);

        v56 = static ResponseText.__derived_struct_equals(_:_:)(v49, v50);

        sub_10010E7C0(v53, v54, v55);
        sub_10001114C(v53);

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

  return sub_100083010(v33, v34);
}

unint64_t sub_1001D6E14(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 60;
  }

  else
  {
    return (*a1 >> 3) + 8;
  }
}

ValueMetadata *type metadata accessor for Event()
{
  return &type metadata for Event;
}

{
  return &type metadata for Event;
}

uint64_t sub_1001D6E40(uint64_t a1, unsigned int a2)
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

uint64_t sub_1001D6E90(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1001D6EF0(void *result, uint64_t a2)
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

uint64_t sub_1001D6F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a5;
  v65 = a4;
  v63 = a3;
  v61 = sub_1004A5384();
  v7 = *(v61 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v61);
  v54 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v55 = &v54 - v12;
  __chkstk_darwin(v11);
  v56 = &v54 - v13;
  v60 = sub_1004A4904();
  v14 = *(v60 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v60);
  v59 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004A4D14();
  v67 = *(v16 - 8);
  v68 = v16;
  v17 = *(v67 + 64);
  __chkstk_darwin(v16);
  v19 = (&v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v62 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v58 = &v54 - v25;
  __chkstk_darwin(v24);
  v27 = &v54 - v26;
  v28 = sub_1001E1A9C(a1, a2);
  v71 = 0;
  v72 = 0xE000000000000000;
  v69 = a1;
  v70 = HIDWORD(a1);
  sub_1004A6934();
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1004D3930;
  *(v29 + 32) = v28;
  v30 = sub_1004A4D04();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v66 = v28;

  v57 = sub_1004A4CD4();
  sub_1004A5344();
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
  *v19 = sub_1001E2E78;
  v19[1] = v38;
  (*(v67 + 104))(v19, enum case for NWConnection.SendCompletion.contentProcessed(_:), v68);
  sub_10000E268(v27, v42, &qword_1005D05E0, &qword_1004D65C0);
  v45 = *(v7 + 48);
  if (v45(v42, 1, v43) == 1)
  {

    sub_100025F40(v42, &qword_1005D05E0, &qword_1004D65C0);
    v46 = v62;
    sub_10000E268(v27, v62, &qword_1005D05E0, &qword_1004D65C0);
    if (v45(v46, 1, v43) == 1)
    {
      sub_100025F40(v62, &qword_1005D05E0, &qword_1004D65C0);
      sub_1004A4E14();
    }

    else
    {
      v48 = v55;
      (*(v7 + 32))(v55, v62, v43);
      v49 = v54;
      (*(v7 + 16))(v54, v48, v43);
      v50 = sub_1001D9C54(v49);
      v52 = v51;
      sub_1004A4E14();

      sub_100014D40(v50, v52);

      (*(v7 + 8))(v48, v43);
    }
  }

  else
  {
    v47 = v56;
    (*(v7 + 32))(v56, v42, v43);

    sub_1004A4E04();

    (*(v7 + 8))(v47, v43);
  }

  (*(v67 + 8))(v19, v68);
  return sub_100025F40(v27, &qword_1005D05E0, &qword_1004D65C0);
}

uint64_t sub_1001D75AC(uint64_t a1)
{
  v59 = a1;
  v1 = sub_1004A5384();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v54 = &v52 - v7;
  __chkstk_darwin(v6);
  v56 = &v52 - v8;
  v9 = sub_1004A4904();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v58 = v12;
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1004A4D14();
  v62 = *(v60 - 8);
  v14 = *(v62 + 64);
  __chkstk_darwin(v60);
  v16 = (&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v55 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v61 = &v52 - v22;
  __chkstk_darwin(v21);
  v24 = &v52 - v23;
  if (qword_1005D2D88 != -1)
  {
    swift_once();
  }

  v25 = sub_1004A5044();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = sub_1004A5024();
  v64 = &type metadata for Bool;
  v63 = 1;
  sub_1004A5064();
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1004D3930;
  *(v29 + 32) = v28;
  v30 = sub_1004A4D04();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();

  v57 = sub_1004A4CD4();
  sub_1004A5344();
  (*(v2 + 56))(v24, 0, 1, v1);
  (*(v10 + 16))(v13, v59, v9);
  v33 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v34 = swift_allocObject();
  (*(v10 + 32))(v34 + v33, v13, v9);
  *v16 = sub_1001E2D04;
  v16[1] = v34;
  v35 = v60;
  (*(v62 + 104))(v16, enum case for NWConnection.SendCompletion.contentProcessed(_:), v60);
  v36 = v61;
  sub_10000E268(v24, v61, &qword_1005D05E0, &qword_1004D65C0);
  v37 = *(v2 + 48);
  v38 = v37(v36, 1, v1);
  v39 = v1;
  v40 = v2;
  v41 = v24;
  if (v38 == 1)
  {
    v59 = v28;
    sub_100025F40(v61, &qword_1005D05E0, &qword_1004D65C0);
    v42 = v24;
    v43 = v55;
    sub_10000E268(v42, v55, &qword_1005D05E0, &qword_1004D65C0);
    if (v37(v43, 1, v39) == 1)
    {
      sub_100025F40(v43, &qword_1005D05E0, &qword_1004D65C0);
      sub_1004A4E14();
    }

    else
    {
      v46 = v54;
      (*(v2 + 32))(v54, v43, v39);
      v47 = v53;
      (*(v2 + 16))(v53, v46, v39);
      v48 = sub_1001D9C54(v47);
      v50 = v49;
      sub_1004A4E14();

      sub_100014D40(v48, v50);

      (*(v40 + 8))(v46, v39);
    }

    v44 = v60;
  }

  else
  {
    v44 = v35;
    v45 = v56;
    (*(v40 + 32))(v56, v61, v39);
    sub_1004A4E04();

    (*(v40 + 8))(v45, v39);
  }

  (*(v62 + 8))(v16, v44);
  return sub_100025F40(v41, &qword_1005D05E0, &qword_1004D65C0);
}

uint64_t sub_1001D7C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v52 = a2;
  v4 = sub_1004A5384();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v46 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v47 = &v46 - v10;
  __chkstk_darwin(v9);
  v49 = &v46 - v11;
  v12 = sub_1004A4D14();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v48 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v46 - v22;
  __chkstk_darwin(v21);
  v25 = &v46 - v24;
  if (qword_1005D2D88 != -1)
  {
    swift_once();
  }

  v26 = sub_1004A5044();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();

  v29 = sub_1004A5024();
  v54 = sub_1004A5154();
  v53 = a1;

  sub_1004A5064();
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1004D3930;
  *(v30 + 32) = v29;
  v31 = sub_1004A4D04();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();

  v34 = sub_1004A4CD4();
  sub_1004A5344();
  (*(v5 + 56))(v25, 0, 1, v4);
  v35 = swift_allocObject();
  v36 = v50;
  *(v35 + 16) = v52;
  *(v35 + 24) = v36;
  *v16 = sub_1001E3508;
  v16[1] = v35;
  v51 = v13;
  v52 = v12;
  (*(v13 + 104))(v16, enum case for NWConnection.SendCompletion.contentProcessed(_:), v12);
  sub_10000E268(v25, v23, &qword_1005D05E0, &qword_1004D65C0);
  v37 = *(v5 + 48);
  if (v37(v23, 1, v4) == 1)
  {
    v49 = v34;

    sub_100025F40(v23, &qword_1005D05E0, &qword_1004D65C0);
    v38 = v48;
    sub_10000E268(v25, v48, &qword_1005D05E0, &qword_1004D65C0);
    if (v37(v38, 1, v4) == 1)
    {
      sub_100025F40(v38, &qword_1005D05E0, &qword_1004D65C0);
      sub_1004A4E14();
    }

    else
    {
      v40 = v47;
      (*(v5 + 32))(v47, v38, v4);
      v41 = v46;
      (*(v5 + 16))(v46, v40, v4);
      v42 = sub_1001D9C54(v41);
      v44 = v43;
      sub_1004A4E14();

      sub_100014D40(v42, v44);

      (*(v5 + 8))(v40, v4);
    }
  }

  else
  {
    v39 = v49;
    (*(v5 + 32))(v49, v23, v4);

    sub_1004A4E04();

    (*(v5 + 8))(v39, v4);
  }

  (*(v51 + 8))(v16, v52);
  return sub_100025F40(v25, &qword_1005D05E0, &qword_1004D65C0);
}

uint64_t sub_1001D8288(int a1)
{
  v2 = sub_1004A5384();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v42 = &v40 - v8;
  __chkstk_darwin(v7);
  v44 = &v40 - v9;
  v10 = sub_1004A4D14();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v43 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v40 - v20;
  __chkstk_darwin(v19);
  v23 = &v40 - v22;
  if (qword_1005D2D88 != -1)
  {
    swift_once();
  }

  v24 = sub_1004A5044();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  v27 = sub_1004A5024();
  v49 = &type metadata for ClientCommand.EncodingOptions;
  v47 = a1 & 0x1FF;
  v48 = BYTE2(a1) & 1;
  sub_1004A5064();
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1004D3930;
  *(v28 + 32) = v27;
  v29 = sub_1004A4D04();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();

  sub_1004A4CD4();
  sub_1004A5344();
  (*(v3 + 56))(v23, 0, 1, v2);
  v45 = v11;
  v46 = v10;
  (*(v11 + 104))(v14, enum case for NWConnection.SendCompletion.idempotent(_:), v10);
  sub_10000E268(v23, v21, &qword_1005D05E0, &qword_1004D65C0);
  v32 = *(v3 + 48);
  if (v32(v21, 1, v2) != 1)
  {
    v34 = v44;
    (*(v3 + 32))(v44, v21, v2);
    sub_1004A4E04();

LABEL_8:

    (*(v3 + 8))(v34, v2);
    goto LABEL_9;
  }

  v44 = v14;
  sub_100025F40(v21, &qword_1005D05E0, &qword_1004D65C0);
  v33 = v43;
  sub_10000E268(v23, v43, &qword_1005D05E0, &qword_1004D65C0);
  if (v32(v33, 1, v2) != 1)
  {
    v34 = v42;
    (*(v3 + 32))(v42, v33, v2);
    v35 = v41;
    (*(v3 + 16))(v41, v34, v2);
    v36 = sub_1001D9C54(v35);
    v38 = v37;
    v14 = v44;
    sub_1004A4E14();

    sub_100014D40(v36, v38);
    goto LABEL_8;
  }

  sub_100025F40(v33, &qword_1005D05E0, &qword_1004D65C0);
  v14 = v44;
  sub_1004A4E14();

LABEL_9:
  (*(v45 + 8))(v14, v46);
  return sub_100025F40(v23, &qword_1005D05E0, &qword_1004D65C0);
}

uint64_t sub_1001D883C(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v50 = a1;
  v2 = sub_1004A5384();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v45 = &v44 - v8;
  __chkstk_darwin(v7);
  v47 = &v44 - v9;
  v10 = sub_1004A4D14();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v46 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v44 - v20;
  __chkstk_darwin(v19);
  v23 = &v44 - v22;
  if (qword_1005D2D88 != -1)
  {
    swift_once();
  }

  v24 = sub_1004A5044();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  v27 = sub_1004A5024();
  v52 = &type metadata for Bool;
  v51 = 1;
  sub_1004A5064();
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1004D3930;
  *(v28 + 32) = v27;
  v29 = sub_1004A4D04();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();

  v32 = sub_1004A4CD4();
  sub_1004A5344();
  (*(v3 + 56))(v23, 0, 1, v2);
  v33 = swift_allocObject();
  v34 = v48;
  *(v33 + 16) = v50;
  *(v33 + 24) = v34;
  *v14 = sub_1001E2FD8;
  v14[1] = v33;
  v49 = v11;
  v50 = v10;
  (*(v11 + 104))(v14, enum case for NWConnection.SendCompletion.contentProcessed(_:), v10);
  sub_10000E268(v23, v21, &qword_1005D05E0, &qword_1004D65C0);
  v35 = *(v3 + 48);
  if (v35(v21, 1, v2) == 1)
  {
    v47 = v32;

    sub_100025F40(v21, &qword_1005D05E0, &qword_1004D65C0);
    v36 = v46;
    sub_10000E268(v23, v46, &qword_1005D05E0, &qword_1004D65C0);
    if (v35(v36, 1, v2) == 1)
    {
      sub_100025F40(v36, &qword_1005D05E0, &qword_1004D65C0);
      sub_1004A4E14();
    }

    else
    {
      v38 = v45;
      (*(v3 + 32))(v45, v36, v2);
      v39 = v44;
      (*(v3 + 16))(v44, v38, v2);
      v40 = sub_1001D9C54(v39);
      v42 = v41;
      sub_1004A4E14();

      sub_100014D40(v40, v42);

      (*(v3 + 8))(v38, v2);
    }
  }

  else
  {
    v37 = v47;
    (*(v3 + 32))(v47, v21, v2);

    sub_1004A4E04();

    (*(v3 + 8))(v37, v2);
  }

  (*(v49 + 8))(v14, v50);
  return sub_100025F40(v23, &qword_1005D05E0, &qword_1004D65C0);
}

uint64_t sub_1001D8E48()
{
  v0 = sub_1004A5384();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v40 = &v38 - v6;
  __chkstk_darwin(v5);
  v42 = &v38 - v7;
  v8 = sub_1004A4D14();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v41 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v38 - v17;
  __chkstk_darwin(v16);
  v20 = &v38 - v19;
  if (qword_1005D2D88 != -1)
  {
    swift_once();
  }

  v21 = sub_1004A5044();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  v24 = sub_1004A5024();
  v45 = &_s10WorkaroundON;
  sub_1004A5064();
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1004D3930;
  *(v25 + 32) = v24;
  v26 = sub_1004A4D04();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();

  sub_1004A4CD4();
  sub_1004A5344();
  (*(v1 + 56))(v20, 0, 1, v0);
  v29 = *(v44 + 104);
  v43 = v8;
  v29(v11, enum case for NWConnection.SendCompletion.idempotent(_:), v8);
  sub_10000E268(v20, v18, &qword_1005D05E0, &qword_1004D65C0);
  v30 = *(v1 + 48);
  if (v30(v18, 1, v0) != 1)
  {
    v32 = v42;
    (*(v1 + 32))(v42, v18, v0);
    sub_1004A4E04();

LABEL_8:

    (*(v1 + 8))(v32, v0);
    goto LABEL_9;
  }

  v42 = v11;
  sub_100025F40(v18, &qword_1005D05E0, &qword_1004D65C0);
  v31 = v41;
  sub_10000E268(v20, v41, &qword_1005D05E0, &qword_1004D65C0);
  if (v30(v31, 1, v0) != 1)
  {
    v32 = v40;
    (*(v1 + 32))(v40, v31, v0);
    v33 = v39;
    (*(v1 + 16))(v39, v32, v0);
    v34 = sub_1001D9C54(v33);
    v36 = v35;
    v11 = v42;
    sub_1004A4E14();

    sub_100014D40(v34, v36);
    goto LABEL_8;
  }

  sub_100025F40(v31, &qword_1005D05E0, &qword_1004D65C0);
  v11 = v42;
  sub_1004A4E14();

LABEL_9:
  (*(v44 + 8))(v11, v43);
  return sub_100025F40(v20, &qword_1005D05E0, &qword_1004D65C0);
}

uint64_t sub_1001D93E4(uint64_t a1)
{
  *&v13 = a1;

  sub_10000C9C0(&qword_1005D4870, &unk_1004E0720);
  sub_10000C9C0(&qword_1005D47A0, &qword_1004F7950);
  if (swift_dynamicCast())
  {
    sub_1000B364C(v14, v16);
    sub_10002587C(v16, v16[3]);
    sub_1004A41C4();
    v14[0] = v13;
    sub_1000197E0(v16);
    goto LABEL_31;
  }

  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v1 = sub_100025F40(v14, &qword_1005D47A8, &qword_1004E06A8);
  v14[0] = xmmword_1004DC1F0;
  __chkstk_darwin(v1);
  sub_1001E0434(sub_1001E33CC);
  v3 = *(&v14[0] + 1) >> 62;
  if ((*(&v14[0] + 1) >> 62) <= 1)
  {
    if (v3)
    {
      if (__OFSUB__(DWORD1(v14[0]), v14[0]))
      {
        goto LABEL_35;
      }

      if (v2 == DWORD1(v14[0]) - LODWORD(v14[0]))
      {
        goto LABEL_18;
      }
    }

    else if (v2 == BYTE14(v14[0]))
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v3 == 2)
  {
    v5 = *(*&v14[0] + 16);
    v4 = *(*&v14[0] + 24);
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
      v8 = *(*&v14[0] + 24);
    }

    else if (v3 == 1)
    {
      v8 = *&v14[0] >> 32;
    }

    else
    {
      v8 = BYTE14(v14[0]);
    }

LABEL_28:
    if (v8 >= v2)
    {
      sub_1004A43D4();
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
  memset(v16, 0, 15);
  sub_1004A6AA4();
  if (BYTE1(v13))
  {
    goto LABEL_30;
  }

  LOBYTE(v9) = 0;
  v10 = v13;
  do
  {
    *(v16 + v9) = v10;
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
      LOWORD(v13) = v16[0];
      sub_1004A43F4();
      LOBYTE(v9) = 0;
    }

    sub_1004A6AA4();
    v10 = v13;
  }

  while ((BYTE1(v13) & 1) == 0);
  if (v9)
  {
    sub_1004A43F4();
  }

LABEL_30:

LABEL_31:
  v11 = v14[0];
  sub_100014CEC(*&v14[0], *(&v14[0] + 1));

  sub_100014D40(v11, *(&v11 + 1));
  return v11;
}

uint64_t sub_1001D9734(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_10000C9C0(&qword_1005D47A0, &qword_1004F7950);
  if (swift_dynamicCast())
  {
    sub_1000B364C(__src, &v41);
    sub_10002587C(&v41, v42);
    sub_1004A41C4();
    __src[0] = v40;
    sub_1000197E0(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_100025F40(__src, &qword_1005D47A8, &qword_1004E06A8);
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
    v4 = sub_1004A67E4();
  }

  sub_1001E0180(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
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
  *&__src[0] = sub_1001E19FC(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_1001E07C0(sub_1001E2F18);
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
        sub_1004A43D4();
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

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_10010C210(v16, v14, v15);
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
      v8 = sub_1004A59E4();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1004A5A24();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1004A67E4();
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

    v16 = sub_10010C210(v16, v14, v15);
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

    v16 = sub_1004A59F4();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_1004A43F4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_1004A43F4();
    sub_1000CBB68(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_1000CBB68(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_100014CEC(*&__src[0], *(&__src[0] + 1));

  sub_100014D40(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1001D9C54(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D4798, &qword_1004E06A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v28 - v4;
  v6 = sub_1004A5224();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004A5384();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  (*(v12 + 16))(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  sub_10000C9C0(&qword_1005D47A0, &qword_1004F7950);
  if (!swift_dynamicCast())
  {
    v29 = v7;
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    sub_100025F40(v31, &qword_1005D47A8, &qword_1004E06A8);
    sub_1001E2D90(&qword_1005D47B0, 255, &type metadata accessor for DispatchData);
    sub_1004A5AF4();
    if (*(&v33 + 1) >> 60 != 15)
    {
      v31[0] = v33;
      goto LABEL_33;
    }

    v28 = v33;
    v15 = sub_1004A5AE4();
    *&v31[0] = sub_1001E19FC(v15);
    *(&v31[0] + 1) = v16;
    __chkstk_darwin(*&v31[0]);
    *(&v28 - 2) = a1;
    sub_1001E0B64(sub_1001E2D74);
    v17 = *&v5[*(v2 + 48)];
    v18 = v29;
    (*(v29 + 32))(v10, v5, v6);
    v19 = *(&v31[0] + 1) >> 62;
    if ((*(&v31[0] + 1) >> 62) > 1)
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
          sub_1004A43D4();
          (*(v18 + 8))(v10, v6);
          goto LABEL_33;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v21 = *(*&v31[0] + 16);
      v20 = *(*&v31[0] + 24);
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
      if (__OFSUB__(DWORD1(v31[0]), v31[0]))
      {
        goto LABEL_37;
      }

      if (v17 == DWORD1(v31[0]) - LODWORD(v31[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v17 == BYTE14(v31[0]))
    {
LABEL_20:
      sub_1001E2D90(&qword_1005D47B8, 255, &type metadata accessor for DispatchDataIterator);
      *&v33 = 0;
      *(&v33 + 7) = 0;
      sub_1004A6414();
      if (BYTE1(v30) == 1)
      {
        goto LABEL_28;
      }

      LOBYTE(v25) = 0;
      while (1)
      {
        *(&v33 + v25) = v30;
        v25 = v25 + 1;
        if ((v25 >> 8))
        {
          break;
        }

        if (v25 == 14)
        {
          *&v30 = v33;
          *(&v30 + 6) = *(&v33 + 6);
          sub_1004A43F4();
          LOBYTE(v25) = 0;
        }

        sub_1004A6414();
        if (BYTE1(v30))
        {
          if (v25)
          {
            *&v30 = v33;
            *(&v30 + 6) = *(&v33 + 6);
            sub_1004A43F4();
            sub_1000CBB68(v28, *(&v28 + 1));
            (*(v29 + 8))(v10, v6);
            goto LABEL_33;
          }

LABEL_28:
          (*(v29 + 8))(v10, v6);
          sub_1000CBB68(v28, *(&v28 + 1));
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    if (v19 == 2)
    {
      v24 = *(*&v31[0] + 24);
    }

    else if (v19 == 1)
    {
      v24 = *&v31[0] >> 32;
    }

    else
    {
      v24 = BYTE14(v31[0]);
    }

    goto LABEL_31;
  }

  sub_1000B364C(v31, &v33);
  sub_10002587C(&v33, v34);
  sub_1004A41C4();
  v31[0] = v30;
  sub_1000197E0(&v33);
LABEL_33:
  v26 = *&v31[0];
  sub_100014CEC(*&v31[0], *(&v31[0] + 1));
  (*(v12 + 8))(a1, v11);
  sub_100014D40(*&v31[0], *(&v31[0] + 1));
  return v26;
}

uint64_t sub_1001DA26C()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005D4680);
  sub_1001C203C(v0, qword_1005D4680);
  return sub_1004A4A64();
}

uint64_t sub_1001DA2EC()
{
  type metadata accessor for Framer();
  sub_1001E2D90(&qword_1005D4770, v0, type metadata accessor for Framer);
  v1 = sub_1004A5004();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  result = sub_1004A4FF4();
  qword_1005DE068 = result;
  return result;
}

uint64_t sub_1001DA378()
{
  ServerResponseFramingParser.init()(v24);
  v1 = v24[9];
  *(v0 + 144) = v24[8];
  *(v0 + 160) = v1;
  v2 = v24[11];
  *(v0 + 176) = v24[10];
  *(v0 + 192) = v2;
  v3 = v24[5];
  *(v0 + 80) = v24[4];
  *(v0 + 96) = v3;
  v4 = v24[7];
  *(v0 + 112) = v24[6];
  *(v0 + 128) = v4;
  v5 = v24[1];
  *(v0 + 16) = v24[0];
  *(v0 + 32) = v5;
  v6 = v24[3];
  *(v0 + 48) = v24[2];
  *(v0 + 64) = v6;
  *(v0 + 208) = _swiftEmptyArrayStorage;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 240) = 256;
  v7 = ClientCommand.EncodingOptions.rfc3501.unsafeMutableAddressor();
  v8 = v7[1];
  v9 = v7[2];
  *(v0 + 242) = *v7;
  *(v0 + 243) = v8;
  *(v0 + 244) = v9;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0;
  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v10 = sub_1004A4A74();
  sub_1001C203C(v10, qword_1005D4680);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v11 = sub_1004A4A54();
  v12 = sub_1004A5FF4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 68158210;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    *(v13 + 10) = sub_1001DA630();

    *(v13 + 11) = 2082;
    sub_1004A5134();
    sub_1004A5094();
    if (v22)
    {
      if (swift_dynamicCast())
      {

        v15 = v20;
LABEL_10:
        v16 = ConnectionID.debugDescription.getter(v15);
        v18 = sub_10015BA6C(v16, v17, &v23);

        *(v13 + 13) = v18;
        _os_log_impl(&_mh_execute_header, v11, v12, "[%.*hhx-%{public}s] New IMAP framer", v13, 0x15u);
        sub_1000197E0(v14);

        return v0;
      }
    }

    else
    {
      sub_100025F40(v21, &qword_1005D4768, &unk_1004F5B20);
    }

    v15 = *(ConnectionLoggerID.invalid.unsafeMutableAddressor() + 1);
    goto LABEL_10;
  }

  return v0;
}

unint64_t sub_1001DA630()
{
  sub_1004A5134();
  sub_1004A5094();

  if (!v7)
  {
    sub_100025F40(v6, &qword_1005D4768, &unk_1004F5B20);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = ConnectionLoggerID.invalid.unsafeMutableAddressor();
    v0 = *v2;
    v1 = *(v2 + 1);
    return v0 | (v1 << 32);
  }

  v0 = v4;
  v1 = v5;
  return v0 | (v1 << 32);
}

uint64_t sub_1001DA6EC@<X0>(uint64_t a1@<X8>)
{
  sub_1004A5134();
  sub_1004A5094();

  v2 = v25;
  sub_100025F40(v24, &qword_1005D4768, &unk_1004F5B20);
  if (v2)
  {
    if (qword_1005D2D80 != -1)
    {
      swift_once();
    }

    v3 = sub_1004A4A74();
    sub_1001C203C(v3, qword_1005D4680);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v4 = sub_1004A4A54();
    v5 = sub_1004A5FF4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v24[0] = v7;
      *v6 = 68158210;
      *(v6 + 4) = 2;
      *(v6 + 8) = 256;
      *(v6 + 10) = sub_1001DA630();

      *(v6 + 11) = 2082;
      v8 = sub_1001DA630();
      v9 = ConnectionID.debugDescription.getter(HIDWORD(v8));
      v11 = sub_10015BA6C(v9, v10, v24);

      *(v6 + 13) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%.*hhx-%{public}s] (post STARTTLS) IMAP framer loaded.", v6, 0x15u);
      sub_1000197E0(v7);
    }

    else
    {
    }

    sub_1004A5044();

    sub_1004A5034();
    v25 = &type metadata for Bool;
    LOBYTE(v24[0]) = 1;
    sub_1004A5064();
    sub_1004A5114();
    goto LABEL_13;
  }

  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v12 = sub_1004A4A74();
  sub_1001C203C(v12, qword_1005D4680);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v13 = sub_1004A4A54();
  v14 = sub_1004A5FF4();
  if (!os_log_type_enabled(v13, v14))
  {

LABEL_13:

    goto LABEL_14;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v24[0] = v16;
  *v15 = 68158210;
  *(v15 + 4) = 2;
  *(v15 + 8) = 256;
  *(v15 + 10) = sub_1001DA630();

  *(v15 + 11) = 2082;
  v17 = sub_1001DA630();
  v18 = ConnectionID.debugDescription.getter(HIDWORD(v17));
  v20 = sub_10015BA6C(v18, v19, v24);

  *(v15 + 13) = v20;
  _os_log_impl(&_mh_execute_header, v13, v14, "[%.*hhx-%{public}s] IMAP framer loaded.", v15, 0x15u);
  sub_1000197E0(v16);

LABEL_14:
  v21 = enum case for NWProtocolFramer.StartResult.ready(_:);
  v22 = sub_1004A5014();
  return (*(*(v22 - 8) + 104))(a1, v21, v22);
}

uint64_t sub_1001DAAFC()
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
  sub_1001E2A88(v10);
  v7 = *(v0 + 208);

  v8 = *(v0 + 256);
  sub_1001E2A48(*(v0 + 248));
  return swift_deallocClassInstance();
}

uint64_t sub_1001DABA8()
{
  v0 = swift_allocObject();
  sub_1001DA378();
  return v0;
}

uint64_t sub_1001DAC04(uint64_t a1)
{
  v3 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
    ;
  }

  sub_1001DB6DC();
  sub_1001DC1B8(a1);
  swift_beginAccess();
  if (*(v1 + 192))
  {
    return 0;
  }

  else
  {
    return *(v1 + 184);
  }
}

uint64_t sub_1001DADBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v51 = a4;
  v52 = a3;
  v48 = a2;
  v5 = sub_1004A4944();
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v49 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v46 - v10;
  v12 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v46 - v14;
  v16 = sub_1004A5214();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v46 - v23;
  __chkstk_darwin(v22);
  v26 = &v46 - v25;
  v50 = a1;
  sub_10000E268(a1, v15, &unk_1005D54F0, &unk_1004E8DA0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100025F40(v15, &unk_1005D54F0, &unk_1004E8DA0);
    v27 = tracingSignposter.unsafeMutableAddressor();
    v28 = v53;
    (*(v54 + 16))(v11, v27, v53);
    v29 = sub_1004A4934();
    v30 = sub_1004A6154();
    if (sub_1004A6354())
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v30, v32, "Connection.didEnqueue", "", v31, 2u);
    }

    (*(v54 + 8))(v11, v28);
  }

  else
  {
    (*(v17 + 32))(v26, v15, v16);
    v33 = tracingSignposter.unsafeMutableAddressor();
    v34 = v53;
    (*(v54 + 16))(v49, v33, v53);
    v35 = *(v17 + 16);
    v35(v24, v26, v16);
    v36 = sub_1004A4934();
    v47 = sub_1004A6154();
    if (sub_1004A6354())
    {
      v37 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v55 = v46;
      *v37 = 136315138;
      v35(v21, v24, v16);
      v38 = sub_1004A5824();
      v40 = v39;
      v41 = *(v17 + 8);
      v41(v24, v16);
      v42 = sub_10015BA6C(v38, v40, &v55);

      *(v37 + 4) = v42;
      v43 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, v47, v43, "Connection.didFailToSendData", "%s", v37, 0xCu);
      sub_1000197E0(v46);

      (*(v54 + 8))(v49, v53);
      v41(v26, v16);
    }

    else
    {

      v44 = *(v17 + 8);
      v44(v24, v16);
      (*(v54 + 8))(v49, v34);
      v44(v26, v16);
    }
  }

  return v52(v50);
}

uint64_t sub_1001DB2DC()
{
  v0 = sub_1004A4944();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = tracingSignposter.unsafeMutableAddressor();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_1004A4934();
  v7 = sub_1004A6154();
  if (sub_1004A6354())
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_1004A48F4();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, v7, v9, "Connection.didFlush", "", v8, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1001DB44C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void, uint64_t))
{
  if (a3)
  {

    v9 = sub_1001E3064();
    v10 = sub_1004A4CF4();
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  a6(v9, v10, a4 & 1, a5);

  return sub_1001E3054(v9);
}

BOOL sub_1001DB4F4()
{
  v0 = sub_1004A50C4();
  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v1 = sub_1004A4A74();
  sub_1001C203C(v1, qword_1005D4680);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v2 = sub_1004A4A54();
  v3 = sub_1004A6004();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 68158466;
    *(v4 + 4) = 2;
    *(v4 + 8) = 256;
    *(v4 + 10) = sub_1001DA630();

    *(v4 + 11) = 2082;
    v6 = sub_1001DA630();
    v7 = ConnectionID.debugDescription.getter(HIDWORD(v6));
    v9 = sub_10015BA6C(v7, v8, &v11);

    *(v4 + 13) = v9;
    *(v4 + 21) = 1024;
    *(v4 + 23) = v0 & 1;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%.*hhx-%{public}s] parseInput() returned %{BOOL}d", v4, 0x1Bu);
    sub_1000197E0(v5);
  }

  else
  {
  }

  return (v0 & 1) == 0;
}

void *sub_1001DB6DC()
{
  v2 = v1;
  v3 = v0;
  v74 = _s19CommandOutputBufferV7ElementOMa(0);
  v73 = *(v74 - 8);
  v4 = *(v73 + 64);
  __chkstk_darwin(v74);
  v78 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Response(0);
  v6 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v71 = &v65 - v10;
  v11 = sub_10000C9C0(&qword_1005D4788, &qword_1004F4BD0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v65 - v13;
  v15 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  v79 = *(v15 - 8);
  v16 = *(v79 + 64);
  __chkstk_darwin(v15 - 8);
  v90 = (&v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = type metadata accessor for ResponseOrContinuationRequest(0);
  v18 = *(v91 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v91);
  v87 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v88 = &v65 - v22;
  __chkstk_darwin(v23);
  v25 = &v65 - v24;
  __chkstk_darwin(v26);
  v86 = &v65 - v27;
  __chkstk_darwin(v28);
  v30 = &v65 - v29;
  swift_beginAccess();
  v31 = ServerResponseFramingParser.popAllFrames()();
  swift_endAccess();
  result = sub_1001EC24C(0, *(v31 + 16), 0, _swiftEmptyArrayStorage);
  v89 = result;
  v85 = *(v31 + 16);
  if (!v85)
  {
LABEL_36:

    sub_1004A5044();
    swift_retain_n();
    v64 = v89;

    sub_1004A5034();
    v93 = sub_10000C9C0(&qword_1005D4790, &qword_1004E0698);
    v92 = v64;

    sub_1004A5064();

    sub_1004A5114();
  }

  v70 = v8;
  v33 = v18;
  v34 = 0;
  v35 = v79;
  v84 = v31 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
  v76 = v33;
  v77 = v14;
  v80 = (v33 + 48);
  v81 = (v33 + 56);
  v82 = v25;
  v69 = v3;
  v83 = v31;
  while (v34 < *(v31 + 16))
  {
    sub_1001E2B98(v84 + *(v35 + 72) * v34, v90, type metadata accessor for ServerResponseFramingParser.Frame);
    sub_1004A5134();
    sub_1004A5094();

    if (v93)
    {
      if (swift_dynamicCast())
      {
        v36 = v94;
        v37 = v95;
        goto LABEL_11;
      }
    }

    else
    {
      sub_100025F40(&v92, &qword_1005D4768, &unk_1004F5B20);
    }

    v38 = ConnectionLoggerID.invalid.unsafeMutableAddressor();
    v36 = *v38;
    v37 = *(v38 + 1);
LABEL_11:
    sub_1001DD130(v90, v36 | (v37 << 32), v30);
    if (v2)
    {
    }

    swift_beginAccess();
    if ((*(v3 + 241) & 1) == 0)
    {
      v39 = *(v3 + 232);
      v75 = *(v3 + 240);
      sub_1001E2B98(v30, v25, type metadata accessor for ResponseOrContinuationRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v40 = v71;
        sub_1001E2B30(v25, v71, type metadata accessor for Response);
        v41 = v70;
        sub_1001E2B98(v40, v70, type metadata accessor for Response);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v66 = v39;
          v42 = *v41;
          v43 = *(v41 + 16);
          v44 = *(v41 + 24);
          v45 = *(v41 + 32);
          v68 = 0;
          v46 = *(v41 + 40);
          *&v47 = Tag.init(_:)(v42);
          v65 = v47;
          v67 = DWORD2(v47);
          *(&v47 + 1) = v44;
          v35 = v79;
          v48 = v45;
          v14 = v77;
          v2 = v68;
          sub_100173584(v43, *(&v47 + 1), v48, v46);
          sub_1001E2C1C(v40, type metadata accessor for Response);
          v3 = v69;
          if ((v67 & 1) == 0 && (v75 & 1) == 0 && v66 == v65 && !((v65 ^ v66) >> 32))
          {
            *(v69 + 232) = 0;
            *(v3 + 240) = 1;
          }
        }

        else
        {
          sub_1001E2C1C(v40, type metadata accessor for Response);
          sub_1001E2C1C(v41, type metadata accessor for Response);
          v3 = v69;
        }
      }

      else
      {
        sub_1001E2C1C(v25, type metadata accessor for ResponseOrContinuationRequest);
      }
    }

    v49 = v88;
    sub_1001E2B98(v30, v88, type metadata accessor for ResponseOrContinuationRequest);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1001E2C1C(v49, type metadata accessor for ResponseOrContinuationRequest);
    if (EnumCaseMultiPayload == 1)
    {
      sub_1001E2B98(v30, v14, type metadata accessor for ResponseOrContinuationRequest);
      v51 = 0;
      v25 = v82;
      goto LABEL_32;
    }

    v52 = *(v3 + 208);
    v25 = v82;
    if (*(v52 + 16))
    {
      sub_1001E2B98(v52 + ((*(v73 + 80) + 32) & ~*(v73 + 80)), v78, _s19CommandOutputBufferV7ElementOMa);
      v53 = swift_getEnumCaseMultiPayload();
      if ((v53 - 1) < 2)
      {
        result = sub_1001E2C1C(v78, _s19CommandOutputBufferV7ElementOMa);
        v54 = *(v3 + 216);
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_41;
        }

        *(v3 + 216) = v56;
        v51 = 1;
        goto LABEL_32;
      }

      if (v53 != 3)
      {
        sub_1001B64B8();
        swift_allocError();
        swift_willThrow();
        sub_1001E2C1C(v78, _s19CommandOutputBufferV7ElementOMa);

        swift_endAccess();

        return sub_1001E2C1C(v30, type metadata accessor for ResponseOrContinuationRequest);
      }

      result = sub_1001E2C1C(v78, _s19CommandOutputBufferV7ElementOMa);
    }

    v57 = *(v3 + 224);
    v55 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v55)
    {
      goto LABEL_40;
    }

    *(v3 + 224) = v58;
    sub_1001E2B98(v30, v14, type metadata accessor for ResponseOrContinuationRequest);
    v51 = 0;
LABEL_32:
    v59 = v91;
    (*v81)(v14, v51, 1, v91);
    swift_endAccess();
    if ((*v80)(v14, 1, v59) == 1)
    {
      sub_1001E2C1C(v30, type metadata accessor for ResponseOrContinuationRequest);
      result = sub_100025F40(v14, &qword_1005D4788, &qword_1004F4BD0);
    }

    else
    {
      v60 = v86;
      sub_1001E2B30(v14, v86, type metadata accessor for ResponseOrContinuationRequest);
      sub_1001E2B98(v60, v87, type metadata accessor for ResponseOrContinuationRequest);
      v62 = v89[2];
      v61 = v89[3];
      if (v62 >= v61 >> 1)
      {
        v89 = sub_1001EC24C(v61 > 1, v62 + 1, 1, v89);
      }

      sub_1001E2C1C(v86, type metadata accessor for ResponseOrContinuationRequest);
      sub_1001E2C1C(v30, type metadata accessor for ResponseOrContinuationRequest);
      v63 = v89;
      v89[2] = v62 + 1;
      result = sub_1001E2B30(v87, v63 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v62, type metadata accessor for ResponseOrContinuationRequest);
      v14 = v77;
      v35 = v79;
    }

    ++v34;
    v31 = v83;
    if (v85 == v34)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1001DC1B8(uint64_t a1)
{
  v4 = _s11CompressionO12OutgoingDataVMa();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  if (*(*(v1 + 208) + 16))
  {
    sub_1001DF100(a1, v7);
    if (v2)
    {
      if (qword_1005D2D80 != -1)
      {
        swift_once();
      }

      v9 = sub_1004A4A74();
      sub_1001C203C(v9, qword_1005D4680);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      swift_errorRetain();
      v10 = sub_1004A4A54();
      v11 = sub_1004A6014();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v39 = v14;
        *v12 = 68158466;
        *(v12 + 4) = 2;
        *(v12 + 8) = 256;
        *(v12 + 10) = sub_1001DA630();

        *(v12 + 11) = 2082;
        v15 = sub_1001DA630();
        v16 = ConnectionID.debugDescription.getter(HIDWORD(v15));
        v18 = sub_10015BA6C(v16, v17, &v39);

        *(v12 + 13) = v18;
        *(v12 + 21) = 2112;
        v19 = sub_1004A4264();
        *(v12 + 23) = v19;
        *v13 = v19;
        _os_log_impl(&_mh_execute_header, v10, v11, "[%.*hhx-%{public}s] Protocol error while sending. %@", v12, 0x1Fu);
        sub_100025F40(v13, &qword_1005D51A0, &qword_1004D0940);

        sub_1000197E0(v14);
      }

      else
      {
      }

      return swift_willThrow();
    }

    else
    {
      sub_1001E1BD0(v7);
      if (*(*(v1 + 208) + 16))
      {
        v20 = *(v1 + 232);
        v21 = *(v1 + 240);
        v22 = *(v1 + 241);
        v34 = *(v1 + 208);
        v35 = *(v1 + 216);
        v36 = v20;
        v37 = v21;
        v38 = v22;

        v23 = sub_1001B435C();

        if (qword_1005D2D80 != -1)
        {
          swift_once();
        }

        v24 = sub_1004A4A74();
        sub_1001C203C(v24, qword_1005D4680);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v25 = sub_1004A4A54();
        v26 = sub_1004A6004();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v39 = v28;
          *v27 = 68158466;
          *(v27 + 4) = 2;
          *(v27 + 8) = 256;
          *(v27 + 10) = sub_1001DA630();

          *(v27 + 11) = 2082;
          v29 = sub_1001DA630();
          v30 = ConnectionID.debugDescription.getter(HIDWORD(v29));
          v32 = sub_10015BA6C(v30, v31, &v39);

          *(v27 + 13) = v32;
          *(v27 + 21) = 2048;
          *(v27 + 23) = v23;
          _os_log_impl(&_mh_execute_header, v25, v26, "[%.*hhx-%{public}s] Output buffer still holds %{iec-bytes}ld. Waiting for server response.", v27, 0x1Fu);
          sub_1000197E0(v28);
        }

        else
        {
        }
      }

      return sub_1001E2C1C(v7, _s11CompressionO12OutgoingDataVMa);
    }
  }

  return result;
}

uint64_t sub_1001DC634(const void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  result = 0;
  if ((a3 & 1) == 0 && a1)
  {
    if (a2 == a1)
    {
      return 0;
    }

    else
    {
      sub_1001DC93C(a1, a2, a6);
      return a2 - a1;
    }
  }

  return result;
}

void sub_1001DC93C(const void *a1, uint64_t a2, uint64_t a3)
{
  v64 = a3;
  v4 = v3;
  v7 = sub_1004A4944();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  __chkstk_darwin(v7);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C9C0(&qword_1005D3CE8, &qword_1004DDA78);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v59 = &v53 - v12;
  v13 = sub_1004A4904();
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = *(v60 + 64);
  __chkstk_darwin(v13);
  v62 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Deflate.InputBuffer(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for Deflate.Result(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = a2 - a1;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v4 + 248);
  if (a1)
  {
    v26 = a2;
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v54 = v24;
    v27 = v4;
    v28 = *(v4 + 256);
    *v19 = a1;
    v19[1] = v26;
    swift_storeEnumTagMultiPayload();

    v29 = v63;
    sub_1001D1E78(v19, v23);
    if (v29)
    {
      sub_1001E2A48(v25);
      sub_1001E2C1C(v19, type metadata accessor for Deflate.InputBuffer);
      return;
    }

    v63 = 0;
    v30 = sub_1001E2C1C(v19, type metadata accessor for Deflate.InputBuffer);
    __chkstk_darwin(v30);
    *(&v53 - 2) = sub_1001E2C0C;
    *(&v53 - 1) = v27;
    sub_1004A5304();
    v55 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    sub_1001E2A48(v25);
    sub_1001E2C1C(v23, type metadata accessor for Deflate.Result);
    v4 = v27;
    v24 = v54;
  }

  else
  {
    swift_beginAccess();
    ServerResponseFramingParser.append(_:)(a1, v26);
    swift_endAccess();
    v55 = v24;
  }

  sub_1004A5134();
  sub_1004A5094();

  v32 = v60;
  v31 = v61;
  v33 = v62;
  v34 = v59;
  if (v66)
  {
    v35 = swift_dynamicCast();
    (*(v32 + 56))(v34, v35 ^ 1u, 1, v31);
    if ((*(v32 + 48))(v34, 1, v31) != 1)
    {
      v36 = v24;
      (*(v32 + 32))(v33, v34, v31);
      v37 = tracingSignposter.unsafeMutableAddressor();
      (*(v57 + 16))(v56, v37, v58);
      v38 = sub_1004A4934();
      v39 = sub_1004A6154();
      if (sub_1004A6354())
      {
        v40 = swift_slowAlloc();
        *v40 = 134218240;
        *(v40 + 4) = v36;
        *(v40 + 12) = 2048;
        *(v40 + 14) = v55;
        v41 = sub_1004A48F4();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, v39, v41, "Connection.didReceiveData", "%ld,%ld", v40, 0x16u);
        v33 = v62;
      }

      (*(v57 + 8))(v56, v58);
      (*(v32 + 8))(v33, v31);
      goto LABEL_19;
    }
  }

  else
  {
    sub_100025F40(v65, &qword_1005D4768, &unk_1004F5B20);
    (*(v32 + 56))(v34, 1, 1, v31);
  }

  sub_100025F40(v34, &qword_1005D3CE8, &qword_1004DDA78);
LABEL_19:
  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v42 = sub_1004A4A74();
  sub_1001C203C(v42, qword_1005D4680);
  swift_retain_n();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_retain_n();
  v43 = sub_1004A4A54();
  v44 = sub_1004A6004();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v67 = v46;
    *v45 = 0x204100502;
    *(v45 + 8) = 256;
    v47 = sub_1001DA630();

    *(v45 + 10) = v47;

    *(v45 + 11) = 2082;
    v48 = sub_1001DA630();
    v49 = ConnectionID.debugDescription.getter(HIDWORD(v48));
    v51 = sub_10015BA6C(v49, v50, &v67);

    *(v45 + 13) = v51;
    *(v45 + 21) = 2048;
    *(v45 + 23) = v55;
    *(v45 + 31) = 2048;
    swift_beginAccess();
    v52 = *(v4 + 56);
    LODWORD(v51) = *(v4 + 60);

    *(v45 + 33) = (v51 - v52);

    _os_log_impl(&_mh_execute_header, v43, v44, "[%.*hhx-%{public}s] Appending %{iec-bytes}ld to receive buffer. Now has %{iec-bytes}ld.", v45, 0x29u);
    sub_1000197E0(v46);
  }

  else
  {
  }
}

uint64_t sub_1001DD0CC(const void *a1, uint64_t a2)
{
  swift_beginAccess();
  ServerResponseFramingParser.append(_:)(a1, a2);
  return swift_endAccess();
}

uint64_t sub_1001DD130@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E2B98(a1, v9, type metadata accessor for ServerResponseFramingParser.Frame);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1001E2C1C(a1, type metadata accessor for ServerResponseFramingParser.Frame);
    return sub_1001E2B30(v9, a3, type metadata accessor for ResponseOrContinuationRequest);
  }

  v11 = HIDWORD(a2);
  if (EnumCaseMultiPayload != 1)
  {
    v30 = *v9;
    v31 = *(v9 + 1);
    v59 = *(v9 + 4);
    v58 = *(v9 + 5);
    v32 = *(v9 + 14);
    v33 = v9[30];
    if (qword_1005D2D80 != -1)
    {
      swift_once();
    }

    v34 = sub_1004A4A74();
    sub_1001C203C(v34, qword_1005D4680);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    swift_errorRetain();

    v18 = sub_1004A4A54();
    v35 = sub_1004A6024();

    if (!os_log_type_enabled(v18, v35))
    {
      goto LABEL_17;
    }

    v56 = v33;
    v57 = v32;
    v60 = a1;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    a1 = swift_slowAlloc();
    v62 = a1;
    *v36 = 68158979;
    *(v36 + 4) = 2;
    *(v36 + 8) = 256;
    *(v36 + 10) = a2;
    *(v36 + 11) = 2082;
    v38 = ConnectionID.debugDescription.getter(HIDWORD(a2));
    LOBYTE(a2) = v39;
    v40 = sub_10015BA6C(v38, v39, &v62);

    *(v36 + 13) = v40;
    *(v36 + 21) = 2112;
    v41 = sub_1004A4264();
    *(v36 + 23) = v41;
    *v37 = v41;
    *(v36 + 31) = 1040;
    v11 = v59;
    v42 = v58 - v59;
    if (v58 - v59 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v42 <= 0x7FFFFFFF)
    {
      *(v36 + 33) = v42;
      *(v36 + 37) = 2101;
      swift_beginAccess();
      *(v36 + 39) = v11 + (v56 | (v57 << 8)) + *(v31 + 24);
      _os_log_impl(&_mh_execute_header, v18, v35, "[%.*hhx-%{public}s]: Failed to parse: %@. Buffer: %{sensitive}.*P", v36, 0x2Fu);
      sub_100025F40(v37, &qword_1005D51A0, &qword_1004D0940);

      sub_1000197E0(a1);

      a1 = v60;
LABEL_18:
      swift_willThrow();

      return sub_1001E2C1C(a1, type metadata accessor for ServerResponseFramingParser.Frame);
    }

    __break(1u);
    goto LABEL_26;
  }

  v12 = *v9;
  v13 = *(v9 + 1);
  if (!v13)
  {
    if (qword_1005D2D80 == -1)
    {
LABEL_21:
      v43 = sub_1004A4A74();
      sub_1001C203C(v43, qword_1005D4680);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      swift_errorRetain();
      v44 = sub_1004A4A54();
      v45 = sub_1004A6024();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v61 = v48;
        *v46 = 68158466;
        *(v46 + 4) = 2;
        *(v46 + 8) = 256;
        *(v46 + 10) = a2;
        *(v46 + 11) = 2082;
        v49 = ConnectionID.debugDescription.getter(v11);
        v51 = a1;
        v52 = sub_10015BA6C(v49, v50, &v61);

        *(v46 + 13) = v52;
        a1 = v51;
        *(v46 + 21) = 2112;
        v53 = sub_1004A4264();
        *(v46 + 23) = v53;
        *v47 = v53;
        _os_log_impl(&_mh_execute_header, v44, v45, "[%.*hhx-%{public}s]: Framing error: %@", v46, 0x1Fu);
        sub_100025F40(v47, &qword_1005D51A0, &qword_1004D0940);

        sub_1000197E0(v48);
      }

      swift_willThrow();
      return sub_1001E2C1C(a1, type metadata accessor for ServerResponseFramingParser.Frame);
    }

LABEL_26:
    swift_once();
    goto LABEL_21;
  }

  v59 = HIDWORD(a2);
  v14 = v9[30];
  LODWORD(v58) = *(v9 + 14);
  v15 = *(v9 + 6);
  v16 = *(v9 + 2);
  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v17 = sub_1004A4A74();
  sub_1001C203C(v17, qword_1005D4680);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v18 = sub_1004A4A54();
  v19 = sub_1004A6024();

  if (!os_log_type_enabled(v18, v19))
  {
    goto LABEL_17;
  }

  v55 = v14;
  v60 = a1;
  v56 = v15;
  v57 = HIDWORD(v16);
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v62 = v21;
  *v20 = 68158723;
  *(v20 + 4) = 2;
  *(v20 + 8) = 256;
  *(v20 + 10) = a2;
  *(v20 + 11) = 2082;
  v22 = ConnectionID.debugDescription.getter(v59);
  v24 = sub_10015BA6C(v22, v23, &v62);

  *(v20 + 13) = v24;
  *(v20 + 21) = 1040;
  v26 = v57 - v16;
  if (v26 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v59 = v21;
    a1 = v60;
    if (v26 <= 0x7FFFFFFF)
    {
      v27 = v58 | (v55 << 16);
      v28 = v56 & 0xFF000000FFFFFFFFLL | ((*&v27 & 0xFFFFFFLL) << 32);
      v29 = HIWORD(v27);
      *(v20 + 23) = v26;
      *(v20 + 27) = 2101;
      swift_beginAccess();
      *(v20 + 29) = *(v13 + 24) + v16 + ((v28 >> 24) & 0xFFFF00 | v29);
      _os_log_impl(&_mh_execute_header, v18, v19, "[%.*hhx-%{public}s]: Framing error. Buffer: %{sensitive}.*P", v20, 0x25u);
      sub_1000197E0(v59);

LABEL_17:

      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001DD868@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000C9C0(&qword_1005D4778, &qword_1004E0690);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for OutboundContent(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A5054();
  if (!v27)
  {
    v14 = &qword_1005D4768;
    v15 = &unk_1004F5B20;
    v16 = v26;
LABEL_9:
    sub_100025F40(v16, v14, v15);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v11 = v25;
    sub_1004A5054();
    if (v27)
    {
      v12 = swift_dynamicCast();
      (*(v7 + 56))(v5, v12 ^ 1u, 1, v6);
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {

        sub_1001E2B30(v5, v10, type metadata accessor for OutboundContent);
        v13 = *(sub_10000C9C0(&qword_1005D4750, &qword_1004E0688) + 48);
        *a1 = v11;
        sub_1001E2B30(v10, a1 + v13, type metadata accessor for OutboundContent);
        type metadata accessor for Framer.OutboundMessage();
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      sub_100025F40(v26, &qword_1005D4768, &unk_1004F5B20);
      (*(v7 + 56))(v5, 1, 1, v6);
    }

    v14 = &qword_1005D4778;
    v15 = &qword_1004E0690;
    v16 = v5;
    goto LABEL_9;
  }

LABEL_10:
  sub_1004A5054();
  if (v27)
  {
    goto LABEL_11;
  }

  sub_100025F40(v26, &qword_1005D4768, &unk_1004F5B20);
  sub_1004A5054();
  if (v27)
  {
    sub_1004A5154();
    if (swift_dynamicCast())
    {

      *a1 = v25;
      type metadata accessor for Framer.OutboundMessage();
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_100025F40(v26, &qword_1005D4768, &unk_1004F5B20);
  }

  sub_1004A5054();
  if (v27)
  {
    if (swift_dynamicCast())
    {

      v18 = BYTE1(v25);
      v19 = BYTE2(v25);
      *a1 = v25;
      *(a1 + 1) = v18;
      *(a1 + 2) = v19;
      type metadata accessor for Framer.OutboundMessage();
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_100025F40(v26, &qword_1005D4768, &unk_1004F5B20);
  }

  sub_1004A5054();
  if (v27)
  {
LABEL_11:

    sub_100025F40(v26, &qword_1005D4768, &unk_1004F5B20);
    type metadata accessor for Framer.OutboundMessage();
    return swift_storeEnumTagMultiPayload();
  }

  sub_100025F40(v26, &qword_1005D4768, &unk_1004F5B20);
  sub_1004A5054();
  if (v27)
  {
    if (swift_dynamicCast())
    {

      type metadata accessor for Framer.OutboundMessage();
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_100025F40(v26, &qword_1005D4768, &unk_1004F5B20);
  }

  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v20 = sub_1004A4A74();
  sub_1001C203C(v20, qword_1005D4680);
  v21 = sub_1004A4A54();
  v22 = sub_1004A6014();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Message has no outbound content.", v23, 2u);
  }

  sub_1001E2ADC();
  swift_allocError();
  swift_willThrow();
}

uint64_t sub_1001DDF00(uint64_t a1, uint64_t a2)
{
  v46[2] = a2;
  v2 = sub_10000C9C0(&qword_1005D3CE8, &qword_1004DDA78);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = v46 - v7;
  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v8 = sub_1004A4A74();
  sub_1001C203C(v8, qword_1005D4680);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v9 = sub_1004A4A54();
  v10 = sub_1004A6034();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v48 = v12;
    *v11 = 68158210;
    *(v11 + 4) = 2;
    *(v11 + 8) = 256;
    *(v11 + 10) = sub_1001DA630();

    *(v11 + 11) = 2082;
    v13 = sub_1001DA630();
    v14 = ConnectionID.debugDescription.getter(HIDWORD(v13));
    v16 = sub_10015BA6C(v14, v15, &v48);

    *(v11 + 13) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%.*hhx-%{public}s] Adding TLS to the protocol stack.", v11, 0x15u);
    sub_1000197E0(v12);
  }

  else
  {
  }

  v17 = v47;
  if (qword_1005D2D88 != -1)
  {
    swift_once();
  }

  v18 = sub_1004A5084();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();

  sub_1004A5074();
  *(&v49 + 1) = &type metadata for Bool;
  LOBYTE(v48) = 1;
  sub_1004A50A4();
  sub_1004A5134();
  sub_1004A5094();

  if (*(&v49 + 1))
  {
    v21 = sub_1004A4904();
    v22 = swift_dynamicCast();
    (*(*(v21 - 8) + 56))(v17, v22 ^ 1u, 1, v21);
  }

  else
  {
    sub_100025F40(&v48, &qword_1005D4768, &unk_1004F5B20);
    v21 = sub_1004A4904();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  }

  sub_10000E268(v17, v5, &qword_1005D3CE8, &qword_1004DDA78);
  sub_1004A4904();
  v23 = *(v21 - 8);
  if ((*(v23 + 48))(v5, 1, v21) == 1)
  {
    sub_100025F40(v5, &qword_1005D3CE8, &qword_1004DDA78);
    v48 = 0u;
    v49 = 0u;
  }

  else
  {
    *(&v49 + 1) = v21;
    v24 = sub_1000B3774(&v48);
    (*(v23 + 32))(v24, v5, v21);
  }

  sub_1004A50A4();
  sub_100025F40(v17, &qword_1005D3CE8, &qword_1004DDA78);
  v25 = sub_1001DA630();
  *(&v49 + 1) = &type metadata for ConnectionLoggerID;
  LOBYTE(v48) = v25;
  DWORD1(v48) = HIDWORD(v25);
  sub_1004A50A4();
  v26 = v61;
  sub_1004A5124();
  if (v26)
  {
  }

  sub_1004A5124();
  sub_1004A50E4();
  sub_1004A50F4();
  sub_1004A5144();
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
  sub_1001E2A88(&v48);
  swift_beginAccess();
  v40 = *(v27 + 208);
  *(v27 + 208) = _swiftEmptyArrayStorage;
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

uint64_t sub_1001DE568()
{
  v1 = v0;
  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v2 = sub_1004A4A74();
  sub_1001C203C(v2, qword_1005D4680);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v3 = sub_1004A4A54();
  v4 = sub_1004A6034();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 68158210;
    *(v5 + 4) = 2;
    *(v5 + 8) = 256;
    *(v5 + 10) = sub_1001DA630();

    *(v5 + 11) = 2082;
    v7 = sub_1001DA630();
    v8 = ConnectionID.debugDescription.getter(HIDWORD(v7));
    v10 = sub_10015BA6C(v8, v9, &v21);

    *(v5 + 13) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%.*hhx-%{public}s] Enabling RFC 4978 compression.", v5, 0x15u);
    sub_1000197E0(v6);
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
    sub_1001D3CA0();
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
      return sub_1001E2A48(v16);
    }
  }

  sub_1001D3CA0();
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

uint64_t sub_1001DE910(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = HIDWORD(a1);
  v65 = a3;
  v5 = type metadata accessor for HandshakeReply.Encoded();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v63 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConnectionCommand(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v62 - v13;
  v15 = type metadata accessor for ClientCommand(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  v22 = type metadata accessor for OutboundContent(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E2B98(a2, v25, type metadata accessor for OutboundContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1001E2B30(v25, v21, type metadata accessor for ClientCommand);
    sub_1001E2B98(v21, v18, type metadata accessor for ClientCommand);
    v33 = v67;
    v34 = v67[242];
    v35 = v67[243];
    v36 = v67[244];
    *v14 = a1;
    *(v14 + 1) = v64;
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
    sub_1001E2C1C(v18, type metadata accessor for ClientCommand);
    v39 = swift_beginAccess();
    if (*(v33 + 28))
    {
      sub_1001B6464();
      swift_allocError();
      swift_willThrow();
      swift_endAccess();
      sub_1001E2C1C(v21, type metadata accessor for ClientCommand);
      v40 = type metadata accessor for ConnectionCommand;
      v41 = v14;
LABEL_18:
      sub_1001E2C1C(v41, v40);
      goto LABEL_19;
    }

    __chkstk_darwin(v39);
    *(&v62 - 2) = v14;
    v55 = sub_1001B4BE8(sub_1001E299C);
    swift_endAccess();
    sub_1001E2C1C(v21, type metadata accessor for ClientCommand);
    v56 = type metadata accessor for ConnectionCommand;
    v57 = v14;
LABEL_34:
    sub_1001E2C1C(v57, v56);
    return v55;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v27 = *v25;
    v28 = *(v25 + 1);
    v29 = v25[16];
    sub_100193D28(*v25, v28, v29);
    v30 = v63;
    sub_1001DFBA8(v27, v28, v29, a1 & 0xFFFFFFFF000000FFLL, v63);
    v31 = v67;
    v32 = swift_beginAccess();
    if (!*(v31 + 28))
    {
      sub_1001E2948();
      goto LABEL_17;
    }

    if (*(*(v31 + 26) + 16))
    {
      sub_1001E28EC();
LABEL_17:
      swift_allocError();
      swift_willThrow();
      swift_endAccess();
      sub_10018E150(v27, v28, v29);
      v40 = type metadata accessor for HandshakeReply.Encoded;
      v41 = v30;
      goto LABEL_18;
    }

    __chkstk_darwin(v32);
    *(&v62 - 2) = v30;
    v55 = sub_1001B4BE8(sub_1001E2940);
    swift_endAccess();
    sub_10018E150(v27, v28, v29);
    v56 = type metadata accessor for HandshakeReply.Encoded;
    v57 = v30;
    goto LABEL_34;
  }

  v42 = v67;
  swift_beginAccess();
  if (!*(v42 + 28))
  {
    v58 = ClientCommand.EncodingOptions.rfc3501.unsafeMutableAddressor();
    if (v58[2])
    {
      v59 = 0x10000;
    }

    else
    {
      v59 = 0;
    }

    if (v58[1])
    {
      v60 = 256;
    }

    else
    {
      v60 = 0;
    }

    v61 = ClientCommandEncoder.idle(tag:)(a1 & 0xFFFFFFFF000000FFLL, v60 | *v58 | v59, &v11[*(v8 + 20)]);
    *v11 = a1;
    *(v11 + 1) = v64;
    __chkstk_darwin(v61);
    *(&v62 - 2) = v11;
    v55 = sub_1001B4BE8(sub_1001E28E4);
    sub_1001E2C1C(v11, type metadata accessor for ConnectionCommand);
    swift_endAccess();
    return v55;
  }

  sub_1001B6464();
  swift_allocError();
  swift_willThrow();
  swift_endAccess();
LABEL_19:
  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v43 = sub_1004A4A74();
  sub_1001C203C(v43, qword_1005D4680);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_errorRetain();
  v44 = sub_1004A4A54();
  v45 = sub_1004A6014();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v66 = v48;
    *v46 = 68158466;
    *(v46 + 4) = 2;
    *(v46 + 8) = 256;
    *(v46 + 10) = sub_1001DA630();

    *(v46 + 11) = 2082;
    v49 = sub_1001DA630();
    v50 = ConnectionID.debugDescription.getter(HIDWORD(v49));
    v52 = sub_10015BA6C(v50, v51, &v66);

    *(v46 + 13) = v52;
    *(v46 + 21) = 2112;
    v53 = sub_1004A4264();
    *(v46 + 23) = v53;
    *v47 = v53;
    _os_log_impl(&_mh_execute_header, v44, v45, "[%.*hhx-%{public}s] Unable to append command to output buffer. Invalid state. %@", v46, 0x1Fu);
    sub_100025F40(v47, &qword_1005D51A0, &qword_1004D0940);

    sub_1000197E0(v48);
  }

  else
  {
  }

  return swift_willThrow();
}

void sub_1001DF100(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v93 = a1;
  v94 = _s11CompressionO12OutgoingDataVMa();
  v5 = *(*(v94 - 1) + 64);
  __chkstk_darwin(v94);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v88 - v9;
  __chkstk_darwin(v11);
  v13 = &v88 - v12;
  __chkstk_darwin(v14);
  v16 = &v88 - v15;
  swift_beginAccess();
  v17 = *(v2 + 224);
  v97[0] = *(v2 + 208);
  v97[1] = v17;
  v98 = *(v2 + 240);

  v18 = sub_1001B435C();
  sub_1001E2890(v97);
  v19 = *(v2 + 248);
  v20 = *(v3 + 256);

  sub_1001E2A08(v19);
  v21 = v95;
  sub_1001E3534(v19, v3, a2);
  sub_1001E2A48(v19);
  if (v21)
  {
    return;
  }

  v91 = v16;
  v92 = v13;
  v95 = v10;
  sub_1004A5384();
  sub_1001E2D90(&qword_1005D3650, 255, &type metadata accessor for DispatchData);
  sub_1004A5E64();
  sub_1004A5EA4();
  v22 = v94;
  if (v99 == v96)
  {
    return;
  }

  v23 = a2;
  v24 = &a2[v94[7]];
  if (v24[8])
  {
    return;
  }

  v25 = *v24;
  v26 = v23 + v94[8];
  v27 = *v26;
  v28 = *(v26 + 8);
  if (*(v23 + v94[5]) != v18)
  {
    v90 = 0;
    if (v28)
    {
      if (qword_1005D2D80 != -1)
      {
        swift_once();
      }

      v44 = sub_1004A4A74();
      sub_1001C203C(v44, qword_1005D4680);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v7 = v95;
      sub_1001E2B98(v23, v95, _s11CompressionO12OutgoingDataVMa);
      v45 = sub_1004A4A54();
      v46 = sub_1004A6004();
      if (!os_log_type_enabled(v45, v46))
      {
        goto LABEL_25;
      }

      v47 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *v47 = 68158722;
      *(v47 + 4) = 2;
      *(v47 + 8) = 256;
      *(v47 + 10) = sub_1001DA630();

      *(v47 + 11) = 2082;
      v48 = sub_1001DA630();
      v49 = ConnectionID.debugDescription.getter(HIDWORD(v48));
      v51 = v22;
      v52 = sub_10015BA6C(v49, v50, &v99);

      *(v47 + 13) = v52;
      *(v47 + 21) = 2048;
      v53 = *&v7[v51[5]];
      sub_1001E2C1C(v7, _s11CompressionO12OutgoingDataVMa);
      *(v47 + 23) = v53;
      *(v47 + 31) = 2082;
      v54 = Tag.debugDescription.getter(v25 & 0xFFFFFFFF000000FFLL);
      v56 = sub_10015BA6C(v54, v55, &v99);

      *(v47 + 33) = v56;
      _os_log_impl(&_mh_execute_header, v45, v46, "[%.*hhx-%{public}s] Flushing %{iec-bytes}ld from output buffer to network (tag %{public}s).", v47, 0x29u);
      swift_arrayDestroy();
    }

    else
    {
      v95 = v27;
      if (qword_1005D2D80 != -1)
      {
        swift_once();
      }

      v72 = sub_1004A4A74();
      sub_1001C203C(v72, qword_1005D4680);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1001E2B98(v23, v7, _s11CompressionO12OutgoingDataVMa);
      v45 = sub_1004A4A54();
      v73 = sub_1004A6004();
      if (!os_log_type_enabled(v45, v73))
      {
        goto LABEL_25;
      }

      v74 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *v74 = 68158978;
      *(v74 + 4) = 2;
      *(v74 + 8) = 256;
      *(v74 + 10) = sub_1001DA630();

      *(v74 + 11) = 2082;
      v75 = sub_1001DA630();
      v76 = ConnectionID.debugDescription.getter(HIDWORD(v75));
      v78 = v25;
      v79 = v22;
      v80 = sub_10015BA6C(v76, v77, &v99);

      *(v74 + 13) = v80;
      *(v74 + 21) = 2048;
      v81 = *&v7[v79[5]];
      sub_1001E2C1C(v7, _s11CompressionO12OutgoingDataVMa);
      *(v74 + 23) = v81;
      *(v74 + 31) = 2082;
      v82 = Tag.debugDescription.getter(v78 & 0xFFFFFFFF000000FFLL);
      v84 = sub_10015BA6C(v82, v83, &v99);

      *(v74 + 33) = v84;
      *(v74 + 41) = 2082;
      v85 = Tag.debugDescription.getter(v95 & 0xFFFFFFFF000000FFLL);
      v87 = sub_10015BA6C(v85, v86, &v99);

      *(v74 + 43) = v87;
      _os_log_impl(&_mh_execute_header, v45, v73, "[%.*hhx-%{public}s] Flushing %{iec-bytes}ld from output buffer to network (tags %{public}s - %{public}s).", v74, 0x33u);
      swift_arrayDestroy();
    }

    goto LABEL_24;
  }

  if ((*(v26 + 8) & 1) == 0)
  {
    v89 = v25;
    v90 = 0;
    v95 = v27;
    if (qword_1005D2D80 != -1)
    {
      swift_once();
    }

    v57 = sub_1004A4A74();
    sub_1001C203C(v57, qword_1005D4680);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v7 = v92;
    sub_1001E2B98(v23, v92, _s11CompressionO12OutgoingDataVMa);
    v45 = sub_1004A4A54();
    v58 = sub_1004A6004();
    if (os_log_type_enabled(v45, v58))
    {
      v59 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *v59 = 68159234;
      *(v59 + 4) = 2;
      *(v59 + 8) = 256;
      *(v59 + 10) = sub_1001DA630();

      *(v59 + 11) = 2082;
      v60 = sub_1001DA630();
      v61 = ConnectionID.debugDescription.getter(HIDWORD(v60));
      v63 = v22;
      v64 = sub_10015BA6C(v61, v62, &v99);

      *(v59 + 13) = v64;
      *(v59 + 21) = 2048;
      v65 = *&v7[v63[5]];
      sub_1001E2C1C(v7, _s11CompressionO12OutgoingDataVMa);
      *(v59 + 23) = v65;
      *(v59 + 31) = 2048;
      *(v59 + 33) = v18;
      *(v59 + 41) = 2082;
      v66 = Tag.debugDescription.getter(v89 & 0xFFFFFFFF000000FFLL);
      v68 = sub_10015BA6C(v66, v67, &v99);

      *(v59 + 43) = v68;
      *(v59 + 51) = 2082;
      v69 = Tag.debugDescription.getter(v95 & 0xFFFFFFFF000000FFLL);
      v71 = sub_10015BA6C(v69, v70, &v99);

      *(v59 + 53) = v71;
      _os_log_impl(&_mh_execute_header, v45, v58, "[%.*hhx-%{public}s] Flushing %{iec-bytes}ld (of total %{iec-bytes}ld) from output buffer to network (tags %{public}s - %{public}s).", v59, 0x3Du);
      swift_arrayDestroy();

LABEL_24:

      return;
    }

LABEL_25:
    sub_1001E2C1C(v7, _s11CompressionO12OutgoingDataVMa);

    return;
  }

  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v29 = sub_1004A4A74();
  sub_1001C203C(v29, qword_1005D4680);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v30 = v91;
  sub_1001E2B98(v23, v91, _s11CompressionO12OutgoingDataVMa);
  v31 = sub_1004A4A54();
  v32 = sub_1004A6004();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v89 = v25;
    v34 = v33;
    v95 = swift_slowAlloc();
    v99 = v95;
    *v34 = 68158978;
    *(v34 + 4) = 2;
    *(v34 + 8) = 256;
    *(v34 + 10) = sub_1001DA630();

    *(v34 + 11) = 2082;
    v35 = sub_1001DA630();
    v36 = ConnectionID.debugDescription.getter(HIDWORD(v35));
    v38 = v22;
    v39 = sub_10015BA6C(v36, v37, &v99);

    *(v34 + 13) = v39;
    *(v34 + 21) = 2048;
    v40 = *(v30 + v38[5]);
    sub_1001E2C1C(v30, _s11CompressionO12OutgoingDataVMa);
    *(v34 + 23) = v40;
    *(v34 + 31) = 2048;
    *(v34 + 33) = v18;
    *(v34 + 41) = 2082;
    v41 = Tag.debugDescription.getter(v89 & 0xFFFFFFFF000000FFLL);
    v43 = sub_10015BA6C(v41, v42, &v99);

    *(v34 + 43) = v43;
    _os_log_impl(&_mh_execute_header, v31, v32, "[%.*hhx-%{public}s] Flushing %{iec-bytes}ld (of total %{iec-bytes}ld) from output buffer to network (tag %{public}s).", v34, 0x33u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1001E2C1C(v30, _s11CompressionO12OutgoingDataVMa);
  }
}

uint64_t sub_1001DFBA8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1004A5384();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  if (a3)
  {
    v59 = sub_1004A4384();
    v60 = v15;
    v16 = sub_1001E194C(&off_1005A3DF0);
    v18 = v17;
    v57 = &type metadata for Data;
    v58 = &protocol witness table for Data;
    *&v55 = v16;
    *(&v55 + 1) = v17;
    v19 = sub_10002587C(&v55, &type metadata for Data);
    v20 = *v19;
    v21 = v19[1];
    sub_100014CEC(v16, v18);
    sub_1001E153C(v20, v21);
    sub_100014D40(v16, v18);
    sub_1000197E0(&v55);
    v22 = v59;
    v23 = v60;
    v24 = v60 >> 62;
    if ((v60 >> 62) > 1)
    {
      if (v24 != 2)
      {
        *(&v55 + 6) = 0;
        *&v55 = 0;
        goto LABEL_55;
      }

      v52 = v10;
      v53 = a5;
      v45 = *(v59 + 16);
      v46 = *(v59 + 24);
      if (sub_1004A40D4() && __OFSUB__(v45, sub_1004A4104()))
      {
        goto LABEL_62;
      }

      if (__OFSUB__(v46, v45))
      {
        goto LABEL_61;
      }

      sub_1004A40F4();
      sub_1004A5324();
      sub_10018E150(v54, a2, 1);
      a5 = v53;
    }

    else
    {
      if (!v24)
      {
        *&v55 = v59;
        DWORD2(v55) = v60;
        WORD6(v55) = WORD2(v60);
LABEL_55:
        sub_1004A5324();
        sub_10018E150(v54, a2, 1);
        goto LABEL_56;
      }

      v52 = v10;
      v53 = a5;
      if (v59 >> 32 < v59)
      {
        goto LABEL_60;
      }

      if (sub_1004A40D4() && __OFSUB__(v22, sub_1004A4104()))
      {
        goto LABEL_63;
      }

      a5 = v53;
      sub_1004A40F4();
      sub_1004A5324();
      sub_10018E150(v54, a2, 1);
    }

    v10 = v52;
LABEL_56:
    sub_100014D40(v22, v23);
    goto LABEL_57;
  }

  v52 = v10;
  v53 = a5;
  v25 = HIBYTE(a2) & 0xF;
  *&v55 = a1;
  *(&v55 + 1) = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v25 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v56 = 0;
  v57 = v25;

  v26 = sub_1004A59D4();
  if (v27)
  {
    v28 = v26;
    v29 = v27;
    v30 = _swiftEmptyArrayStorage;
    v51 = a4;
    while (1)
    {
      while (1)
      {
        if ((v28 != 2573 || v29 != 0xE200000000000000) && (sub_1004A6D34() & 1) == 0)
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
            v37 = sub_1004A5884();
          }

          else
          {
            if ((v29 & 0x2000000000000000) != 0)
            {
              v34 = v28;
            }

            else
            {
              v33 = ((v28 & 0x1000000000000000) != 0 ? (v29 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1004A67E4());
              v34 = *v33;
            }

            v35 = v34;
            v36 = (__clz(~v34) - 24) << 16;
            v37 = v35 < 0 ? v36 : 65541;
          }

          if (v37 >> 14 == 4 * v32)
          {
            v38 = sub_1001E11BC(v28, v29);
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
        v28 = sub_1004A59D4();
        v29 = v31;
        if (!v31)
        {
          a4 = v51;
          goto LABEL_48;
        }
      }

      v39 = sub_1001E11BC(v28, v29);
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
        v30 = sub_10015BF20(0, *(v30 + 2) + 1, 1, v30);
      }

      v43 = *(v30 + 2);
      v42 = *(v30 + 3);
      if (v43 >= v42 >> 1)
      {
        v30 = sub_10015BF20((v42 > 1), v43 + 1, 1, v30);
      }

      *(v30 + 2) = v43 + 1;
      v30[v43 + 32] = v41;
      v28 = sub_1004A59D4();
      v29 = v44;
      a4 = v51;
      if (!v44)
      {
        goto LABEL_48;
      }
    }
  }

  v30 = _swiftEmptyArrayStorage;
LABEL_48:

  v47 = &v30[*(v30 + 2) + 32];
  sub_1004A5324();
  sub_10018E150(v54, a2, 0);

  v10 = v52;
  a5 = v53;
LABEL_57:
  (*(v11 + 32))(a5, v14, v10);
  result = type metadata accessor for HandshakeReply.Encoded();
  v49 = a5 + *(result + 20);
  *v49 = a4;
  *(v49 + 4) = HIDWORD(a4);
  return result;
}

uint64_t sub_1001E0180@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1001E1794(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1004A4114();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1004A40C4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1004A43C4();
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

uint64_t sub_1001E0248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1004A5384();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = *(sub_10000C9C0(&qword_1005D4798, &qword_1004E06A0) + 48);
    (*(v7 + 16))(v10, a2, v6);
    sub_1001E2D90(&qword_1005D47B0, 255, &type metadata accessor for DispatchData);
    result = sub_1004A5AD4();
    *(a3 + v11) = result;
  }

  else
  {
    v13 = *(sub_10000C9C0(&qword_1005D4798, &qword_1004E06A0) + 48);
    (*(v7 + 16))(v10, a2, v6);
    sub_1001E2D90(&qword_1005D47B0, 255, &type metadata accessor for DispatchData);
    result = sub_1004A5AD4();
    *(a3 + v13) = result;
  }

  return result;
}

char *sub_1001E0434(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_100014D40(v6, v5);
      v19[0] = v6;
      LOWORD(v19[1]) = v5;
      BYTE2(v19[1]) = BYTE2(v5);
      BYTE3(v19[1]) = BYTE3(v5);
      BYTE4(v19[1]) = BYTE4(v5);
      BYTE5(v19[1]) = BYTE5(v5);
      BYTE6(v19[1]) = BYTE6(v5);
      result = a1(&v20, v19, v19 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v3 = v19[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100014D40(v6, v5);
    *v3 = xmmword_1004DC1F0;
    sub_100014D40(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1004A40D4() && __OFSUB__(v6, sub_1004A4104()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1004A4114();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1004A40B4();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1001E1058(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_100014D40(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1004DC1F0;
    sub_100014D40(0, 0xC000000000000000);
    sub_1004A4394();
    result = sub_1001E1058(*(v20 + 2), *(v20 + 3), a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      return result;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v20, v19, v19);
  if (!v2)
  {
    return v20;
  }

  return result;
}

char *sub_1001E07C0(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_100014D40(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      result = a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        result = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v3 = v21[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100014D40(v6, v5);
    *v3 = xmmword_1004DC1F0;
    sub_100014D40(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1004A40D4() && __OFSUB__(v6, sub_1004A4104()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1004A4114();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1004A40B4();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1001E1108(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_100014D40(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1004DC1F0;
    sub_100014D40(0, 0xC000000000000000);
    sub_1004A4394();
    result = sub_1001E1108(*(v19 + 2), *(v19 + 3), a1);
    v10 = v20 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v19;
      v3[1] = v10;
      return result;
    }

    *v3 = v19;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v2)
  {
    return v19;
  }

  return result;
}

void sub_1001E0B64(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_100014D40(v5, v4);
      *&v21 = v5;
      *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_1004DC1F0;
      sub_100014D40(0, 0xC000000000000000);
      sub_1001E0F7C(a1);
      v7 = v21;
      v8 = *(&v21 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_100014D40(v5, v4);
      *&v21 = v5;
      WORD4(v21) = v4;
      BYTE10(v21) = BYTE2(v4);
      BYTE11(v21) = BYTE3(v4);
      BYTE12(v21) = BYTE4(v4);
      BYTE13(v21) = BYTE5(v4);
      BYTE14(v21) = BYTE6(v4);
      a1(&v21, &v21 + BYTE6(v4));
      v7 = v21;
      v8 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
    }

    *v2 = v7;
    v2[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    *(&v21 + 7) = 0;
    *&v21 = 0;
    a1(&v21, &v21);
    return;
  }

  sub_100014D40(v5, v4);
  *&v21 = v5;
  *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_1004DC1F0;
  sub_100014D40(0, 0xC000000000000000);
  sub_1004A4394();
  v9 = *(&v21 + 1);
  v10 = *(v21 + 16);
  v11 = *(v21 + 24);
  v12 = sub_1004A40D4();
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = sub_1004A4104();
  v15 = v10 - v14;
  if (__OFSUB__(v10, v14))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v16 = __OFSUB__(v11, v10);
  v17 = v11 - v10;
  if (v16)
  {
    goto LABEL_17;
  }

  v18 = sub_1004A40F4();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  a1(v13 + v15, v13 + v15 + v19);
  *v2 = v21;
  v2[1] = v9 | 0x8000000000000000;
}

_BYTE *sub_1001E0E14@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_1001E1794(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1001E184C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1001E18C8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1001E0EA8(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

void *sub_1001E0F10(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_1001E0F7C(void (*a1)(uint64_t, uint64_t))
{
  sub_1004A43A4();
  v3 = *v1;
  v4 = v1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = a1;
  v5 = *(v1 + 1);

  v6 = sub_1004A40D4();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_1004A4104();
  v9 = v3 - v8;
  if (__OFSUB__(v3, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v4 - v3;
  v11 = sub_1004A40F4();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13(v7 + v9, v7 + v9 + v12);
}

char *sub_1001E1058(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1004A40D4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1004A4104();
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

  v12 = sub_1004A40F4();
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

char *sub_1001E1108(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1004A40D4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1004A4104();
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

  v12 = sub_1004A40F4();
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

unint64_t sub_1001E11BC(unint64_t a1, unint64_t a2)
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
    v5 = sub_1001E130C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1004A6714();
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
        v7 = (sub_1004A67E4() + v6);
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

unint64_t sub_1001E130C(unint64_t result, unint64_t a2, unint64_t a3)
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
    result = sub_1001E13A4(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1001E1418(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1001E13A4(unint64_t result, unint64_t a2, unint64_t a3)
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
    result = sub_10010C210(result, a2, a3);
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

unint64_t sub_1001E1418(unint64_t result, uint64_t a2, unint64_t a3)
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
        v6 = sub_1004A67E4();
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

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_1001E153C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_1004A43F4();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1001E1674(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_1001E1674(v3, v4);
  }

  return sub_1004A43F4();
}

uint64_t sub_1001E1674(uint64_t a1, uint64_t a2)
{
  result = sub_1004A40D4();
  if (!result || (result = sub_1004A4104(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1004A40F4();
      return sub_1004A43F4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E1708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1001E3450(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t sub_1001E1744@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1004A6734();
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

uint64_t sub_1001E1794(_BYTE *__src, _BYTE *a2)
{
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
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1001E184C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1004A4114();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1004A40C4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1004A43C4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1001E18C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1004A4114();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1004A40C4();
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

uint64_t sub_1001E194C(uint64_t a1)
{
  v9 = sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  v10 = sub_1001E29A4();
  v8[0] = a1;
  v2 = sub_10002587C(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1001E0E14(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1000197E0(v8);
  return v5;
}

uint64_t sub_1001E19FC(uint64_t result)
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
      v2 = sub_1004A4114();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1004A40E4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1004A43C4();
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

uint64_t sub_1001E1A9C(uint64_t a1, uint64_t a2)
{
  if (qword_1005D2D88 != -1)
  {
    swift_once();
  }

  v4 = sub_1004A5044();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v7 = sub_1004A5024();
  v10[0] = a1;
  sub_1004A5064();
  v10[3] = type metadata accessor for OutboundContent(0);
  v8 = sub_1000B3774(v10);
  sub_1001E2B98(a2, v8, type metadata accessor for OutboundContent);
  sub_1004A5064();
  return v7;
}

uint64_t sub_1001E1BD0(uint64_t a1)
{
  v32 = _s11CompressionO12OutgoingDataVMa();
  v2 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v33 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v30[-v5];
  v34 = sub_1004A4944();
  v36 = *(v34 - 8);
  v7 = *(v36 + 64);
  __chkstk_darwin(v34);
  v35 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10000C9C0(&qword_1005D3CE8, &qword_1004DDA78);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30[-v11];
  v13 = sub_1004A4904();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v30[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1004A5384();
  sub_1001E2D90(&qword_1005D3650, 255, &type metadata accessor for DispatchData);
  sub_1004A5E64();
  result = sub_1004A5EA4();
  if (v37[0] == v37[4])
  {
    return result;
  }

  sub_1004A50D4();
  sub_1004A5134();
  sub_1004A5094();

  if (!v37[3])
  {
    sub_100025F40(v37, &qword_1005D4768, &unk_1004F5B20);
    (*(v14 + 56))(v12, 1, 1, v13);
    return sub_100025F40(v12, &qword_1005D3CE8, &qword_1004DDA78);
  }

  v19 = swift_dynamicCast();
  (*(v14 + 56))(v12, v19 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_100025F40(v12, &qword_1005D3CE8, &qword_1004DDA78);
  }

  (*(v14 + 32))(v17, v12, v13);
  v20 = tracingSignposter.unsafeMutableAddressor();
  v21 = v34;
  (*(v36 + 16))(v35, v20, v34);
  sub_1001E2B98(a1, v6, _s11CompressionO12OutgoingDataVMa);
  v22 = v33;
  sub_1001E2B98(a1, v33, _s11CompressionO12OutgoingDataVMa);
  v23 = sub_1004A4934();
  v24 = sub_1004A6154();
  if (sub_1004A6354())
  {
    v25 = swift_slowAlloc();
    v31 = v24;
    v26 = v25;
    *v25 = 134218240;
    v27 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    sub_1001E2C1C(v6, _s11CompressionO12OutgoingDataVMa);
    *(v26 + 1) = v27;
    *(v26 + 6) = 2048;
    v28 = *&v22[*(v32 + 20)];
    sub_1001E2C1C(v22, _s11CompressionO12OutgoingDataVMa);
    *(v26 + 14) = v28;
    v29 = sub_1004A48F4();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, v31, v29, "Connection.didSendData", "%ld,%ld", v26, 0x16u);
  }

  else
  {
    sub_1001E2C1C(v22, _s11CompressionO12OutgoingDataVMa);
    sub_1001E2C1C(v6, _s11CompressionO12OutgoingDataVMa);
  }

  (*(v36 + 8))(v35, v21);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1001E210C()
{
  if (qword_1005D2D80 != -1)
  {
    swift_once();
  }

  v1 = sub_1004A4A74();
  sub_1001C203C(v1, qword_1005D4680);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v2 = sub_1004A4A54();
  v3 = sub_1004A6034();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 68158210;
    *(v4 + 4) = 2;
    *(v4 + 8) = 256;
    *(v4 + 10) = sub_1001DA630();

    *(v4 + 11) = 2082;
    v6 = sub_1001DA630();
    v7 = ConnectionID.debugDescription.getter(HIDWORD(v6));
    v9 = sub_10015BA6C(v7, v8, &v11);

    *(v4 + 13) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%.*hhx-%{public}s] Enabling Openwave Messaging workaround.", v4, 0x15u);
    sub_1000197E0(v5);
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

void sub_1001E22DC(uint64_t a1)
{
  v3 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OutboundContent(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v9 = type metadata accessor for Framer.OutboundMessage();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;

  sub_1001DD868(v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1001DC1B8(a1);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1001DE568();
    }

    else
    {
      sub_1001E210C();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1001DDF00(a1, *v12);
    }

    else
    {
      v17 = v12[1];
      v18 = v12[2];
      *(v1 + 242) = *v12;
      *(v1 + 243) = v17;
      *(v1 + 244) = v18;
    }
  }

  else
  {
    v14 = *v12;
    v15 = sub_10000C9C0(&qword_1005D4750, &qword_1004E0688);
    sub_1001E2B30(&v12[*(v15 + 48)], v8, type metadata accessor for OutboundContent);
    v16 = sub_1001DE910(v14, v8, a1);
    if ((v16 & 1) == 0)
    {
      swift_beginAccess();
      v19 = *(v1 + 224);
      v22[0] = *(v1 + 208);
      v22[1] = v19;
      v23 = *(v1 + 240);

      v20 = sub_1001B435C();
      sub_1001E2890(v22);
      if (v20 >= 10000)
      {
        sub_1001DC1B8(a1);
      }
    }

    sub_1001E2C1C(v8, type metadata accessor for OutboundContent);
  }

  sub_1004A5104(0);
}

uint64_t type metadata accessor for Framer.OutboundMessage()
{
  result = qword_1005D4830;
  if (!qword_1005D4830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1001E28EC()
{
  result = qword_1005D4758;
  if (!qword_1005D4758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4758);
  }

  return result;
}

unint64_t sub_1001E2948()
{
  result = qword_1005D4760;
  if (!qword_1005D4760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4760);
  }

  return result;
}

unint64_t sub_1001E29A4()
{
  result = qword_1005D2F10;
  if (!qword_1005D2F10)
  {
    sub_10000DEFC(&unk_1005D8FF0, &unk_1004DC230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D2F10);
  }

  return result;
}

uint64_t sub_1001E2A08(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001E2A48(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1001E2ADC()
{
  result = qword_1005D4780;
  if (!qword_1005D4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4780);
  }

  return result;
}

uint64_t sub_1001E2B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E2B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E2C1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001E2C7C()
{
  v1 = sub_1004A4904();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001E2D04()
{
  v0 = *(*(sub_1004A4904() - 8) + 80);

  return sub_1001DB2DC();
}

uint64_t sub_1001E2D90(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001E2DD8()
{
  v1 = sub_1004A4904();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1001E2E78(uint64_t a1)
{
  v3 = *(sub_1004A4904() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1001DADBC(a1, v1 + v4, v6, v7);
}

void *sub_1001E2F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1001E0F10(sub_1001E2F80, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1001E2FA0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001E2FDC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_1004A5214();
  v6 = (*(*(v5 - 8) + 48))(a1, 1, v5) == 1;
  return v4(v6);
}

uint64_t sub_1001E3054(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1001E3064()
{
  if (qword_1005D2D88 != -1)
  {
    swift_once();
  }

  if (sub_1004A4CE4())
  {
    sub_1004A5044();
    if (swift_dynamicCastClass())
    {
      sub_1004A5054();
      if (v7)
      {
        sub_10000C9C0(&qword_1005D4790, &qword_1004E0698);
        if (swift_dynamicCast())
        {

          return v5;
        }
      }

      else
      {
        sub_100025F40(v6, &qword_1005D4768, &unk_1004F5B20);
      }

      sub_1004A5054();
      if (v7)
      {

        sub_100025F40(v6, &qword_1005D4768, &unk_1004F5B20);
        return 0;
      }

      sub_100025F40(v6, &qword_1005D4768, &unk_1004F5B20);
      if (qword_1005D2D80 != -1)
      {
        swift_once();
      }

      v1 = sub_1004A4A74();
      sub_1001C203C(v1, qword_1005D4680);
      v2 = sub_1004A4A54();
      v3 = sub_1004A6024();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, v3, "Received invalid message.", v4, 2u);
      }
    }
  }

  return 1;
}

void sub_1001E32E8()
{
  sub_1001E3364();
  if (v0 <= 0x3F)
  {
    sub_1004A5154();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1001E3364()
{
  if (!qword_1005D4840)
  {
    type metadata accessor for OutboundContent(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D4840);
    }
  }
}

void *sub_1001E33CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = **(v3 + 16);
  v7[2] = &v8;
  result = sub_1001E0EA8(sub_1001E3430, v7, a1, a2);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1001E3450(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = result;
    sub_1004A6AA4();
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

        sub_1004A6AA4();
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

uint64_t sub_1001E350C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001E3534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v143 = a3;
  v147 = type metadata accessor for Deflate.InputBuffer(0);
  v5 = *(*(v147 - 8) + 64);
  __chkstk_darwin(v147);
  v146 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Deflate.Result(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v145 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C9C0(&qword_1005D4500, &qword_1004E0320);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v149 = &v140 - v12;
  v13 = sub_10000C9C0(&qword_1005D4878, &qword_1004E0790);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v165 = &v140 - v15;
  v161 = _s12OutputHelperV5ChunkVMa(0);
  v170 = *(v161 - 8);
  v16 = *(v170 + 64);
  __chkstk_darwin(v161);
  v144 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v150 = &v140 - v19;
  __chkstk_darwin(v20);
  v163 = &v140 - v21;
  v22 = sub_10000C9C0(&qword_1005D4880, &qword_1004E0798);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v159 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v140 - v26;
  v172 = _s19CommandOutputBufferV8SendDataVMa(0);
  v169 = *(v172 - 8);
  v28 = *(v169 + 8);
  __chkstk_darwin(v172);
  v156 = &v140 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v155 = &v140 - v31;
  __chkstk_darwin(v32);
  v164 = &v140 - v33;
  __chkstk_darwin(v34);
  v36 = &v140 - v35;
  __chkstk_darwin(v37);
  v39 = &v140 - v38;
  __chkstk_darwin(v40);
  v42 = &v140 - v41;
  v43 = _s12OutputHelperVMa(0);
  v44 = *(*(v43 - 1) + 64);
  __chkstk_darwin(v43);
  v46 = &v140 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1004A5384();
  v148 = *(v158 - 8);
  v47 = *(v148 + 64);
  __chkstk_darwin(v158);
  __chkstk_darwin(v48);
  v51 = &v140 - v50;
  v157 = a2;
  if (a1)
  {
    v141 = v49;
    *v46 = 0;
    v52 = v43[5];
    v53 = a1;

    sub_1004A5344();
    v54 = v170;
    v55 = v170 + 56;
    v56 = *(v170 + 56);
    v162 = v43[6];
    v56(&v46[v162], 1, 1, v161);
    *&v46[v43[7]] = v53;
    swift_beginAccess();
    v57 = v171;
    sub_1001B53B0(v159);
    v58 = v57;
    if (!v57)
    {
      v140 = v52;
      v151 = v56;
      v152 = v55;
      v166 = v46;
      v142 = v53;
      v59 = 0;
      v60 = 0;
      v171 = 0;
      v153 = (v169 + 48);
      v154 = (v148 + 16);
      v160 = (v54 + 48);
      v61 = 1;
      LODWORD(v52) = 1;
      v62 = v159;
      while (1)
      {
        swift_endAccess();
        v63 = v172;
        if ((*v153)(v62, 1, v172) == 1)
        {
          sub_100025F40(v62, &qword_1005D4880, &qword_1004E0798);
          v112 = v141;
          sub_1001D4488(v141);
          v170 = v59;
          v122 = v60;
          v132 = v148;
          v111 = v143;
          v133 = v158;
          (*(v148 + 16))(v143, v112, v158);
          v134 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          (*(v132 + 8))(v112, v133);
          v110 = v134;
          sub_1001E4744(v166, _s12OutputHelperVMa);
          v109 = v171;
          goto LABEL_46;
        }

        v64 = v156;
        sub_1001E46DC(v62, v156, _s19CommandOutputBufferV8SendDataVMa);
        v65 = (v64 + *(v63 + 20));
        v66 = *v65;
        v67 = *(v65 + 1);
        v68 = v66 | (v67 << 32);
        v69 = v66 == v59 && v67 == HIDWORD(v59);
        if (v69)
        {
          v70 = v60;
        }

        else
        {
          v70 = v66 | (v67 << 32);
        }

        if (v69)
        {
          v71 = v52;
        }

        else
        {
          v71 = 0;
        }

        if (v61)
        {
          v59 = v68;
        }

        else
        {
          v60 = v70;
          LODWORD(v52) = v71;
        }

        v72 = v64;
        v73 = v155;
        sub_1001E46DC(v72, v155, _s19CommandOutputBufferV8SendDataVMa);
        v74 = v164;
        sub_1001E46DC(v73, v164, _s19CommandOutputBufferV8SendDataVMa);
        result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        v76 = v165;
        if (__OFADD__(v171, result))
        {
          __break(1u);
          return result;
        }

        v170 = v59;
        v171 += result;
        LODWORD(v167) = v52;
        v168 = v60;
        v169 = v58;
        v77 = *(v74 + *(v172 + 24));
        v78 = *v154;
        v79 = v163;
        (*v154)(v163, v74, v158);
        v81 = v161;
        v80 = v162;
        *(v79 + *(v161 + 20)) = v77;
        v82 = v166;
        sub_1001D4888(&v166[v80], v76);
        v83 = *v160;
        if ((*v160)(v76, 1, v81) == 1)
        {
          break;
        }

        v84 = v150;
        sub_1001E4678(v76, v150);
        v85 = v81;
        if (v77 == *(v84 + *(v81 + 20)))
        {
          v90 = v83(&v166[v162], 1, v81);
          v58 = v169;
          v91 = v163;
          if (!v90)
          {
            sub_1004A5354();
          }

          sub_1001E4744(v84, _s12OutputHelperV5ChunkVMa);
          sub_1001E4744(v91, _s12OutputHelperV5ChunkVMa);
          sub_1001E4744(v164, _s19CommandOutputBufferV8SendDataVMa);
          sub_1001E4744(v165, _s12OutputHelperV5ChunkVMa);
          goto LABEL_5;
        }

        sub_1001E4744(v84, _s12OutputHelperV5ChunkVMa);
        v86 = v162;
        v87 = v149;
        sub_1001D4888(&v166[v162], v149);
        v88 = v83(v87, 1, v81);
        v58 = v169;
        if (v88 == 1)
        {
          sub_1001E4744(v164, _s19CommandOutputBufferV8SendDataVMa);
          sub_100025F40(v87, &qword_1005D4500, &qword_1004E0320);
          v59 = v170;
          v52 = v166;
          v62 = v159;
          v89 = v151;
        }

        else
        {
          v92 = v87;
          v93 = v144;
          sub_1001E46DC(v92, v144, _s12OutputHelperV5ChunkVMa);
          v94 = v85;
          v95 = v146;
          v78(v146, v93, v158);
          swift_storeEnumTagMultiPayload();
          v96 = v145;
          sub_1001D0774(v95, *(v93 + *(v94 + 20)), v145);
          v59 = v170;
          v62 = v159;
          if (v58)
          {
            sub_1001E4744(v95, type metadata accessor for Deflate.InputBuffer);
            sub_1001E4744(v93, _s12OutputHelperV5ChunkVMa);
            sub_1001E4744(v163, _s12OutputHelperV5ChunkVMa);
            sub_1001E4744(v164, _s19CommandOutputBufferV8SendDataVMa);
            v139 = v166;
            sub_100025F40(&v166[v86], &qword_1005D4500, &qword_1004E0320);
            v151(&v139[v86], 1, 1, v161);
            sub_1001E4744(v165, _s12OutputHelperV5ChunkVMa);
            v113 = v139;
            goto LABEL_40;
          }

          sub_1001E4744(v95, type metadata accessor for Deflate.InputBuffer);
          v52 = v166;
          sub_1004A5354();
          sub_1001E4744(v96, type metadata accessor for Deflate.Result);
          sub_1001E4744(v93, _s12OutputHelperV5ChunkVMa);
          sub_1001E4744(v164, _s19CommandOutputBufferV8SendDataVMa);
          sub_100025F40(&v52[v86], &qword_1005D4500, &qword_1004E0320);
          v85 = v161;
          v89 = v151;
          v151(&v52[v86], 1, 1, v161);
        }

        sub_100025F40(&v52[v86], &qword_1005D4500, &qword_1004E0320);
        sub_1001E46DC(v163, &v52[v86], _s12OutputHelperV5ChunkVMa);
        v89(&v52[v86], 0, 1, v85);
        sub_1001E4744(v165, _s12OutputHelperV5ChunkVMa);
        v60 = v168;
        LODWORD(v52) = v167;
LABEL_6:
        swift_beginAccess();
        sub_1001B53B0(v62);
        v61 = 0;
        if (v58)
        {
          v46 = v166;
          goto LABEL_39;
        }
      }

      sub_1001E4744(v74, _s19CommandOutputBufferV8SendDataVMa);
      sub_100025F40(&v82[v80], &qword_1005D4500, &qword_1004E0320);
      sub_1001E46DC(v79, &v82[v80], _s12OutputHelperV5ChunkVMa);
      v151(&v82[v80], 0, 1, v81);
      v58 = v169;
LABEL_5:
      v60 = v168;
      v59 = v170;
      LODWORD(v52) = v167;
      v62 = v159;
      goto LABEL_6;
    }

LABEL_39:
    swift_endAccess();
    v113 = v46;
LABEL_40:
    sub_1001E4744(v113, _s12OutputHelperVMa);
  }

  v165 = v42;
  v167 = v39;
  v97 = v143;
  v168 = v36;
  sub_1004A5344();
  swift_beginAccess();
  v98 = v171;
  sub_1001B53B0(v27);
  if (v98)
  {
    swift_endAccess();
    (*(v148 + 8))(v51, v158);
  }

  v171 = v51;
  v99 = v97;
  v142 = 0;
  swift_endAccess();
  v100 = *(v169 + 6);
  v101 = 1;
  v102 = v27;
  v103 = v27;
  v104 = v172;
  v169 += 48;
  v166 = v100;
  v105 = (v100)(v102, 1, v172);
  v61 = v105 == 1;
  if (v105 == 1)
  {
    v170 = 0;
    v122 = 0;
    v52 = v99;
  }

  else
  {
    v114 = v168;
    sub_1001E46DC(v103, v168, _s19CommandOutputBufferV8SendDataVMa);
    v115 = (v114 + *(v104 + 20));
    v116 = *v115;
    v117 = *(v115 + 1);
    v118 = v114;
    v119 = v167;
    sub_1001E46DC(v118, v167, _s19CommandOutputBufferV8SendDataVMa);
    v120 = v165;
    sub_1001E46DC(v119, v165, _s19CommandOutputBufferV8SendDataVMa);
    sub_1004A5354();
    sub_1001E4744(v120, _s19CommandOutputBufferV8SendDataVMa);
    swift_beginAccess();
    sub_1001B53B0(v103);
    v121 = v117;
    v122 = 0;
    v163 = v121;
    v164 = v116;
    v170 = v116 | (v121 << 32);
    v101 = 1;
    while (1)
    {
      swift_endAccess();
      if ((v166)(v103, 1, v104) == 1)
      {
        break;
      }

      v123 = v168;
      sub_1001E46DC(v103, v168, _s19CommandOutputBufferV8SendDataVMa);
      v124 = (v123 + *(v104 + 20));
      v125 = *v124;
      v126 = *(v124 + 1);
      v127 = v126 == v163;
      v128 = v125 | (v126 << 32);
      v129 = v125 == v164 && v127;
      if (!v129)
      {
        v122 = v128;
      }

      v101 &= v129;
      v130 = v123;
      v131 = v167;
      sub_1001E46DC(v130, v167, _s19CommandOutputBufferV8SendDataVMa);
      sub_1001E46DC(v131, v120, _s19CommandOutputBufferV8SendDataVMa);
      sub_1004A5354();
      sub_1001E4744(v120, _s19CommandOutputBufferV8SendDataVMa);
      swift_beginAccess();
      sub_1001B53B0(v103);
    }

    v52 = v143;
  }

  sub_100025F40(v103, &qword_1005D4880, &qword_1004E0798);
  v106 = v148;
  v107 = v171;
  v108 = v158;
  (*(v148 + 16))(v52, v171, v158);
  v109 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  (*(v106 + 8))(v107, v108);
  v110 = 0;
  v111 = v52;
  LOBYTE(v52) = v101;
LABEL_46:
  v135 = v142 == 0;

  result = _s11CompressionO12OutgoingDataVMa();
  *&v111[*(result + 20)] = v109;
  v136 = &v111[*(result + 24)];
  *v136 = v110;
  v136[8] = v135;
  v137 = &v111[*(result + 28)];
  *v137 = v170;
  v137[8] = v61;
  v138 = &v111[*(result + 32)];
  *v138 = v122;
  v138[8] = v52 & 1;
  return result;
}

uint64_t _s11CompressionO12OutgoingDataVMa()
{
  result = qword_1005D48E0;
  if (!qword_1005D48E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E4678(uint64_t a1, uint64_t a2)
{
  v4 = _s12OutputHelperV5ChunkVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E46DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E4744(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001E47A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1001E47EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001E486C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1001E48DC()
{
  sub_1004A5384();
  if (v0 <= 0x3F)
  {
    sub_1000576D4(319, &qword_1005CE8C8);
    if (v1 <= 0x3F)
    {
      sub_1000576D4(319, &unk_1005D48F0);
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
  v7 = sub_1004A5384();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  result = type metadata accessor for HandshakeReply.Encoded();
  v9 = a3 + *(result + 20);
  *v9 = v3;
  *(v9 + 4) = v6;
  return result;
}

uint64_t type metadata accessor for HandshakeReply.Encoded()
{
  result = qword_1005D4988;
  if (!qword_1005D4988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E4A80(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      return sub_10003A194(a1, a2, a4, a5);
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
    return sub_1004A6D34();
  }
}

uint64_t sub_1001E4ACC(uint64_t a1, uint64_t a2)
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
      return sub_10003A194(v4, v5, v6, v7);
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
    return sub_1004A6D34();
  }
}

uint64_t MessageSectionData.Segment.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004A5384();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MessageSectionData.Segment.data.setter(uint64_t a1)
{
  v3 = sub_1004A5384();
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

uint64_t sub_1001E4CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
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
    sub_1001B60F8();
    sub_1004A5E64();
    v22 = sub_1004A5EA4();
    if (v26 == v25[2])
    {
      v19 = 1;
    }

    else
    {
      __chkstk_darwin(v22);
      v25[-2] = v8;
      v25[-1] = v11;
      sub_1004A5314();
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

uint64_t sub_1001E4F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001E4FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001E503C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001E5054(uint64_t a1, int a2)
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

uint64_t sub_1001E509C(uint64_t result, int a2, int a3)
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

uint64_t sub_1001E5104@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v1 + 40);
  v9 = *(v1 + 56);
  v10 = *(v1 + 72);
  v6 = *(v1 + 8);
  v7 = *(v1 + 24);
  result = sub_1001E5658();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 64) = 2;
  return result;
}

uint64_t sub_1001E5164(uint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100124EFC(a1, v6);
  if (swift_getEnumCaseMultiPayload() != 21)
  {
    return sub_100124F60(v6);
  }

  v10 = *v6;
  v7 = *(v6 + 2);
  v8 = v1[12];
  result = sub_10018A510(v1[10], v1[11]);
  *(v1 + 5) = v10;
  v1[12] = v7;
  return result;
}

double sub_1001E5230@<D0>(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1 || (v4 = v2[11]) == 0)
  {
    *&v14 = 0;
    v13 = 9uLL;
    BYTE8(v14) = -64;
    sub_100197E60(&v13);
  }

  else
  {
    v5 = v2[12];
    v6 = v2[10];

    ServerID.init(_:)(v6, v4, v5, &v13);
    sub_1001E539C(&v13);
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
  UInt32.init(_:)(&v25);
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

uint64_t sub_1001E53A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v27 = *(a1 + 16);
  sub_100091A08(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_1004A6554();
  v6 = v27;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_30;
    }

    v11 = *(*(a1 + 48) + result);
    if (v11 <= 1)
    {
      if (*(*(a1 + 48) + result))
      {
        v12 = 0xE90000000000006CLL;
        v13 = 0x6C69662D6B636162;
      }

      else
      {
        v12 = 0xE700000000000000;
        v13 = 0x72657865646E69;
      }
    }

    else if (v11 == 2)
    {
      v12 = 0xE800000000000000;
      v13 = 0x6574616E6F646572;
    }

    else if (v11 == 3)
    {
      v12 = 0xE800000000000000;
      v13 = 0x6369646F69726570;
    }

    else
    {
      v12 = 0xE400000000000000;
      v13 = 1752397168;
    }

    v14 = *(a1 + 36);
    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    if (v16 >= v15 >> 1)
    {
      v25 = *(a1 + 36);
      v26 = result;
      sub_100091A08((v15 > 1), v16 + 1, 1);
      v6 = v27;
      v14 = v25;
      result = v26;
    }

    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[2 * v16];
    v17[4] = v13;
    v17[5] = v12;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_31;
    }

    v3 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v9);
    if ((v18 & v10) == 0)
    {
      goto LABEL_32;
    }

    if (v14 != *(a1 + 36))
    {
      goto LABEL_33;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (a1 + 64 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_100020944(result, v14, 0);
          v6 = v27;
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_100020944(result, v14, 0);
      v6 = v27;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return _swiftEmptyArrayStorage;
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

uint64_t sub_1001E5658()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
    v3 = v0[1];

    sub_1001E5E30(v2, v1, 1701667182, 0xE400000000000000);
  }

  v4 = v0[3];
  if (v4)
  {
    v5 = v0[2];
    v6 = v0[3];

    sub_1001E5E30(v5, v4, 0x6E6F6973726576, 0xE700000000000000);
  }

  v7 = v0[5];
  if (v7)
  {
    v8 = v0[4];
    v9 = v0[5];

    sub_1001E5E30(v8, v7, 29551, 0xE200000000000000);
  }

  v10 = v0[7];
  if (v10)
  {
    v11 = v0[6];
    v12 = v0[7];

    sub_1001E5E30(v11, v10, 0x69737265762D736FLL, 0xEA00000000006E6FLL);
  }

  sub_1001E5E30(0x6E4920656C707041, 0xE900000000000063, 0x726F646E6576, 0xE600000000000000);
  v13 = v0[8];
  v14 = sub_1001E7B4C(v13);
  sub_1001E5E30(v14, v15, 0x746E657665, 0xE500000000000000);
  if (*(v13 + 16))
  {
    v16 = *(v13 + 40);
    sub_1004A6E94();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v17 = sub_1004A6F14();
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

        v22 = sub_1004A6D34();

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
      sub_1001E5E30(49, 0xE100000000000000, 0x72657865646E69, 0xE700000000000000);
    }
  }

  return 0;
}

void sub_1001E592C(__int128 *a1)
{
  v2 = v1;
  if (v2[1])
  {
    v4 = *v2;
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v2[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1004A6EC4(0);
    if (v2[3])
    {
LABEL_3:
      v5 = v2[2];
      sub_1004A6EC4(1u);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      if (v2[5])
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_1004A6EC4(0);
      if (v2[7])
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  sub_1004A6EC4(0);
  if (!v2[5])
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = v2[4];
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v2[7])
  {
LABEL_5:
    v7 = v2[6];
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    goto LABEL_10;
  }

LABEL_9:
  sub_1004A6EC4(0);
LABEL_10:
  v8 = v2[8];

  sub_1001E76A0(a1, v8);
}

Swift::Int sub_1001E5A3C()
{
  sub_1004A6E94();
  sub_1001E592C(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1001E5A80()
{
  sub_1004A6E94();
  sub_1001E592C(v1);
  return sub_1004A6F14();
}

uint64_t sub_1001E5ABC(uint64_t a1, uint64_t a2)
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
  return sub_1001E7868(v7, v9) & 1;
}

CFStringRef sub_1001E5B18()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    return v1;
  }

  v2 = sub_1004A5514();

  result = kCFBundleIdentifierKey;
  if (!kCFBundleIdentifierKey)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v4 = sub_1004A5764();
  if (*(v2 + 16))
  {
    v6 = sub_100064090(v4, v5);
    v8 = v7;

    if (v8)
    {
      sub_1001659C8(*(v2 + 56) + 32 * v6, v29);
      if (swift_dynamicCast())
      {
LABEL_13:
        v1 = v27;
        if (!*(v2 + 16))
        {
          goto LABEL_24;
        }

LABEL_17:
        v14 = sub_100064090(0xD00000000000001ALL, 0x80000001004ABEE0);
        if (v15)
        {
          sub_1001659C8(*(v2 + 56) + 32 * v14, v29);
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
          result = kCFBundleVersionKey;
          if (kCFBundleVersionKey)
          {
            v19 = sub_1004A5764();
            if (*(v2 + 16))
            {
              v21 = sub_100064090(v19, v20);
              v23 = v22;

              if (v23)
              {
                sub_1001659C8(*(v2 + 56) + 32 * v21, v29);

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
            sub_1001E6058(v17, v18, v25, v26);

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

  result = kCFBundleNameKey;
  if (kCFBundleNameKey)
  {
    v9 = sub_1004A5764();
    if (*(v2 + 16))
    {
      v11 = sub_100064090(v9, v10);
      v13 = v12;

      if (v13)
      {
        sub_1001659C8(*(v2 + 56) + 32 * v11, v29);
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

uint64_t sub_1001E5E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v10 + 16);
  if (*v4)
  {
    v12 = *v4;

    v13 = sub_1001E74AC(a3, a4, v10 + 32, v11, (v9 + 16));
    v15 = v14;
    v17 = v16;

    if ((v15 & 1) == 0)
    {

      if (a2 == 1)
      {
LABEL_4:
        sub_1001E6930(v13, v17);

        sub_1001E6A98(v13);
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
      if (v19 || (sub_1004A6D34() & 1) != 0)
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
      result = sub_1001EE010(v27);
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

  sub_1001E67B8(a3, a4);

  v23 = v4[2];
  v21 = v4 + 2;
  v22 = v23;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v23;
  if ((result & 1) == 0)
  {
    result = sub_1001D600C(0, *(v22 + 16) + 1, 1);
    v22 = *v21;
  }

  v25 = *(v22 + 16);
  v24 = *(v22 + 24);
  if (v25 >= v24 >> 1)
  {
    result = sub_1001D600C((v24 > 1), v25 + 1, 1);
    v22 = *v21;
  }

  *(v22 + 16) = v25 + 1;
  v26 = v22 + 16 * v25;
  *(v26 + 32) = a1;
  *(v26 + 40) = a2;
  *v21 = v22;
  return result;
}

uint64_t sub_1001E6058(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    if (!a4 || a1 == a3 && a2 == a4 || (v4 = a1, v7 = sub_1004A6D34(), a1 = v4, (v7 & 1) != 0))
    {
      v8 = a1;

      return v8;
    }

    v11 = v4;

    v12._countAndFlagsBits = 10272;
    v12._object = 0xE200000000000000;
    sub_1004A5994(v12);
    v10._countAndFlagsBits = a3;
    v10._object = a4;
  }

  else
  {
    if (!a4)
    {
      return a3;
    }

    v11 = 40;
    v10._countAndFlagsBits = a3;
    v10._object = a4;
  }

  sub_1004A5994(v10);
  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  sub_1004A5994(v13);
  return v11;
}

uint64_t sub_1001E614C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1004A57F4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1004A4114();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v17 = 0xC800000000;
  v18 = sub_1004A40E4();
  sub_1001E75F8(&v17, 0);
  v18 |= 0x4000000000000000uLL;
  v9 = sub_1001E636C(&v17, a1);
  if ((v10 & 1) != 0 || v9 < 1)
  {
    result = sub_100014D40(v17, v18);
    v13 = 0;
    v15 = 0;
  }

  else
  {
    sub_1004A43E4();
    v11 = v17;
    v12 = v18;
    sub_1004A57D4();
    v13 = sub_1004A5784();
    v15 = v14;
    result = sub_100014D40(v11, v12);
  }

  *a2 = v13;
  a2[1] = v15;
  return result;
}

double sub_1001E628C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_9:
    sub_10000C9C0(&qword_1005D4660, &qword_1004E05E8);
    sub_1004A66E4();
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
      sub_1001E614C(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32), v5);
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
  sub_1001E614C(v5, &v4);
  if (!v2)
  {
    return *&v4;
  }

  return result;
}

uint64_t sub_1001E636C(uint64_t *a1, char *a2)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
      *(&v21 + 7) = 0;
      v20 = 0;
      *&v21 = 0;
      if (sysctlbyname(a2, &v21, &v20, 0, 0))
      {
        return 0;
      }

      else
      {
        return v20;
      }
    }

    v10 = *a1;

    sub_100014D40(v6, v5);
    *&v21 = v6;
    *(&v21 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1004DC1F0;
    sub_100014D40(0, 0xC000000000000000);
    sub_1004A4394();
    v6 = v21;
    result = sub_1001E66D4(*(v21 + 16), *(v21 + 24), *(&v21 + 1), a2);
    v11 = *(&v21 + 1) | 0x8000000000000000;
    if (!v2)
    {
      *a1 = v21;
      a1[1] = v11;
      return result;
    }

LABEL_21:
    *a1 = v6;
    a1[1] = v11;
    return result;
  }

  if (v7)
  {
    v12 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100014D40(v6, v5);
    *a1 = xmmword_1004DC1F0;
    sub_100014D40(0, 0xC000000000000000);
    v13 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v6)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (sub_1004A40D4() && __OFSUB__(v6, sub_1004A4104()))
      {
LABEL_25:
        __break(1u);
      }

      v14 = sub_1004A4114();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = sub_1004A40B4();

      v12 = v17;
    }

    if (v13 >= v6)
    {

      v18 = sub_1001E66D4(v6, v6 >> 32, v12, a2);

      v11 = v12 | 0x4000000000000000;
      if (!v2)
      {
        *a1 = v6;
        a1[1] = v11;
        return v18;
      }

      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_24;
  }

  sub_100014D40(v6, v5);
  *&v21 = v6;
  WORD4(v21) = v5;
  BYTE10(v21) = BYTE2(v5);
  BYTE11(v21) = BYTE3(v5);
  BYTE12(v21) = BYTE4(v5);
  BYTE13(v21) = BYTE5(v5);
  BYTE14(v21) = BYTE6(v5);
  v20 = BYTE6(v5);
  if (sysctlbyname(a2, &v21, &v20, 0, 0))
  {
    result = 0;
  }

  else
  {
    result = v20;
  }

  v9 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
  *a1 = v21;
  a1[1] = v9;
  return result;
}

size_t sub_1001E66D4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = sub_1004A40D4();
  if (!v7)
  {
LABEL_13:
    __break(1u);
  }

  v8 = v7;
  v9 = sub_1004A4104();
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

  v13 = sub_1004A40F4();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v16 = v14;
  if (sysctlbyname(a4, (v8 + v10), &v16, 0, 0))
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

uint64_t sub_1001E67B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_100091A08(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_100091A08((v10 > 1), v11 + 1, 1);
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
    v14 = *(v13 + 16);
    if (sub_1004A4754() > v11)
    {
      v15 = *v3;
      result = swift_isUniquelyReferenced_native();
      v16 = *v3;
      if ((result & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v17 = *v3;
        v18 = sub_1004A4774();

        *v3 = v18;
        v16 = v18;
      }

      if (v16)
      {
        v19 = *(v16 + 16);
        v20 = *(*v6 + 16) + ~(*(v16 + 24) >> 6);
        return sub_1004A4714();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_1001E6BA8();
}

unint64_t sub_1001E6930(int64_t a1, uint64_t a2)
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

    return sub_1001E6B20(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= sub_1004A4764())
  {
LABEL_16:
    v13 = sub_1001E6B20(a1);
    sub_1001E6BA8();
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
    v12 = sub_1004A4774();

    *v2 = v12;
    v10 = v12;
  }

  if (v10)
  {

    result = sub_1001E6C48(a2, (v10 + 16), v10 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_1001E6E40(a1, a1 + 1, v4, (v10 + 16));

      return sub_1001E6B20(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1001E6A98(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001EE010(v3);
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

uint64_t sub_1001E6B20(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001EDFFC(v3);
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

uint64_t sub_1001E6BA8()
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
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = sub_1004A4784();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_1001E72AC(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

unint64_t sub_1001E6C48(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v23 = sub_1004A46F4();
  sub_1004A4744();
  if (v23)
  {
    v7 = sub_1004A4704();
    while (1)
    {
      result = sub_1004A4724();
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
      sub_1004A6E94();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v16 = sub_1004A6F14();

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
      v20 = sub_1004A4724();
      if ((v21 & 1) == 0)
      {
        v8 = ((v18 & ((v20 - (a2[1] >> 6)) >> 63)) + v20 - (a2[1] >> 6)) ^ v18;
      }

      v6 = a1;
      sub_1004A4714();
LABEL_5:
      sub_1004A4744();
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

  return sub_1004A4714();
}

void sub_1001E6E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_58;
  }

  if (v5 >= 1)
  {
    v9 = *(a3 + 16);
    if (a1 < (v9 - v5) / 2)
    {
      v10 = *a4;
      if (sub_1004A4754() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < a1)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v11 = a3;

        if (a1)
        {
          v12 = 0;
          while (1)
          {
            v13 = (v11 + 32 + 16 * v12);
            v14 = *v13;
            v15 = v13[1];
            v16 = *a4;
            sub_1004A6E94();

            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
            sub_1004A6F14();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1004A46F4())
            {
              while (1)
              {
                v17 = sub_1004A4724();
                if ((v18 & 1) == 0 && v17 == v12)
                {
                  break;
                }

                sub_1004A4744();
              }
            }

            if (__OFADD__(v12, v5))
            {
              goto LABEL_55;
            }

            ++v12;
            sub_1004A4734();

            if (v12 == a1)
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

      sub_1004A46F4();
      v25 = sub_1004A4724();
      if ((v26 & 1) != 0 || v25 >= a1)
      {
LABEL_33:
        sub_1004A4744();
LABEL_18:
        v19 = a4[1];
        if (__OFSUB__(v19 >> 6, v5))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v20 = 1 << *a4;
        v21 = __OFSUB__(v20, 1);
        v22 = v20 - 1;
        if (v21)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v23 = (v22 & (((v19 >> 6) - v5) >> 63)) + (v19 >> 6) - v5;
        if (v23 < v22)
        {
          v22 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v23 - v22) << 6);
        return;
      }

      if (!__OFADD__(v25, v5))
      {
        sub_1004A4734();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_1004A46F4();
      v27 = sub_1004A4724();
      if ((v28 & 1) == 0 && v27 >= v4)
      {
        if (__OFSUB__(v27, v5))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_1004A4734();
      }

      sub_1004A4744();
      return;
    }

    v4 = a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v24 = *a4;
    if ((v9 - a2) >= sub_1004A4754() / 3)
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
      return;
    }

    if (v9 != v4)
    {
      do
      {
        v29 = (a3 + 32 + 16 * v4);
        v30 = *v29;
        v31 = v29[1];
        v32 = *a4;
        sub_1004A6E94();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        sub_1004A6F14();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_1004A46F4())
        {
          while (1)
          {
            v33 = sub_1004A4724();
            if ((v34 & 1) == 0 && v33 == v4)
            {
              break;
            }

            sub_1004A4744();
          }
        }

        sub_1004A4734();
      }

      while (++v4 != v9);
    }
  }
}