uint64_t sub_1003872D0(uint64_t a1)
{
  v2 = sub_10038CB84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038730C(uint64_t a1)
{
  v2 = sub_10038CB84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100387348(uint64_t a1)
{
  v2 = sub_10038CBD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100387384(uint64_t a1)
{
  v2 = sub_10038CBD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003873C0(uint64_t a1)
{
  v2 = sub_10038C908();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003873FC(uint64_t a1)
{
  v2 = sub_10038C908();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchRequest.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005DB248, &qword_1004FA410);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  __chkstk_darwin(v4);
  v58 = &v55 - v6;
  v7 = sub_10000C9C0(&qword_1005DB250, &qword_1004FA418);
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  __chkstk_darwin(v7);
  v66 = &v55 - v9;
  v10 = sub_10000C9C0(&qword_1005DB258, &qword_1004FA420);
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  __chkstk_darwin(v10);
  v55 = &v55 - v12;
  v13 = sub_10000C9C0(&qword_1005DB260, &qword_1004FA428);
  v64 = *(v13 - 8);
  v65 = v13;
  v14 = *(v64 + 64);
  __chkstk_darwin(v13);
  v63 = &v55 - v15;
  v16 = sub_10000C9C0(&qword_1005DB268, &qword_1004FA430);
  v62 = *(v16 - 8);
  v17 = *(v62 + 64);
  __chkstk_darwin(v16);
  v19 = &v55 - v18;
  v20 = sub_10000C9C0(&qword_1005DB270, &qword_1004FA438);
  v61 = *(v20 - 8);
  v21 = *(v61 + 64);
  __chkstk_darwin(v20);
  v23 = &v55 - v22;
  v69 = sub_10000C9C0(&qword_1005DB278, &qword_1004FA440);
  v71 = *(v69 - 8);
  v24 = *(v71 + 64);
  __chkstk_darwin(v69);
  v26 = &v55 - v25;
  v27 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10038C8B4();
  v70 = v26;
  sub_1004A6FA4();
  v29 = *v2;
  v28 = *(v2 + 8);
  v30 = *(v2 + 16);
  v31 = *(v2 + 40);
  if (v31 <= 1)
  {
    if (*(v2 + 40))
    {
      LOBYTE(v73) = 1;
      sub_10038CB84();
      v53 = v69;
      v54 = v70;
      sub_1004A6BD4();
      v73 = v29;
      sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
      sub_100391ACC(&qword_1005D0A68);
      sub_1004A6C74();
      (*(v62 + 8))(v19, v16);
      return (*(v71 + 8))(v54, v53);
    }

    else
    {
      LOBYTE(v73) = 0;
      sub_10038CBD8();
      v42 = v69;
      v43 = v70;
      sub_1004A6BD4();
      v73 = v29;
      v74 = v28;
      v75 = v30;
      sub_10038CC2C();
      sub_1004A6C74();
      (*(v61 + 8))(v23, v20);
      return (*(v71 + 8))(v43, v42);
    }
  }

  else
  {
    v32 = *(v2 + 24);
    v33 = *(v2 + 28);
    v34 = *(v2 + 32);
    if (v31 == 2)
    {
      v68 = *(v2 + 32);
      LOBYTE(v73) = 2;
      sub_10038CB30();
      v44 = v63;
      v46 = v69;
      v45 = v70;
      sub_1004A6BD4();
      v73 = v29;
      v74 = v28;
      v75 = v30;
      v76 = 0;
      sub_10038C9B0();
      v47 = v65;
      v48 = v72;
      sub_1004A6C74();
      if (!v48)
      {
        LODWORD(v73) = v32;
        BYTE4(v73) = v33 & 1;
        v76 = 1;
        sub_10038CA88();
        sub_1004A6C14();
        LOBYTE(v73) = 2;
        sub_1004A6C64();
      }

      (*(v64 + 8))(v44, v47);
      return (*(v71 + 8))(v45, v46);
    }

    else
    {
      v35 = v32 | (v33 << 32) | ((*(v2 + 29) | (*(v2 + 31) << 16)) << 40);
      v36 = v69;
      if (v31 == 3)
      {
        LOBYTE(v73) = 4;
        sub_10038C95C();
        v37 = v66;
        v38 = v70;
        sub_1004A6BD4();
        v73 = v29;
        v74 = v28;
        v75 = v30;
        v76 = 0;
        sub_10038C9B0();
        v39 = v68;
        v40 = v72;
        sub_1004A6C74();
        if (!v40)
        {
          v73 = v35;
          v76 = 1;
          sub_10000C9C0(&qword_1005DB2A0, &unk_1004FA448);
          sub_10038CA04();
          sub_1004A6C74();
        }

        (*(v67 + 8))(v37, v39);
        return (*(v71 + 8))(v38, v36);
      }

      else
      {
        v49 = v70;
        if (v30 | v28 | v29 | v34 | v35)
        {
          LOBYTE(v73) = 5;
          sub_10038C908();
          v50 = v58;
          sub_1004A6BD4();
          v52 = v59;
          v51 = v60;
        }

        else
        {
          LOBYTE(v73) = 3;
          sub_10038CADC();
          v50 = v55;
          sub_1004A6BD4();
          v52 = v56;
          v51 = v57;
        }

        (*(v52 + 8))(v50, v51);
        return (*(v71 + 8))(v49, v36);
      }
    }
  }
}

double SearchRequest.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10038CF90(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_100387D5C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s20IMAPSearchIndexerXPC13SearchRequestO21__derived_enum_equalsySbAC_ACtFZ_0(&v5, &v7) & 1;
}

unint64_t sub_100387DA8()
{
  v1 = *v0;
  v2 = 0x6552686372616573;
  v3 = 0x646564756C637865;
  if (v1 != 4)
  {
    v3 = 0x6C616E41746E6573;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000013;
  if (v1 == 1)
  {
    v4 = 0x655270756B6F6F6CLL;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100387E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10038DF9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100387EAC(uint64_t a1)
{
  v2 = sub_10038DCFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100387EE8(uint64_t a1)
{
  v2 = sub_10038DCFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100387F24(uint64_t a1)
{
  v2 = sub_10038DDA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100387F60(uint64_t a1)
{
  v2 = sub_10038DDA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100387F9C(uint64_t a1)
{
  v2 = sub_10038DE4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100387FD8(uint64_t a1)
{
  v2 = sub_10038DE4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100388014(uint64_t a1)
{
  v2 = sub_10038DDF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100388050(uint64_t a1)
{
  v2 = sub_10038DDF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10038808C(uint64_t a1)
{
  v2 = sub_10038DEF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003880C8(uint64_t a1)
{
  v2 = sub_10038DEF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100388104(uint64_t a1)
{
  v2 = sub_10038DF48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100388140(uint64_t a1)
{
  v2 = sub_10038DF48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10038817C(uint64_t a1)
{
  v2 = sub_10038DD50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003881B8(uint64_t a1)
{
  v2 = sub_10038DD50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003881F4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v25 = (v7 - 1) & v7;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 24 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[2];
    v17 = *(*(v3 + 56) + 8 * v12);

    v18 = sub_10035E248(v15, v14, v16);
    v20 = v19;

    if ((v20 & 1) == 0 || (v21 = *(*(a2 + 56) + 8 * v18), v22 = *(v21 + 16), v22 != *(v17 + 16)))
    {
LABEL_26:

      return 0;
    }

    if (v22)
    {
      v23 = v21 == v17;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v24 = 32;
      while (v22)
      {
        if (*(v21 + v24) != *(v17 + v24))
        {
          goto LABEL_26;
        }

        v24 += 4;
        if (!--v22)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_29;
    }

LABEL_6:

    v7 = v25;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v25 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t SearchResponse.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005DB2E0, &qword_1004FA458);
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  __chkstk_darwin(v4);
  v55 = &v47 - v6;
  v7 = sub_10000C9C0(&qword_1005DB2E8, &qword_1004FA460);
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  __chkstk_darwin(v7);
  v56 = &v47 - v9;
  v10 = sub_10000C9C0(&qword_1005DB2F0, &qword_1004FA468);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  __chkstk_darwin(v10);
  v52 = &v47 - v12;
  v13 = sub_10000C9C0(&qword_1005DB2F8, &qword_1004FA470);
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  __chkstk_darwin(v13);
  v16 = &v47 - v15;
  v17 = sub_10000C9C0(&qword_1005DB300, &qword_1004FA478);
  v48 = *(v17 - 8);
  v49 = v17;
  v18 = *(v48 + 64);
  __chkstk_darwin(v17);
  v20 = &v47 - v19;
  v21 = sub_10000C9C0(&qword_1005DB308, &qword_1004FA480);
  v47 = *(v21 - 8);
  v22 = *(v47 + 64);
  __chkstk_darwin(v21);
  v24 = &v47 - v23;
  v66 = sub_10000C9C0(&qword_1005DB310, &qword_1004FA488);
  v62 = *(v66 - 8);
  v25 = *(v62 + 64);
  __chkstk_darwin(v66);
  v27 = &v47 - v26;
  v28 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10038DCFC();
  v61 = v27;
  sub_1004A6FA4();
  v29 = *v2;
  v30 = v2[1];
  v31 = *(v2 + 32);
  if (v31 > 2)
  {
    if (v31 == 3)
    {
      LOBYTE(v63) = 3;
      sub_10038DDF8();
      v42 = v52;
      v36 = v66;
      v38 = v61;
      sub_1004A6BD4();
      v63 = v29;
      v64 = v30;
      v65 = *(v2 + 1);
      sub_100389F44();
      v43 = v54;
      sub_1004A6C74();
      (*(v53 + 8))(v42, v43);
    }

    else
    {
      v36 = v66;
      if (v31 != 4)
      {
        LOBYTE(v63) = 5;
        sub_10038DD50();
        v45 = v55;
        v46 = v61;
        sub_1004A6BD4();
        (*(v57 + 8))(v45, v58);
        return (*(v62 + 8))(v46, v36);
      }

      LOBYTE(v63) = 4;
      sub_10038DDA4();
      v37 = v56;
      v38 = v61;
      sub_1004A6BD4();
      v63 = v29;
      sub_10000C9C0(&qword_1005DB2A0, &unk_1004FA448);
      sub_10038CA04();
      v39 = v60;
      sub_1004A6C74();
      (*(v59 + 8))(v37, v39);
    }
  }

  else
  {
    if (!*(v2 + 32))
    {
      LOBYTE(v63) = 0;
      sub_10038DF48();
      v40 = v66;
      v41 = v61;
      sub_1004A6BD4();
      v63 = v29;
      sub_10000C9C0(&qword_1005DB350, &qword_1004FA490);
      sub_1003919E8(&qword_1005DB358, sub_10038C9B0, sub_10038CA04);
      sub_1004A6C74();
      (*(v47 + 8))(v24, v21);
      return (*(v62 + 8))(v41, v40);
    }

    if (v31 == 1)
    {
      LOBYTE(v63) = 1;
      sub_10038DEF4();
      v32 = v66;
      v33 = v61;
      sub_1004A6BD4();
      v63 = v29;
      sub_10000C9C0(&qword_1005DB350, &qword_1004FA490);
      sub_1003919E8(&qword_1005DB358, sub_10038C9B0, sub_10038CA04);
      v34 = v49;
      sub_1004A6C74();
      (*(v48 + 8))(v20, v34);
      return (*(v62 + 8))(v33, v32);
    }

    LOBYTE(v63) = 2;
    sub_10038DE4C();
    v36 = v66;
    v38 = v61;
    sub_1004A6BD4();
    v63 = v29;
    v64 = v30;
    sub_10038DEA0();
    v44 = v51;
    sub_1004A6C14();
    (*(v50 + 8))(v16, v44);
  }

  return (*(v62 + 8))(v38, v36);
}

double SearchResponse.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10038E1BC(a1, v6);
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

uint64_t sub_100388C48(uint64_t a1, int64x2_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return _s20IMAPSearchIndexerXPC14SearchResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t _s20IMAPSearchIndexerXPC13SearchRequestO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 40);
  if (v6 <= 1)
  {
    if (!*(a1 + 40))
    {
      if (*(a2 + 40))
      {
        return 0;
      }

      v18 = *(a2 + 8);
      v17 = *(a2 + 16);
      v19 = *a2;
      v20 = [result uniqueIdentifier];
      v21 = sub_1004A5764();
      v23 = v22;

      v24 = [v19 uniqueIdentifier];
      v25 = sub_1004A5764();
      v27 = v26;

      if (v21 == v25 && v23 == v27)
      {

        if (v5 != v18)
        {
          return 0;
        }
      }

      else
      {
        v29 = sub_1004A6D34();

        if ((v29 & 1) == 0 || v5 != v18)
        {
          return 0;
        }
      }

      return (sub_100385CB0(v4, v17) & 1) != 0;
    }

    if (*(a2 + 40) == 1)
    {
      v38 = *a2;

      return sub_10020FB40(result, v38);
    }

    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 28);
  v9 = *(a1 + 32);
  if (v6 == 2)
  {
    if (*(a2 + 40) == 2)
    {
      v30 = *a2;
      v31 = *(result + 16);
      if (v31 == *(*a2 + 16))
      {
        v32 = *(a2 + 24);
        v33 = *(a2 + 28);
        v34 = *(a2 + 32);
        if (v31 && v30 != result)
        {
          v35 = (result + 32);
          v36 = (v30 + 32);
          while (*v35 == *v36)
          {
            ++v35;
            ++v36;
            if (!--v31)
            {
              goto LABEL_36;
            }
          }

          return 0;
        }

LABEL_36:
        if (v5 == *(a2 + 8) && v4 == *(a2 + 16) || (sub_1004A6D34() & 1) != 0)
        {
          if (v8)
          {
            if ((v33 & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            result = 0;
            if ((v33 & 1) != 0 || v7 != v32)
            {
              return result;
            }
          }

          return v9 == v34;
        }
      }
    }

    return 0;
  }

  v10 = v7 | (v8 << 32) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 40);
  if (v6 != 3)
  {
    if (v4 | v5 | result | v9 | v10)
    {
      if (*(a2 + 40) != 4)
      {
        return 0;
      }

      if (*a2 != 1)
      {
        return 0;
      }

      v37 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      if (vorr_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL)))
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 40) != 4)
      {
        return 0;
      }

      v39 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      if (*&vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL)) | *a2)
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a2 + 40) != 3)
  {
    return 0;
  }

  v11 = *a2;
  v12 = *(result + 16);
  if (v12 != *(*a2 + 16))
  {
    return 0;
  }

  v13 = *(a2 + 24);
  if (v12)
  {
    v14 = v11 == result;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
LABEL_14:
    if (v5 == *(a2 + 8) && v4 == *(a2 + 16) || (sub_1004A6D34() & 1) != 0)
    {

      return sub_100385C54(v10, v13);
    }

    return 0;
  }

  v15 = (result + 32);
  v16 = (v11 + 32);
  while (v12)
  {
    if (*v15 != *v16)
    {
      return 0;
    }

    ++v15;
    ++v16;
    if (!--v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s20IMAPSearchIndexerXPC015MessageToSearchB0O21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 40);
  if (!(v6 >> 6))
  {
    if (*(a2 + 40) <= 0x3Fu)
    {
      v11 = *a2;
      if (v5)
      {
        if ((*(a2 + 16) & (v4 == *a2)) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (*(a2 + 16) & 1 | (v4 != *a2) || (sub_100385DD8(v3, *(a2 + 8)) & 1) == 0)
      {
        goto LABEL_16;
      }

      v10 = 1;
      return v10 & 1;
    }

LABEL_16:
    v10 = 0;
    return v10 & 1;
  }

  if (v6 >> 6 == 1)
  {
    v17[0] = v4;
    v17[1] = v3;
    v17[2] = v5;
    v18 = *(a1 + 24);
    v19 = v6 & 0x3F;
    v7 = *(a2 + 40);
    if ((v7 & 0xC0) == 0x40)
    {
      v8 = *(a2 + 32);
      v9 = *(a2 + 16);
      v14[0] = *a2;
      v14[1] = v9;
      v15 = v8;
      v16 = v7 & 0x3F;
      v10 = _s20IMAPSearchIndexerXPC13SearchRequestO21__derived_enum_equalsySbAC_ACtFZ_0(v17, v14);
      return v10 & 1;
    }

    goto LABEL_16;
  }

  if ((*(a2 + 40) & 0xC0) != 0x80)
  {
    goto LABEL_16;
  }

  v12 = *a2;

  return _s20IMAPSearchIndexerXPC18CredentialResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v4, v12);
}

unint64_t sub_10038913C()
{
  result = qword_1005DB088;
  if (!qword_1005DB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB088);
  }

  return result;
}

unint64_t sub_1003891A0()
{
  result = qword_1005DB090;
  if (!qword_1005DB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB090);
  }

  return result;
}

unint64_t sub_1003891F4()
{
  result = qword_1005DB098;
  if (!qword_1005DB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB098);
  }

  return result;
}

unint64_t sub_100389248()
{
  result = qword_1005DB0A0;
  if (!qword_1005DB0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB0A0);
  }

  return result;
}

unint64_t sub_10038929C()
{
  result = qword_1005DB0A8;
  if (!qword_1005DB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB0A8);
  }

  return result;
}

unint64_t sub_1003892F0()
{
  result = qword_1005DB0B0;
  if (!qword_1005DB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB0B0);
  }

  return result;
}

unint64_t sub_100389344()
{
  result = qword_1005DB0B8;
  if (!qword_1005DB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB0B8);
  }

  return result;
}

uint64_t _s20IMAPSearchIndexerXPC14SearchResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t result, int64x2_t *a2)
{
  v3 = *a2;
  v4 = *result;
  v5 = *(result + 32);
  v6 = a2->i64[0];
  v7 = a2[2].u8[0];
  if (v5 <= 2)
  {
    if (*(result + 32))
    {
      if (v5 == 1)
      {
        if (v7 != 1)
        {
          goto LABEL_40;
        }

        goto LABEL_21;
      }

      if (v7 == 2)
      {
        if (v4.i64[0])
        {
          v16 = v3.i64[1];
          if (v6)
          {
            v19 = *(result + 8) >> 64;
            v17 = v6;
            if (sub_100083308(v4.i64[0], v6))
            {
              v18 = sub_100083308(v19, v16);
              sub_100391E8C(v17);

              if (v18)
              {
                goto LABEL_37;
              }
            }

            else
            {
              sub_100391E8C(v17);
            }
          }

          else
          {
            sub_100391E8C(0);
          }
        }

        else if (!v6)
        {
          sub_100391E8C(0);
LABEL_37:
          v14 = 1;
          return v14 & 1;
        }
      }
    }

    else if (!a2[2].i8[0])
    {
LABEL_21:

      return sub_1003881F4(v4.i64[0], v6);
    }

LABEL_40:
    v14 = 0;
    return v14 & 1;
  }

  if (v5 == 3)
  {
    if (v7 == 3)
    {
      v14 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v4, v3), vceqq_s64(*(result + 16), a2[1]))));
      return v14 & 1;
    }

    goto LABEL_40;
  }

  if (v5 != 4)
  {
    if (v7 != 5 || a2[1].i64[1] | a2[1].i64[0] | v6 | v3.i64[1])
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (v7 != 4)
  {
    goto LABEL_40;
  }

  v8 = *(v4.i64[0] + 16);
  if (v8 != *(v6 + 16))
  {
    goto LABEL_40;
  }

  if (!v8 || v6 == v4.i64[0])
  {
    goto LABEL_37;
  }

  v9 = (v4.i64[0] + 32);
  v10 = (v6 + 32);
  while (v8)
  {
    v12 = *v9++;
    v11 = v12;
    v13 = *v10++;
    v14 = v11 == v13;
    if (v14)
    {
      v15 = v8 == 1;
    }

    else
    {
      v15 = 1;
    }

    --v8;
    if (v15)
    {
      return v14 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s20IMAPSearchIndexerXPC017MessageFromSearchB0O21__derived_enum_equalsySbAC_ACtFZ_0(int64x2_t *a1, int64x2_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2].u8[0];
  v5 = v4 >> 6;
  if (v4 >> 6 <= 1)
  {
    if (v5)
    {
      v14[0] = *a1;
      v14[1] = v3;
      v15 = v4 & 0x3F;
      v10 = a2[2].i8[0];
      if ((v10 & 0xC0) == 0x40)
      {
        v11 = a2[1];
        v12[0] = *a2;
        v12[1] = v11;
        v13 = v10 & 0x3F;
        v7 = _s20IMAPSearchIndexerXPC14SearchResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v14, v12);
        return v7 & 1;
      }
    }

    else if (a2[2].u8[0] <= 0x3Fu)
    {
      v6 = (a2->i32[0] ^ v2.i32[0]);
      v7 = a2->i8[0] == v2.i8[0];
      return v7 & 1;
    }

LABEL_18:
    v7 = 0;
    return v7 & 1;
  }

  if (v5 != 2)
  {
    if (a2[2].u8[0] >= 0xC0u)
    {
      v7 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v2, *a2), vceqq_s64(v3, a2[1]))));
      return v7 & 1;
    }

    goto LABEL_18;
  }

  if ((a2[2].i8[0] & 0xC0) != 0x80)
  {
    goto LABEL_18;
  }

  if (v2.i64[0] == a2->i64[0] && v2.i64[1] == a2->i64[1])
  {
    v7 = 1;
    return v7 & 1;
  }

  return sub_1004A6D34();
}

uint64_t sub_1003896B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

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

double sub_1003897C4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v47 = sub_10000C9C0(&qword_1005DB820, &qword_1004FD558);
  v51 = *(v47 - 8);
  v3 = *(v51 + 64);
  __chkstk_darwin(v47);
  *&v53 = &v45 - v4;
  v5 = sub_10000C9C0(&qword_1005DB828, &qword_1004FD560);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v45 - v8;
  v10 = sub_10000C9C0(&qword_1005DB830, &qword_1004FD568);
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = sub_10000C9C0(&qword_1005DB838, &unk_1004FD570);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v45 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v59 = a1;
  sub_10002587C(a1, v20);
  sub_10038913C();
  v21 = v54;
  sub_1004A6F84();
  if (v21)
  {
    goto LABEL_14;
  }

  v22 = v53;
  v46 = v15;
  *&v54 = v18;
  v23 = sub_1004A6BC4();
  v24 = *(v23 + 16);
  if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 3) : (v26 = 1), v26))
  {
    v27 = sub_1004A67D4();
    swift_allocError();
    v28 = v14;
    v30 = v29;
    v31 = *(sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340) + 48);
    *v30 = &type metadata for MessageToSearchIndexer;
    v32 = v54;
    sub_1004A6B14();
    sub_1004A67C4();
    (*(*(v27 - 8) + 104))(v30, enum case for DecodingError.typeMismatch(_:), v27);
    swift_willThrow();
    (*(v46 + 8))(v32, v28);
    swift_unknownObjectRelease();
LABEL_14:
    sub_1000197E0(v59);
    return result;
  }

  if (*(v23 + 32))
  {
    if (v25 == 1)
    {
      LOBYTE(v55) = 1;
      sub_100389248();
      v33 = v54;
      sub_1004A6B04();
      v34 = v46;
      sub_100391F20();
      v35 = v49;
      sub_1004A6B94();
      (*(v50 + 8))(v9, v35);
      (*(v34 + 8))(v33, v14);
      swift_unknownObjectRelease();
      v53 = v56;
      v54 = v55;
      v40 = v57;
      v41 = v58 | 0x40;
      v42 = v52;
    }

    else
    {
      LOBYTE(v55) = 2;
      sub_1003891A0();
      sub_1004A6B04();
      v42 = v52;
      v37 = v46;
      sub_100391ECC();
      v38 = v47;
      sub_1004A6B94();
      (*(v51 + 8))(v22, v38);
      (*(v37 + 8))(v54, v14);
      swift_unknownObjectRelease();
      v40 = 0;
      *&v43 = v55;
      v54 = v43;
      v53 = 0u;
      v41 = 0x80;
    }
  }

  else
  {
    LOBYTE(v55) = 0;
    sub_1003892F0();
    v36 = v54;
    sub_1004A6B04();
    sub_100391F74();
    sub_1004A6B94();
    (*(v48 + 8))(v13, v10);
    (*(v46 + 8))(v36, v14);
    swift_unknownObjectRelease();
    v40 = 0;
    v41 = 0;
    v53 = v56;
    v54 = v55;
    v42 = v52;
  }

  sub_1000197E0(v59);
  v44 = v53;
  result = *&v54;
  *v42 = v54;
  *(v42 + 16) = v44;
  *(v42 + 32) = v40;
  *(v42 + 40) = v41;
  return result;
}

unint64_t sub_100389E9C()
{
  result = qword_1005DB0E8;
  if (!qword_1005DB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB0E8);
  }

  return result;
}

unint64_t sub_100389EF0()
{
  result = qword_1005DB0F0;
  if (!qword_1005DB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB0F0);
  }

  return result;
}

unint64_t sub_100389F44()
{
  result = qword_1005DB0F8;
  if (!qword_1005DB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB0F8);
  }

  return result;
}

unint64_t sub_100389FA8()
{
  result = qword_1005DB100;
  if (!qword_1005DB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB100);
  }

  return result;
}

unint64_t sub_100389FFC()
{
  result = qword_1005DB108;
  if (!qword_1005DB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB108);
  }

  return result;
}

unint64_t sub_10038A050()
{
  result = qword_1005DB110;
  if (!qword_1005DB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB110);
  }

  return result;
}

unint64_t sub_10038A0A4()
{
  result = qword_1005DB118;
  if (!qword_1005DB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB118);
  }

  return result;
}

unint64_t sub_10038A0F8()
{
  result = qword_1005DB120;
  if (!qword_1005DB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB120);
  }

  return result;
}

unint64_t sub_10038A14C()
{
  result = qword_1005DB128;
  if (!qword_1005DB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB128);
  }

  return result;
}

uint64_t sub_10038A1A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004B0220 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double sub_10038A308@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v51 = sub_10000C9C0(&qword_1005DB7E0, &qword_1004FD530);
  v55 = *(v51 - 8);
  v3 = *(v55 + 64);
  __chkstk_darwin(v51);
  v59 = &v48 - v4;
  v5 = sub_10000C9C0(&qword_1005DB7E8, &qword_1004FD538);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v58 = &v48 - v8;
  v57 = sub_10000C9C0(&qword_1005DB7F0, &qword_1004FD540);
  v52 = *(v57 - 8);
  v9 = *(v52 + 64);
  __chkstk_darwin(v57);
  v11 = &v48 - v10;
  v12 = sub_10000C9C0(&qword_1005DB7F8, &qword_1004FD548);
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  v16 = sub_10000C9C0(&qword_1005DB800, &qword_1004FD550);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v48 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v65 = a1;
  sub_10002587C(a1, v21);
  sub_100389E9C();
  v23 = v60;
  sub_1004A6F84();
  if (v23)
  {
    goto LABEL_9;
  }

  v48 = v12;
  v49 = v15;
  v24 = v11;
  v26 = v57;
  v25 = v58;
  v27 = v59;
  *&v60 = v17;
  v28 = sub_1004A6BC4();
  v29 = *(v28 + 16);
  if (!v29 || ((v30 = *(v28 + 32), v29 == 1) ? (v31 = v30 == 4) : (v31 = 1), v31))
  {
    v32 = sub_1004A67D4();
    swift_allocError();
    v34 = v33;
    v35 = *(sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340) + 48);
    *v34 = &type metadata for MessageFromSearchIndexer;
    sub_1004A6B14();
    sub_1004A67C4();
    (*(*(v32 - 8) + 104))(v34, enum case for DecodingError.typeMismatch(_:), v32);
    swift_willThrow();
    (*(v60 + 8))(v20, v16);
    swift_unknownObjectRelease();
LABEL_9:
    sub_1000197E0(v65);
    return result;
  }

  if (*(v28 + 32) <= 1u)
  {
    if (*(v28 + 32))
    {
      LOBYTE(v61) = 1;
      sub_10038A050();
      sub_1004A6B04();
      sub_100391DE4();
      sub_1004A6B94();
      (*(v52 + 8))(v24, v26);
      (*(v60 + 8))(v20, v16);
      swift_unknownObjectRelease();
      v46 = v61;
      v44 = v62;
      v60 = v63;
      v45 = v64 | 0x40;
LABEL_18:
      v38 = v56;
      goto LABEL_19;
    }

    LOBYTE(v61) = 0;
    sub_10038A0F8();
    v37 = v49;
    sub_1004A6B04();
    sub_100391E38();
    v43 = v48;
    sub_1004A6B94();
    (*(v50 + 8))(v37, v43);
    (*(v60 + 8))(v20, v16);
    swift_unknownObjectRelease();
    v44 = 0;
    v45 = 0;
    v46 = v61;
    v47 = 0uLL;
LABEL_17:
    v60 = v47;
    goto LABEL_18;
  }

  v57 = v28;
  v38 = v56;
  if (v30 != 2)
  {
    LOBYTE(v61) = 3;
    sub_100389EF0();
    sub_1004A6B04();
    v41 = v60;
    sub_100391940();
    v42 = v51;
    sub_1004A6B94();
    (*(v55 + 8))(v27, v42);
    (*(v41 + 8))(v20, v16);
    swift_unknownObjectRelease();
    v46 = v61;
    v44 = v62;
    v45 = -64;
    v47 = v63;
    goto LABEL_17;
  }

  LOBYTE(v61) = 2;
  sub_100389FA8();
  sub_1004A6B04();
  v39 = v60;
  sub_100391D90();
  v40 = v53;
  sub_1004A6B94();
  (*(v54 + 8))(v25, v40);
  (*(v39 + 8))(v20, v16);
  swift_unknownObjectRelease();
  v46 = v61;
  v44 = v62;
  v60 = 0u;
  v45 = 0x80;
LABEL_19:
  sub_1000197E0(v65);
  *v38 = v46;
  *(v38 + 8) = v44;
  result = *&v60;
  *(v38 + 16) = v60;
  *(v38 + 32) = v45;
  return result;
}

uint64_t sub_10038AB68()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10038ABA0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = *(a1 + 32);
  return v2(v6);
}

unint64_t sub_10038ABE4()
{
  result = qword_1005DB130;
  if (!qword_1005DB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB130);
  }

  return result;
}

unint64_t sub_10038AC38()
{
  result = qword_1005DB138;
  if (!qword_1005DB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB138);
  }

  return result;
}

uint64_t sub_10038AC8C(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[1];
  v6 = *a1;
  v7[0] = v4;
  *(v7 + 10) = *(a1 + 26);
  return v2(&v6);
}

unint64_t sub_10038ACD0()
{
  result = qword_1005DB170;
  if (!qword_1005DB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB170);
  }

  return result;
}

unint64_t sub_10038AD24()
{
  result = qword_1005DB178;
  if (!qword_1005DB178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB178);
  }

  return result;
}

unint64_t sub_10038AD78()
{
  result = qword_1005DB180;
  if (!qword_1005DB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB180);
  }

  return result;
}

unint64_t sub_10038ADCC()
{
  result = qword_1005DB188;
  if (!qword_1005DB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB188);
  }

  return result;
}

unint64_t sub_10038AE20()
{
  result = qword_1005DB190;
  if (!qword_1005DB190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB190);
  }

  return result;
}

unint64_t sub_10038AE74()
{
  result = qword_1005DB198;
  if (!qword_1005DB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB198);
  }

  return result;
}

uint64_t sub_10038AEC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265666544646964 && a2 == 0xE800000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746F4E646964 && a2 == 0xEE006574656C706DLL || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004B0240 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C706D6F43646964 && a2 == 0xEB00000000657465 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_10038B08C(uint64_t *a1)
{
  v2 = sub_10000C9C0(&qword_1005DB7B0, &qword_1004FD500);
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  __chkstk_darwin(v2);
  v58 = &v45[-v4];
  v5 = sub_10000C9C0(&qword_1005DB7B8, &qword_1004FD508);
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v60 = &v45[-v8];
  v9 = sub_10000C9C0(&qword_1005DB7C0, &qword_1004FD510);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  __chkstk_darwin(v9);
  v59 = &v45[-v11];
  v12 = sub_10000C9C0(&qword_1005DB7C8, &qword_1004FD518);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  __chkstk_darwin(v12);
  v15 = &v45[-v14];
  v16 = sub_10000C9C0(&qword_1005DB7D0, &qword_1004FD520);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  __chkstk_darwin(v16);
  v19 = &v45[-v18];
  v20 = sub_10000C9C0(&qword_1005DB7D8, &qword_1004FD528);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v45[-v23];
  v26 = a1[3];
  v25 = a1[4];
  v62 = a1;
  sub_10002587C(a1, v26);
  sub_10038ACD0();
  v27 = v61;
  sub_1004A6F84();
  if (v27)
  {
    goto LABEL_18;
  }

  v47 = v16;
  v48 = v24;
  v29 = v59;
  v28 = v60;
  v61 = v21;
  v30 = sub_1004A6BC4();
  v31 = *(v30 + 16);
  if (!v31 || ((v32 = *(v30 + 32), v31 == 1) ? (v33 = v32 == 5) : (v33 = 1), v33))
  {
    v34 = sub_1004A67D4();
    swift_allocError();
    v35 = v20;
    v37 = v36;
    v38 = *(sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340) + 48);
    *v37 = &type metadata for IndexRequest.Response;
    v39 = v48;
    sub_1004A6B14();
    sub_1004A67C4();
    (*(*(v34 - 8) + 104))(v37, enum case for DecodingError.typeMismatch(_:), v34);
    swift_willThrow();
    (*(v61 + 8))(v39, v35);
    swift_unknownObjectRelease();
LABEL_18:
    sub_1000197E0(v62);
    return 0;
  }

  v46 = *(v30 + 32);
  if (v32 <= 1)
  {
    if (v32)
    {
      v64 = 1;
      sub_10038AE20();
      v42 = v48;
      sub_1004A6B04();
      (*(v50 + 8))(v15, v51);
    }

    else
    {
      v63 = 0;
      sub_10038AE74();
      v42 = v48;
      sub_1004A6B04();
      (*(v49 + 8))(v19, v47);
    }

    (*(v61 + 8))(v42, v20);
  }

  else
  {
    v40 = v61;
    if (v32 == 2)
    {
      v65 = 2;
      sub_10038ADCC();
      v41 = v48;
      sub_1004A6B04();
      (*(v52 + 8))(v29, v53);
    }

    else
    {
      v41 = v48;
      if (v32 == 3)
      {
        v66 = 3;
        sub_10038AD78();
        sub_1004A6B04();
        (*(v55 + 8))(v28, v54);
      }

      else
      {
        v67 = 4;
        sub_10038AD24();
        v43 = v58;
        sub_1004A6B04();
        (*(v56 + 8))(v43, v57);
      }
    }

    (*(v40 + 8))(v41, v20);
  }

  swift_unknownObjectRelease();
  sub_1000197E0(v62);
  return v46;
}

unint64_t sub_10038B784()
{
  result = qword_1005DB1B8;
  if (!qword_1005DB1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB1B8);
  }

  return result;
}

unint64_t sub_10038B7D8()
{
  result = qword_1005DB1C0;
  if (!qword_1005DB1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB1C0);
  }

  return result;
}

unint64_t sub_10038B82C()
{
  result = qword_1005DB1C8;
  if (!qword_1005DB1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB1C8);
  }

  return result;
}

unint64_t sub_10038B880()
{
  result = qword_1005DB1D0;
  if (!qword_1005DB1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB1D0);
  }

  return result;
}

unint64_t sub_10038B8D4()
{
  result = qword_1005DB1E0;
  if (!qword_1005DB1E0)
  {
    sub_10000DEFC(&qword_1005DB1D8, &qword_1004FA3E0);
    sub_10038B958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB1E0);
  }

  return result;
}

unint64_t sub_10038B958()
{
  result = qword_1005DB1E8;
  if (!qword_1005DB1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB1E8);
  }

  return result;
}

void *sub_10038B9AC(uint64_t *a1)
{
  v2 = sub_10000C9C0(&qword_1005DB780, &qword_1004FD4E8);
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  __chkstk_darwin(v2);
  v5 = &v29 - v4;
  v6 = sub_10000C9C0(&qword_1005DB788, &qword_1004FD4F0);
  v32 = *(v6 - 1);
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  v10 = sub_10000C9C0(&qword_1005DB790, &qword_1004FD4F8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v34 = a1;
  sub_10002587C(a1, v15);
  sub_10038B784();
  v17 = v33;
  sub_1004A6F84();
  if (!v17)
  {
    v33 = v11;
    v18 = v14;
    v19 = sub_1004A6BC4();
    if (*(v19 + 16) == 1)
    {
      if (*(v19 + 32))
      {
        LOBYTE(v37) = 1;
        sub_10038B7D8();
        sub_1004A6B04();
        v20 = v33;
        sub_100391C64();
        v26 = v5;
        v27 = v31;
        sub_1004A6B94();
        (*(v30 + 8))(v26, v27);
        (*(v20 + 8))(v14, v10);
        swift_unknownObjectRelease();
        v6 = v37;
      }

      else
      {
        v31 = v19;
        LOBYTE(v37) = 0;
        sub_10038B880();
        sub_1004A6B04();
        v25 = v33;
        LOBYTE(v36) = 0;
        sub_100391C64();
        v28 = v6;
        sub_1004A6B94();
        v6 = v37;
        sub_10000C9C0(&qword_1005DB1D8, &qword_1004FA3E0);
        v35 = 1;
        sub_100391CB8();
        sub_1004A6B94();
        (*(v32 + 8))(v9, v28);
        (*(v25 + 8))(0, v10);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v21 = sub_1004A67D4();
      swift_allocError();
      v6 = v22;
      v23 = *(sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340) + 48);
      *v6 = &type metadata for IndexRequest;
      sub_1004A6B14();
      sub_1004A67C4();
      (*(*(v21 - 8) + 104))(v6, enum case for DecodingError.typeMismatch(_:), v21);
      swift_willThrow();
      (*(v33 + 8))(v18, v10);
      swift_unknownObjectRelease();
    }
  }

  sub_1000197E0(v34);
  return v6;
}

unint64_t sub_10038BF7C()
{
  result = qword_1005DB200;
  if (!qword_1005DB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB200);
  }

  return result;
}

unint64_t sub_10038BFD0()
{
  result = qword_1005DB208;
  if (!qword_1005DB208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB208);
  }

  return result;
}

void *sub_10038C024(uint64_t *a1)
{
  v3 = sub_10000C9C0(&qword_1005DB768, &qword_1004FD4D0);
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v26 = sub_10000C9C0(&qword_1005DB770, &qword_1004FD4D8);
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v26);
  v10 = &v21 - v9;
  v11 = a1[4];
  v12 = sub_10002587C(a1, a1[3]);
  sub_10038BF7C();
  sub_1004A6F84();
  if (v1)
  {
    goto LABEL_5;
  }

  v22 = a1;
  v23 = v7;
  v13 = v26;
  if (*(sub_1004A6BC4() + 16) != 1)
  {
    v15 = v13;
    v16 = sub_1004A67D4();
    swift_allocError();
    v18 = v17;
    v19 = *(sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340) + 48);
    *v18 = &type metadata for CredentialRequest;
    v12 = v10;
    sub_1004A6B14();
    sub_1004A67C4();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v23 + 8))(v10, v15);
    swift_unknownObjectRelease();
    a1 = v22;
LABEL_5:
    sub_1000197E0(a1);
    return v12;
  }

  sub_10038BFD0();
  sub_1004A6B04();
  v14 = v23;
  sub_10037F108();
  sub_1004A6B94();
  (*(v24 + 8))(v6, v3);
  (*(v14 + 8))(v10, v13);
  swift_unknownObjectRelease();
  v12 = v25;
  sub_1000197E0(v22);
  return v12;
}

unint64_t sub_10038C3A4()
{
  result = qword_1005DB220;
  if (!qword_1005DB220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB220);
  }

  return result;
}

unint64_t sub_10038C3F8()
{
  result = qword_1005DB228;
  if (!qword_1005DB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB228);
  }

  return result;
}

unint64_t sub_10038C44C()
{
  result = qword_1005DB238;
  if (!qword_1005DB238)
  {
    sub_10000DEFC(&qword_1005DB230, &qword_1004FA408);
    sub_10038C4D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB238);
  }

  return result;
}

unint64_t sub_10038C4D0()
{
  result = qword_1005DB240;
  if (!qword_1005DB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB240);
  }

  return result;
}

void *sub_10038C524(uint64_t *a1)
{
  v3 = sub_10000C9C0(&qword_1005DB748, &qword_1004FD4C0);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v24 = sub_10000C9C0(&qword_1005DB750, &qword_1004FD4C8);
  v7 = *(v24 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v24);
  v10 = &v21 - v9;
  v11 = a1[4];
  v12 = sub_10002587C(a1, a1[3]);
  sub_10038C3A4();
  sub_1004A6F84();
  if (v1)
  {
    goto LABEL_5;
  }

  v21 = a1;
  v22 = v7;
  v13 = v24;
  if (*(sub_1004A6BC4() + 16) != 1)
  {
    v15 = v13;
    v16 = sub_1004A67D4();
    swift_allocError();
    v18 = v17;
    v19 = *(sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340) + 48);
    *v18 = &type metadata for CredentialResponse;
    v12 = v10;
    sub_1004A6B14();
    sub_1004A67C4();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v22 + 8))(v10, v15);
    swift_unknownObjectRelease();
    a1 = v21;
LABEL_5:
    sub_1000197E0(a1);
    return v12;
  }

  sub_10038C3F8();
  sub_1004A6B04();
  v14 = v22;
  sub_10000C9C0(&qword_1005DB230, &qword_1004FA408);
  sub_100391B8C();
  sub_1004A6B94();
  (*(v23 + 8))(v6, v3);
  (*(v14 + 8))(v10, v13);
  swift_unknownObjectRelease();
  v12 = v25;
  sub_1000197E0(v21);
  return v12;
}

unint64_t sub_10038C8B4()
{
  result = qword_1005DB280;
  if (!qword_1005DB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB280);
  }

  return result;
}

unint64_t sub_10038C908()
{
  result = qword_1005DB288;
  if (!qword_1005DB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB288);
  }

  return result;
}

unint64_t sub_10038C95C()
{
  result = qword_1005DB290;
  if (!qword_1005DB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB290);
  }

  return result;
}

unint64_t sub_10038C9B0()
{
  result = qword_1005DB298;
  if (!qword_1005DB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB298);
  }

  return result;
}

unint64_t sub_10038CA04()
{
  result = qword_1005DB2A8;
  if (!qword_1005DB2A8)
  {
    sub_10000DEFC(&qword_1005DB2A0, &unk_1004FA448);
    sub_10038CA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB2A8);
  }

  return result;
}

unint64_t sub_10038CA88()
{
  result = qword_1005DB2B0;
  if (!qword_1005DB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB2B0);
  }

  return result;
}

unint64_t sub_10038CADC()
{
  result = qword_1005DB2B8;
  if (!qword_1005DB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB2B8);
  }

  return result;
}

unint64_t sub_10038CB30()
{
  result = qword_1005DB2C0;
  if (!qword_1005DB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB2C0);
  }

  return result;
}

unint64_t sub_10038CB84()
{
  result = qword_1005DB2C8;
  if (!qword_1005DB2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB2C8);
  }

  return result;
}

unint64_t sub_10038CBD8()
{
  result = qword_1005DB2D0;
  if (!qword_1005DB2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB2D0);
  }

  return result;
}

unint64_t sub_10038CC2C()
{
  result = qword_1005DB2D8;
  if (!qword_1005DB2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB2D8);
  }

  return result;
}

uint64_t sub_10038CC80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x686372616573 && a2 == 0xE600000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756B6F6F6CLL && a2 == 0xE600000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004B0260 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004B0280 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004B02A0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C616E41646E6573 && a2 == 0xED00007363697479)
  {

    return 5;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10038CE88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F666562 && a2 == 0xE600000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_10038CF90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = sub_10000C9C0(&qword_1005DB700, &qword_1004FD488);
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = *(v81 + 64);
  __chkstk_darwin(v3);
  v86 = &v72 - v5;
  v83 = sub_10000C9C0(&qword_1005DB708, &qword_1004FD490);
  v85 = *(v83 - 8);
  v6 = *(v85 + 64);
  __chkstk_darwin(v83);
  v90 = &v72 - v7;
  v79 = sub_10000C9C0(&qword_1005DB710, &qword_1004FD498);
  v77 = *(v79 - 8);
  v8 = *(v77 + 64);
  __chkstk_darwin(v79);
  v89 = &v72 - v9;
  v76 = sub_10000C9C0(&qword_1005DB718, &qword_1004FD4A0);
  v84 = *(v76 - 8);
  v10 = *(v84 + 64);
  __chkstk_darwin(v76);
  v88 = &v72 - v11;
  v80 = sub_10000C9C0(&qword_1005DB720, &qword_1004FD4A8);
  v78 = *(v80 - 8);
  v12 = *(v78 + 64);
  __chkstk_darwin(v80);
  v14 = &v72 - v13;
  v15 = sub_10000C9C0(&qword_1005DB728, &qword_1004FD4B0);
  v75 = *(v15 - 8);
  v16 = *(v75 + 64);
  __chkstk_darwin(v15);
  v18 = &v72 - v17;
  v19 = sub_10000C9C0(&qword_1005DB730, &qword_1004FD4B8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v72 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v92 = a1;
  sub_10002587C(a1, v25);
  sub_10038C8B4();
  v26 = v91;
  sub_1004A6F84();
  if (v26)
  {
    return sub_1000197E0(v92);
  }

  v72 = v15;
  v28 = v88;
  v27 = v89;
  v29 = v90;
  v73 = 0;
  v74 = v20;
  v91 = v23;
  v30 = sub_1004A6BC4();
  v31 = v30;
  if (*(v30 + 16) != 1 || (v32 = *(v30 + 32), v32 == 6))
  {
    v37 = sub_1004A67D4();
    swift_allocError();
    v39 = v38;
    v40 = *(sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340) + 48);
    *v39 = &type metadata for SearchRequest;
    v41 = v91;
    sub_1004A6B14();
    sub_1004A67C4();
    (*(*(v37 - 8) + 104))(v39, enum case for DecodingError.typeMismatch(_:), v37);
    swift_willThrow();
    (*(v74 + 8))(v41, v19);
LABEL_25:
    swift_unknownObjectRelease();
    return sub_1000197E0(v92);
  }

  if (*(v30 + 32) <= 2u)
  {
    if (*(v30 + 32))
    {
      v33 = v91;
      if (v32 == 1)
      {
        LOBYTE(v94) = 1;
        sub_10038CB84();
        v34 = v73;
        sub_1004A6B04();
        if (!v34)
        {
          sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
          sub_100391ACC(&qword_1005DB738);
          v35 = v80;
          sub_1004A6B94();
          v36 = 0;
          (*(v78 + 8))(v14, v35);
          (*(v74 + 8))(v33, v19);
          swift_unknownObjectRelease();
          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = v94;
          v66 = 1;
LABEL_29:
          v50 = v87;
          goto LABEL_30;
        }
      }

      else
      {
        LOBYTE(v94) = 2;
        sub_10038CB30();
        v52 = v28;
        v53 = v73;
        sub_1004A6B04();
        if (!v53)
        {
          LOBYTE(v97) = 0;
          sub_100391A78();
          v61 = v76;
          sub_1004A6B94();
          v68 = v94;
          v86 = v95;
          v63 = v96;
          v93 = 1;
          sub_1003918EC();
          sub_1004A6B44();
          v69 = v84;
          v89 = v97;
          v90 = v68;
          v70 = BYTE4(v97);
          v93 = 2;
          v64 = sub_1004A6B84();
          (*(v69 + 8))(v52, v61);
          (*(v74 + 8))(v91, v19);
          swift_unknownObjectRelease();
          v71 = &_mh_execute_header;
          if (!v70)
          {
            v71 = 0;
          }

          v65 = v90;
          v36 = v71 | v89;
          v66 = 2;
          v62 = v86;
          v50 = v87;
          goto LABEL_30;
        }
      }

      (*(v74 + 8))(v33, v19);
    }

    else
    {
      LOBYTE(v94) = 0;
      sub_10038CBD8();
      v46 = v91;
      v47 = v73;
      sub_1004A6B04();
      if (!v47)
      {
        sub_100391B38();
        v58 = v72;
        sub_1004A6B94();
        v36 = 0;
        (*(v75 + 8))(v18, v58);
        (*(v74 + 8))(v46, v19);
        swift_unknownObjectRelease();
        v64 = 0;
        v66 = 0;
        v65 = v94;
        v62 = v95;
        v63 = v96;
        goto LABEL_29;
      }

      (*(v74 + 8))(v46, v19);
    }

    goto LABEL_25;
  }

  if (v32 == 3)
  {
    LOBYTE(v94) = 3;
    sub_10038CADC();
    v48 = v91;
    v49 = v73;
    sub_1004A6B04();
    v50 = v87;
    v51 = v74;
    if (v49)
    {
      (*(v74 + 8))(v48, v19);
      swift_unknownObjectRelease();
      return sub_1000197E0(v92);
    }

    (*(v77 + 8))(v27, v79);
    (*(v51 + 8))(v48, v19);
    swift_unknownObjectRelease();
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v36 = 0;
    v64 = 0;
    v66 = 4;
  }

  else
  {
    v89 = v19;
    v42 = v74;
    if (v32 != 4)
    {
      LOBYTE(v94) = 5;
      sub_10038C908();
      v54 = v86;
      v55 = v89;
      v56 = v91;
      v57 = v73;
      sub_1004A6B04();
      v36 = v57;
      if (!v57)
      {
        (*(v81 + 8))(v54, v82);
        (*(v42 + 8))(v56, v55);
        swift_unknownObjectRelease();
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v66 = 4;
        v65 = 1;
        goto LABEL_29;
      }

      (*(v42 + 8))(v56, v55);
      goto LABEL_25;
    }

    LOBYTE(v94) = 4;
    sub_10038C95C();
    v43 = v89;
    v44 = v91;
    v45 = v73;
    sub_1004A6B04();
    if (v45)
    {
      (*(v42 + 8))(v44, v43);
      goto LABEL_25;
    }

    LOBYTE(v97) = 0;
    sub_100391A78();
    v59 = v83;
    sub_1004A6B94();
    v88 = v31;
    v65 = v94;
    v67 = v95;
    v63 = v96;
    sub_10000C9C0(&qword_1005DB2A0, &unk_1004FA448);
    v93 = 1;
    sub_100391868();
    sub_1004A6B94();
    v86 = v67;
    (*(v85 + 8))(v29, v59);
    (*(v42 + 8))(v91, v89);
    swift_unknownObjectRelease();
    v64 = 0;
    v36 = v97;
    v66 = 3;
    v62 = v86;
    v50 = v87;
  }

LABEL_30:
  result = sub_1000197E0(v92);
  *v50 = v65;
  *(v50 + 8) = v62;
  *(v50 + 16) = v63;
  *(v50 + 24) = v36;
  *(v50 + 32) = v64;
  *(v50 + 40) = v66;
  return result;
}

unint64_t sub_10038DCFC()
{
  result = qword_1005DB318;
  if (!qword_1005DB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB318);
  }

  return result;
}

unint64_t sub_10038DD50()
{
  result = qword_1005DB320;
  if (!qword_1005DB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB320);
  }

  return result;
}

unint64_t sub_10038DDA4()
{
  result = qword_1005DB328;
  if (!qword_1005DB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB328);
  }

  return result;
}

unint64_t sub_10038DDF8()
{
  result = qword_1005DB330;
  if (!qword_1005DB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB330);
  }

  return result;
}

unint64_t sub_10038DE4C()
{
  result = qword_1005DB338;
  if (!qword_1005DB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB338);
  }

  return result;
}

unint64_t sub_10038DEA0()
{
  result = qword_1005DB340;
  if (!qword_1005DB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB340);
  }

  return result;
}

unint64_t sub_10038DEF4()
{
  result = qword_1005DB348;
  if (!qword_1005DB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB348);
  }

  return result;
}

unint64_t sub_10038DF48()
{
  result = qword_1005DB360;
  if (!qword_1005DB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB360);
  }

  return result;
}

uint64_t sub_10038DF9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6552686372616573 && a2 == 0xED000073746C7573;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x655270756B6F6F6CLL && a2 == 0xED000073746C7573 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004B02C0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004AF9C0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646564756C637865 && a2 == 0xEC00000073444955 || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C616E41746E6573 && a2 == 0xED00007363697479)
  {

    return 5;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10038E1BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v78 = sub_10000C9C0(&qword_1005DB698, &qword_1004FD448);
  v70 = *(v78 - 8);
  v3 = *(v70 + 64);
  __chkstk_darwin(v78);
  v83 = &v65 - v4;
  v77 = sub_10000C9C0(&qword_1005DB6A0, &qword_1004FD450);
  v79 = *(v77 - 8);
  v5 = *(v79 + 64);
  __chkstk_darwin(v77);
  v80 = &v65 - v6;
  v71 = sub_10000C9C0(&qword_1005DB6A8, &qword_1004FD458);
  v76 = *(v71 - 8);
  v7 = *(v76 + 64);
  __chkstk_darwin(v71);
  v82 = &v65 - v8;
  v9 = sub_10000C9C0(&qword_1005DB6B0, &qword_1004FD460);
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = *(v74 + 64);
  __chkstk_darwin(v9);
  v81 = &v65 - v11;
  v12 = sub_10000C9C0(&qword_1005DB6B8, &qword_1004FD468);
  v72 = *(v12 - 8);
  v73 = v12;
  v13 = *(v72 + 64);
  __chkstk_darwin(v12);
  v15 = &v65 - v14;
  v16 = sub_10000C9C0(&qword_1005DB6C0, &qword_1004FD470);
  v69 = *(v16 - 8);
  v17 = *(v69 + 64);
  __chkstk_darwin(v16);
  v19 = &v65 - v18;
  v20 = sub_10000C9C0(&qword_1005DB6C8, &unk_1004FD478);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v65 - v23;
  v25 = a1[3];
  v26 = a1[4];
  v90 = a1;
  sub_10002587C(a1, v25);
  sub_10038DCFC();
  v27 = v85;
  sub_1004A6F84();
  if (v27)
  {
    return sub_1000197E0(v90);
  }

  v66 = v16;
  v28 = v15;
  v30 = v81;
  v29 = v82;
  v31 = v83;
  v67 = 0;
  v68 = v21;
  v32 = v84;
  v85 = v24;
  v33 = sub_1004A6BC4();
  if (*(v33 + 16) != 1 || (v34 = *(v33 + 32), v34 == 6))
  {
    v40 = sub_1004A67D4();
    swift_allocError();
    v42 = v41;
    v43 = *(sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340) + 48);
    *v42 = &type metadata for SearchResponse;
    v44 = v85;
    sub_1004A6B14();
    sub_1004A67C4();
    (*(*(v40 - 8) + 104))(v42, enum case for DecodingError.typeMismatch(_:), v40);
    swift_willThrow();
    (*(v68 + 8))(v44, v20);
    goto LABEL_11;
  }

  if (*(v33 + 32) > 2u)
  {
    if (v34 == 3)
    {
      LOBYTE(v86) = 3;
      sub_10038DDF8();
      v46 = v85;
      v53 = v67;
      sub_1004A6B04();
      if (!v53)
      {
        sub_100391940();
        v58 = v71;
        sub_1004A6B94();
        v59 = v68;
        v67 = 0;
        (*(v76 + 8))(v29, v58);
        (*(v59 + 8))(v46, v20);
        swift_unknownObjectRelease();
        v64 = v86;
        v62 = v87;
        v39 = v88;
        v63 = v89;
        goto LABEL_30;
      }
    }

    else
    {
      v82 = v33;
      v46 = v85;
      if (v34 == 4)
      {
        LOBYTE(v86) = 4;
        sub_10038DDA4();
        v47 = v80;
        v48 = v67;
        sub_1004A6B04();
        if (!v48)
        {
          sub_10000C9C0(&qword_1005DB2A0, &unk_1004FA448);
          sub_100391868();
          v49 = v77;
          sub_1004A6B94();
          v39 = 0;
          v67 = 0;
          (*(v79 + 8))(v47, v49);
          (*(v68 + 8))(v46, v20);
          swift_unknownObjectRelease();
          v62 = 0;
          v63 = 0;
          v64 = v86;
LABEL_30:
          v32 = v84;
          goto LABEL_31;
        }
      }

      else
      {
        LOBYTE(v86) = 5;
        sub_10038DD50();
        v56 = v67;
        sub_1004A6B04();
        v39 = v56;
        if (!v56)
        {
          v67 = 0;
          (*(v70 + 8))(v31, v78);
          (*(v68 + 8))(v46, v20);
          swift_unknownObjectRelease();
          v64 = 0;
          v62 = 0;
          v63 = 0;
          goto LABEL_30;
        }
      }
    }

    (*(v68 + 8))(v46, v20);
LABEL_11:
    swift_unknownObjectRelease();
    return sub_1000197E0(v90);
  }

  if (!*(v33 + 32))
  {
    v82 = v33;
    LOBYTE(v86) = 0;
    sub_10038DF48();
    v50 = v19;
    v51 = v85;
    v52 = v67;
    sub_1004A6B04();
    if (!v52)
    {
      sub_10000C9C0(&qword_1005DB350, &qword_1004FA490);
      sub_1003919E8(&qword_1005DB6F0, sub_100391A78, sub_100391868);
      v57 = v66;
      sub_1004A6B94();
      v39 = 0;
      (*(v69 + 8))(v50, v57);
      (*(v68 + 8))(v51, v20);
      swift_unknownObjectRelease();
      v67 = 0;
      goto LABEL_29;
    }

    (*(v68 + 8))(v51, v20);
    goto LABEL_11;
  }

  if (v34 == 1)
  {
    LOBYTE(v86) = 1;
    sub_10038DEF4();
    v35 = v28;
    v36 = v85;
    v37 = v67;
    sub_1004A6B04();
    if (!v37)
    {
      sub_10000C9C0(&qword_1005DB350, &qword_1004FA490);
      sub_1003919E8(&qword_1005DB6F0, sub_100391A78, sub_100391868);
      v38 = v73;
      sub_1004A6B94();
      v39 = 0;
      v67 = 0;
      (*(v72 + 8))(v35, v38);
      (*(v68 + 8))(v36, v20);
      swift_unknownObjectRelease();
LABEL_29:
      v62 = 0;
      v63 = 0;
      v64 = v86;
      goto LABEL_31;
    }

    (*(v68 + 8))(v36, v20);
    goto LABEL_11;
  }

  LOBYTE(v86) = 2;
  sub_10038DE4C();
  v54 = v85;
  v55 = v67;
  sub_1004A6B04();
  if (v55)
  {
    (*(v68 + 8))(v54, v20);
    swift_unknownObjectRelease();
    return sub_1000197E0(v90);
  }

  sub_100391994();
  v60 = v75;
  sub_1004A6B44();
  v61 = v68;
  v67 = 0;
  (*(v74 + 8))(v30, v60);
  (*(v61 + 8))(v85, v20);
  swift_unknownObjectRelease();
  v39 = 0;
  v63 = 0;
  v64 = v86;
  v62 = v87;
LABEL_31:
  result = sub_1000197E0(v90);
  *v32 = v64;
  *(v32 + 8) = v62;
  *(v32 + 16) = v39;
  *(v32 + 24) = v63;
  *(v32 + 32) = v34;
  return result;
}

unint64_t sub_10038EE78()
{
  result = qword_1005DB368;
  if (!qword_1005DB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB368);
  }

  return result;
}

unint64_t sub_10038EED0()
{
  result = qword_1005DB370;
  if (!qword_1005DB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB370);
  }

  return result;
}

uint64_t sub_10038EF30(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

uint64_t sub_10038EF58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 41))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 40) >> 1) & 0x1C | (*(a1 + 40) >> 6)) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10038EFAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_10038F048(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10038F060(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_10038F088(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1D && *(a1 + 33))
  {
    return (*a1 + 29);
  }

  v3 = ((*(a1 + 32) >> 1) & 0x1C | (*(a1 + 32) >> 6)) ^ 0x1F;
  if (v3 >= 0x1C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10038F0DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1C)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 29;
    *(result + 8) = 0;
    if (a3 >= 0x1D)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1D)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_10038F1AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_10038F1F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10038F240(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10038F288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_10038F2D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_10038F30C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10038F354(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_10038F39C(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_10038F60C()
{
  result = qword_1005DB378;
  if (!qword_1005DB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB378);
  }

  return result;
}

unint64_t sub_10038F664()
{
  result = qword_1005DB380;
  if (!qword_1005DB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB380);
  }

  return result;
}

unint64_t sub_10038F6BC()
{
  result = qword_1005DB388;
  if (!qword_1005DB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB388);
  }

  return result;
}

unint64_t sub_10038F714()
{
  result = qword_1005DB390;
  if (!qword_1005DB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB390);
  }

  return result;
}

unint64_t sub_10038F76C()
{
  result = qword_1005DB398;
  if (!qword_1005DB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB398);
  }

  return result;
}

unint64_t sub_10038F7C4()
{
  result = qword_1005DB3A0;
  if (!qword_1005DB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB3A0);
  }

  return result;
}

unint64_t sub_10038F81C()
{
  result = qword_1005DB3A8;
  if (!qword_1005DB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB3A8);
  }

  return result;
}

unint64_t sub_10038F874()
{
  result = qword_1005DB3B0;
  if (!qword_1005DB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB3B0);
  }

  return result;
}

unint64_t sub_10038F8CC()
{
  result = qword_1005DB3B8;
  if (!qword_1005DB3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB3B8);
  }

  return result;
}

unint64_t sub_10038F924()
{
  result = qword_1005DB3C0;
  if (!qword_1005DB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB3C0);
  }

  return result;
}

unint64_t sub_10038F97C()
{
  result = qword_1005DB3C8;
  if (!qword_1005DB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB3C8);
  }

  return result;
}

unint64_t sub_10038F9D4()
{
  result = qword_1005DB3D0;
  if (!qword_1005DB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB3D0);
  }

  return result;
}

unint64_t sub_10038FA2C()
{
  result = qword_1005DB3D8;
  if (!qword_1005DB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB3D8);
  }

  return result;
}

unint64_t sub_10038FA84()
{
  result = qword_1005DB3E0;
  if (!qword_1005DB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB3E0);
  }

  return result;
}

unint64_t sub_10038FADC()
{
  result = qword_1005DB3E8;
  if (!qword_1005DB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB3E8);
  }

  return result;
}

unint64_t sub_10038FB34()
{
  result = qword_1005DB3F0;
  if (!qword_1005DB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB3F0);
  }

  return result;
}

unint64_t sub_10038FB8C()
{
  result = qword_1005DB3F8;
  if (!qword_1005DB3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB3F8);
  }

  return result;
}

unint64_t sub_10038FBE4()
{
  result = qword_1005DB400;
  if (!qword_1005DB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB400);
  }

  return result;
}

unint64_t sub_10038FC3C()
{
  result = qword_1005DB408;
  if (!qword_1005DB408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB408);
  }

  return result;
}

unint64_t sub_10038FC94()
{
  result = qword_1005DB410;
  if (!qword_1005DB410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB410);
  }

  return result;
}

unint64_t sub_10038FCEC()
{
  result = qword_1005DB418;
  if (!qword_1005DB418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB418);
  }

  return result;
}

unint64_t sub_10038FD44()
{
  result = qword_1005DB420;
  if (!qword_1005DB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB420);
  }

  return result;
}

unint64_t sub_10038FD9C()
{
  result = qword_1005DB428;
  if (!qword_1005DB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB428);
  }

  return result;
}

unint64_t sub_10038FDF4()
{
  result = qword_1005DB430;
  if (!qword_1005DB430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB430);
  }

  return result;
}

unint64_t sub_10038FE4C()
{
  result = qword_1005DB438;
  if (!qword_1005DB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB438);
  }

  return result;
}

unint64_t sub_10038FEA4()
{
  result = qword_1005DB440;
  if (!qword_1005DB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB440);
  }

  return result;
}

unint64_t sub_10038FEFC()
{
  result = qword_1005DB448;
  if (!qword_1005DB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB448);
  }

  return result;
}

unint64_t sub_10038FF54()
{
  result = qword_1005DB450;
  if (!qword_1005DB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB450);
  }

  return result;
}

unint64_t sub_10038FFAC()
{
  result = qword_1005DB458;
  if (!qword_1005DB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB458);
  }

  return result;
}

unint64_t sub_100390004()
{
  result = qword_1005DB460;
  if (!qword_1005DB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB460);
  }

  return result;
}

unint64_t sub_10039005C()
{
  result = qword_1005DB468;
  if (!qword_1005DB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB468);
  }

  return result;
}

unint64_t sub_1003900B4()
{
  result = qword_1005DB470;
  if (!qword_1005DB470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB470);
  }

  return result;
}

unint64_t sub_10039010C()
{
  result = qword_1005DB478;
  if (!qword_1005DB478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB478);
  }

  return result;
}

unint64_t sub_100390164()
{
  result = qword_1005DB480;
  if (!qword_1005DB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB480);
  }

  return result;
}

unint64_t sub_1003901BC()
{
  result = qword_1005DB488;
  if (!qword_1005DB488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB488);
  }

  return result;
}

unint64_t sub_100390214()
{
  result = qword_1005DB490;
  if (!qword_1005DB490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB490);
  }

  return result;
}

unint64_t sub_10039026C()
{
  result = qword_1005DB498;
  if (!qword_1005DB498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB498);
  }

  return result;
}

unint64_t sub_1003902C4()
{
  result = qword_1005DB4A0;
  if (!qword_1005DB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB4A0);
  }

  return result;
}

unint64_t sub_10039031C()
{
  result = qword_1005DB4A8;
  if (!qword_1005DB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB4A8);
  }

  return result;
}

unint64_t sub_100390374()
{
  result = qword_1005DB4B0;
  if (!qword_1005DB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB4B0);
  }

  return result;
}

unint64_t sub_1003903CC()
{
  result = qword_1005DB4B8;
  if (!qword_1005DB4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB4B8);
  }

  return result;
}

unint64_t sub_100390424()
{
  result = qword_1005DB4C0;
  if (!qword_1005DB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB4C0);
  }

  return result;
}

unint64_t sub_10039047C()
{
  result = qword_1005DB4C8;
  if (!qword_1005DB4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB4C8);
  }

  return result;
}

unint64_t sub_1003904D4()
{
  result = qword_1005DB4D0;
  if (!qword_1005DB4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB4D0);
  }

  return result;
}

unint64_t sub_10039052C()
{
  result = qword_1005DB4D8;
  if (!qword_1005DB4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB4D8);
  }

  return result;
}

unint64_t sub_100390584()
{
  result = qword_1005DB4E0;
  if (!qword_1005DB4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB4E0);
  }

  return result;
}

unint64_t sub_1003905DC()
{
  result = qword_1005DB4E8;
  if (!qword_1005DB4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB4E8);
  }

  return result;
}

unint64_t sub_100390634()
{
  result = qword_1005DB4F0;
  if (!qword_1005DB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB4F0);
  }

  return result;
}

unint64_t sub_10039068C()
{
  result = qword_1005DB4F8;
  if (!qword_1005DB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB4F8);
  }

  return result;
}

unint64_t sub_1003906E4()
{
  result = qword_1005DB500;
  if (!qword_1005DB500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB500);
  }

  return result;
}

unint64_t sub_10039073C()
{
  result = qword_1005DB508;
  if (!qword_1005DB508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB508);
  }

  return result;
}

unint64_t sub_100390794()
{
  result = qword_1005DB510;
  if (!qword_1005DB510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB510);
  }

  return result;
}

unint64_t sub_1003907EC()
{
  result = qword_1005DB518;
  if (!qword_1005DB518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB518);
  }

  return result;
}

unint64_t sub_100390844()
{
  result = qword_1005DB520;
  if (!qword_1005DB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB520);
  }

  return result;
}

unint64_t sub_10039089C()
{
  result = qword_1005DB528;
  if (!qword_1005DB528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB528);
  }

  return result;
}

unint64_t sub_1003908F4()
{
  result = qword_1005DB530;
  if (!qword_1005DB530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB530);
  }

  return result;
}

unint64_t sub_10039094C()
{
  result = qword_1005DB538;
  if (!qword_1005DB538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB538);
  }

  return result;
}

unint64_t sub_1003909A4()
{
  result = qword_1005DB540;
  if (!qword_1005DB540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB540);
  }

  return result;
}

unint64_t sub_1003909FC()
{
  result = qword_1005DB548;
  if (!qword_1005DB548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB548);
  }

  return result;
}

unint64_t sub_100390A54()
{
  result = qword_1005DB550;
  if (!qword_1005DB550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB550);
  }

  return result;
}

unint64_t sub_100390AAC()
{
  result = qword_1005DB558;
  if (!qword_1005DB558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB558);
  }

  return result;
}

unint64_t sub_100390B04()
{
  result = qword_1005DB560;
  if (!qword_1005DB560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB560);
  }

  return result;
}

unint64_t sub_100390B5C()
{
  result = qword_1005DB568;
  if (!qword_1005DB568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB568);
  }

  return result;
}

unint64_t sub_100390BB4()
{
  result = qword_1005DB570;
  if (!qword_1005DB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB570);
  }

  return result;
}

unint64_t sub_100390C0C()
{
  result = qword_1005DB578;
  if (!qword_1005DB578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB578);
  }

  return result;
}

unint64_t sub_100390C64()
{
  result = qword_1005DB580;
  if (!qword_1005DB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB580);
  }

  return result;
}

unint64_t sub_100390CBC()
{
  result = qword_1005DB588;
  if (!qword_1005DB588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB588);
  }

  return result;
}

unint64_t sub_100390D14()
{
  result = qword_1005DB590;
  if (!qword_1005DB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB590);
  }

  return result;
}

unint64_t sub_100390D6C()
{
  result = qword_1005DB598;
  if (!qword_1005DB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB598);
  }

  return result;
}

unint64_t sub_100390DC4()
{
  result = qword_1005DB5A0;
  if (!qword_1005DB5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB5A0);
  }

  return result;
}

unint64_t sub_100390E1C()
{
  result = qword_1005DB5A8;
  if (!qword_1005DB5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB5A8);
  }

  return result;
}

unint64_t sub_100390E74()
{
  result = qword_1005DB5B0;
  if (!qword_1005DB5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB5B0);
  }

  return result;
}

unint64_t sub_100390ECC()
{
  result = qword_1005DB5B8;
  if (!qword_1005DB5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB5B8);
  }

  return result;
}

unint64_t sub_100390F24()
{
  result = qword_1005DB5C0;
  if (!qword_1005DB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB5C0);
  }

  return result;
}

unint64_t sub_100390F7C()
{
  result = qword_1005DB5C8;
  if (!qword_1005DB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB5C8);
  }

  return result;
}

unint64_t sub_100390FD4()
{
  result = qword_1005DB5D0;
  if (!qword_1005DB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB5D0);
  }

  return result;
}

unint64_t sub_10039102C()
{
  result = qword_1005DB5D8;
  if (!qword_1005DB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB5D8);
  }

  return result;
}

unint64_t sub_100391084()
{
  result = qword_1005DB5E0;
  if (!qword_1005DB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB5E0);
  }

  return result;
}

unint64_t sub_1003910DC()
{
  result = qword_1005DB5E8;
  if (!qword_1005DB5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB5E8);
  }

  return result;
}

unint64_t sub_100391134()
{
  result = qword_1005DB5F0;
  if (!qword_1005DB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB5F0);
  }

  return result;
}

unint64_t sub_10039118C()
{
  result = qword_1005DB5F8;
  if (!qword_1005DB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB5F8);
  }

  return result;
}

unint64_t sub_1003911E4()
{
  result = qword_1005DB600;
  if (!qword_1005DB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB600);
  }

  return result;
}

unint64_t sub_10039123C()
{
  result = qword_1005DB608;
  if (!qword_1005DB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB608);
  }

  return result;
}

unint64_t sub_100391294()
{
  result = qword_1005DB610;
  if (!qword_1005DB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB610);
  }

  return result;
}

unint64_t sub_1003912EC()
{
  result = qword_1005DB618;
  if (!qword_1005DB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB618);
  }

  return result;
}

unint64_t sub_100391344()
{
  result = qword_1005DB620;
  if (!qword_1005DB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB620);
  }

  return result;
}

unint64_t sub_10039139C()
{
  result = qword_1005DB628;
  if (!qword_1005DB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB628);
  }

  return result;
}

unint64_t sub_1003913F4()
{
  result = qword_1005DB630;
  if (!qword_1005DB630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB630);
  }

  return result;
}

unint64_t sub_10039144C()
{
  result = qword_1005DB638;
  if (!qword_1005DB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB638);
  }

  return result;
}

unint64_t sub_1003914A4()
{
  result = qword_1005DB640;
  if (!qword_1005DB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB640);
  }

  return result;
}

unint64_t sub_1003914FC()
{
  result = qword_1005DB648;
  if (!qword_1005DB648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB648);
  }

  return result;
}

unint64_t sub_100391554()
{
  result = qword_1005DB650;
  if (!qword_1005DB650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB650);
  }

  return result;
}

unint64_t sub_1003915AC()
{
  result = qword_1005DB658;
  if (!qword_1005DB658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB658);
  }

  return result;
}

unint64_t sub_100391604()
{
  result = qword_1005DB660;
  if (!qword_1005DB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB660);
  }

  return result;
}

unint64_t sub_10039165C()
{
  result = qword_1005DB668;
  if (!qword_1005DB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB668);
  }

  return result;
}

unint64_t sub_1003916B4()
{
  result = qword_1005DB670;
  if (!qword_1005DB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB670);
  }

  return result;
}

unint64_t sub_10039170C()
{
  result = qword_1005DB678;
  if (!qword_1005DB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB678);
  }

  return result;
}

unint64_t sub_100391764()
{
  result = qword_1005DB680;
  if (!qword_1005DB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB680);
  }

  return result;
}

unint64_t sub_1003917BC()
{
  result = qword_1005DB688;
  if (!qword_1005DB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB688);
  }

  return result;
}

unint64_t sub_100391814()
{
  result = qword_1005DB690;
  if (!qword_1005DB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB690);
  }

  return result;
}

unint64_t sub_100391868()
{
  result = qword_1005DB6D0;
  if (!qword_1005DB6D0)
  {
    sub_10000DEFC(&qword_1005DB2A0, &unk_1004FA448);
    sub_1003918EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB6D0);
  }

  return result;
}

unint64_t sub_1003918EC()
{
  result = qword_1005DB6D8;
  if (!qword_1005DB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB6D8);
  }

  return result;
}

unint64_t sub_100391940()
{
  result = qword_1005DB6E0;
  if (!qword_1005DB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB6E0);
  }

  return result;
}

unint64_t sub_100391994()
{
  result = qword_1005DB6E8;
  if (!qword_1005DB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB6E8);
  }

  return result;
}

uint64_t sub_1003919E8(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000DEFC(&qword_1005DB350, &qword_1004FA490);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100391A78()
{
  result = qword_1005DB6F8;
  if (!qword_1005DB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB6F8);
  }

  return result;
}

uint64_t sub_100391ACC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000DEFC(&unk_1005DA9A0, &unk_1004CF770);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100391B38()
{
  result = qword_1005DB740;
  if (!qword_1005DB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB740);
  }

  return result;
}

unint64_t sub_100391B8C()
{
  result = qword_1005DB758;
  if (!qword_1005DB758)
  {
    sub_10000DEFC(&qword_1005DB230, &qword_1004FA408);
    sub_100391C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB758);
  }

  return result;
}

unint64_t sub_100391C10()
{
  result = qword_1005DB760;
  if (!qword_1005DB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB760);
  }

  return result;
}

unint64_t sub_100391C64()
{
  result = qword_1005DB798;
  if (!qword_1005DB798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB798);
  }

  return result;
}

unint64_t sub_100391CB8()
{
  result = qword_1005DB7A0;
  if (!qword_1005DB7A0)
  {
    sub_10000DEFC(&qword_1005DB1D8, &qword_1004FA3E0);
    sub_100391D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB7A0);
  }

  return result;
}

unint64_t sub_100391D3C()
{
  result = qword_1005DB7A8;
  if (!qword_1005DB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB7A8);
  }

  return result;
}

unint64_t sub_100391D90()
{
  result = qword_1005DB808;
  if (!qword_1005DB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB808);
  }

  return result;
}

unint64_t sub_100391DE4()
{
  result = qword_1005DB810;
  if (!qword_1005DB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB810);
  }

  return result;
}

unint64_t sub_100391E38()
{
  result = qword_1005DB818;
  if (!qword_1005DB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB818);
  }

  return result;
}

uint64_t sub_100391E8C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100391ECC()
{
  result = qword_1005DB840;
  if (!qword_1005DB840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB840);
  }

  return result;
}

unint64_t sub_100391F20()
{
  result = qword_1005DB848;
  if (!qword_1005DB848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB848);
  }

  return result;
}

unint64_t sub_100391F74()
{
  result = qword_1005DB850;
  if (!qword_1005DB850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB850);
  }

  return result;
}

uint64_t Suggestion.encode(to:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [v4 setOutputFormat:200];
  v5 = sub_1004A5734();
  [v4 encodeObject:a2 forKey:v5];

  v6 = [v4 encodedData];
  v7 = sub_1004A4414();
  v9 = v8;

  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_1004A6F94();
  sub_100025928(v12, v12[3]);
  sub_10015246C();
  sub_1004A6D84();

  sub_100014D40(v7, v9);
  return sub_1000197E0(v12);
}

uint64_t sub_100392198@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100392698(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t SearchQuery.id.getter(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  v2 = sub_1004A5764();

  return v2;
}

IMAPSearchIndexerXPC::Suggestion::ID __swiftcall Suggestion.ID.init(_:)(CSSuggestion a1)
{
  v2 = [(objc_class *)a1.super.isa uniqueIdentifier];
  v3 = sub_1004A5764();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.underlying._object = v7;
  result.underlying._countAndFlagsBits = v6;
  return result;
}

void sub_100392290(uint64_t *a1@<X8>)
{
  v3 = [*v1 uniqueIdentifier];
  v4 = sub_1004A5764();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t OSLogInterpolation.appendInterpolation(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A49D4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004A4884();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004A48E4();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  (*(v9 + 104))(v12, enum case for OSLogPrivacy.Mask.hash(_:), v8);
  sub_1004A48D4();
  (*(v9 + 8))(v12, v8);
  sub_1000EADE8();
  sub_1004A4964();
  sub_100392898(v7, &type metadata accessor for OSLogStringAlignment);
  sub_100392898(v16, &type metadata accessor for OSLogPrivacy);
}

{
  return sub_100439154(a1, a2, &unk_1005C1D38, sub_100439094);
}

{
  return sub_100439154(a1, a2, &unk_1005C1D60, sub_100439324);
}

{
  return sub_1004395B4(a1, a2);
}

{
  return sub_1004395B4(a1, a2);
}

{
  return sub_1004395B4(a1, a2);
}

{
  return sub_1004395B4(a1, a2);
}

{
  return sub_1004395B4(a1, a2);
}

{
  return sub_100439940(a1, a2, &unk_1005C1E50, sub_1004398F8);
}

{
  return sub_100439940(a1, a2, &unk_1005C1E78, sub_100439B30);
}

{
  return sub_100439154(a1, a2, &unk_1005C1EA0, sub_100439B80);
}

{
  return sub_100439154(a1, a2, &unk_1005C1EC8, sub_100439BC8);
}

{
  return sub_100439CD0(a1, a2, &unk_1005C1EF0, sub_100439C18);
}

{
  return sub_100439CD0(a1, a2, &unk_1005C1F18, sub_100439EA0);
}

{
  return sub_1004395B4(a1, a2);
}

{
  return sub_10043A83C(a1, a2, "[", &unk_1005C1F68, sub_100439F94, "]");
}

{
  return sub_1004395B4(a1, a2);
}

{
  return sub_1004395B4(a1, a2);
}

{
  return sub_1004395B4(a1, a2);
}

{
  return sub_10043A83C(a1, a2, "{", &unk_1005C2058, sub_10043A9F4, "}");
}

{
  return sub_1004395B4(a1, a2);
}

{
  return sub_10043A83C(a1, a2, "[", &unk_1005C20A8, sub_10043BFF8, "]");
}

{
  return sub_1004395B4(a1, a2);
}

{
  return sub_1004395B4(a1, a2);
}

{
  return sub_10043AC90(a1, a2);
}

{
  return sub_10043AC90(a1, a2);
}

{
  v47 = a1;
  v50 = sub_1004A48C4();
  v49 = *(v50 - 8);
  v4 = *(v49 + 64);
  __chkstk_darwin(v50);
  v48 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A48E4();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004A49D4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71._countAndFlagsBits = sub_1004A58F4("[", 1uLL, 1);
  sub_1004A49B4(v71);

  v46 = a2;

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v67 = sub_1004A49E4();
  v68 = v15;
  v69 = v16;
  v70 = v17;
  v18 = v67;
  v19 = v15;
  v20 = BYTE1(v15);
  v21 = BYTE2(v15);
  v22 = v16;
  v23 = v17;
  sub_1000EADE8();
  sub_1004390BC();
  v61 = v18;
  v62 = v19;
  v63 = v20;
  v64 = v21;
  v65 = v22;
  v66 = v23;
  sub_1004A4974();
  v45 = &type metadata accessor for OSLogPrivacy;
  v24 = v9;
  sub_1004390D4(v9, &type metadata accessor for OSLogPrivacy);
  v44 = &type metadata accessor for OSLogStringAlignment;
  sub_1004390D4(v13, &type metadata accessor for OSLogStringAlignment);
  sub_1000B5158(v22);

  v72._countAndFlagsBits = sub_1004A58F4("-", 1uLL, 1);
  sub_1004A49B4(v72);

  v25 = v46;

  v26 = swift_allocObject();
  *(v26 + 16) = v47;
  *(v26 + 24) = v25;
  v27 = v26;
  v73._countAndFlagsBits = sub_1004A58F4("{", 1uLL, 1);
  sub_1004A49B4(v73);

  v43[1] = v27;

  v28 = swift_allocObject();
  *(v28 + 16) = sub_10043B598;
  *(v28 + 24) = v27;
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v57 = sub_1004A49E4();
  v58 = v29;
  v59 = v30;
  v60 = v31;
  v32 = v57;
  v33 = v29;
  LOBYTE(v27) = BYTE1(v29);
  LOBYTE(v9) = BYTE2(v29);
  v34 = v30;
  v35 = v31;
  sub_1000EADE8();
  sub_1004390BC();
  v51 = v32;
  v52 = v33;
  v53 = v27;
  v54 = v9;
  v55 = v34;
  v56 = v35;
  sub_1004A4984();
  sub_1004390D4(v24, v45);
  sub_1004390D4(v13, v44);
  sub_1000B5158(v34);

  v74._countAndFlagsBits = sub_1004A58F4("}", 1uLL, 1);
  sub_1004A49B4(v74);

  v75._countAndFlagsBits = sub_1004A58F4("-", 1uLL, 1);
  sub_1004A49B4(v75);

  v36 = v46;

  v37 = swift_allocObject();
  *(v37 + 16) = v47;
  *(v37 + 24) = v36;

  v38 = swift_allocObject();
  *(v38 + 16) = sub_10043BD24;
  *(v38 + 24) = v37;
  sub_1004A49C4();
  v39 = v49;
  v40 = v48;
  v41 = v50;
  (*(v49 + 104))(v48, enum case for OSLogPrivacy._MailMask.mailbox(_:), v50);
  sub_1004A48A4();
  (*(v39 + 8))(v40, v41);
  sub_1004A4964();
  sub_1004390D4(v24, &type metadata accessor for OSLogPrivacy);
  sub_1004390D4(v13, &type metadata accessor for OSLogStringAlignment);

  v76._countAndFlagsBits = sub_1004A58F4("]", 1uLL, 1);
  sub_1004A49B4(v76);
}

{
  v4 = sub_1004A48E4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004A49D4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33._countAndFlagsBits = sub_1004A58F4("{", 1uLL, 1);
  sub_1004A49B4(v33);

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v29 = sub_1004A49E4();
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v16 = v29;
  v17 = v13 & 1;
  v18 = BYTE1(v13) & 1;
  v19 = BYTE2(v13) & 1;
  v20 = v14;
  v21 = v15;
  sub_1000EADE8();
  sub_1004390BC();
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  sub_1004A4984();
  sub_1004390D4(v7, &type metadata accessor for OSLogPrivacy);
  sub_1004390D4(v11, &type metadata accessor for OSLogStringAlignment);
  sub_1000B5158(v20);

  v34._countAndFlagsBits = sub_1004A58F4("}", 1uLL, 1);
  sub_1004A49B4(v34);
}

{
  v36 = a1;
  v39 = sub_1004A48C4();
  v38 = *(v39 - 8);
  v4 = *(v38 + 64);
  __chkstk_darwin(v39);
  v37 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A48E4();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v34 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A49D4();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50._countAndFlagsBits = sub_1004A58F4("[", 1uLL, 1);
  sub_1004A49B4(v50);

  v35 = a2;

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = v13;
  v51._countAndFlagsBits = sub_1004A58F4("{", 1uLL, 1);
  sub_1004A49B4(v51);

  v33[1] = v14;

  v15 = swift_allocObject();
  *(v15 + 16) = sub_10043BD54;
  *(v15 + 24) = v14;
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v46 = sub_1004A49E4();
  v47 = v16;
  v48 = v17;
  v49 = v18;
  v19 = v46;
  v20 = v16;
  v21 = BYTE1(v16);
  v22 = BYTE2(v16);
  v23 = v17;
  v24 = v18;
  sub_1000EADE8();
  v25 = v34;
  sub_1004390BC();
  v40 = v19;
  v41 = v20;
  v42 = v21;
  v43 = v22;
  v44 = v23;
  v45 = v24;
  sub_1004A4984();
  sub_1004390D4(v25, &type metadata accessor for OSLogPrivacy);
  sub_1004390D4(v12, &type metadata accessor for OSLogStringAlignment);
  sub_1000B5158(v23);

  v52._countAndFlagsBits = sub_1004A58F4("}", 1uLL, 1);
  sub_1004A49B4(v52);

  v26 = v35;

  v27 = swift_allocObject();
  *(v27 + 16) = v36;
  *(v27 + 24) = v26;

  v28 = swift_allocObject();
  *(v28 + 16) = sub_10043BD8C;
  *(v28 + 24) = v27;
  sub_1004A49C4();
  v29 = v38;
  v30 = v37;
  v31 = v39;
  (*(v38 + 104))(v37, enum case for OSLogPrivacy._MailMask.mailbox(_:), v39);
  sub_1004A48A4();
  (*(v29 + 8))(v30, v31);
  sub_1004A4964();
  sub_1004390D4(v25, &type metadata accessor for OSLogPrivacy);
  sub_1004390D4(v12, &type metadata accessor for OSLogStringAlignment);

  v53._countAndFlagsBits = sub_1004A58F4("]", 1uLL, 1);
  sub_1004A49B4(v53);
}

uint64_t _s20IMAPSearchIndexerXPC10SuggestionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = [a1 uniqueIdentifier];
  v4 = sub_1004A5764();
  v6 = v5;

  v7 = [a2 uniqueIdentifier];
  v8 = sub_1004A5764();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1004A6D34();
  }

  return v12 & 1;
}

id sub_1003925D8()
{
  isa = sub_1004A4404().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_1004A4274();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_100392698(uint64_t *a1)
{
  v4 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_1004A6F74();
  if (!v1)
  {
    sub_10002587C(v11, v11[3]);
    sub_100381E8C();
    sub_1004A6D64();
    v5 = objc_allocWithZone(NSKeyedUnarchiver);
    sub_100014CEC(v9, v10);
    v6 = sub_1003925D8();
    sub_100014D40(v9, v10);
    [v6 setRequiresSecureCoding:1];
    sub_1003929C8();
    v8 = sub_1004A62C4();
    if (v8)
    {
      v2 = v8;

      sub_100014D40(v9, v10);
      sub_1000197E0(v11);
      sub_1000197E0(a1);
      return v2;
    }

    sub_100392A14();
    swift_allocError();
    swift_willThrow();

    sub_100014D40(v9, v10);
    sub_1000197E0(v11);
  }

  sub_1000197E0(a1);
  return v2;
}

uint64_t sub_100392838()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100392870()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100392898(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1003928FC()
{
  result = qword_1005DB858;
  if (!qword_1005DB858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB858);
  }

  return result;
}

unint64_t sub_100392954()
{
  result = qword_1005DB860;
  if (!qword_1005DB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB860);
  }

  return result;
}

unint64_t sub_1003929C8()
{
  result = qword_1005DB868;
  if (!qword_1005DB868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005DB868);
  }

  return result;
}

unint64_t sub_100392A14()
{
  result = qword_1005DB870;
  if (!qword_1005DB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB870);
  }

  return result;
}

uint64_t SearchQuery.debugDescription.getter()
{
  sub_1004A6934();
  v1._countAndFlagsBits = 544106784;
  v1._object = 0xE400000000000000;
  sub_1004A5994(v1);
  v2._countAndFlagsBits = sub_1004A5C24();
  sub_1004A5994(v2);

  return 0;
}

uint64_t sub_100392BD8()
{
  if (*v0)
  {
    result = 0x49746E756F636361;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_100392C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

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

uint64_t sub_100392CF4(uint64_t a1)
{
  v2 = sub_1003940C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100392D30(uint64_t a1)
{
  v2 = sub_1003940C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Mailbox.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v8 = sub_10000C9C0(&qword_1005DB878, &unk_1004FD770);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_1003940C0();
  sub_1004A6FA4();
  v17 = a2;
  v19 = 0;
  sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  sub_1003954B0(&qword_1005DB888);
  sub_1004A6C74();
  if (!v4)
  {
    v17 = a3;
    v18 = v16;
    v19 = 1;
    sub_10037DF88();
    sub_1004A6C74();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t Mailbox.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      sub_1004A6EC4(v5);
      --v3;
    }

    while (v3);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int Mailbox.hashValue.getter(uint64_t a1)
{
  sub_1004A6E94();
  v2 = *(a1 + 16);
  sub_1004A6EB4(v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1004A6EC4(v4);
      --v2;
    }

    while (v2);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

uint64_t sub_10039307C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100394114(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

Swift::Int sub_1003930E4()
{
  v1 = v0[1];
  v2 = v0[2];
  return Mailbox.hashValue.getter(*v0);
}

uint64_t sub_1003930F0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(*v0 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      sub_1004A6EC4(v6);
      --v4;
    }

    while (v4);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_10039316C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1004A6E94();
  v4 = *(v2 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      sub_1004A6EC4(v6);
      --v4;
    }

    while (v4);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

uint64_t sub_1003931F4()
{
  v1 = 0x74696D696CLL;
  if (*v0 != 1)
  {
    v1 = 0x65786F626C69616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974736567677573;
  }
}

uint64_t sub_100393254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003943E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10039327C(uint64_t a1)
{
  v2 = sub_100394338();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003932B8(uint64_t a1)
{
  v2 = sub_100394338();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchQuery.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v8 = sub_10000C9C0(&qword_1005DB890, &qword_1004FD780);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100394338();
  sub_1004A6FA4();
  v17 = a2;
  v16 = 0;
  sub_10039438C();
  sub_1004A6C74();
  if (!v4)
  {
    LOBYTE(v17) = 1;
    sub_1004A6C64();
    v17 = a4;
    v16 = 2;
    sub_10000C9C0(&qword_1005DB8A8, &qword_1004FD788);
    sub_100395438(&qword_1005DB8B0, sub_10038C9B0);
    sub_1004A6C74();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100393568(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_100393594@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100394504(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_100393620()
{
  if (*v0)
  {
    result = 0x657865646E696E75;
  }

  else
  {
    result = 0x64657865646E69;
  }

  *v0;
  return result;
}

uint64_t sub_100393660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657865646E69 && a2 == 0xE700000000000000;
  if (v6 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657865646E696E75 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

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

uint64_t sub_100393744(uint64_t a1)
{
  v2 = sub_100394774();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100393780(uint64_t a1)
{
  v2 = sub_100394774();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int static IndexingDiagnostics.__derived_struct_equals(_:_:)(Swift::Int a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  if ((sub_100083308(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_100083308(a2, a4);
}

uint64_t IndexingDiagnostics.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000C9C0(&qword_1005DB8B8, &qword_1004FD790);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100394774();
  sub_1004A6FA4();
  v16 = a2;
  v15 = 0;
  sub_10000C9C0(&qword_1005DB8C8, &qword_1004FD798);
  sub_1003947C8(&qword_1005DB8D0, sub_10038CA88);
  sub_1004A6C74();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    sub_1004A6C74();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100393A20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100394840(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

Swift::Int sub_100393A68(Swift::Int *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_100083308(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_100083308(v2, v3);
}

uint64_t IndexingStatistics.messagesNotIndexed.getter(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100393AD4()
{
  v1 = 0x73654D6C61746F74;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0x736567617373656DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100393B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100394AC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100393B94(uint64_t a1)
{
  v2 = sub_100394A70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100393BD0(uint64_t a1)
{
  v2 = sub_100394A70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IndexingStatistics.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v14[1] = a3;
  v7 = sub_10000C9C0(&qword_1005DB8D8, &qword_1004FD7A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100394A70();
  sub_1004A6FA4();
  v18 = 0;
  sub_1004A6C64();
  if (v5)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v17 = 1;
  sub_1004A6C64();
  v16 = 2;
  sub_1004A6C64();
  v15 = 3;
  sub_1004A6C64();
  return (*(v8 + 8))(v11, v7);
}

uint64_t IndexingStatistics.init(from:)(uint64_t *a1)
{
  result = sub_100394C44(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100393E0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100394C44(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

double IndexingStatistics.fractionCompleted.getter(uint64_t a1, uint64_t a2)
{
  if (a1 < 1)
  {
    return 0.0;
  }

  else
  {
    return a2 / a1;
  }
}

uint64_t IndexingStatistics.fractionCompletedAsInt.getter(uint64_t result, uint64_t a2)
{
  if (result < 1)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = a2 / result * 100.0;
  }

  v3 = round(v2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100393EF4()
{
  v1 = v0[2];
  v3 = *v0;
  sub_1004A6934();
  v4._countAndFlagsBits = 544106784;
  v4._object = 0xE400000000000000;
  sub_1004A5994(v4);
  v5._countAndFlagsBits = sub_1004A5C24();
  sub_1004A5994(v5);

  return 0;
}

uint64_t _s20IMAPSearchIndexerXPC11SearchQueryV23__derived_struct_equalsySbAC_ACtFZ_0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = [a1 uniqueIdentifier];
  v12 = sub_1004A5764();
  v14 = v13;

  v15 = [a4 uniqueIdentifier];
  v16 = sub_1004A5764();
  v18 = v17;

  if (v12 == v16 && v14 == v18)
  {

    if (a2 == a5)
    {
      goto LABEL_7;
    }

    return 0;
  }

  v20 = sub_1004A6D34();

  if ((v20 & 1) == 0 || a2 != a5)
  {
    return 0;
  }

LABEL_7:

  return sub_100385CB0(a3, a6);
}

unint64_t sub_1003940C0()
{
  result = qword_1005DB880;
  if (!qword_1005DB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB880);
  }

  return result;
}

uint64_t sub_100394114(uint64_t *a1)
{
  v2 = sub_10000C9C0(&qword_1005DB990, &unk_1004FE0E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  v7 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_1003940C0();
  sub_1004A6F84();
  sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  v11 = 0;
  sub_1003954B0(&qword_1005DB998);
  sub_1004A6B94();
  v9 = v10[1];
  v11 = 1;
  sub_10037F108();
  sub_1004A6B94();
  (*(v3 + 8))(v6, v2);
  sub_1000197E0(a1);
  return v9;
}

unint64_t sub_100394338()
{
  result = qword_1005DB898;
  if (!qword_1005DB898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB898);
  }

  return result;
}

unint64_t sub_10039438C()
{
  result = qword_1005DB8A0;
  if (!qword_1005DB8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB8A0);
  }

  return result;
}

uint64_t sub_1003943E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65786F626C69616DLL && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_100394504(uint64_t *a1)
{
  v2 = sub_10000C9C0(&qword_1005DB978, &qword_1004FE0E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100394338();
  sub_1004A6F84();
  HIBYTE(v10) = 0;
  sub_1003953E4();
  sub_1004A6B94();
  v9 = v11;
  LOBYTE(v11) = 1;
  sub_1004A6B84();
  sub_10000C9C0(&qword_1005DB8A8, &qword_1004FD788);
  HIBYTE(v10) = 2;
  sub_100395438(&qword_1005DB988, sub_100391A78);
  sub_1004A6B94();
  (*(v3 + 8))(v6, v2);
  sub_1000197E0(a1);
  return v9;
}

unint64_t sub_100394774()
{
  result = qword_1005DB8C0;
  if (!qword_1005DB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB8C0);
  }

  return result;
}

uint64_t sub_1003947C8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000DEFC(&qword_1005DB8C8, &qword_1004FD798);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100394840(uint64_t *a1)
{
  v2 = sub_10000C9C0(&qword_1005DB968, &qword_1004FE0D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100394774();
  sub_1004A6F84();
  sub_10000C9C0(&qword_1005DB8C8, &qword_1004FD798);
  v11 = 0;
  sub_1003947C8(&qword_1005DB970, sub_1003918EC);
  sub_1004A6B94();
  v9 = v12;
  v11 = 1;
  sub_1004A6B94();
  (*(v3 + 8))(v6, v2);
  sub_1000197E0(a1);
  return v9;
}

unint64_t sub_100394A70()
{
  result = qword_1005DB8E0;
  if (!qword_1005DB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB8E0);
  }

  return result;
}

uint64_t sub_100394AC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73654D6C61746F74 && a2 == 0xED00007365676173;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xEF64657865646E49 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004B02E0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004B0300 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100394C44(uint64_t *a1)
{
  v2 = sub_10000C9C0(&qword_1005DB960, &qword_1004FE0D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100394A70();
  sub_1004A6F84();
  v14 = 0;
  v8 = sub_1004A6B84();
  v13 = 1;
  sub_1004A6B84();
  v12 = 2;
  sub_1004A6B84();
  v11 = 3;
  sub_1004A6B84();
  (*(v3 + 8))(v6, v2);
  sub_1000197E0(a1);
  return v8;
}

unint64_t sub_100394E34()
{
  result = qword_1005DB8E8;
  if (!qword_1005DB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB8E8);
  }

  return result;
}

unint64_t sub_100394E8C()
{
  result = qword_1005DB8F0;
  if (!qword_1005DB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB8F0);
  }

  return result;
}

ValueMetadata *type metadata accessor for UID()
{
  return &type metadata for UID;
}

{
  return &type metadata for UID;
}

unint64_t sub_100394F74()
{
  result = qword_1005DB8F8;
  if (!qword_1005DB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB8F8);
  }

  return result;
}

unint64_t sub_100394FCC()
{
  result = qword_1005DB900;
  if (!qword_1005DB900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB900);
  }

  return result;
}

unint64_t sub_100395024()
{
  result = qword_1005DB908;
  if (!qword_1005DB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB908);
  }

  return result;
}

unint64_t sub_10039507C()
{
  result = qword_1005DB910;
  if (!qword_1005DB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB910);
  }

  return result;
}

unint64_t sub_1003950D4()
{
  result = qword_1005DB918;
  if (!qword_1005DB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB918);
  }

  return result;
}

unint64_t sub_10039512C()
{
  result = qword_1005DB920;
  if (!qword_1005DB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB920);
  }

  return result;
}

unint64_t sub_100395184()
{
  result = qword_1005DB928;
  if (!qword_1005DB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB928);
  }

  return result;
}

unint64_t sub_1003951DC()
{
  result = qword_1005DB930;
  if (!qword_1005DB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB930);
  }

  return result;
}

unint64_t sub_100395234()
{
  result = qword_1005DB938;
  if (!qword_1005DB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB938);
  }

  return result;
}

unint64_t sub_10039528C()
{
  result = qword_1005DB940;
  if (!qword_1005DB940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB940);
  }

  return result;
}

unint64_t sub_1003952E4()
{
  result = qword_1005DB948;
  if (!qword_1005DB948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB948);
  }

  return result;
}

unint64_t sub_10039533C()
{
  result = qword_1005DB950;
  if (!qword_1005DB950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB950);
  }

  return result;
}

unint64_t sub_100395390()
{
  result = qword_1005DB958;
  if (!qword_1005DB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB958);
  }

  return result;
}

unint64_t sub_1003953E4()
{
  result = qword_1005DB980;
  if (!qword_1005DB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB980);
  }

  return result;
}

uint64_t sub_100395438(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000DEFC(&qword_1005DB8A8, &qword_1004FD788);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003954B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000DEFC(&unk_1005D8FF0, &unk_1004DC230);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_100395528(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xFFFFFFFE00000000;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 512;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  return result;
}

double variable initialization expression of AuthenticatedURLRump.expire@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 57) = 1;
  return result;
}

double variable initialization expression of BodyStructure.DispositionAndLanguage.disposition@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double variable initialization expression of ExtendedSearchResponse.correlator@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t variable initialization expression of FramingParser.buffer()
{
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }
}

double variable initialization expression of NetworkPath.command@<D0>(_OWORD *a1@<X8>)
{
  sub_100395528(v9);
  v2 = v17;
  a1[8] = v16;
  a1[9] = v2;
  v3 = v19;
  a1[10] = v18;
  a1[11] = v3;
  v4 = v13;
  a1[4] = v12;
  a1[5] = v4;
  v5 = v15;
  a1[6] = v14;
  a1[7] = v5;
  v6 = v9[1];
  *a1 = v9[0];
  a1[1] = v6;
  result = *&v10;
  v8 = v11;
  a1[2] = v10;
  a1[3] = v8;
  return result;
}

uint64_t variable initialization expression of QResyncParameter.knownUIDs@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1003957B0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

double variable initialization expression of BodyStructure.Singlepart.extension@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1004B1230;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  return result;
}

double variable initialization expression of BodyStructure.Singlepart.Extension.dispositionAndLanguage@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1004B1230;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_100395860(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100395880(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
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

  *(result + 128) = v3;
  return result;
}

__n128 sub_1003958E0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_100395900(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_100395914(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100395934(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 28) = v3;
  return result;
}

__n128 sub_100395978(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1003959A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 106))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003959C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
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

  *(result + 106) = v3;
  return result;
}

void Access.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v4 = 1;
LABEL_5:
    sub_1004A6EB4(v4);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return;
  }

  if (a2 | a3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  sub_1004A6EB4(v5);
}

Swift::Int Access.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1004A6E94();
  if (!a3)
  {
    v6 = 0;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v6 = 1;
LABEL_5:
    sub_1004A6EB4(v6);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return sub_1004A6F14();
  }

  if (a1 | a2)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  sub_1004A6EB4(v7);
  return sub_1004A6F14();
}

Swift::Int sub_100395B9C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1004A6E94();
  if (!v3)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 1;
LABEL_5:
    sub_1004A6EB4(v4);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return sub_1004A6F14();
  }

  if (v1 | v2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  sub_1004A6EB4(v5);
  return sub_1004A6F14();
}

void sub_100395C38()
{
  if (!*(v0 + 16))
  {
    v1 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v1 = 1;
LABEL_5:
    sub_1004A6EB4(v1);

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return;
  }

  if (*v0 == 0)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  sub_1004A6EB4(v2);
}

Swift::Int sub_100395CD0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1004A6E94();
  if (!v3)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 1;
LABEL_5:
    sub_1004A6EB4(v4);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    return sub_1004A6F14();
  }

  if (v1 | v2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  sub_1004A6EB4(v5);
  return sub_1004A6F14();
}

uint64_t sub_100395D84(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
LABEL_21:
      v29 = *(v3 + 20);
      if (a1 | a2)
      {
        result = sub_1002F178C(0x756F6D796E6F6E61, 0xE900000000000073, (v3 + 8), *(v3 + 20));
        if (v30)
        {
          v31._countAndFlagsBits = 0x756F6D796E6F6E61;
          v31._object = 0xE900000000000073;
          result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
        }

        v32 = *(v3 + 20);
        v16 = __CFADD__(v32, result);
        v33 = v32 + result;
        if (!v16)
        {
          goto LABEL_30;
        }

        __break(1u);
      }

      result = sub_1002F178C(0x7265737568747561, 0xE800000000000000, (v3 + 8), v29);
      if (v34)
      {
        v35._countAndFlagsBits = 0x7265737568747561;
        v35._object = 0xE800000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v35, v29);
      }

      v36 = *(v3 + 20);
      v16 = __CFADD__(v36, result);
      v33 = v36 + result;
      if (!v16)
      {
LABEL_30:
        *(v3 + 20) = v33;
        return result;
      }

LABEL_35:
      __break(1u);
      return result;
    }

    v6 = *(v3 + 20);
    result = sub_1002F178C(0x2B72657375, 0xE500000000000000, (v3 + 8), *(v3 + 20));
    if (v8)
    {
      v9._countAndFlagsBits = 0x2B72657375;
      v9._object = 0xE500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
    }

    v10 = result;
    v11 = *(v3 + 20);
    v12 = (v11 + result);
    if (__CFADD__(v11, result))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    *(v3 + 20) = v12;
    result = sub_1002F178C(a1, a2, (v3 + 8), v12);
    if (v13)
    {
      v14._countAndFlagsBits = a1;
      v14._object = a2;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v12);
    }

    v15 = *(v3 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_33;
    }

    *(v3 + 20) = v17;
    v18 = __OFADD__(v10, result);
    result += v10;
    if (!v18)
    {
      return result;
    }

    __break(1u);
  }

  v19 = *(v3 + 20);
  result = sub_1002F178C(0x2B74696D627573, 0xE700000000000000, (v3 + 8), *(v3 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 0x2B74696D627573;
    v21._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = result;
  v23 = *(v3 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_32;
  }

  *(v3 + 20) = v24;
  result = sub_1002F178C(a1, a2, (v3 + 8), v24);
  if (v25)
  {
    v26._countAndFlagsBits = a1;
    v26._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = *(v3 + 20);
  v16 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v16)
  {
    goto LABEL_34;
  }

  *(v3 + 20) = v28;
  v18 = __OFADD__(v22, result);
  result += v22;
  if (v18)
  {
    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t _s12NIOIMAPCore26AccessO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1004A6D34();
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 2 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_1004A6D34();
  }

  return 0;
}

unint64_t sub_100396094()
{
  result = qword_1005DBC28;
  if (!qword_1005DBC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBC28);
  }

  return result;
}

uint64_t sub_1003960E8(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

Swift::Int AppendData.hashValue.getter(Swift::UInt a1, char a2)
{
  sub_1004A6E94();
  sub_1004A6EB4(a1);
  sub_1004A6EC4(a2 & 1);
  return sub_1004A6F14();
}

Swift::Int sub_1003961A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EC4(v2);
  return sub_1004A6F14();
}

void sub_100396208()
{
  v1 = *(v0 + 8);
  sub_1004A6EB4(*v0);
  sub_1004A6EC4(v1);
}

Swift::Int sub_100396248()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EC4(v2);
  return sub_1004A6F14();
}

unint64_t sub_1003962A8()
{
  result = qword_1005DBC30;
  if (!qword_1005DBC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBC30);
  }

  return result;
}

uint64_t sub_1003962FC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10039633C(uint64_t result, char a2)
{
  v3 = *(v2 + 1) | (*(v2 + 5) << 32);
  if ((v3 & 0x8000000000) != 0)
  {
    goto LABEL_26;
  }

  if ((a2 & 1) == 0)
  {
LABEL_9:
    if ((v3 & 0x10000) == 0)
    {
      v28._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v28);

      v29._countAndFlagsBits = 658813;
      v29._object = 0xE300000000000000;
      sub_1004A5994(v29);
      v9 = *(v2 + 20);
      v10 = sub_1002F178C(123, 0xE100000000000000, (v2 + 8), *(v2 + 20));
      if (v11)
      {
        v12._countAndFlagsBits = 123;
        v12._object = 0xE100000000000000;
        v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
      }

      v8 = v10;

      v13 = *(v2 + 20);
      result = (v13 + v8);
      if (!__CFADD__(v13, v8))
      {
LABEL_13:
        *(v2 + 20) = result;
        sub_1003E46E4(result);
        return v8;
      }

      __break(1u);
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  *(v2 + 5);
  if ((*(v2 + 1) & 0x10000) == 0)
  {
    v26._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v26);

    v27._countAndFlagsBits = 658813;
    v27._object = 0xE300000000000000;
    sub_1004A5994(v27);
    v4 = *(v2 + 20);
    v5 = sub_1002F178C(31614, 0xE200000000000000, (v2 + 8), *(v2 + 20));
    if (v6)
    {
      v7._countAndFlagsBits = 31614;
      v7._object = 0xE200000000000000;
      v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
    }

    v8 = v5;

    LODWORD(v3) = *(v2 + 20);
    result = (v3 + v8);
    if (!__CFADD__(v3, v8))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_9;
  }

  v30._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v30);

  v31._countAndFlagsBits = 168656171;
  v31._object = 0xE400000000000000;
  sub_1004A5994(v31);
  v14 = *(v2 + 20);
  v15 = sub_1002F178C(31614, 0xE200000000000000, (v2 + 8), *(v2 + 20));
  if (v16)
  {
    v17._countAndFlagsBits = 31614;
    v17._object = 0xE200000000000000;
    v15 = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
  }

  v8 = v15;

  v18 = *(v2 + 20);
  v19 = __CFADD__(v18, v8);
  v20 = v18 + v8;
  if (!v19)
  {
    goto LABEL_22;
  }

  __break(1u);
LABEL_19:
  v32._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v32);

  v33._countAndFlagsBits = 168656171;
  v33._object = 0xE400000000000000;
  sub_1004A5994(v33);
  v21 = *(v2 + 20);
  v22 = sub_1002F178C(123, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v23)
  {
    v24._countAndFlagsBits = 123;
    v24._object = 0xE100000000000000;
    v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v21);
  }

  v8 = v22;

  v25 = *(v2 + 20);
  v19 = __CFADD__(v25, v8);
  v20 = v25 + v8;
  if (!v19)
  {
LABEL_22:
    *(v2 + 20) = v20;
    return v8;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t AppendMessage.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

__n128 AppendMessage.options.setter(uint64_t a1)
{
  v3 = *v1;

  v4 = v1[3];

  v5 = v1[4];

  v6 = v1[5];

  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v7;
  result = *(a1 + 32);
  *(v1 + 2) = result;
  return result;
}

uint64_t MailboxStatus.unseenCount.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t AppendMessage.data.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

__n128 AppendMessage.init(options:data:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

void AppendMessage.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  AppendOptions.hash(into:)(a1);
  v2 = *(v1 + 56);
  sub_1004A6EB4(*(v1 + 6));
  sub_1004A6EC4(v2 & 1);
}

Swift::Int AppendMessage.hashValue.getter()
{
  sub_1004A6E94();
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v7 = v0[2];
  AppendOptions.hash(into:)(v4);
  v2 = *(v0 + 56);
  sub_1004A6EB4(*(v0 + 6));
  sub_1004A6EC4(v2 & 1);
  return sub_1004A6F14();
}

Swift::Int sub_100396808()
{
  v1 = v0[1];
  v6 = *v0;
  v7 = v1;
  v8 = v0[2];
  v2 = *(v0 + 6);
  v3 = *(v0 + 56);
  sub_1004A6E94();
  AppendOptions.hash(into:)(v5);
  sub_1004A6EB4(v2);
  sub_1004A6EC4(v3);
  return sub_1004A6F14();
}

void sub_100396884(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v2 = *(v1 + 6);
  v3 = *(v1 + 56);
  AppendOptions.hash(into:)(a1);
  sub_1004A6EB4(v2);
  sub_1004A6EC4(v3);
}

Swift::Int sub_1003968E8()
{
  v1 = v0[1];
  v6 = *v0;
  v7 = v1;
  v8 = v0[2];
  v2 = *(v0 + 6);
  v3 = *(v0 + 56);
  sub_1004A6E94();
  AppendOptions.hash(into:)(v5);
  sub_1004A6EB4(v2);
  sub_1004A6EC4(v3);
  return sub_1004A6F14();
}

BOOL sub_100396960(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s12NIOIMAPCore213AppendMessageV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

BOOL _s12NIOIMAPCore213AppendMessageV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  if ((sub_10010321C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }

    return (sub_10020FB40(v7, v11) & 1) != 0 && (sub_1003A0B30(v6, v10) & 1) != 0 && *(a1 + 48) == *(a2 + 48) && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0;
  }

  result = 0;
  if ((v9 & 1) == 0 && v4 == v8)
  {
    return (sub_10020FB40(v7, v11) & 1) != 0 && (sub_1003A0B30(v6, v10) & 1) != 0 && *(a1 + 48) == *(a2 + 48) && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0;
  }

  return result;
}

unint64_t sub_100396A94()
{
  result = qword_1005DBC38;
  if (!qword_1005DBC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBC38);
  }

  return result;
}

__n128 sub_100396AE8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100396B04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_100396B4C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

BOOL static AppendOptions.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_10039F8D8(*a1, *a2, &String.uppercased()) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  return (sub_10020FB40(v5, v7) & 1) != 0 && (sub_1003A0B30(v6, v8) & 1) != 0;
}

uint64_t sub_100396C48(uint64_t a1)
{
  v161 = sub_10000C9C0(&qword_1005DBC78, &unk_100502CB0);
  v2 = *(*(v161 - 8) + 64);
  __chkstk_darwin(v161);
  v170 = (&v144 - v3);
  v160 = sub_10000C9C0(&qword_1005D8480, &qword_1004F4968);
  v4 = *(*(v160 - 8) + 64);
  v5 = __chkstk_darwin(v160);
  v159 = (&v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v158 = (&v144 - v7);
  v157 = sub_10000C9C0(&qword_1005DBC80, &qword_1004FE5A0);
  v8 = *(*(v157 - 8) + 64);
  v9 = __chkstk_darwin(v157);
  v156 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v155 = (&v144 - v12);
  v13 = __chkstk_darwin(v11);
  v169 = (&v144 - v14);
  v15 = __chkstk_darwin(v13);
  v154 = (&v144 - v16);
  __chkstk_darwin(v15);
  v153 = &v144 - v17;
  v152 = sub_10000C9C0(&qword_1005DBC88, &qword_1004FE5A8);
  v18 = *(*(v152 - 8) + 64);
  v19 = __chkstk_darwin(v152);
  v151 = (&v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v19);
  v168 = (&v144 - v22);
  v23 = *a1;
  if (*(*a1 + 16))
  {
    v24 = *(v171 + 20);
    v25 = 0;
    result = sub_1002F178C(32, 0xE100000000000000, (v171 + 8), *(v171 + 20));
    if (v26)
    {
      v27._countAndFlagsBits = 32;
      v27._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v27, v24);
    }

    v28 = result;
    v29 = *(v171 + 20);
    v30 = (v29 + result);
    if (__CFADD__(v29, result))
    {
      goto LABEL_77;
    }

    v31 = v171;
    *(v171 + 20) = v30;
    v175 = v23;
    result = sub_1002F178C(0, 0xE000000000000000, (v31 + 8), v30);
    if (v32)
    {
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v33, v30);
    }

    v34 = result;
    v35 = *(v171 + 20);
    v36 = (v35 + result);
    if (__CFADD__(v35, result))
    {
      goto LABEL_78;
    }

    v37 = v171;
    *(v171 + 20) = v36;
    result = sub_1002F178C(40, 0xE100000000000000, (v37 + 8), v36);
    if (v38)
    {
      v39._countAndFlagsBits = 40;
      v39._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v39, v36);
    }

    v40 = *(v171 + 20);
    v41 = __CFADD__(v40, result);
    v42 = v40 + result;
    if (v41)
    {
      goto LABEL_79;
    }

    *(v171 + 20) = v42;
    v43 = v34 + result;
    if (__OFADD__(v34, result))
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    __chkstk_darwin(result);
    *(&v144 - 6) = sub_1003C40B8;
    *(&v144 - 5) = 0;
    *(&v144 - 4) = v171;
    *(&v144 - 3) = &v175;
    *(&v144 - 2) = 32;
    *(&v144 - 1) = 0xE100000000000000;
    result = sub_1004594A4(0, sub_1003A3458, (&v144 - 8), v23);
    v44 = v43 + result;
    if (__OFADD__(v43, result))
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v45 = *(v171 + 20);
    result = sub_1002F178C(41, 0xE100000000000000, (v171 + 8), *(v171 + 20));
    if (v46)
    {
      v47._countAndFlagsBits = 41;
      v47._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v47, v45);
    }

    v48 = *(v171 + 20);
    v49 = (v48 + result);
    if (__CFADD__(v48, result))
    {
      goto LABEL_82;
    }

    *(v171 + 20) = v49;
    v50 = __OFADD__(v44, result);
    v51 = v44 + result;
    if (v50)
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    result = sub_1002F178C(0, 0xE000000000000000, (v171 + 8), v49);
    if (v52)
    {
      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v53, v49);
    }

    v54 = *(v171 + 20);
    v41 = __CFADD__(v54, result);
    v55 = v54 + result;
    if (v41)
    {
      goto LABEL_84;
    }

    *(v171 + 20) = v55;
    v56 = v51 + result;
    if (__OFADD__(v51, result))
    {
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v57 = v28 + v56;
    if (__OFADD__(v28, v56))
    {
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (*(a1 + 16))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v57 = 0;
    v25 = 0;
    if (*(a1 + 16))
    {
LABEL_23:
      v58 = 0;
      goto LABEL_29;
    }
  }

  v59 = *(a1 + 8);
  v60 = *(v171 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v171 + 8), *(v171 + 20));
  if (v61)
  {
    v62._countAndFlagsBits = 32;
    v62._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v62, v60);
  }

  v63 = result;
  v64 = *(v171 + 20);
  v41 = __CFADD__(v64, result);
  v65 = v64 + result;
  if (v41)
  {
    goto LABEL_89;
  }

  *(v171 + 20) = v65;
  result = sub_1004338EC(v59);
  v58 = v63 + result;
  if (__OFADD__(v63, result))
  {
LABEL_90:
    __break(1u);
    return result;
  }

LABEL_29:
  v50 = __OFADD__(v57, v58);
  v66 = v57 + v58;
  if (v50)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v145 = v66;
  v67 = *(a1 + 24);
  v68 = *(a1 + 32);
  v175 = *(a1 + 40);
  v150 = v175;
  v69 = v175[2];
  if (v69)
  {
    v70 = *(v171 + 20);
    result = sub_1002F178C(32, 0xE100000000000000, (v171 + 8), *(v171 + 20));
    if (v71)
    {
      v72._countAndFlagsBits = 32;
      v72._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v72, v70);
    }

    v73 = *(v171 + 20);
    v41 = __CFADD__(v73, result);
    v74 = v73 + result;
    if (v41)
    {
      goto LABEL_86;
    }

    v146 = result;
    *(v171 + 20) = v74;
  }

  else
  {
    v146 = 0;
  }

  v173 = v68;
  v174 = v67;
  sub_10000E268(&v174, v172, &qword_1005D3FC8, &qword_1004DF4B8);
  sub_10000E268(&v173, v172, &qword_1005D3FD0, &qword_1004DF4C0);
  sub_10000E268(&v175, v172, &qword_1005DBC90, &qword_1004FE5B0);
  sub_10000E268(&v174, v172, &qword_1005D3FC8, &qword_1004DF4B8);
  sub_10000E268(&v173, v172, &qword_1005D3FD0, &qword_1004DF4C0);
  result = sub_10000E268(&v175, v172, &qword_1005DBC90, &qword_1004FE5B0);
  v75 = 0;
  if (v69)
  {
    v76 = 0;
    v147 = v69 - 1;
    v77 = (v68 + 40);
    v78 = v68;
    v149 = v69;
    v148 = v68;
    while (v76 < *(v78 + 16))
    {
      v164 = v75;
      v79 = v160;
      v80 = *(v160 + 48);
      v162 = v77;
      v81 = *(v77 - 1);
      v82 = *v77;
      v166 = v82;
      v83 = v158;
      *v158 = v81;
      *(v83 + 8) = v82;
      v84 = *(type metadata accessor for ParameterValue() - 8);
      sub_1003A3594(v150 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v76, v83 + v80, type metadata accessor for ParameterValue);
      v85 = v159;
      sub_100025FDC(v83, v159, &qword_1005D8480, &qword_1004F4968);
      v86 = *(v79 + 48);
      v87 = v157;
      v88 = *(v157 + 48);
      v89 = v85[1];
      v90 = v154;
      *v154 = *v85;
      v90[1] = v89;
      sub_1003A352C(v85 + v86, v90 + v88, type metadata accessor for ParameterValue);
      v91 = v90;
      v92 = v153;
      sub_100025FDC(v91, v153, &qword_1005DBC80, &qword_1004FE5A0);
      v165 = v25;
      v93 = v152;
      v94 = *(v152 + 48);
      v95 = v168;
      v167 = v76;
      *v168 = v76;
      sub_100025FDC(v92, v95 + v94, &qword_1005DBC80, &qword_1004FE5A0);
      v96 = v151;
      sub_10000E268(v95, v151, &qword_1005DBC88, &qword_1004FE5A8);
      v163 = *v96;
      v97 = (v96 + *(v93 + 48));
      v98 = *(v87 + 48);
      v99 = *v97;
      v100 = v97[1];
      v101 = v155;
      sub_1003A352C(v97 + v98, v155 + v98, type metadata accessor for ParameterValue);
      v102 = *(v87 + 48);
      v103 = v169;
      *v169 = v99;
      v103[1] = v100;
      sub_1003A352C(v101 + v98, v103 + v102, type metadata accessor for ParameterValue);
      sub_10000E268(v103, v101, &qword_1005DBC80, &qword_1004FE5A0);
      v104 = *(v87 + 48);
      v105 = v156;
      sub_10000E268(v103, v156, &qword_1005DBC80, &qword_1004FE5A0);
      v106 = *(v87 + 48);
      v107 = *v101;
      v108 = v101[1];
      v109 = v170;
      *v170 = *v101;
      v109[1] = v108;
      v110 = *(v161 + 52);
      sub_1003A352C(v105 + v106, v109 + v110, type metadata accessor for ParameterValue);
      v111 = *(v105 + 8);

      v112 = v101 + v104;
      v113 = v171;
      sub_1003A35FC(v112, type metadata accessor for ParameterValue);
      v114 = *(v113 + 20);
      v25 = v165;
      result = sub_1002F178C(v107, v108, (v113 + 8), *(v113 + 20));
      if (v115)
      {
        v116._countAndFlagsBits = v107;
        v116._object = v108;
        result = ByteBuffer._setStringSlowpath(_:at:)(v116, v114);
      }

      v117 = result;
      v118 = *(v171 + 20);
      v119 = (v118 + result);
      v120 = v167;
      if (__CFADD__(v118, result))
      {
        goto LABEL_67;
      }

      v121 = v171;
      *(v171 + 20) = v119;
      result = sub_1002F178C(32, 0xE100000000000000, (v121 + 8), v119);
      if (v122)
      {
        v123._countAndFlagsBits = 32;
        v123._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v123, v119);
      }

      v124 = *(v171 + 20);
      v41 = __CFADD__(v124, result);
      v125 = v124 + result;
      if (v41)
      {
        goto LABEL_68;
      }

      *(v171 + 20) = v125;
      v126 = v117 + result;
      if (__OFADD__(v117, result))
      {
        goto LABEL_69;
      }

      v127 = v170;
      result = sub_100463ACC(v170 + v110);
      v128 = v126 + result;
      if (__OFADD__(v126, result))
      {
        goto LABEL_70;
      }

      result = sub_100025F40(v127, &qword_1005DBC78, &unk_100502CB0);
      v129 = v164 + v128;
      if (__OFADD__(v164, v128))
      {
        goto LABEL_71;
      }

      if (v163 >= v147)
      {
        result = sub_100025F40(v169, &qword_1005DBC80, &qword_1004FE5A0);
        v134 = 0;
        v69 = v149;
        v78 = v148;
      }

      else
      {
        v130 = *(v171 + 20);
        v131 = sub_1002F178C(32, 0xE100000000000000, (v171 + 8), *(v171 + 20));
        v69 = v149;
        v78 = v148;
        if (v132)
        {
          v133._countAndFlagsBits = 32;
          v133._object = 0xE100000000000000;
          v131 = ByteBuffer._setStringSlowpath(_:at:)(v133, v130);
        }

        v134 = v131;
        result = sub_100025F40(v169, &qword_1005DBC80, &qword_1004FE5A0);
        v135 = *(v171 + 20);
        v41 = __CFADD__(v135, v134);
        v136 = v135 + v134;
        if (v41)
        {
          goto LABEL_73;
        }

        *(v171 + 20) = v136;
      }

      v50 = __OFADD__(v129, v134);
      v75 = v129 + v134;
      if (v50)
      {
        goto LABEL_72;
      }

      v76 = v120 + 1;
      result = sub_100025F40(v168, &qword_1005DBC88, &qword_1004FE5A8);
      v77 = v162 + 2;
      if (v69 == v76)
      {
        goto LABEL_56;
      }
    }

    goto LABEL_66;
  }

LABEL_56:
  sub_100025F40(&v174, &qword_1005D3FC8, &qword_1004DF4B8);
  sub_100025F40(&v173, &qword_1005D3FD0, &qword_1004DF4C0);
  sub_100025F40(&v175, &qword_1005DBC90, &qword_1004FE5B0);
  sub_100025F40(&v174, &qword_1005D3FC8, &qword_1004DF4B8);
  sub_100025F40(&v173, &qword_1005D3FD0, &qword_1004DF4C0);
  result = sub_100025F40(&v175, &qword_1005DBC90, &qword_1004FE5B0);
  v137 = v146 + v75;
  if (__OFADD__(v146, v75))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v69)
  {
    v138 = *(v171 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, (v171 + 8), *(v171 + 20));
    if (v139)
    {
      v140._countAndFlagsBits = 0;
      v140._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v140, v138);
    }

    v141 = *(v171 + 20);
    v41 = __CFADD__(v141, result);
    v142 = v141 + result;
    if (v41)
    {
      goto LABEL_88;
    }

    *(v171 + 20) = v142;
    v143 = v137 + result;
    if (__OFADD__(v137, result))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }
  }

  else
  {
    v143 = v146 + v75;
  }

  result = v145 + v143;
  if (__OFADD__(v145, v143))
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  return result;
}

uint64_t AppendOptions.extensions.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];

  return v1;
}

uint64_t AppendOptions.extensions.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];

  v8 = v3[4];

  v9 = v3[5];

  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return result;
}

uint64_t sub_10039797C()
{
  result = sub_1003FF33C(_swiftEmptyArrayStorage);
  static AppendOptions.none = _swiftEmptyArrayStorage;
  unk_1005DE310 = 0;
  byte_1005DE318 = 1;
  qword_1005DE320 = result;
  unk_1005DE328 = v1;
  qword_1005DE330 = v2;
  return result;
}

uint64_t AppendOptions.init(flagList:internalDate:extensions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t *AppendOptions.none.unsafeMutableAddressor()
{
  if (qword_1005DB9A0 != -1)
  {
    swift_once();
  }

  return &static AppendOptions.none;
}

uint64_t static AppendOptions.none.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1005DB9A0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1005DE310;
  v2 = byte_1005DE318;
  v3 = qword_1005DE320;
  v4 = unk_1005DE328;
  v5 = qword_1005DE330;
  *a1 = static AppendOptions.none;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

uint64_t sub_100397AD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 55);
    v4 = (a2 + 55);
    do
    {
      v8 = *(v3 - 23);
      v9 = *(v3 - 15);
      v10 = *(v3 - 7) | ((*(v3 - 3) | (*(v3 - 1) << 16)) << 32);
      v11 = *(v4 - 23);
      v12 = *(v4 - 15);
      v13 = *(v4 - 7);
      v14 = v13 | ((*(v4 - 3) | (*(v4 - 1) << 16)) << 32);
      if (*v3)
      {
        if ((*v4 & 1) == 0)
        {
          return 0;
        }

        sub_1003A30E8(*(v4 - 23), *(v4 - 15), v13 | ((*(v4 - 3) | (*(v4 - 1) << 16)) << 32), 1);
        sub_1003A30E8(v8, v9, v10, 1);
        v15 = sub_100397AD8(v8, v11);
        sub_1003A30F4(v11, v12, v14, 1);
        sub_1003A30F4(v8, v9, v10, 1);
        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if ((*v4 & 1) != 0 || HIDWORD(v9) - v9 != HIDWORD(v12) - v12)
        {
          return 0;
        }

        v16 = HIDWORD(v14) & 0xFFFFFF;
        v17 = BYTE6(v14);
        *(v3 - 3);
        *(v3 - 1);
        if (*(v3 - 7) != v14 || ((*(v3 - 1), *(v3 - 3) == WORD2(v14)) ? (v18 = BYTE6(v10) == BYTE6(v14)) : (v18 = 0), v18 ? (v19 = v8 == v11) : (v19 = 0), !v19))
        {
          v5 = BYTE6(v10);
          v21 = HIDWORD(v10) & 0xFFFFFF;
          v22 = v16;
          v6 = v17;
          swift_beginAccess();
          v7 = *(v8 + 24) + v9;
          swift_beginAccess();
          if (memcmp((v7 + (v5 & 0xFFFFFFFFFF0000FFLL | (v21 << 8))), (*(v11 + 24) + (v6 & 0xFFFFFFFFFF0000FFLL | (v22 << 8)) + v12), HIDWORD(v9) - v9))
          {
            return 0;
          }
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_100397D28(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  while (1)
  {
    if (v3 == v2)
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v6 = v4 + 16 * v3;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = a2 + 32 + 16 * v3;
    v10 = *v9;
    v11 = *(v9 + 8);
    if (v8 > 1)
    {
      break;
    }

    if (v8)
    {
      if (v11 != 1)
      {
        return 0;
      }

      v22 = *(v7 + 16);
      if (v22 != *(v10 + 16))
      {
        return 0;
      }

      if (v22)
      {
        v23 = v7 == v10;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        goto LABEL_12;
      }

      v24 = 0;
      v25 = v7 + 32;
      v26 = v10 + 32;
      while (v24 != v22)
      {
        v39 = (v25 + 16 * v24);
        v40 = v26 + 16 * v24;
        if ((v39[2] | (v39[2] << 32)) != (*(v40 + 8) | (*(v40 + 8) << 32)))
        {
          return 0;
        }

        v41 = *v39;
        result = *v40;
        v42 = *(*v39 + 16);
        if (v42 != *(result + 16))
        {
          return 0;
        }

        if (v42)
        {
          v43 = v41 == result;
        }

        else
        {
          v43 = 1;
        }

        if (!v43)
        {
          v44 = (v41 + 32);
          result += 32;
          while (v42)
          {
            if (*v44 != *result)
            {
              return 0;
            }

            ++v44;
            ++result;
            if (!--v42)
            {
              goto LABEL_70;
            }
          }

          goto LABEL_99;
        }

LABEL_70:
        if (++v24 == v22)
        {
          goto LABEL_12;
        }
      }

LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (v11)
    {
      return 0;
    }

    v12 = *(v7 + 16);
    if (v12 != *(v10 + 16))
    {
      return 0;
    }

    if (v12)
    {
      v13 = v7 == v10;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = 0;
      v15 = v7 + 32;
      v16 = v10 + 32;
      while (v14 != v12)
      {
        v27 = (v15 + 16 * v14);
        v28 = v16 + 16 * v14;
        if ((v27[2] | (v27[2] << 32)) != (*(v28 + 8) | (*(v28 + 8) << 32)))
        {
          return 0;
        }

        v29 = *v27;
        result = *v28;
        v30 = *(*v27 + 16);
        if (v30 != *(result + 16))
        {
          return 0;
        }

        if (v30)
        {
          v31 = v29 == result;
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          v32 = (v29 + 32);
          result += 32;
          while (v30)
          {
            if (*v32 != *result)
            {
              return 0;
            }

            ++v32;
            ++result;
            if (!--v30)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_98;
        }

LABEL_44:
        if (++v14 == v12)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_102;
    }

LABEL_12:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  if (v8 != 2)
  {
    if (v7 <= 1)
    {
      if (v7)
      {
        if (v11 != 3 || v10 != 1)
        {
          return 0;
        }
      }

      else if (v11 != 3 || v10 != 0)
      {
        return 0;
      }
    }

    else if (v7 == 2)
    {
      if (v11 != 3 || v10 != 2)
      {
        return 0;
      }
    }

    else if (v7 == 3)
    {
      result = 0;
      if (v11 != 3 || v10 != 3)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v11 != 3 || v10 != 4)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  if (v11 != 2)
  {
    return 0;
  }

  v17 = *(v7 + 16);
  if (v17 != *(v10 + 16))
  {
    return 0;
  }

  if (v17)
  {
    v18 = v7 == v10;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    goto LABEL_12;
  }

  v19 = 0;
  v20 = v7 + 32;
  v21 = v10 + 32;
  while (v19 != v17)
  {
    v33 = (v20 + 16 * v19);
    v34 = v21 + 16 * v19;
    if ((v33[2] | (v33[2] << 32)) != (*(v34 + 8) | (*(v34 + 8) << 32)))
    {
      return 0;
    }

    v35 = *v33;
    result = *v34;
    v36 = *(*v33 + 16);
    if (v36 != *(result + 16))
    {
      return 0;
    }

    if (v36)
    {
      v37 = v35 == result;
    }

    else
    {
      v37 = 1;
    }

    if (!v37)
    {
      v38 = (v35 + 32);
      result += 32;
      while (v36)
      {
        if (*v38 != *result)
        {
          return 0;
        }

        ++v38;
        ++result;
        if (!--v36)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_57:
    if (++v19 == v17)
    {
      goto LABEL_12;
    }
  }

LABEL_103:
  __break(1u);
  return result;
}

uint64_t sub_100398074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_1003A3594(v21, v18, a4);
        sub_1003A3594(v22, v14, a4);
        v24 = a5(v18, v14);
        sub_1003A35FC(v14, a6);
        sub_1003A35FC(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_100398218(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  for (i = (a2 + 32); ; ++i)
  {
    v7 = *v3++;
    v6 = v7;
    v8 = *i;
    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    v9 = *(v6 + 64);
    v58[2] = *(v6 + 48);
    v58[3] = v9;
    v59[0] = *(v6 + 80);
    *(v59 + 15) = *(v6 + 95);
    v10 = *(v6 + 32);
    v58[0] = *(v6 + 16);
    v58[1] = v10;
    if ((v8 & 0x8000000000000000) != 0)
    {
      return 0;
    }

    v11 = *(v8 + 64);
    v60[2] = *(v8 + 48);
    v60[3] = v11;
    v61[0] = *(v8 + 80);
    *(v61 + 15) = *(v8 + 95);
    v12 = *(v8 + 32);
    v60[0] = *(v8 + 16);
    v60[1] = v12;

    sub_1003A3260(v60, &v53);
    v13 = _s12NIOIMAPCore212EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(v58, v60);
    sub_1003A32BC(v60);

    if ((v13 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    if (!--v2)
    {
      return 1;
    }
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v51 = v3;
  v14 = v6 & 0x7FFFFFFFFFFFFFFFLL;
  v15 = *(v14 + 16);
  v16 = *(v14 + 24);
  v17 = *(v14 + 28);
  v18 = *(v14 + 32);
  v19 = *(v14 + 36);
  v20 = *(v14 + 38);
  v21 = *(v14 + 40);
  v48 = *(v14 + 48);
  v22 = *(v14 + 62);
  v23 = *(v14 + 60);
  v24 = *(v14 + 56);
  v25 = *(v14 + 64);
  v26 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v53 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v54 = v26;
  v55 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v56 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
  v27 = DWORD2(v53);
  if (v17 - v16 != HIDWORD(v53) - DWORD2(v53))
  {
    return 0;
  }

  v45 = v23;
  v46 = v22;
  v47 = v24;
  v50 = v25;
  v52 = v21;
  v28 = v53;
  if (v18 == v54 && v19 == WORD2(v54) && v20 == BYTE6(v54) && v15 == v53)
  {

    sub_1003A31B0(&v53, v57);
  }

  else
  {
    v43 = BYTE6(v54);
    v44 = WORD2(v54);
    swift_beginAccess();
    v29 = *(v15 + 24);
    swift_beginAccess();
    v30 = *(v28 + 24);

    sub_1003A31B0(&v53, v57);
    if (memcmp((v29 + (v20 | (v19 << 8)) + v16), (v30 + (v43 | (v44 << 8)) + v27), v17 - v16))
    {
      goto LABEL_28;
    }
  }

  v31 = *(&v54 + 1);
  if (!v52)
  {
    if (*(&v54 + 1))
    {
      goto LABEL_31;
    }

LABEL_6:
    v5 = sub_100398218(v50, v56);
    sub_1003A320C(&v53);

    v3 = v51;
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (*(&v54 + 1))
  {
    v32 = v55;
    v33 = HIDWORD(v48);
    if (HIDWORD(v48) - v48 != DWORD1(v55) - v55)
    {
      goto LABEL_28;
    }

    v34 = v47 | ((v45 | (v46 << 16)) << 32);
    v35 = DWORD2(v55) | ((WORD6(v55) | (BYTE14(v55) << 16)) << 32);
    v36 = BYTE6(v35);
    v37 = HIDWORD(v34) & 0xFFFFFF;
    v38 = BYTE6(v34);
    if (v47 != DWORD2(v55) || WORD2(v34) != WORD6(v55) || BYTE6(v34) != BYTE6(v35) || v52 != *(&v54 + 1))
    {
      v39 = v48;
      v49 = HIDWORD(v35) & 0xFFFFFF;
      swift_beginAccess();
      v40 = v38 & 0xFFFFFFFFFF0000FFLL | (v37 << 8);
      v41 = *(v52 + 24) + v39;
      swift_beginAccess();
      if (memcmp((v41 + v40), (*(v31 + 24) + (v36 & 0xFFFFFFFFFF0000FFLL | (v49 << 8)) + v32), v33 - v39))
      {
LABEL_28:
        sub_1003A320C(&v53);

        goto LABEL_32;
      }
    }

    goto LABEL_6;
  }

LABEL_31:

  sub_1003A320C(&v53);

LABEL_32:

  return 0;
}

uint64_t sub_100398608(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(v3 - 1);
      v8 = *v3;
      if (*(v4 - 3) == *(v3 - 3) && *(v4 - 2) == *(v3 - 2))
      {
        if (v7 != v9 || v6 != v8)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_1004A6D34();
        result = 0;
        if ((v11 & 1) == 0 || v7 != v9 || v6 != v8)
        {
          return result;
        }
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1003986D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;
        sub_1000B3664(v5);
        sub_1000B3664(v7);
        v8 = static SearchKey.__derived_enum_equals(_:_:)(v5, v7);
        sub_1000B37D8(v7);
        sub_1000B37D8(v5);
        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_100398790(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a1;
    if (a1 != a2)
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 44);
      v6 = *(a2 + 40);
      if (v4 - v5 == *(a2 + 44) - v6)
      {
        v7 = 0;
        v25 = a2;
        do
        {
          v8 = *(v3 + v7 + 54);
          v9 = *(v3 + v7 + 52);
          v10 = *(v3 + v7 + 32);
          v11 = *(a2 + v7 + 54);
          v12 = *(a2 + v7 + 52);
          v13 = *(a2 + v7 + 32);
          if (*(v3 + v7 + 48) != *(a2 + v7 + 48) || v9 != v12 || v8 != v11 || v10 != v13)
          {
            v17 = v5;
            v26 = v4;
            swift_beginAccess();
            v18 = *(v10 + 24) + (v8 | (v9 << 8));
            swift_beginAccess();
            v19 = memcmp((v18 + v17), (*(v13 + 24) + (v11 | (v12 << 8)) + v6), v26 - v17);
            v3 = a1;
            a2 = v25;
            if (v19)
            {
              break;
            }
          }

          if (!--v2)
          {
            return 1;
          }

          v20 = v3 + v7;
          v21 = a2 + v7;
          v7 += 24;
          v22 = v20 + 64;
          v5 = *(v20 + 64);
          v4 = *(v22 + 4);
          v6 = *(v21 + 64);
        }

        while (v4 - v5 == *(v21 + 68) - v6);
      }

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1003988F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v35 = v2;
  v36 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v27 = *v5;
    v28 = v8;
    v9 = v5[3];
    v29 = v5[2];
    v30 = v9;
    v10 = v6[1];
    v31 = *v6;
    v32 = v10;
    v11 = v6[3];
    v33 = v6[2];
    v34 = v11;
    v12 = v28;
    v13 = *(&v29 + 1);
    v14 = *(&v30 + 1);
    v15 = v30;
    if (v29 > 0xFDu)
    {
      if (v29 == 255)
      {
        if (v33 != 0xFF)
        {
          return 0;
        }

        goto LABEL_43;
      }

      if (v29 == 254)
      {
        if (v33 != 254)
        {
          return 0;
        }

        goto LABEL_43;
      }
    }

    else
    {
      if (v29 == 252)
      {
        if (v33 != 252)
        {
          return 0;
        }

        goto LABEL_43;
      }

      if (v29 == 253)
      {
        if (v33 != 253)
        {
          return 0;
        }

        goto LABEL_43;
      }
    }

    if (v33 > 0xFBu)
    {
      return 0;
    }

    v24 = *(&v33 + 1);
    v16 = *(&v34 + 1);
    v25 = v34;
    if ((v29 & 1) == 0)
    {
      if (v33)
      {
        return 0;
      }

      if (v27 == v31)
      {
        goto LABEL_28;
      }

LABEL_27:
      if ((sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_28;
    }

    if ((v33 & 1) == 0)
    {
      return 0;
    }

    v17 = *(&v32 + 1);
    v18 = v32;
    if (v27 != v31)
    {
      v23 = *(&v32 + 1);
      v19 = sub_1004A6D34();
      v17 = v23;
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    if (v12 != __PAIR128__(v17, v18))
    {
      goto LABEL_27;
    }

LABEL_28:
    if (HIBYTE(v14) != 255)
    {
      break;
    }

    if (HIBYTE(v16) != 255)
    {
      goto LABEL_48;
    }

LABEL_43:
    if (!i)
    {
      return 1;
    }

    v6 += 4;
    v5 += 4;
  }

  if (HIBYTE(v16) != 255)
  {
    if ((v14 & 0x100000000000000) != 0)
    {
      if ((v16 & 0x100000000000000) == 0)
      {
        return 0;
      }

      sub_1003A33A8(&v31, v26);
      sub_1003A33A8(&v27, v26);
      sub_1003A3378(v13, v15, v14);
      sub_1003A3378(v24, v25, v16);
      v21 = sub_100397AD8(v13, v24);
      sub_1003A3390(v24, v25, v16);
      sub_1003A3390(v13, v15, v14);
      sub_1003A3404(&v31);
      sub_1003A3404(&v27);
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if ((v16 & 0x100000000000000) != 0 || HIDWORD(v15) - v15 != HIDWORD(v25) - v25)
      {
        return 0;
      }

      if (v14 != v16 || WORD2(v14) != WORD2(v16) || BYTE6(v14) != BYTE6(v16) || v13 != v24)
      {
        swift_beginAccess();
        v20 = *(v13 + 24);
        swift_beginAccess();
        if (memcmp((v20 + (BYTE6(v14) | (WORD2(v14) << 8)) + v15), (*(v24 + 24) + (BYTE6(v16) | (WORD2(v16) << 8)) + v25), HIDWORD(v15) - v15))
        {
          return 0;
        }
      }
    }

    goto LABEL_43;
  }

LABEL_48:
  sub_1003A3378(v13, v15, v14);
  sub_1003A3378(v24, v25, v16);
  sub_1003A3390(v13, v15, v14);
  sub_1003A3390(v24, v25, v16);
  return 0;
}

uint64_t sub_100398C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v108 - v7;
  v118 = sub_10000C9C0(&qword_1005DBC60, &qword_1004FE590);
  v9 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v11 = &v108 - v10;
  v12 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v116 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v120 = &v108 - v16;
  v125 = sub_10000C9C0(&qword_1005DBC68, &qword_1004FE598);
  v17 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v19 = &v108 - v18;
  v129 = type metadata accessor for ParameterValue();
  v20 = *(v129 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v129);
  v119 = (&v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v124 = &v108 - v24;
  __chkstk_darwin(v25);
  v126 = &v108 - v26;
  v27 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v130 = &v108 - v29;
  v128 = sub_10000C9C0(&qword_1005DBC70, &unk_100505A20);
  v30 = *(*(v128 - 8) + 64);
  __chkstk_darwin(v128);
  v131 = &v108 - v31;
  v127 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v32 = *(*(v127 - 8) + 64);
  __chkstk_darwin(v127);
  v34 = (&v108 - v33);
  v134 = sub_10000C9C0(&qword_1005DBCB0, &qword_1004FE5C8);
  v35 = *(*(v134 - 8) + 64);
  __chkstk_darwin(v134);
  v37 = &v108 - v36;
  Parameter = type metadata accessor for CreateParameter();
  v38 = *(*(Parameter - 8) + 64);
  __chkstk_darwin(Parameter);
  __chkstk_darwin(v39);
  v137 = &v108 - v40;
  __chkstk_darwin(v41);
  v138 = &v108 - v42;
  __chkstk_darwin(v43);
  v47 = &v108 - v45;
  v48 = *(a1 + 16);
  if (v48 != *(a2 + 16))
  {
    return 0;
  }

  if (!v48 || a1 == a2)
  {
    return 1;
  }

  v114 = v46;
  v108 = v8;
  v109 = v4;
  v110 = v11;
  v49 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v123 = a1 + v49;
  v121 = a2 + v49;
  v112 = (v20 + 48);
  v50 = 0;
  v51 = (v5 + 48);
  v122 = *(v44 + 72);
  v52 = v131;
  v53 = v137;
  v115 = v51;
  v113 = v37;
  v111 = v19;
  v117 = v34;
  v135 = &v108 - v45;
  v136 = v48;
  while (1)
  {
    v54 = v122 * v50;
    v55 = v47;
    result = sub_1003A3594(v123 + v122 * v50, v47, type metadata accessor for CreateParameter);
    if (v50 == v136)
    {
      __break(1u);
      __break(1u);
      return result;
    }

    v132 = v50;
    v57 = v138;
    sub_1003A3594(v121 + v54, v138, type metadata accessor for CreateParameter);
    v58 = *(v134 + 48);
    sub_1003A3594(v55, v37, type metadata accessor for CreateParameter);
    sub_1003A3594(v57, v37 + v58, type metadata accessor for CreateParameter);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v59 = v114;
    sub_1003A3594(v37, v114, type metadata accessor for CreateParameter);
    v60 = *v59;
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      sub_1003A35FC(v138, type metadata accessor for CreateParameter);
      sub_1003A35FC(v135, type metadata accessor for CreateParameter);
      goto LABEL_60;
    }

    v61 = *(v37 + v58);
    v19 = *(v60 + 16);
    if (v19 != *(v61 + 16))
    {
LABEL_56:
      sub_1003A35FC(v138, type metadata accessor for CreateParameter);
      sub_1003A35FC(v135, type metadata accessor for CreateParameter);

      v101 = v113;
      goto LABEL_77;
    }

    if (v19 && v60 != v61)
    {
      v62 = 0;
      v63 = (v60 + 40);
      v34 = (v61 + 40);
      while (v62 < *(v60 + 16))
      {
        if (v62 >= *(v61 + 16))
        {
          goto LABEL_68;
        }

        v64 = *(v63 - 1);
        v65 = *v63;
        v66 = *(v34 - 1);
        v37 = *v34;
        v67 = sub_1004A5814();
        v69 = v68;
        if (v67 == sub_1004A5814() && v69 == v70)
        {
        }

        else
        {
          v37 = sub_1004A6D34();

          if ((v37 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        ++v62;
        v63 += 2;
        v34 += 2;
        if (v19 == v62)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      sub_100025F40(v120, &qword_1005CDA78, &unk_1004CF7E0);
      sub_1003A35FC(v126, type metadata accessor for ParameterValue);
      sub_1003A35FC(v138, type metadata accessor for CreateParameter);
      sub_1003A35FC(v135, type metadata accessor for CreateParameter);
      sub_100025F40(v60, &qword_1005CDA68, &qword_1004CF7D0);
LABEL_70:
      v106 = &qword_1005DBC60;
      v107 = &qword_1004FE590;
LABEL_72:
      sub_100025F40(v110, v106, v107);
      sub_100025F40(v124, &qword_1005CDA78, &unk_1004CF7E0);
      sub_1003A35FC(v19, type metadata accessor for ParameterValue);
      v53 = v137;
      goto LABEL_73;
    }

LABEL_5:
    sub_1003A35FC(v138, type metadata accessor for CreateParameter);
    sub_1003A35FC(v135, type metadata accessor for CreateParameter);

    v37 = v113;
    v19 = v111;
    v34 = v117;
    v52 = v131;
    v53 = v137;
    v51 = v115;
LABEL_6:
    v50 = v132 + 1;
    sub_1003A35FC(v37, type metadata accessor for CreateParameter);
    v47 = v135;
    if (v50 == v136)
    {
      return 1;
    }
  }

  sub_1003A3594(v37, v53, type metadata accessor for CreateParameter);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1003A35FC(v138, type metadata accessor for CreateParameter);
    sub_1003A35FC(v135, type metadata accessor for CreateParameter);
    sub_100025F40(v53, &qword_1005DBCA8, &unk_100504BF0);
LABEL_60:
    sub_100025F40(v37, &qword_1005DBCB0, &qword_1004FE5C8);
    return 0;
  }

  sub_100025FDC(v37 + v58, v34, &qword_1005DBCA8, &unk_100504BF0);
  if ((*v53 != *v34 || v53[1] != v34[1]) && (sub_1004A6D34() & 1) == 0)
  {
    sub_1003A35FC(v138, type metadata accessor for CreateParameter);
    sub_1003A35FC(v135, type metadata accessor for CreateParameter);
    goto LABEL_76;
  }

  v72 = *(v127 + 52);
  v73 = *(v128 + 48);
  sub_10000E268(v53 + v72, v52, &qword_1005D7F50, &unk_100502FF0);
  sub_10000E268(v34 + v72, v52 + v73, &qword_1005D7F50, &unk_100502FF0);
  v74 = *v112;
  v75 = v129;
  if ((*v112)(v52, 1, v129) == 1)
  {
    sub_1003A35FC(v138, type metadata accessor for CreateParameter);
    sub_1003A35FC(v135, type metadata accessor for CreateParameter);
    v76 = v74(v52 + v73, 1, v75);
    v51 = v115;
    v53 = v137;
    v34 = v117;
    if (v76 != 1)
    {
      goto LABEL_63;
    }

    goto LABEL_54;
  }

  sub_10000E268(v52, v130, &qword_1005D7F50, &unk_100502FF0);
  if (v74(v52 + v73, 1, v75) == 1)
  {
    sub_1003A35FC(v138, type metadata accessor for CreateParameter);
    sub_1003A35FC(v135, type metadata accessor for CreateParameter);
    sub_1003A35FC(v130, type metadata accessor for ParameterValue);
    v53 = v137;
    v34 = v117;
LABEL_63:
    v103 = &qword_1005DBC70;
    v104 = &unk_100505A20;
    v105 = v52;
    goto LABEL_75;
  }

  v77 = v126;
  sub_1003A352C(v52 + v73, v126, type metadata accessor for ParameterValue);
  v78 = *(v125 + 48);
  sub_1003A3594(v130, v19, type metadata accessor for ParameterValue);
  sub_1003A3594(v77, &v19[v78], type metadata accessor for ParameterValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v53 = v137;
  if (EnumCaseMultiPayload != 1)
  {
    v87 = v124;
    sub_1003A3594(v19, v124, type metadata accessor for ParameterValue);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v88 = v120;
      sub_100025FDC(&v19[v78], v120, &qword_1005CDA78, &unk_1004CF7E0);
      v89 = *(v118 + 48);
      v90 = v87;
      v91 = v88;
      v92 = v110;
      sub_10000E268(v90, v110, &qword_1005CDA78, &unk_1004CF7E0);
      sub_10000E268(v88, v92 + v89, &qword_1005CDA78, &unk_1004CF7E0);
      v93 = *v51;
      v94 = v92;
      v95 = v109;
      v96 = (*v51)(v94, 1, v109);
      v34 = v117;
      if (v96 == 1)
      {
        sub_100025F40(v91, &qword_1005CDA78, &unk_1004CF7E0);
        sub_1003A35FC(v126, type metadata accessor for ParameterValue);
        sub_1003A35FC(v138, type metadata accessor for CreateParameter);
        sub_1003A35FC(v135, type metadata accessor for CreateParameter);
        if (v93(&v110[v89], 1, v95) != 1)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v97 = v110;
        v60 = v116;
        sub_10000E268(v110, v116, &qword_1005CDA78, &unk_1004CF7E0);
        if (v93(v97 + v89, 1, v95) == 1)
        {
          goto LABEL_69;
        }

        v98 = v108;
        sub_100025FDC(&v110[v89], v108, &qword_1005CDA68, &qword_1004CF7D0);
        sub_100016D2C();
        v99 = v60;
        v100 = sub_1004A7034();
        sub_100025F40(v98, &qword_1005CDA68, &qword_1004CF7D0);
        sub_100025F40(v120, &qword_1005CDA78, &unk_1004CF7E0);
        sub_1003A35FC(v126, type metadata accessor for ParameterValue);
        sub_1003A35FC(v138, type metadata accessor for CreateParameter);
        sub_1003A35FC(v135, type metadata accessor for CreateParameter);
        sub_100025F40(v99, &qword_1005CDA68, &qword_1004CF7D0);
        if ((v100 & 1) == 0)
        {
          v106 = &qword_1005CDA78;
          v107 = &unk_1004CF7E0;
          goto LABEL_72;
        }
      }

      sub_100025F40(v110, &qword_1005CDA78, &unk_1004CF7E0);
      sub_100025F40(v124, &qword_1005CDA78, &unk_1004CF7E0);
      v53 = v137;
      v52 = v131;
      goto LABEL_53;
    }

    sub_1003A35FC(v126, type metadata accessor for ParameterValue);
    sub_1003A35FC(v138, type metadata accessor for CreateParameter);
    sub_1003A35FC(v135, type metadata accessor for CreateParameter);
    sub_100025F40(v87, &qword_1005CDA78, &unk_1004CF7E0);
LABEL_66:
    v34 = v117;
    sub_100025F40(v19, &qword_1005DBC68, &qword_1004FE598);
LABEL_73:
    v102 = v131;
    goto LABEL_74;
  }

  v80 = v119;
  sub_1003A3594(v19, v119, type metadata accessor for ParameterValue);
  v81 = *v80;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    sub_1003A35FC(v126, type metadata accessor for ParameterValue);
    sub_1003A35FC(v138, type metadata accessor for CreateParameter);
    sub_1003A35FC(v135, type metadata accessor for CreateParameter);
    goto LABEL_66;
  }

  v82 = *&v19[v78];
  v83 = *(v81 + 16);
  v34 = v117;
  if (v83 != *(v82 + 16))
  {
    goto LABEL_57;
  }

  if (!v83 || v81 == v82)
  {
LABEL_49:
    sub_1003A35FC(v126, type metadata accessor for ParameterValue);
    sub_1003A35FC(v138, type metadata accessor for CreateParameter);
    sub_1003A35FC(v135, type metadata accessor for CreateParameter);

    v52 = v131;
    v53 = v137;
    v51 = v115;
LABEL_53:
    sub_1003A35FC(v19, type metadata accessor for ParameterValue);
    sub_1003A35FC(v130, type metadata accessor for ParameterValue);
LABEL_54:
    sub_100025F40(v52, &qword_1005D7F50, &unk_100502FF0);
    sub_100025F40(v34, &qword_1005DBCA8, &unk_100504BF0);
    sub_100025F40(v53, &qword_1005DBCA8, &unk_100504BF0);
    goto LABEL_6;
  }

  v84 = (v81 + 40);
  v85 = (v82 + 40);
  while (1)
  {
    v86 = *(v84 - 1) == *(v85 - 1) && *v84 == *v85;
    if (!v86 && (sub_1004A6D34() & 1) == 0)
    {
      break;
    }

    v84 += 2;
    v85 += 2;
    if (!--v83)
    {
      goto LABEL_49;
    }
  }

LABEL_57:
  sub_1003A35FC(v126, type metadata accessor for ParameterValue);
  sub_1003A35FC(v138, type metadata accessor for CreateParameter);
  sub_1003A35FC(v135, type metadata accessor for CreateParameter);

  sub_1003A35FC(v19, type metadata accessor for ParameterValue);
  v102 = v131;
  v53 = v137;
LABEL_74:
  sub_1003A35FC(v130, type metadata accessor for ParameterValue);
  v103 = &qword_1005D7F50;
  v104 = &unk_100502FF0;
  v105 = v102;
LABEL_75:
  sub_100025F40(v105, v103, v104);
LABEL_76:
  sub_100025F40(v34, &qword_1005DBCA8, &unk_100504BF0);
  sub_100025F40(v53, &qword_1005DBCA8, &unk_100504BF0);
  v101 = v37;
LABEL_77:
  sub_1003A35FC(v101, type metadata accessor for CreateParameter);
  return 0;
}