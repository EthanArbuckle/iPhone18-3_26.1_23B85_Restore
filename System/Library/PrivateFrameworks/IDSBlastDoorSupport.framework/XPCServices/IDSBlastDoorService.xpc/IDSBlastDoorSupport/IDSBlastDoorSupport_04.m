unint64_t sub_100077804()
{
  result = qword_1000DA208;
  if (!qword_1000DA208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA208);
  }

  return result;
}

void *IDSCommandWebTunnelResponseSchema.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100077C4C(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x118uLL);
  }

  return result;
}

uint64_t sub_1000778A4(char a1)
{
  result = 99;
  switch(a1)
  {
    case 1:
      result = 105;
      break;
    case 2:
      result = 85;
      break;
    case 3:
      result = 115;
      break;
    case 4:
      result = 21603;
      break;
    case 5:
      result = 101;
      break;
    case 6:
      result = 117;
      break;
    case 7:
      result = 104;
      break;
    case 8:
      result = 98;
      break;
    case 9:
      result = 30050;
      break;
    case 10:
      result = 27490;
      break;
    case 11:
      result = 29544;
      break;
    case 12:
      result = 29288;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100077994(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000778A4(*a1);
  v5 = v4;
  if (v3 == sub_1000778A4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();
  }

  return v8 & 1;
}

Swift::Int sub_100077A1C()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000778A4(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100077A80()
{
  sub_1000778A4(*v0);
  sub_1000A05B0();
}

Swift::Int sub_100077AD4()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000778A4(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100077B34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100078748(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100077B64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000778A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100077BAC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100078748(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100077BD4(uint64_t a1)
{
  v2 = sub_100077804();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077C10(uint64_t a1)
{
  v2 = sub_100077804();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100077C4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000DA228, &unk_1000B10D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v108 = a1;
  sub_1000022C4(a1, v10);
  sub_100077804();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(v108);
  }

  v12 = v6;
  v51 = a2;
  LOBYTE(v53) = 0;
  v13 = sub_1000A0A00();
  LOBYTE(v53) = 1;
  v50 = sub_1000A0950();
  v107 = v14 & 1;
  LOBYTE(v52[0]) = 2;
  v15 = sub_100005424();
  sub_1000A0970();
  v47 = v15;
  v48 = v53;
  v49 = v54;
  LOBYTE(v53) = 3;
  v16 = sub_1000A0950();
  v105 = v17 & 1;
  LOBYTE(v53) = 4;
  v41 = sub_1000A0920();
  v46 = v18;
  LOBYTE(v53) = 5;
  v39 = sub_1000A0980();
  v40 = v16;
  v103 = v19 & 1;
  LOBYTE(v53) = 6;
  v38 = sub_1000A0920();
  v45 = v20;
  v87 = 7;
  sub_100061400();
  sub_1000A0970();
  v21 = v50;
  v98 = v90;
  v99 = v91;
  v100 = v92;
  v101 = v93;
  v96 = v88;
  v97 = v89;
  LOBYTE(v52[0]) = 8;
  sub_1000A0970();
  v43 = v54;
  v44 = v53;
  LOBYTE(v53) = 9;
  v22 = sub_1000A0920();
  v37 = v23;
  v24 = v22;
  LOBYTE(v52[0]) = 10;
  sub_1000A0970();
  v47 = v53;
  v42 = v54;
  LOBYTE(v53) = 11;
  v36 = sub_1000A0950();
  v95 = v25 & 1;
  v86 = 12;
  v26 = sub_1000A0920();
  v35 = v27;
  v28 = v26;
  (*(v12 + 8))(v9, v5);
  v52[0] = v13;
  v52[1] = v21;
  v29 = v107;
  LOBYTE(v52[2]) = v107;
  v30 = v48;
  v52[3] = v48;
  v52[4] = v49;
  v52[5] = v40;
  HIDWORD(v32) = v105;
  LOBYTE(v52[6]) = v105;
  v52[7] = v41;
  v52[8] = v46;
  v52[9] = v39;
  v33 = v103;
  LOBYTE(v52[10]) = v103;
  v52[11] = v38;
  v52[12] = v45;
  *&v52[13] = v96;
  *&v52[15] = v97;
  *&v52[23] = v101;
  *&v52[21] = v100;
  *&v52[19] = v99;
  *&v52[17] = v98;
  v52[25] = v44;
  v52[26] = v43;
  v52[27] = v24;
  v52[28] = v37;
  v52[29] = v47;
  v52[30] = v42;
  v52[31] = v36;
  v34 = v95;
  LOBYTE(v52[32]) = v95;
  v52[33] = v28;
  v52[34] = v35;
  sub_100078794(v52, &v53);
  sub_100002308(v108);
  v53 = v13;
  v54 = v21;
  v55 = v29;
  *v56 = *v106;
  *&v56[3] = *&v106[3];
  v57 = v30;
  v58 = v49;
  v59 = v40;
  v60 = BYTE4(v32);
  *v61 = *v104;
  *&v61[3] = *&v104[3];
  v62 = v41;
  v63 = v46;
  v64 = v39;
  v65 = v33;
  *v66 = *v102;
  *&v66[3] = *&v102[3];
  v67 = v38;
  v68 = v45;
  v71 = v98;
  v72 = v99;
  v73 = v100;
  v74 = v101;
  v69 = v96;
  v70 = v97;
  v75 = v44;
  v76 = v43;
  v77 = v24;
  v78 = v37;
  v79 = v47;
  v80 = v42;
  v81 = v36;
  v82 = v34;
  *v83 = *v94;
  *&v83[3] = *&v94[3];
  v84 = v28;
  v85 = v35;
  sub_1000725D0(&v53);
  return memcpy(v51, v52, 0x118uLL);
}

uint64_t sub_100078528(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 280))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_100078584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

unint64_t sub_100078644()
{
  result = qword_1000DA210;
  if (!qword_1000DA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA210);
  }

  return result;
}

unint64_t sub_10007869C()
{
  result = qword_1000DA218;
  if (!qword_1000DA218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA218);
  }

  return result;
}

unint64_t sub_1000786F4()
{
  result = qword_1000DA220;
  if (!qword_1000DA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA220);
  }

  return result;
}

uint64_t sub_100078748(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD788;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000787DC()
{
  sub_1000017BC(&qword_1000D8590, &qword_1000B1190);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000B10E0;
  v1 = sub_10007AC10(0, &qword_1000DA248, MSASAlbum_ptr);
  *(v0 + 56) = sub_1000017BC(&qword_1000DA250, &qword_1000B1198);
  *(v0 + 32) = v1;
  v2 = sub_10007AC10(0, &qword_1000DA258, NSDictionary_ptr);
  *(v0 + 88) = sub_1000017BC(&qword_1000DA260, &qword_1000B11A0);
  *(v0 + 64) = v2;
  v3 = sub_10007AC10(0, &qword_1000DA268, NSMutableDictionary_ptr);
  *(v0 + 120) = sub_1000017BC(&qword_1000DA270, &qword_1000B11A8);
  *(v0 + 96) = v3;
  v4 = sub_10007AC10(0, &qword_1000DA278, NSString_ptr);
  *(v0 + 152) = sub_1000017BC(&qword_1000DA280, &qword_1000B11B0);
  *(v0 + 128) = v4;
  v5 = sub_10007AC10(0, &qword_1000DA288, NSDate_ptr);
  *(v0 + 184) = sub_1000017BC(&qword_1000DA290, &qword_1000B11B8);
  *(v0 + 160) = v5;
  sub_10007AC10(0, &qword_1000DA298, NSSet_ptr);
  result = sub_1000A0780();
  qword_1000DAE00 = result;
  return result;
}

uint64_t sub_10007896C@<X0>(uint64_t a1@<X8>)
{
  v181 = a1;
  v179 = sub_10009F9D0();
  v178 = *(v179 - 8);
  v1 = *(v178 + 64);
  __chkstk_darwin(v179);
  v177 = &v152 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_10009FE90();
  v180 = *(v182 - 8);
  v3 = *(v180 + 64);
  __chkstk_darwin(v182);
  v186 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_10009F350();
  v189 = *(v190 - 8);
  v5 = *(v189 + 64);
  __chkstk_darwin(v190);
  v188 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_10009FE70();
  v185 = *(v187 - 8);
  v7 = *(v185 + 64);
  v8 = __chkstk_darwin(v187);
  v184 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v195 = &v152 - v10;
  v11 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v193 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v197 = &v152 - v16;
  __chkstk_darwin(v15);
  v200 = &v152 - v17;
  v18 = sub_1000017BC(&qword_1000D8358, &unk_1000A5C50);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v192 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v191 = &v152 - v23;
  v24 = __chkstk_darwin(v22);
  v199 = &v152 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v152 - v27;
  __chkstk_darwin(v26);
  v201 = &v152 - v29;
  v30 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v196 = &v152 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v36 = &v152 - v35;
  __chkstk_darwin(v34);
  v198 = &v152 - v37;
  v38 = sub_1000017BC(&qword_1000DA238, &unk_1000B1170);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v183 = &v152 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v202 = &v152 - v42;
  sub_1000A0760();
  v43 = sub_10007AC10(0, &qword_1000D8398, OS_os_log_ptr);
  v44 = sub_1000A0790();
  sub_10009F380();

  v45 = objc_opt_self();
  isa = sub_10009F300().super.isa;
  *&v207 = 0;
  v47 = [v45 propertyListWithData:isa options:0 format:0 error:&v207];

  if (!v47)
  {
    v61 = v207;
    sub_10009F280();

LABEL_34:
    swift_willThrow();
    goto LABEL_35;
  }

  v48 = v207;
  sub_1000A07D0();
  swift_unknownObjectRelease();
  sub_1000017BC(&qword_1000DA240, &unk_1000B1180);
  if (!swift_dynamicCast())
  {
    sub_1000A0530();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion);
    swift_allocError();
LABEL_33:
    sub_1000A0520();
    goto LABEL_34;
  }

  v49 = v205;
  sub_1000A0760();
  v50 = sub_1000A0790();
  sub_10009F380();

  if (qword_1000D8120 != -1)
  {
    swift_once();
  }

  *&v207 = 0;
  sub_1000A0730();
  if (!v207)
  {

    sub_1000A0530();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion);
    swift_allocError();
    goto LABEL_33;
  }

  sub_1000A0760();
  v176 = v43;
  v51 = sub_1000A0790();
  sub_10009F380();

  v52 = sub_10009FE50();
  v53 = *(v52 - 8);
  v54 = *(v53 + 56);
  v54(v202, 1, 1, v52);
  if (*(v49 + 16) && (v55 = sub_10000217C(1701869940, 0xE400000000000000), (v56 & 1) != 0) && (sub_10006FDD0(*(v49 + 56) + 32 * v55, &v207), (swift_dynamicCast() & 1) != 0))
  {
    v57 = *(&v205 + 1);
    if (v205 == __PAIR128__(0xE300000000000000, 7824750) || (v175 = v205, (sub_1000A0BD0() & 1) != 0))
    {

      LODWORD(v175) = sub_1000A0760();
      v58 = sub_1000A0790();
      sub_10009F380();

      v59 = v202;
      sub_1000057C4(v202, &qword_1000DA238, &unk_1000B1170);
      v60 = &enum case for PhotosSharedAlbumMessage.MessageType.new(_:);
    }

    else
    {
      if (v175 == 0x6574656C6564 && v57 == 0xE600000000000000)
      {
      }

      else
      {
        LODWORD(v175) = sub_1000A0BD0();

        if ((v175 & 1) == 0)
        {

          sub_1000A0530();
          sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion);
          swift_allocError();
          sub_1000A0520();
          swift_willThrow();
          sub_1000057C4(v202, &qword_1000DA238, &unk_1000B1170);
          goto LABEL_35;
        }
      }

      LODWORD(v175) = sub_1000A0760();
      v94 = sub_1000A0790();
      sub_10009F380();

      v59 = v202;
      sub_1000057C4(v202, &qword_1000DA238, &unk_1000B1170);
      v60 = &enum case for PhotosSharedAlbumMessage.MessageType.delete(_:);
    }

    (*(v53 + 104))(v59, *v60, v52);
    v54(v59, 0, 1, v52);
  }

  else
  {
    sub_1000A0760();
    v62 = sub_1000A0790();
    sub_10009F380();
  }

  sub_1000A0760();
  v63 = sub_1000A0790();
  sub_10009F380();

  if (!*(v49 + 16) || (v64 = sub_10000217C(0x7461446D75626C61, 0xE900000000000061), (v65 & 1) == 0))
  {

    goto LABEL_30;
  }

  sub_10006FDD0(*(v49 + 56) + 32 * v64, &v207);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:

    sub_1000A0530();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000A0520();
    swift_willThrow();
LABEL_31:
    sub_1000057C4(v202, &qword_1000DA238, &unk_1000B1170);
    goto LABEL_35;
  }

  v66 = *(&v205 + 1);
  v175 = v205;
  sub_1000A0760();
  v67 = sub_1000A0790();
  sub_10009F380();

  v68 = objc_opt_self();
  v69 = sub_1000A0710().super.isa;

  v174 = v66;
  v70 = sub_10009F300().super.isa;
  *&v207 = 0;
  v71 = [v68 _strictlyUnarchivedObjectOfClasses:v69 fromData:v70 error:&v207];

  if (!v71)
  {
    v93 = v207;
    sub_10009F280();

LABEL_40:
    swift_willThrow();
    sub_100005568(v175, v174);
    goto LABEL_31;
  }

  v72 = v207;
  sub_1000A07D0();
  swift_unknownObjectRelease();
  sub_10007AC10(0, &qword_1000DA248, MSASAlbum_ptr);
  if (!swift_dynamicCast())
  {
    sub_1000A0530();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000A0520();
    goto LABEL_40;
  }

  v73 = v205;
  v74 = sub_10009F370();
  v75 = v198;
  (*(*(v74 - 8) + 56))(v198, 1, 1, v74);
  v173 = v73;
  v76 = [v73 GUID];
  if (v76)
  {
    v77 = v76;
    sub_1000A0580();

    sub_10009F360();

    sub_1000057C4(v75, &qword_1000D8BC8, &qword_1000A85F8);
    sub_1000056E8(v36, v75, &qword_1000D8BC8, &qword_1000A85F8);
  }

  v78 = sub_10009F2A0();
  v79 = *(*(v78 - 8) + 56);
  v80 = v201;
  v79(v201, 1, 1, v78);
  v81 = [v173 URLString];
  if (v81)
  {
    v82 = v81;
    sub_1000A0580();

    sub_10009F290();

    sub_1000057C4(v80, &qword_1000D8358, &unk_1000A5C50);
    sub_1000056E8(v28, v80, &qword_1000D8358, &unk_1000A5C50);
  }

  v83 = v199;
  v79(v199, 1, 1, v78);
  v84 = v173;
  v85 = [v173 publicURLString];
  if (v85)
  {
    v86 = v85;
    sub_1000A0580();

    sub_10009F290();

    sub_1000057C4(v83, &qword_1000D8358, &unk_1000A5C50);
    sub_1000056E8(v28, v83, &qword_1000D8358, &unk_1000A5C50);
  }

  if ([v84 metadataValueForKey:kMSASAlbumMetadataNameKey])
  {
    sub_1000A07D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v205 = 0u;
    v206 = 0u;
  }

  v95 = v190;
  v96 = v189;
  v207 = v205;
  v208 = v206;
  if (*(&v206 + 1))
  {
    v97 = swift_dynamicCast();
    v98 = v203;
    if (!v97)
    {
      v98 = 0;
    }

    v189 = v98;
    if (v97)
    {
      v99 = v204;
    }

    else
    {
      v99 = 0;
    }

    v172 = v99;
  }

  else
  {
    sub_1000057C4(&v207, &qword_1000D9EF8, &qword_1000B0578);
    v189 = 0;
    v172 = 0;
  }

  if ([v84 metadataValueForKey:kMSASAlbumMetadataIsPublicKey])
  {
    sub_1000A07D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v205 = 0u;
    v206 = 0u;
  }

  v207 = v205;
  v208 = v206;
  if (*(&v206 + 1))
  {
    v100 = swift_dynamicCast();
    v101 = v203;
    if (!v100)
    {
      v101 = 2;
    }
  }

  else
  {
    sub_1000057C4(&v207, &qword_1000D9EF8, &qword_1000B0578);
    v101 = 2;
  }

  v171 = v101;
  if ([v84 metadataValueForKey:kMSASAlbumMetadataAllowMultipleContributorsKey])
  {
    sub_1000A07D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v205 = 0u;
    v206 = 0u;
  }

  v207 = v205;
  v208 = v206;
  if (*(&v206 + 1))
  {
    v102 = swift_dynamicCast();
    v103 = v203;
    if (!v102)
    {
      v103 = 2;
    }
  }

  else
  {
    sub_1000057C4(&v207, &qword_1000D9EF8, &qword_1000B0578);
    v103 = 2;
  }

  v170 = v103;
  if ([v84 metadataValueForKey:kMSASAlbumMetadataPhoneTokenKey])
  {
    sub_1000A07D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v205 = 0u;
    v206 = 0u;
  }

  v207 = v205;
  v208 = v206;
  if (*(&v206 + 1))
  {
    v104 = swift_dynamicCast();
    v105 = v203;
    if (!v104)
    {
      v105 = 0;
    }

    v169 = v105;
    if (v104)
    {
      v106 = v204;
    }

    else
    {
      v106 = 0;
    }

    v168 = v106;
  }

  else
  {
    sub_1000057C4(&v207, &qword_1000D9EF8, &qword_1000B0578);
    v169 = 0;
    v168 = 0;
  }

  if ([v84 metadataValueForKey:kMSASAlbumMetadataCreationDateKey])
  {
    sub_1000A07D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v205 = 0u;
    v206 = 0u;
  }

  v107 = v200;
  v207 = v205;
  v208 = v206;
  if (*(&v206 + 1))
  {
    v108 = swift_dynamicCast();
    v109 = *(v96 + 56);
    v109(v107, v108 ^ 1u, 1, v95);
  }

  else
  {
    sub_1000057C4(&v207, &qword_1000D9EF8, &qword_1000B0578);
    v109 = *(v96 + 56);
    v109(v107, 1, 1, v95);
  }

  if ([v84 metadataValueForKey:kMSASAlbumMetadataInviterAddressKey])
  {
    sub_1000A07D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v205 = 0u;
    v206 = 0u;
  }

  v207 = v205;
  v208 = v206;
  if (*(&v206 + 1))
  {
    v110 = swift_dynamicCast();
    v111 = v203;
    if (!v110)
    {
      v111 = 0;
    }

    v167 = v111;
    if (v110)
    {
      v112 = v204;
    }

    else
    {
      v112 = 0;
    }

    v166 = v112;
  }

  else
  {
    sub_1000057C4(&v207, &qword_1000D9EF8, &qword_1000B0578);
    v167 = 0;
    v166 = 0;
  }

  sub_1000A0760();
  v113 = sub_1000A0790();
  sub_10009F380();

  v114 = [v84 ownerEmail];
  if (v114)
  {
    v115 = v114;
    v165 = sub_1000A0580();
    v190 = v116;
  }

  else
  {
    v165 = 0;
    v190 = 0;
  }

  v117 = [v84 ownerFullName];
  if (v117)
  {
    v118 = v117;
    v164 = sub_1000A0580();
    v163 = v119;
  }

  else
  {
    v164 = 0;
    v163 = 0;
  }

  v120 = [v84 ownerPersonID];
  if (v120)
  {
    v121 = v120;
    v162 = sub_1000A0580();
    v161 = v122;
  }

  else
  {
    v162 = 0;
    v161 = 0;
  }

  v123 = [v84 ownerFirstName];
  if (v123)
  {
    v124 = v123;
    v160 = sub_1000A0580();
    v159 = v125;
  }

  else
  {
    v160 = 0;
    v159 = 0;
  }

  v126 = [v84 ownerLastName];
  if (v126)
  {
    v127 = v126;
    v158 = sub_1000A0580();
    v157 = v128;
  }

  else
  {
    v158 = 0;
    v157 = 0;
  }

  v156 = [v84 ownerIsWhitelisted];
  v129 = [v84 subscriptionDate];
  if (v129)
  {
    v130 = v188;
    v131 = v129;
    sub_10009F340();

    v132 = v197;
    (*(v96 + 32))(v197, v130, v95);
    v133 = 0;
  }

  else
  {
    v133 = 1;
    v132 = v197;
  }

  v109(v132, v133, 1, v95);
  sub_100005620(v75, v196, &qword_1000D8BC8, &qword_1000A85F8);
  v134 = [v84 ctag];
  if (v134)
  {
    v135 = v134;
    v188 = sub_1000A0580();
    v155 = v136;
  }

  else
  {
    v188 = 0;
    v155 = 0;
  }

  v154 = [v84 relationshipState];
  v137 = [v84 foreignCtag];
  if (v137)
  {
    v138 = v137;
    v153 = sub_1000A0580();
  }

  else
  {
    v153 = 0;
  }

  sub_100005620(v201, v191, &qword_1000D8358, &unk_1000A5C50);
  v139 = v199;
  sub_100005620(v199, v192, &qword_1000D8358, &unk_1000A5C50);
  [v84 isFamilySharedAlbum];
  [v84 useForeignCtag];
  v140 = v200;
  sub_100005620(v200, v193, &qword_1000D84A8, &unk_1000B0C40);
  v141 = v194;
  v142 = v195;
  sub_10009FE60();
  if (!v141)
  {
    sub_1000A0760();
    v143 = sub_1000A0790();
    sub_10009F380();

    sub_100005620(v202, v183, &qword_1000DA238, &unk_1000B1170);
    v144 = v185;
    (*(v185 + 16))(v184, v142, v187);
    v145 = v186;
    sub_10009FE80();
    sub_1000A0760();
    v146 = v145;
    v147 = sub_1000A0790();
    sub_10009F380();

    v148 = v180;
    v149 = v177;
    v150 = v182;
    (*(v180 + 16))(v177, v146, v182);
    (*(v178 + 104))(v149, enum case for IDSClientMessageType.photosSharedAlbumMessage(_:), v179);
    sub_10009FC10();
    sub_1000A0760();
    v151 = sub_1000A0790();
    sub_10009F380();
    sub_100005568(v175, v174);

    (*(v148 + 8))(v146, v150);
    (*(v144 + 8))(v195, v187);
    sub_1000057C4(v199, &qword_1000D8358, &unk_1000A5C50);
    sub_1000057C4(v201, &qword_1000D8358, &unk_1000A5C50);
    sub_1000057C4(v198, &qword_1000D8BC8, &qword_1000A85F8);
    sub_1000057C4(v202, &qword_1000DA238, &unk_1000B1170);
    return sub_1000057C4(v200, &qword_1000D84A8, &unk_1000B0C40);
  }

  sub_100005568(v175, v174);

  sub_1000057C4(v139, &qword_1000D8358, &unk_1000A5C50);
  sub_1000057C4(v201, &qword_1000D8358, &unk_1000A5C50);
  sub_1000057C4(v198, &qword_1000D8BC8, &qword_1000A85F8);
  sub_1000057C4(v202, &qword_1000DA238, &unk_1000B1170);
  sub_1000057C4(v140, &qword_1000D84A8, &unk_1000B0C40);
LABEL_35:
  v87 = sub_1000A0770();
  v88 = sub_1000A0790();
  if (os_log_type_enabled(v88, v87))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v89 = 138412290;
    swift_errorRetain();
    v91 = _swift_stdlib_bridgeErrorToNSError();
    *(v89 + 4) = v91;
    *v90 = v91;
    _os_log_impl(&_mh_execute_header, v88, v87, "Error processing shared album message: %@", v89, 0xCu);
    sub_1000057C4(v90, &qword_1000D83A0, &unk_1000A5C70);
  }

  sub_1000A0530();
  sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion);
  swift_allocError();
  sub_1000A0520();
  swift_willThrow();
}

unint64_t sub_10007AB94(uint64_t a1)
{
  result = sub_10007ABBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10007ABBC()
{
  result = qword_1000DA230;
  if (!qword_1000DA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA230);
  }

  return result;
}

uint64_t sub_10007AC10(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10007AC68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v54 = a1;
  v51 = a2;
  v48 = sub_10009F7C0();
  v50 = *(v48 - 8);
  v2 = *(v50 + 64);
  __chkstk_darwin(v48);
  v49 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10009F9D0();
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  v12 = sub_1000017BC(&qword_1000DA2A8, &qword_1000B1240);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v43 - v14;
  v16 = sub_1000017BC(&qword_1000DA2B0, &qword_1000B1248);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v43 - v18;
  v20 = sub_10009FBF0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10009F270();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_10009F260();
  sub_10007B21C();
  v29 = v57;
  sub_10009F250();
  if (v29)
  {
  }

  v57 = v28;
  v46 = v9;
  v47 = v21;
  v54 = v20;
  v32 = v55;
  v31 = v56;
  sub_1000054CC(v55, v56);
  sub_10009FBE0();
  v33 = v24;
  v44 = v32;
  v45 = v31;
  sub_10009FBB0();
  v34 = sub_10009FBA0();
  LODWORD(v31) = (*(*(v34 - 8) + 48))(v19, 1, v34);
  sub_1000057C4(v19, &qword_1000DA2B0, &qword_1000B1248);
  if (v31 == 1 && (sub_10009FBD0(), v35 = sub_10009FBC0(), v36 = (*(*(v35 - 8) + 48))(v15, 1, v35), sub_1000057C4(v15, &qword_1000DA2A8, &qword_1000B1240), v36 == 1))
  {
    (*(v50 + 104))(v49, enum case for ClientMessageType.restricted(_:), v48);
    v11 = v46;
    sub_10009FA60();
    v37 = v52;
    v38 = v53;
    v39 = v47;
    v41 = &enum case for IDSClientMessageType.messageTypeRestricted(_:);
    v42 = v54;
  }

  else
  {
    v39 = v47;
    v40 = v24;
    v42 = v54;
    (*(v47 + 16))(v11, v40, v54);
    v41 = &enum case for IDSClientMessageType.legacyActivitySharing(_:);
    v37 = v52;
    v38 = v53;
  }

  (*(v38 + 104))(v11, *v41, v37);
  sub_10009FC10();

  sub_100005568(v44, v45);
  return (*(v39 + 8))(v33, v42);
}

unint64_t sub_10007B1A0(uint64_t a1)
{
  result = sub_10007B1C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10007B1C8()
{
  result = qword_1000DA2A0;
  if (!qword_1000DA2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA2A0);
  }

  return result;
}

unint64_t sub_10007B21C()
{
  result = qword_1000DA2B8;
  if (!qword_1000DA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA2B8);
  }

  return result;
}

uint64_t sub_10007B270()
{
  v1 = 0x6E6F436572616873;
  if (*v0 != 1)
  {
    v1 = 0x6B6F546572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C72556572616873;
  }
}

uint64_t sub_10007B2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10007CFF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007B30C(uint64_t a1)
{
  v2 = sub_10007B598();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007B348(uint64_t a1)
{
  v2 = sub_10007B598();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AccountsRepresentativeCloudShareInfoSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DA2C0, &unk_1000B1250);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10007B598();
  sub_1000A0CE0();
  LOBYTE(v19) = 0;
  sub_10009F2A0();
  sub_10007B9A4(&qword_1000DA2D0, &type metadata accessor for URL);
  sub_1000A0AD0();
  if (!v2)
  {
    v11 = type metadata accessor for AccountsRepresentativeCloudShareInfoSchema(0);
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v19) = 1;
    sub_1000A0A80();
    v15 = (v3 + *(v11 + 24));
    v16 = v15[1];
    v19 = *v15;
    v20 = v16;
    v18[15] = 2;
    sub_100005750(v19, v16);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v19, v20);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10007B598()
{
  result = qword_1000DA2C8;
  if (!qword_1000DA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA2C8);
  }

  return result;
}

uint64_t AccountsRepresentativeCloudShareInfoSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1000017BC(&qword_1000D8358, &unk_1000A5C50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_1000017BC(&qword_1000DA2D8, &qword_1000B1260);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for AccountsRepresentativeCloudShareInfoSchema(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10007B598();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v17 = v24;
  sub_10009F2A0();
  LOBYTE(v26) = 0;
  sub_10007B9A4(&qword_1000DA2E0, &type metadata accessor for URL);
  sub_1000A0970();
  sub_1000056E8(v7, v15, &qword_1000D8358, &unk_1000A5C50);
  LOBYTE(v26) = 1;
  v18 = sub_1000A0920();
  v19 = &v15[*(v12 + 20)];
  *v19 = v18;
  v19[1] = v20;
  v27 = 2;
  sub_100005424();
  sub_1000A0970();
  (*(v17 + 8))(v11, v25);
  *&v15[*(v12 + 24)] = v26;
  sub_10007C580(v15, v23, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema);
  sub_100002308(a1);
  return sub_10007C5E8(v15, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema);
}

uint64_t sub_10007B9A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10007B9EC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6E6F73616572;
    if (a1 != 8)
    {
      v5 = 2003790950;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD000000000000018;
    if (a1 == 5)
    {
      v6 = 0x657A696C616E6966;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701869940;
    v2 = 0x69636966656E6562;
    v3 = 0x6465747065636361;
    if (a1 != 3)
    {
      v3 = 0x666E496572616873;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6169646F74737563;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10007BB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10007D11C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007BBA8(uint64_t a1)
{
  v2 = sub_10007BF4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007BBE4(uint64_t a1)
{
  v2 = sub_10007BF4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AccountsRepresentativeMessageSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DA2E8, &qword_1000B1268);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32[-v8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10007BF4C();
  sub_1000A0CE0();
  v11 = *v3;
  v12 = *(v3 + 8);
  v32[15] = 0;
  sub_1000A0AB0();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v32[14] = 1;
    sub_1000A0A80();
    v15 = v3[4];
    v16 = v3[5];
    v32[13] = 2;
    sub_1000A0A80();
    v17 = *(v3 + 48);
    v32[12] = 3;
    sub_1000A0A90();
    v18 = type metadata accessor for AccountsRepresentativeMessageSchema(0);
    v19 = v18[8];
    v32[11] = 4;
    type metadata accessor for AccountsRepresentativeCloudShareInfoSchema(0);
    sub_10007B9A4(&qword_1000DA2F8, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema);
    sub_1000A0AD0();
    v20 = *(v3 + v18[9]);
    v32[10] = 5;
    sub_1000A0A90();
    v21 = *(v3 + v18[10]);
    v32[9] = 6;
    sub_1000A0A90();
    v22 = (v3 + v18[11]);
    v23 = *v22;
    v24 = v22[1];
    v32[8] = 7;
    sub_1000A0A80();
    v25 = (v3 + v18[12]);
    v26 = *v25;
    v27 = *(v25 + 8);
    v32[7] = 8;
    sub_1000A0AB0();
    v28 = (v3 + v18[13]);
    v29 = *v28;
    v30 = *(v28 + 8);
    v32[6] = 9;
    sub_1000A0AB0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10007BF4C()
{
  result = qword_1000DA2F0;
  if (!qword_1000DA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA2F0);
  }

  return result;
}

uint64_t AccountsRepresentativeMessageSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_1000017BC(&qword_1000D8360, &qword_1000B1270);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v34 - v6;
  v37 = sub_1000017BC(&qword_1000DA300, &qword_1000B1278);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v11 = &v34 - v10;
  v12 = type metadata accessor for AccountsRepresentativeMessageSchema(0);
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v38 = a1;
  sub_1000022C4(a1, v17);
  sub_10007BF4C();
  v36 = v11;
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(v38);
  }

  v18 = v8;
  v48 = 0;
  *v15 = sub_1000A0950();
  v15[8] = v19 & 1;
  v47 = 1;
  *(v15 + 2) = sub_1000A0920();
  *(v15 + 3) = v20;
  v46 = 2;
  *(v15 + 4) = sub_1000A0920();
  *(v15 + 5) = v21;
  v45 = 3;
  v22 = sub_1000A0930();
  v34 = 0;
  v15[48] = v22;
  type metadata accessor for AccountsRepresentativeCloudShareInfoSchema(0);
  v44 = 4;
  sub_10007B9A4(&qword_1000DA308, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema);
  sub_1000A0970();
  sub_1000056E8(v7, &v15[v12[8]], &qword_1000D8360, &qword_1000B1270);
  v43 = 5;
  v15[v12[9]] = sub_1000A0930();
  v42 = 6;
  v15[v12[10]] = sub_1000A0930();
  v41 = 7;
  v23 = sub_1000A0920();
  v24 = &v15[v12[11]];
  *v24 = v23;
  v24[1] = v25;
  v40 = 8;
  v26 = sub_1000A0950();
  v27 = &v15[v12[12]];
  *v27 = v26;
  v27[8] = v28 & 1;
  v39 = 9;
  v29 = sub_1000A0950();
  v31 = v30;
  (*(v18 + 8))(v36, v37);
  v32 = &v15[v12[13]];
  *v32 = v29;
  v32[8] = v31 & 1;
  sub_10007C580(v15, v35, type metadata accessor for AccountsRepresentativeMessageSchema);
  sub_100002308(v38);
  return sub_10007C5E8(v15, type metadata accessor for AccountsRepresentativeMessageSchema);
}

uint64_t sub_10007C580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007C5E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007C68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000017BC(&qword_1000D8358, &unk_1000A5C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10007C778(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000017BC(&qword_1000D8358, &unk_1000A5C50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_10007C840()
{
  sub_10007CC30(319, &unk_1000DA378, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    sub_10007CBE4(319, &qword_1000D92B8);
    if (v1 <= 0x3F)
    {
      sub_10007CBE4(319, &qword_1000D86B8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10007C92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000017BC(&qword_1000D8360, &qword_1000B1270);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10007CA08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_1000017BC(&qword_1000D8360, &qword_1000B1270);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10007CAB8()
{
  sub_10007CBE4(319, &qword_1000D8530);
  if (v0 <= 0x3F)
  {
    sub_10007CBE4(319, &qword_1000D92B8);
    if (v1 <= 0x3F)
    {
      sub_10007CBE4(319, &qword_1000DA418);
      if (v2 <= 0x3F)
      {
        sub_10007CC30(319, &unk_1000DA420, type metadata accessor for AccountsRepresentativeCloudShareInfoSchema);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10007CBE4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000A07A0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10007CC30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000A07A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AccountsRepresentativeMessageSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountsRepresentativeMessageSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10007CDE8()
{
  result = qword_1000DA470;
  if (!qword_1000DA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA470);
  }

  return result;
}

unint64_t sub_10007CE40()
{
  result = qword_1000DA478;
  if (!qword_1000DA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA478);
  }

  return result;
}

unint64_t sub_10007CE98()
{
  result = qword_1000DA480;
  if (!qword_1000DA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA480);
  }

  return result;
}

unint64_t sub_10007CEF0()
{
  result = qword_1000DA488;
  if (!qword_1000DA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA488);
  }

  return result;
}

unint64_t sub_10007CF48()
{
  result = qword_1000DA490;
  if (!qword_1000DA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA490);
  }

  return result;
}

unint64_t sub_10007CFA0()
{
  result = qword_1000DA498;
  if (!qword_1000DA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA498);
  }

  return result;
}

uint64_t sub_10007CFF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72556572616873 && a2 == 0xE800000000000000;
  if (v4 || (sub_1000A0BD0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F436572616873 && a2 == 0xEE0072656E696174 || (sub_1000A0BD0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6F546572616873 && a2 == 0xEE00617461446E65)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000A0BD0();

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

uint64_t sub_10007D11C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000A0BD0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (sub_1000A0BD0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69636966656E6562 && a2 == 0xED00004449797261 || (sub_1000A0BD0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000 || (sub_1000A0BD0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x666E496572616873 && a2 == 0xE90000000000006FLL || (sub_1000A0BD0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657A696C616E6966 && a2 == 0xED00007075746553 || (sub_1000A0BD0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000A3800 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000A3820 == a2 || (sub_1000A0BD0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (sub_1000A0BD0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 2003790950 && a2 == 0xE400000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1000A0BD0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t sub_10007D480()
{
  result = qword_1000DA4A0;
  if (!qword_1000DA4A0)
  {
    sub_10009F900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4A0);
  }

  return result;
}

uint64_t sub_10007D4D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10009F270();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_10007D6D8();
  sub_10009F250();
  if (v1)
  {
  }

  v20 = a1;

  v7[8] = v17;
  v7[9] = v18;
  v8 = v19;
  v7[4] = v13;
  v7[5] = v14;
  v7[6] = v15;
  v7[7] = v16;
  v7[0] = v9;
  v7[1] = v10;
  v7[2] = v11;
  v7[3] = v12;
  sub_100005750(*(&v10 + 1), v11);
  sub_100005750(*(&v13 + 1), v14);

  sub_100005750(v17, *(&v17 + 1));
  sub_10009F8F0();
  return sub_100041728(v7);
}

unint64_t sub_10007D6D8()
{
  result = qword_1000DA4A8;
  if (!qword_1000DA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4A8);
  }

  return result;
}

Swift::Int sub_10007D72C()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

Swift::Int sub_10007D7A0()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

uint64_t sub_10007D7F4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CD8E0;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10007D884@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CD918;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10007D8DC(uint64_t a1)
{
  v2 = sub_10007DA94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007D918(uint64_t a1)
{
  v2 = sub_10007DA94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SharedETASessionSchema.encode(to:)(void *a1)
{
  v2 = sub_1000017BC(&qword_1000DA4B0, &qword_1000B15F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10007DA94();
  sub_1000A0CE0();
  sub_1000A0B30();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_10007DA94()
{
  result = qword_1000DA4B8;
  if (!qword_1000DA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4B8);
  }

  return result;
}

uint64_t SharedETASessionSchema.init(from:)(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000DA4C0, &qword_1000B15F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_1000022C4(a1, a1[3]);
  sub_10007DA94();
  sub_1000A0CD0();
  if (!v1)
  {
    v9 = sub_1000A09D0();
    (*(v4 + 8))(v7, v3);
  }

  sub_100002308(a1);
  return v9;
}

uint64_t sub_10007DC44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000DA4C0, &qword_1000B15F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10007DA94();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v11 = sub_1000A09D0();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_100002308(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_10007DDC0(void *a1)
{
  v3 = sub_1000017BC(&qword_1000DA4B0, &qword_1000B15F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10007DA94();
  sub_1000A0CE0();
  sub_1000A0B30();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_10007DF20()
{
  result = qword_1000DA4C8;
  if (!qword_1000DA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4C8);
  }

  return result;
}

unint64_t sub_10007DF78()
{
  result = qword_1000DA4D0;
  if (!qword_1000DA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4D0);
  }

  return result;
}

unint64_t sub_10007DFD0()
{
  result = qword_1000DA4D8;
  if (!qword_1000DA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4D8);
  }

  return result;
}

Swift::Int sub_10007E030()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10007E144()
{
  *v0;
  *v0;
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_10007E244()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10007E354@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10007E8A8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10007E384(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0079654B726562;
  v4 = 0x6D754E6B6E756863;
  v5 = 0x80000001000A2560;
  v6 = 0xD000000000000011;
  v7 = 0xEF79654B44497075;
  v8 = 0x6F72476B6E756863;
  if (v2 != 3)
  {
    v8 = 0x7461446B6E756863;
    v7 = 0xEC00000079654B61;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x646E496B6E756863;
    v3 = 0xED000079654B7865;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_10007E454()
{
  v1 = *v0;
  v2 = 0x6D754E6B6E756863;
  v3 = 0xD000000000000011;
  v4 = 0x6F72476B6E756863;
  if (v1 != 3)
  {
    v4 = 0x7461446B6E756863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x646E496B6E756863;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10007E520@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10007E8A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007E548(uint64_t a1)
{
  v2 = sub_10007E7F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007E584(uint64_t a1)
{
  v2 = sub_10007E7F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SharedETATripSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DA4E0, &qword_1000B17E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8 - 8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10007E7F8();
  sub_1000A0CE0();
  v11 = *v3;
  LOBYTE(v20) = 0;
  sub_1000A0B70();
  if (!v2)
  {
    v12 = v3[1];
    LOBYTE(v20) = 1;
    sub_1000A0B70();
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v20) = 2;
    sub_1000A0B30();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v20) = 3;
    sub_1000A0B30();
    v20 = *(v3 + 3);
    v21 = v20;
    v19[23] = 4;
    sub_1000421FC(&v21, v19);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v20, *(&v20 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10007E7F8()
{
  result = qword_1000DA4E8;
  if (!qword_1000DA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4E8);
  }

  return result;
}

double SharedETATripSchema.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10007E8F4(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_10007E8A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD950;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10007E8F4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000DA508, &unk_1000B1A30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10007E7F8();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v30[0]) = 0;
  v11 = sub_1000A0A10();
  LOBYTE(v30[0]) = 1;
  v12 = sub_1000A0A10();
  LOBYTE(v30[0]) = 2;
  *&v25 = sub_1000A09D0();
  *(&v25 + 1) = v13;
  LOBYTE(v30[0]) = 3;
  v14 = sub_1000A09D0();
  *(&v24 + 1) = v15;
  *&v24 = v14;
  v36 = 4;
  sub_100005424();
  sub_1000A0A20();
  (*(v6 + 8))(v9, v5);
  v22 = *(&v35 + 1);
  v23 = v35;
  *&v26 = v11;
  *(&v26 + 1) = v12;
  v16 = v25;
  v27 = v25;
  v17 = v24;
  v28 = v24;
  v29 = v35;
  sub_10007EDCC(&v26, v30);
  sub_100002308(a1);
  v30[0] = v11;
  v30[1] = v12;
  v31 = v16;
  v32 = v17;
  v33 = v23;
  v34 = v22;
  result = sub_100063CD0(v30);
  v19 = v27;
  *a2 = v26;
  a2[1] = v19;
  v20 = v29;
  a2[2] = v28;
  a2[3] = v20;
  return result;
}

uint64_t sub_10007EC0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007EC54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10007ECC8()
{
  result = qword_1000DA4F0;
  if (!qword_1000DA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4F0);
  }

  return result;
}

unint64_t sub_10007ED20()
{
  result = qword_1000DA4F8;
  if (!qword_1000DA4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA4F8);
  }

  return result;
}

unint64_t sub_10007ED78()
{
  result = qword_1000DA500;
  if (!qword_1000DA500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA500);
  }

  return result;
}

uint64_t sub_10007EE14@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a1;
  v62 = a2;
  v60 = a4;
  v5 = sub_10009FAC0();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  __chkstk_darwin(v5);
  v55 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009F6D0();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  __chkstk_darwin(v8);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10009F8E0();
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10009F7E0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10009F9D0();
  v56 = *(v20 - 8);
  v57 = v20;
  v21 = *(v56 + 64);
  __chkstk_darwin(v20);
  v58 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10009F720();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = &v49 - v27;
  if (a3 <= 209)
  {
    v55 = v11;
    v35 = v59;
    switch(a3)
    {
      case 207:
        v39 = v63;
        result = sub_100080894(v61, v62, &v49 - v27);
        if (!v39)
        {
          v40 = v58;
          (*(v24 + 16))(v58, v28, v23);
          (*(v56 + 104))(v40, enum case for IDSClientMessageType.groupSessionJoin(_:), v57);
          sub_10009FC10();
          return (*(v24 + 8))(v28, v23);
        }

        break;
      case 208:
        v47 = v63;
        result = sub_100081104(v62, v19);
        if (!v47)
        {
          v48 = v58;
          (*(v16 + 16))(v58, v19, v15);
          (*(v56 + 104))(v48, enum case for IDSClientMessageType.groupSessionLeave(_:), v57);
          sub_10009FC10();
          return (*(v16 + 8))(v19, v15);
        }

        break;
      case 209:
        v36 = v63;
        result = sub_10008242C(v61, v62, v14);
        if (!v36)
        {
          v37 = v58;
          v38 = v55;
          (*(v35 + 16))(v58, v14, v55);
          (*(v56 + 104))(v37, enum case for IDSClientMessageType.groupSessionUpdate(_:), v57);
          sub_10009FC10();
          return (*(v35 + 8))(v14, v38);
        }

        break;
      default:
        goto LABEL_17;
    }
  }

  else
  {
    if (a3 <= 237)
    {
      if (a3 == 210)
      {
        return sub_10007F4A4(v60);
      }

      if (a3 == 211)
      {
        v29 = v54;
        v30 = v63;
        result = sub_1000817E8(v61, v62, v54);
        if (!v30)
        {
          v33 = v50;
          v32 = v51;
          v34 = v58;
          (*(v50 + 16))(v58, v29, v51);
          (*(v56 + 104))(v34, enum case for IDSClientMessageType.groupSessionMKM(_:), v57);
          sub_10009FC10();
          return (*(v33 + 8))(v29, v32);
        }

        return result;
      }

LABEL_17:
      sub_1000021F4();
      swift_allocError();
      *v41 = a3;
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
      return swift_willThrow();
    }

    if (a3 != 238)
    {
      if (a3 == 242)
      {
        return sub_10007F790(v60);
      }

      goto LABEL_17;
    }

    v42 = v55;
    v43 = v63;
    result = sub_10007276C();
    if (!v43)
    {
      v45 = v52;
      v44 = v53;
      v46 = v58;
      (*(v52 + 16))(v58, v42, v53);
      (*(v56 + 104))(v46, enum case for IDSClientMessageType.sessionReinitiate(_:), v57);
      sub_10009FC10();
      return (*(v45 + 8))(v42, v44);
    }
  }

  return result;
}

uint64_t sub_10007F4A4@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_10009F9D0();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009F8C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v31 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10009F270();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_10007FBB8();
  sub_10009F250();
  if (v1)
  {
  }

  v19 = v7;
  v20 = v6;
  v21 = v5;
  v22 = v2;
  *v27 = *&v27[9];
  *&v27[2] = v28;
  *&v27[4] = v29;
  *&v27[6] = v30;
  v14 = v28;
  v24 = BYTE8(v29);
  v23 = v30;

  sub_1000054CC(v14, *(&v14 + 1));

  v15 = v31;
  sub_10009F8B0();
  sub_10007FC0C(v27);

  v16 = v19;
  v17 = v21;
  v18 = v20;
  (*(v19 + 16))(v21, v15, v20);
  (*(v25 + 104))(v17, enum case for IDSClientMessageType.groupSessionPrekey(_:), v22);
  sub_10009FC10();
  return (*(v16 + 8))(v15, v18);
}

uint64_t sub_10007F790@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_10009F9D0();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009FCB0();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10009F270();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_1000017BC(&qword_1000D8370, &unk_1000AA060);
  sub_100005350();
  sub_10009F250();

  if (!v1)
  {
    v14 = v28;
    v15 = sub_10009FD00();
    if (*(v14 + 16))
    {
      v17 = sub_10000217C(v15, v16);
      v19 = v18;

      if (v19)
      {
        v20 = (*(v14 + 56) + 16 * v17);
        v21 = *v20;
        v22 = v20[1];
        sub_1000054CC(*v20, v22);

        sub_1000054CC(v21, v22);
        sub_10009FCA0();
        v23 = v25;
        (*(v25 + 16))(v5, v9, v6);
        (*(v26 + 104))(v5, enum case for IDSClientMessageType.conversationMessage(_:), v2);
        sub_10009FC10();
        sub_100005568(v21, v22);
        return (*(v23 + 8))(v9, v6);
      }
    }

    else
    {
    }

    sub_1000A0530();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion);
    swift_allocError();
    sub_1000A0520();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_10007FB3C(uint64_t a1)
{
  result = sub_10007FB64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10007FB64()
{
  result = qword_1000DA510;
  if (!qword_1000DA510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA510);
  }

  return result;
}

unint64_t sub_10007FBB8()
{
  result = qword_1000DA518;
  if (!qword_1000DA518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA518);
  }

  return result;
}

uint64_t sub_10007FC60()
{
  v1 = sub_1000017BC(&qword_1000D8630, &qword_1000A6C68);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v19 - v3;
  v5 = type metadata accessor for IDSSessionCancelSchema();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10009F270();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_10007FE28();
  sub_10009F250();
  if (!v0)
  {
    v12 = v8[1];
    v19[3] = *v8;
    v13 = v8[2];
    v19[0] = v8[3];
    v19[1] = v12;
    v14 = v8[4];
    sub_10007FE80(v8 + *(v5 + 28), v4);
    v15 = (v8 + *(v5 + 32));
    v17 = *v15;
    v16 = v15[1];

    sub_100005750(v17, v16);
    sub_10009F780();
    sub_100029CDC(v8);
  }
}

unint64_t sub_10007FE28()
{
  result = qword_1000DA520;
  if (!qword_1000DA520)
  {
    type metadata accessor for IDSSessionCancelSchema();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA520);
  }

  return result;
}

uint64_t sub_10007FE80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D8630, &qword_1000A6C68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007FF48@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v48 = a1;
  v47 = a2;
  v44 = sub_10009F9D0();
  v46 = *(v44 - 8);
  v2 = *(v46 + 64);
  __chkstk_darwin(v44);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000017BC(&qword_1000D9E38, &qword_1000B0130);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v36 - v7;
  v9 = sub_10009F4D0();
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10009FE40();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10009F270();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_10006B130();
  v21 = v49;
  result = sub_10009F250();
  if (v21)
  {
  }

  v48 = v8;
  v49 = v13;
  v42 = v12;
  v43 = v17;
  v41 = v9;
  v23 = v51;
  if (v51 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v24 = v50;
    v55 = v52;
    v25 = v53;
    v26 = v54;
    sub_1000054CC(v50, v51);
    sub_1000807F8();
    sub_10009F250();
    v27 = v14;
    v39 = v25;
    v40 = v26;
    sub_1000057B0(v24, v23);
    v28 = v43;
    sub_10009FE30();
    v37 = v4;
    v29 = v48;
    (*(v27 + 16))(v48, v28, v49);
    v38 = enum case for IDSClientProtobufMessageType.sampleProtobufMessage(_:);
    v30 = sub_1000A00F0();
    v31 = *(v30 - 8);
    (*(v31 + 104))(v29, v38, v30);
    (*(v31 + 56))(v29, 0, 1, v30);
    v32 = v42;
    sub_10009F4C0();
    v33 = v45;
    v34 = v37;
    v35 = v41;
    (*(v45 + 16))(v37, v32, v41);
    (*(v46 + 104))(v34, enum case for IDSClientMessageType.idsProtobufMessage(_:), v44);
    sub_10009FC10();

    sub_1000057B0(v24, v23);
    (*(v33 + 8))(v42, v35);
    return (*(v27 + 8))(v43, v49);
  }

  return result;
}

uint64_t sub_100080408@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v36 = a2;
  v37 = a1;
  v2 = sub_10009F9D0();
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - v8;
  v10 = sub_10009F740();
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IDSSampleMessageSchema();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_10009F270();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_10008084C(&qword_1000DA538, type metadata accessor for IDSSampleMessageSchema);
  v21 = v38;
  sub_10009F250();
  if (v21)
  {
  }

  v33 = v10;
  v37 = v5;
  v38 = v2;
  v22 = *v17;
  v23 = v17[1];
  v24 = v17[2];
  sub_10003FEF4(v17 + *(v14 + 24), v9);
  v25 = v17 + *(v14 + 28);
  v26 = *v25;
  v27 = v25[8];

  sub_10009F730();
  v28 = v33;
  v29 = v34;
  v30 = v37;
  (*(v34 + 16))(v37, v13, v33);
  (*(v35 + 104))(v30, enum case for IDSClientMessageType.idsSampleMessage(_:), v38);
  sub_10009FC10();

  (*(v29 + 8))(v13, v28);
  return sub_10000D4A4(v17);
}

unint64_t sub_10008077C(uint64_t a1)
{
  result = sub_1000807A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000807A4()
{
  result = qword_1000DA528;
  if (!qword_1000DA528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA528);
  }

  return result;
}

unint64_t sub_1000807F8()
{
  result = qword_1000DA530;
  if (!qword_1000DA530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA530);
  }

  return result;
}

uint64_t sub_10008084C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100080894@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a2;
  v80 = a1;
  v73 = a3;
  v4 = sub_1000017BC(&qword_1000DA550, &qword_1000B1D30);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v72 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v74 = v59 - v9;
  __chkstk_darwin(v8);
  v78 = v59 - v10;
  v11 = sub_10009FCD0();
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = *(v76 + 64);
  v13 = __chkstk_darwin(v11);
  v75 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v59 - v15;
  v17 = sub_1000017BC(&qword_1000DA558, &qword_1000B1D38);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v59 - v19;
  v21 = sub_1000A02B0();
  v79 = *(v21 - 8);
  v22 = *(v79 + 64);
  v23 = __chkstk_darwin(v21);
  v25 = v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = v59 - v27;
  __chkstk_darwin(v26);
  v30 = v59 - v29;
  v31 = sub_10009F270();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_10009F260();
  sub_100083CF0();
  sub_10009F250();
  if (v3)
  {
  }

  v71 = v28;
  v69 = v25;
  v103 = v34;
  v80 = v30;
  v70 = v16;
  v89 = v99;
  v90 = v100;
  v91 = v101;
  v92 = v102;
  v85 = v95;
  v86 = v96;
  v87 = v97;
  v88 = v98;
  v83 = v93;
  v84 = v94;
  sub_1000A02A0();
  v36 = v79;
  if ((*(v79 + 48))(v20, 1, v21) == 1)
  {
    sub_1000057C4(v20, &qword_1000DA558, &qword_1000B1D38);
LABEL_8:
    sub_100083D44();
    swift_allocError();
    *v41 = 0;
    swift_willThrow();
    sub_100083D98(&v83);
  }

  v37 = v80;
  (*(v36 + 32))(v80, v20, v21);
  v38 = v71;
  (*(v36 + 104))(v71, enum case for GroupSessionParticipantUpdateType.Join(_:), v21);
  sub_100083DEC();
  sub_1000A06A0();
  sub_1000A06A0();
  v39 = *(v36 + 8);
  v39(v38, v21);
  if (v82 != v81)
  {
    v39(v37, v21);
    goto LABEL_8;
  }

  v40 = v70;
  sub_100082E50();
  v68 = v39;
  v71 = 0;
  v42 = sub_1000A0450();
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v45 = v43 + 56;
  v44(v78, 1, 1, v42);
  if (v90 >> 60 == 15)
  {
    v67 = v21;
  }

  else
  {
    v65 = v45;
    v66 = v44;
    sub_1000054CC(*(&v89 + 1), v90);
    v46 = v74;
    v47 = v71;
    sub_1000A0440();
    v71 = v47;
    if (v47)
    {

      sub_100083D98(&v83);
      sub_1000057C4(v78, &qword_1000DA550, &qword_1000B1D30);
      (*(v76 + 8))(v40, v77);
      return v68(v80, v21);
    }

    v67 = v21;
    v48 = v78;
    sub_1000057C4(v78, &qword_1000DA550, &qword_1000B1D30);
    v66(v46, 0, 1, v42);
    sub_1000056E8(v46, v48, &qword_1000DA550, &qword_1000B1D30);
  }

  v49 = v89;
  v50 = v76;
  v51 = v77;
  v52 = v75;
  if (v89 && (v53 = *(&v84 + 1), , v54 = sub_100082FB4(v53, v49), , (v54 & 1) == 0))
  {
    sub_100083D44();
    swift_allocError();
    *v58 = 0;
    swift_willThrow();

    sub_100083D98(&v83);
    sub_1000057C4(v78, &qword_1000DA550, &qword_1000B1D30);
    (*(v50 + 8))(v70, v51);
  }

  else
  {
    (*(v79 + 16))(v69, v80, v67);
    v79 = *(&v83 + 1);
    v74 = v85;
    LODWORD(v66) = v86;
    v64 = *(&v86 + 1);
    v63 = v87;
    v61 = *(&v85 + 1);
    v62 = *(&v87 + 1);
    v55 = *(v50 + 16);
    LODWORD(v65) = BYTE1(v86);
    v55(v52, v70, v51);
    sub_100005620(v78, v72, &qword_1000DA550, &qword_1000B1D30);
    v56 = *(&v90 + 1);
    v60 = *(&v91 + 1);
    v57 = v91;
    v59[1] = v92;

    sub_100005750(v56, v57);
    sub_10009F710();

    sub_100083D98(&v83);
    sub_1000057C4(v78, &qword_1000DA550, &qword_1000B1D30);
    (*(v76 + 8))(v70, v77);
  }

  return v68(v80, v67);
}

uint64_t sub_100081104@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v51 = a1;
  v48 = a2;
  v2 = sub_1000017BC(&qword_1000DA590, &qword_1000B1D50);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v49 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = v42 - v7;
  __chkstk_darwin(v6);
  v10 = v42 - v9;
  v11 = sub_1000017BC(&qword_1000DA558, &qword_1000B1D38);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v42 - v13;
  v15 = sub_1000A02B0();
  v50 = *(v15 - 8);
  v16 = *(v50 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v42 - v21;
  __chkstk_darwin(v20);
  v24 = v42 - v23;
  v25 = sub_10009F270();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_10009F260();
  sub_100085030();
  v29 = v52;
  sub_10009F250();
  if (v29)
  {
  }

  v51 = v8;
  v52 = v19;
  v47 = v10;
  v56 = v61;
  v57 = v62;
  *v58 = *v63;
  *&v58[9] = *&v63[9];
  v54 = v59;
  v55 = v60;
  sub_1000A02A0();
  v30 = v50;
  if ((*(v50 + 48))(v14, 1, v15) != 1)
  {
    v45 = 0;
    v46 = v28;
    v31 = v24;
    (*(v30 + 32))(v24, v14, v15);
    (*(v30 + 104))(v22, enum case for GroupSessionParticipantUpdateType.Leave(_:), v15);
    sub_100083DEC();
    sub_1000A06A0();
    sub_1000A06A0();
    v32 = *(v30 + 8);
    v32(v22, v15);
    if (v64 != v53)
    {
      v32(v24, v15);
      goto LABEL_8;
    }

    v44 = v32;
    v33 = sub_1000A0490();
    v34 = *(*(v33 - 8) + 56);
    v35 = v47;
    v34(v47, 1, 1, v33);
    if (v55 >> 60 == 15)
    {
      v36 = v49;
    }

    else
    {
      v43 = v34;
      sub_1000054CC(*(&v54 + 1), v55);
      v39 = v51;
      v40 = v45;
      sub_1000A0480();
      v36 = v49;
      if (v40)
      {

        sub_100085084(&v54);
        sub_1000057C4(v47, &qword_1000DA590, &qword_1000B1D50);
        v41 = v31;
        return v44(v41, v15);
      }

      v45 = 0;
      v35 = v47;
      sub_1000057C4(v47, &qword_1000DA590, &qword_1000B1D50);
      v43(v39, 0, 1, v33);
      sub_1000056E8(v39, v35, &qword_1000DA590, &qword_1000B1D50);
    }

    (*(v50 + 16))(v52, v31, v15);
    sub_100005620(v35, v36, &qword_1000DA590, &qword_1000B1D50);
    v50 = *(&v55 + 1);
    v49 = *(&v56 + 1);
    v43 = *v58;
    v42[1] = v58[8];
    v51 = v31;

    sub_10009F7D0();

    sub_100085084(&v54);
    sub_1000057C4(v47, &qword_1000DA590, &qword_1000B1D50);
    v41 = v51;
    return v44(v41, v15);
  }

  sub_1000057C4(v14, &qword_1000DA558, &qword_1000B1D38);
LABEL_8:
  sub_100083D44();
  swift_allocError();
  *v37 = 1;
  swift_willThrow();
  sub_100085084(&v54);
}

size_t sub_1000817E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v153 = a2;
  v127 = a1;
  v104 = a3;
  v5 = sub_1000017BC(&qword_1000DA5A8, &qword_1000B1D58);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v103 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v111 = v91 - v10;
  v11 = __chkstk_darwin(v9);
  v100 = v91 - v12;
  v13 = __chkstk_darwin(v11);
  v110 = v91 - v14;
  v15 = __chkstk_darwin(v13);
  v106 = v91 - v16;
  __chkstk_darwin(v15);
  v113 = v91 - v17;
  v18 = sub_10009F4E0();
  v124 = *(v18 - 8);
  v125 = v18;
  v19 = *(v124 + 64);
  v20 = __chkstk_darwin(v18);
  v117 = v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v91 - v22;
  v24 = sub_10009F500();
  v126 = *(v24 - 8);
  v25 = *(v126 + 64);
  v26 = __chkstk_darwin(v24);
  v28 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v31 = v91 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = v91 - v33;
  __chkstk_darwin(v32);
  v36 = v91 - v35;
  v37 = sub_10009F270();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = sub_10009F260();
  sub_100085180();
  sub_10009F250();
  if (v3)
  {
  }

  v108 = v36;
  v109 = v34;
  v96 = v31;
  v97 = v23;
  v107 = v28;
  v116 = v24;
  v98 = v40;
  memcpy(v147, v148, 0x14BuLL);
  if (!*&v147[2])
  {
    v127 = 0;
    v44 = v111;
    v80 = v116;
    v46 = v126;
    goto LABEL_29;
  }

  v42 = *(*&v147[2] + 16);
  v43 = _swiftEmptyArrayStorage;
  v44 = v111;
  v45 = v116;
  v46 = v126;
  if (!v42)
  {
    v80 = v116;
    goto LABEL_28;
  }

  *&v129[0] = _swiftEmptyArrayStorage;
  v112 = *&v147[2];

  result = sub_100084804(0, v42, 0);
  v47 = v112;
  if (!*(v112 + 16))
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v48 = 0;
  v127 = *&v129[0];
  v95 = enum case for KeyMaterial.MaterialType.MKM(_:);
  v105 = (v124 + 104);
  v102 = (v46 + 32);
  v99 = enum case for KeyMaterial.MaterialType.SKM(_:);
  v101 = v42 - 1;
  v49 = 32;
  while (1)
  {
    v153 = v4;
    v139 = *(v47 + v49);
    v50 = *(v47 + v49 + 16);
    v51 = *(v47 + v49 + 32);
    v52 = *(v47 + v49 + 64);
    v142 = *(v47 + v49 + 48);
    v143 = v52;
    v140 = v50;
    v141 = v51;
    v53 = *(v47 + v49 + 80);
    v54 = *(v47 + v49 + 96);
    v55 = *(v47 + v49 + 112);
    *(v146 + 11) = *(v47 + v49 + 123);
    v56 = *(v146 + 11);
    v145 = v54;
    v146[0] = v55;
    v144 = v53;
    v57 = *(&v139 + 1);
    v118 = v49;
    v119 = v48;
    v124 = v55;
    v123 = BYTE8(v55);
    v122 = v56 >> 40;
    v120 = BYTE14(v56);
    v121 = BYTE13(v56);
    if (*(&v139 + 1) >> 60 != 15)
    {
      v58 = *(&v140 + 1);
      if (*(&v140 + 1) >> 60 != 15)
      {
        v59 = *(&v141 + 1);
        if (*(&v141 + 1) >> 60 != 15)
        {
          v76 = v139;
          v92 = v141;
          v93 = v139;
          v114 = v142;
          v115 = v140;
          v94 = BYTE4(v142);
          v77 = *v105;
          v91[1] = HIBYTE(v56);
          v77(v97, v95, v125);
          sub_100085248(&v139, &v131);
          sub_100005750(v76, v57);
          sub_100005750(v115, v58);
          sub_100005750(v92, v59);
          LOBYTE(v131) = v94;
          v78 = v96;
          v79 = v153;
          sub_10009F4F0();
          if (!v79)
          {
            v153 = 0;
            v66 = v78;
            v68 = v45;
            goto LABEL_15;
          }

LABEL_25:
          sub_1000852F8(&v139);
LABEL_26:

          sub_1000851F4(v147);
        }
      }
    }

    v60 = v143;
    if (v143 >> 60 == 15 || (v61 = v144, v144 >> 60 == 15) || (v62 = v145, v145 >> 60 == 15))
    {
      sub_1000852A4();
      swift_allocError();
      swift_willThrow();
      goto LABEL_26;
    }

    v63 = *(&v142 + 1);
    v64 = *(&v143 + 1);
    v65 = *(&v144 + 1);
    v115 = DWORD2(v145);
    LODWORD(v114) = BYTE12(v145);
    (*v105)(v117, v99, v125);
    sub_100085248(&v139, &v131);
    sub_100005750(v63, v60);
    sub_100005750(v64, v61);
    sub_100005750(v65, v62);
    LOBYTE(v131) = v114;
    v66 = v107;
    v67 = v153;
    sub_10009F4F0();
    if (v67)
    {
      goto LABEL_25;
    }

    v153 = 0;
    v68 = v116;
LABEL_15:
    v69 = v127;
    sub_1000852F8(&v139);
    v70 = *v102;
    v71 = v109;
    (*v102)(v109, v66, v68);
    v72 = v108;
    v70(v108, v71, v68);
    *&v129[0] = v69;
    v74 = v69[2];
    v73 = v69[3];
    if (v74 >= v73 >> 1)
    {
      sub_100084804(v73 > 1, v74 + 1, 1);
      v69 = *&v129[0];
    }

    v69[2] = v74 + 1;
    v75 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v127 = v69;
    result = (v70)(v69 + v75 + *(v126 + 72) * v74, v72, v68);
    if (v101 == v119)
    {
      break;
    }

    v45 = v68;
    v47 = v112;
    v49 = v118 + 144;
    v48 = v119 + 1;
    v4 = v153;
    if ((v119 + 1) >= *(v112 + 16))
    {
      goto LABEL_41;
    }
  }

  v80 = v68;
  v44 = v111;
  v46 = v126;
  v43 = v127;
  v4 = v153;
LABEL_28:
  v127 = v43;
LABEL_29:
  v81 = *(v46 + 56);
  v81(v113, 1, 1, v80);
  v145 = v147[9];
  v146[0] = v147[10];
  *(v146 + 11) = *(&v147[10] + 11);
  v141 = v147[5];
  v142 = v147[6];
  v143 = v147[7];
  v144 = v147[8];
  v139 = v147[3];
  v140 = v147[4];
  if (sub_1000851D4(&v139) == 1)
  {
    v82 = v116;
    goto LABEL_34;
  }

  v151[5] = v144;
  v151[6] = v145;
  v152[0] = v146[0];
  *(v152 + 11) = *(v146 + 11);
  v151[2] = v141;
  v151[3] = v142;
  v151[4] = v143;
  v151[0] = v139;
  v151[1] = v140;
  v136 = v147[8];
  v137 = v147[9];
  v138[0] = v147[10];
  *(v138 + 11) = *(&v147[10] + 11);
  v133 = v147[5];
  v134 = v147[6];
  v135 = v147[7];
  v131 = v147[3];
  v132 = v147[4];
  sub_100085248(&v131, v129);
  v83 = v106;
  sub_100083584(v151, v106);
  if (v4)
  {
    sub_1000057C4(v113, &qword_1000DA5A8, &qword_1000B1D58);

    return sub_1000851F4(v147);
  }

  v84 = v113;
  sub_1000057C4(v113, &qword_1000DA5A8, &qword_1000B1D58);
  v85 = v116;
  v81(v83, 0, 1, v116);
  v86 = v84;
  v4 = 0;
  v44 = v111;
  sub_1000056E8(v83, v86, &qword_1000DA5A8, &qword_1000B1D58);
  v82 = v85;
LABEL_34:
  v81(v110, 1, 1, v82);
  v137 = v147[18];
  v138[0] = v147[19];
  *(v138 + 11) = *(&v147[19] + 11);
  v133 = v147[14];
  v134 = v147[15];
  v135 = v147[16];
  v136 = v147[17];
  v131 = v147[12];
  v132 = v147[13];
  if (sub_1000851D4(&v131) == 1)
  {
    v153 = v4;
    goto LABEL_39;
  }

  v149[5] = v136;
  v149[6] = v137;
  v150[0] = v138[0];
  *(v150 + 11) = *(v138 + 11);
  v149[2] = v133;
  v149[3] = v134;
  v149[4] = v135;
  v149[0] = v131;
  v149[1] = v132;
  v129[6] = v147[18];
  v130[0] = v147[19];
  *(v130 + 11) = *(&v147[19] + 11);
  v129[2] = v147[14];
  v129[3] = v147[15];
  v129[4] = v147[16];
  v129[5] = v147[17];
  v129[0] = v147[12];
  v129[1] = v147[13];
  sub_100085248(v129, &v128);
  v87 = v100;
  sub_100083584(v149, v100);
  if (v4)
  {

    sub_1000851F4(v147);
    sub_1000057C4(v110, &qword_1000DA5A8, &qword_1000B1D58);
    v88 = v113;
  }

  else
  {
    v153 = 0;
    v89 = v110;
    sub_1000057C4(v110, &qword_1000DA5A8, &qword_1000B1D58);
    v81(v87, 0, 1, v116);
    v44 = v111;
    sub_1000056E8(v87, v89, &qword_1000DA5A8, &qword_1000B1D58);
LABEL_39:
    v125 = *&v147[1];
    v126 = *&v147[0];
    sub_100005620(v113, v44, &qword_1000DA5A8, &qword_1000B1D58);
    v90 = v110;
    sub_100005620(v110, v103, &qword_1000DA5A8, &qword_1000B1D58);

    sub_10009F6C0();

    sub_1000851F4(v147);
    sub_1000057C4(v90, &qword_1000DA5A8, &qword_1000B1D58);
    v88 = v113;
  }

  return sub_1000057C4(v88, &qword_1000DA5A8, &qword_1000B1D58);
}

uint64_t sub_10008242C@<X0>(uint64_t (*a1)(void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a2;
  v79 = a1;
  v73 = a3;
  v4 = sub_1000017BC(&qword_1000DA550, &qword_1000B1D30);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v72 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v74 = &v64 - v9;
  __chkstk_darwin(v8);
  v77 = &v64 - v10;
  v76 = sub_10009FCD0();
  v75 = *(v76 - 8);
  v11 = *(v75 + 64);
  v12 = __chkstk_darwin(v76);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v64 - v15;
  v17 = sub_1000017BC(&qword_1000DA558, &qword_1000B1D38);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v64 - v19;
  v21 = sub_1000A02B0();
  v78 = *(v21 - 8);
  v22 = *(v78 + 64);
  v23 = __chkstk_darwin(v21);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v64 - v27;
  __chkstk_darwin(v26);
  v30 = &v64 - v29;
  v31 = sub_10009F270();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_10009F260();
  sub_1000850D8();
  sub_10009F250();
  if (v3)
  {
  }

  v79 = v28;
  v68 = v25;
  v69 = v14;
  v96 = v34;
  v71 = v16;
  v36 = v30;
  v86 = v93;
  v87 = v94;
  v82 = v89;
  v83 = v90;
  v88 = v95;
  v85 = v92;
  v84 = v91;
  sub_1000A02A0();
  v37 = v78;
  if ((*(v78 + 48))(v20, 1, v21) == 1)
  {
    sub_1000057C4(v20, &qword_1000DA558, &qword_1000B1D38);
    sub_100083D44();
    swift_allocError();
    *v38 = 2;
    swift_willThrow();
    sub_10008512C(&v82);
  }

  v39 = v21;
  v70 = 0;
  (*(v37 + 32))(v36, v20, v21);
  v40 = *(v37 + 104);
  v41 = v79;
  v40(v79, enum case for GroupSessionParticipantUpdateType.UpdateMember(_:), v21);
  sub_100083DEC();
  sub_1000A06A0();
  sub_1000A06A0();
  v42 = v37 + 8;
  v43 = *(v37 + 8);
  v43(v41, v39);
  if (v81 == v80 || (v40(v41, enum case for GroupSessionParticipantUpdateType.UpdateParticipantData(_:), v39), sub_1000A06A0(), sub_1000A06A0(), v42 = v37 + 8, v43(v41, v39), v81 == v80))
  {
    v79 = v43;
    v44 = v71;
    v45 = v70;
    sub_100082E50();
    if (v45)
    {

      sub_10008512C(&v82);
      v46 = v36;
      return v79(v46, v39);
    }

    v70 = 0;
    v47 = sub_1000A0450();
    v48 = v77;
    v65 = *(*(v47 - 8) + 56);
    v65(v77, 1, 1, v47);
    v49 = v36;
    if (v88 >> 60 == 15)
    {
      v67 = v36;
      v66 = v42;
    }

    else
    {
      sub_1000054CC(*(&v87 + 1), v88);
      v51 = v74;
      v52 = v70;
      sub_1000A0440();
      v53 = v76;
      if (v52)
      {

        sub_10008512C(&v82);
        sub_1000057C4(v77, &qword_1000DA550, &qword_1000B1D30);
        (*(v75 + 8))(v44, v53);
        v46 = v49;
        return v79(v46, v39);
      }

      v67 = v49;
      v66 = v42;
      v70 = 0;
      v54 = v77;
      sub_1000057C4(v77, &qword_1000DA550, &qword_1000B1D30);
      v65(v51, 0, 1, v47);
      v48 = v54;
      sub_1000056E8(v51, v54, &qword_1000DA550, &qword_1000B1D30);
    }

    v55 = v87;
    v56 = v69;
    v57 = v68;
    v58 = v78;
    if (v87 && (v59 = *(&v83 + 1), , v60 = sub_100082FB4(v59, v55), , (v60 & 1) == 0))
    {
      sub_100083D44();
      swift_allocError();
      *v63 = 2;
      swift_willThrow();

      sub_10008512C(&v82);
      sub_1000057C4(v48, &qword_1000DA550, &qword_1000B1D30);
      (*(v75 + 8))(v44, v76);
    }

    else
    {
      (*(v58 + 16))(v57, v67, v39);
      v78 = *(&v82 + 1);
      v74 = v84;
      LODWORD(v65) = v85;
      v64 = *(&v85 + 1);
      v61 = v44;
      v62 = v75;
      (*(v75 + 16))(v56, v61, v76);
      sub_100005620(v48, v72, &qword_1000DA550, &qword_1000B1D30);

      sub_10009F8D0();

      sub_10008512C(&v82);
      sub_1000057C4(v77, &qword_1000DA550, &qword_1000B1D30);
      (*(v62 + 8))(v71, v76);
    }

    return v79(v67, v39);
  }

  else
  {
    sub_100083D44();
    swift_allocError();
    *v50 = 2;
    swift_willThrow();

    sub_10008512C(&v82);
    return (v43)(v36, v39);
  }
}

uint64_t sub_100082E50()
{
  v1 = sub_10009F270();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_100084F88();
  sub_10009F250();
  if (!v0)
  {
    v5[3] = v9;
    v5[4] = v10;
    v5[0] = v6;
    v5[1] = v7;
    v5[2] = v8;
    v11 = v8;

    sub_100005750(v10, *(&v10 + 1));
    sub_100005750(v9, *(&v9 + 1));
    sub_100005750(v6, *(&v6 + 1));
    sub_100005750(v7, *(&v7 + 1));
    sub_10009FCC0();
    sub_100084FDC(v5);
  }
}

uint64_t sub_100082FB4(uint64_t a1, uint64_t a2)
{

  v5 = sub_100084B08(v4);

  v6 = objc_allocWithZone(NSRegularExpression);
  v7 = sub_100083E44(0xD000000000000014, 0x80000001000A38B0, 0);
  sub_100084C50(v5, v7);
  v9 = v8;

  v10 = sub_100084B08(v9);

  v12 = sub_1000831D8(v11);
  if (*(v12 + 16) == *(a2 + 16) && (v13 = v12, v14 = *(v5 + 16), , , v14 == *(a1 + 16)))
  {
    v15 = sub_1000832F4(v10, v13);

    if (v15)
    {
      v16 = 0;
      v17 = 1 << *(a2 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(a2 + 64);
      v20 = (v17 + 63) >> 6;
      while (v19)
      {
        v21 = v16;
LABEL_13:
        v22 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        if (*(*(*(a2 + 56) + ((v21 << 9) | (8 * v22))) + 16) >= 0x10uLL)
        {
          v23 = 0;
LABEL_19:

          goto LABEL_17;
        }
      }

      while (1)
      {
        v21 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v21 >= v20)
        {
          v23 = 1;
          goto LABEL_19;
        }

        v19 = *(a2 + 64 + 8 * v21);
        ++v16;
        if (v19)
        {
          v16 = v21;
          goto LABEL_13;
        }
      }

      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }
  }

  else
  {
  }

  v23 = 0;
LABEL_17:

  return v23;
}

uint64_t sub_1000831D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000A0740();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100083F20(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000832F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v22 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v22);
          ++v11;
        }

        while (!v7);
        v11 = v22;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a1 + 40);
      sub_1000A0C60();

      sub_1000A05B0();
      v16 = sub_1000A0C90();
      v17 = -1 << *(a1 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = ~v17;
      while (1)
      {
        v20 = (*(a1 + 48) + 16 * v18);
        v21 = *v20 == v14 && v20[1] == v13;
        if (v21 || (sub_1000A0BD0() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

BOOL KeyMaterialError.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CD9E8;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  return v4 != 0;
}

uint64_t sub_100083584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_10009F4E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v27[-v9];
  v11 = sub_10009F500();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v19 = &v27[-v18];
  v47 = *a1;
  if (*(&v47 + 1) >> 60 == 15 || (v46 = *(a1 + 16), *(&v46 + 1) >> 60 == 15) || (v45 = *(a1 + 32), *(&v45 + 1) >> 60 == 15))
  {
    v44 = *(a1 + 56);
    if (*(&v44 + 1) >> 60 == 15 || (v43 = *(a1 + 72), *(&v43 + 1) >> 60 == 15) || (v42 = *(a1 + 88), *(&v42 + 1) >> 60 == 15))
    {
      sub_1000852A4();
      swift_allocError();
      swift_willThrow();
      return sub_1000852F8(a1);
    }

    v37 = v17;
    v38 = v16;
    v36 = v42;
    v25 = *(v4 + 104);
    v35 = v43;
    v25(v8, enum case for KeyMaterial.MaterialType.SKM(_:), v3);
    v31 = *(a1 + 104);
    LODWORD(v29) = *(a1 + 108);
    v34 = *(a1 + 112);
    LODWORD(v33) = *(a1 + 120);
    v32 = *(a1 + 128);
    LODWORD(v30) = *(a1 + 136);
    v48 = *(a1 + 137);
    v28 = *(a1 + 138);
    sub_100005620(&v44, v41, &qword_1000D83D8, &qword_1000A5D68);
    sub_100005620(&v43, v41, &qword_1000D83D8, &qword_1000A5D68);
    sub_100005620(&v42, v41, &qword_1000D83D8, &qword_1000A5D68);
    v41[0] = v29;
    v26 = v40;
    sub_10009F4F0();
    result = sub_1000852F8(a1);
    if (!v26)
    {
      v19 = v15;
      return (*(v37 + 32))(v39, v19, v38);
    }
  }

  else
  {
    v37 = v17;
    v38 = v16;
    v36 = v45;
    v35 = v47;
    v21 = *(v4 + 104);
    v33 = v46;
    v34 = *(&v45 + 1);
    v21(v10, enum case for KeyMaterial.MaterialType.MKM(_:), v3);
    v29 = *(a1 + 48);
    v28 = *(a1 + 52);
    v32 = *(a1 + 112);
    LODWORD(v31) = *(a1 + 120);
    v30 = *(a1 + 128);
    v48 = *(a1 + 136);
    v22 = *(a1 + 137);
    v23 = *(a1 + 138);
    sub_100005620(&v47, v41, &qword_1000D83D8, &qword_1000A5D68);
    sub_100005620(&v46, v41, &qword_1000D83D8, &qword_1000A5D68);
    sub_100005620(&v45, v41, &qword_1000D83D8, &qword_1000A5D68);
    v41[0] = v28;
    v24 = v40;
    sub_10009F4F0();
    result = sub_1000852F8(a1);
    if (!v24)
    {
      return (*(v37 + 32))(v39, v19, v38);
    }
  }

  return result;
}

BOOL GroupSessionMKMUnpackerError.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CDA58;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  return v4 != 0;
}

unint64_t sub_100083B1C()
{
  result = qword_1000DA540;
  if (!qword_1000DA540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA540);
  }

  return result;
}

unint64_t sub_100083B74()
{
  result = qword_1000DA548;
  if (!qword_1000DA548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA548);
  }

  return result;
}

Swift::Int sub_100083BC8()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

Swift::Int sub_100083C20()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

uint64_t sub_100083C80@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v4 = a1[1];
  v8._object = v4;
  v6 = sub_1000A08F0(a2, v8);

  *a3 = v6 != 0;
  return result;
}

unint64_t sub_100083CF0()
{
  result = qword_1000DA560;
  if (!qword_1000DA560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA560);
  }

  return result;
}

unint64_t sub_100083D44()
{
  result = qword_1000DA568;
  if (!qword_1000DA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA568);
  }

  return result;
}

unint64_t sub_100083DEC()
{
  result = qword_1000DA570;
  if (!qword_1000DA570)
  {
    sub_1000A02B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA570);
  }

  return result;
}

id sub_100083E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000A0570();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_10009F280();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100083F20(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1000A0C60();
  sub_1000A05B0();
  v9 = sub_1000A0C90();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1000A0BD0() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1000842D0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100084070(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000017BC(&qword_1000DA578, &qword_1000B1D40);
  result = sub_1000A0840();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1000A0C60();
      sub_1000A05B0();
      result = sub_1000A0C90();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_1000842D0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100084070(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100084450();
      goto LABEL_16;
    }

    sub_1000845AC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1000A0C60();
  sub_1000A05B0();
  result = sub_1000A0C90();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1000A0BD0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1000A0BF0();
  __break(1u);
  return result;
}

void *sub_100084450()
{
  v1 = v0;
  sub_1000017BC(&qword_1000DA578, &qword_1000B1D40);
  v2 = *v0;
  v3 = sub_1000A0830();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000845AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000017BC(&qword_1000DA578, &qword_1000B1D40);
  result = sub_1000A0840();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1000A0C60();

      sub_1000A05B0();
      result = sub_1000A0C90();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

char *sub_1000847E4(char *a1, int64_t a2, char a3)
{
  result = sub_100084824(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100084804(size_t a1, int64_t a2, char a3)
{
  result = sub_100084930(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100084824(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000017BC(&qword_1000DA580, &qword_1000B1D48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_100084930(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000017BC(&qword_1000DA5C0, &unk_1000B1D60);
  v10 = *(sub_10009F500() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10009F500() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100084B08(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000A0740();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100083F20(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_100084BA0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1000A05D0();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1000A0690();
}

void sub_100084C50(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1000847E4(0, v2, 0);
    v4 = a1 + 56;
    v5 = -1 << *(a1 + 32);
    v6 = sub_1000A07E0();
    v7 = 0;
    v31 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      v35 = v6 >> 6;
      v33 = v7;
      v34 = *(a1 + 36);
      v9 = (*(a1 + 48) + 16 * v6);
      v11 = *v9;
      v10 = v9[1];
      if ((v10 & 0x1000000000000000) != 0)
      {
        v29 = *v9;
        v30 = v9[1];
        v12 = sub_1000A0630();
      }

      else
      {
        v12 = sub_1000A0640();
      }

      v13 = v12;

      v14 = sub_1000A0570();
      v15 = [a2 firstMatchInString:v14 options:0 range:{0, v13}];

      if (v15)
      {

        [v15 range];
        sub_100084BA0(v16, v11, v10);

        v4 = a1 + 56;
        v11 = sub_1000A0590();
        v18 = v17;

        v2 = v31;

        v10 = v18;
      }

      v20 = *(&_swiftEmptyArrayStorage + 2);
      v19 = *(&_swiftEmptyArrayStorage + 3);
      if (v20 >= v19 >> 1)
      {
        sub_1000847E4((v19 > 1), v20 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v20 + 1;
      v21 = &_swiftEmptyArrayStorage + 16 * v20;
      *(v21 + 4) = v11;
      *(v21 + 5) = v10;
      v8 = 1 << *(a1 + 32);
      if (v6 >= v8)
      {
        goto LABEL_28;
      }

      v22 = *(v4 + 8 * v35);
      if ((v22 & (1 << v6)) == 0)
      {
        goto LABEL_29;
      }

      if (v34 != *(a1 + 36))
      {
        goto LABEL_30;
      }

      v23 = v22 & (-2 << (v6 & 0x3F));
      if (v23)
      {
        v8 = __clz(__rbit64(v23)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v35 << 6;
        v25 = v35 + 1;
        v26 = (a1 + 64 + 8 * v35);
        while (v25 < (v8 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_100084F7C(v6, v34, 0);
            v8 = __clz(__rbit64(v27)) + v24;
            goto LABEL_23;
          }
        }

        sub_100084F7C(v6, v34, 0);
LABEL_23:
        v4 = a1 + 56;
      }

      v7 = v33 + 1;
      v6 = v8;
      if (v33 + 1 == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t sub_100084F7C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_100084F88()
{
  result = qword_1000DA588;
  if (!qword_1000DA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA588);
  }

  return result;
}

unint64_t sub_100085030()
{
  result = qword_1000DA598;
  if (!qword_1000DA598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA598);
  }

  return result;
}

unint64_t sub_1000850D8()
{
  result = qword_1000DA5A0;
  if (!qword_1000DA5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA5A0);
  }

  return result;
}

unint64_t sub_100085180()
{
  result = qword_1000DA5B0;
  if (!qword_1000DA5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA5B0);
  }

  return result;
}

uint64_t sub_1000851D4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  v2 = ((4 * v1) & 0xC) == 0;
  v3 = ((4 * v1) & 0xC | (v1 >> 2)) ^ 0xF;
  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000852A4()
{
  result = qword_1000DA5B8;
  if (!qword_1000DA5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA5B8);
  }

  return result;
}

unint64_t sub_100085360()
{
  result = qword_1000DA5C8;
  if (!qword_1000DA5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA5C8);
  }

  return result;
}

uint64_t sub_1000853D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v48 = a1;
  v3 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = sub_1000A0270();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = sub_10009F270();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_10009F260();
  sub_100085864();
  v22 = v53;
  sub_10009F250();
  if (v22)
  {
  }

  v53 = v15;
  v41 = v7;
  v42 = v9;
  v25 = v49;
  v24 = v50;
  v48 = v51;
  v40 = v52;
  sub_1000017BC(&qword_1000DA5E0, &qword_1000B1E40);
  sub_1000054CC(v25, v24);
  sub_1000858B8();
  sub_10009F250();
  v38 = v24;
  v39 = v21;
  v37 = v25;
  result = sub_100005568(v25, v24);
  v26 = v49;
  v47 = *(v49 + 16);
  if (v47)
  {
    v27 = 0;
    v44 = v11 + 8;
    v45 = (v11 + 16);
    v43 = v11 + 32;
    v28 = &_swiftEmptyArrayStorage;
    v46 = a2;
    v29 = v53;
    while (v27 < *(v26 + 16))
    {
      v30 = v26;
      v31 = *(v26 + 8 * v27 + 32);

      sub_1000A0260();
      (*v45)(v29, v17, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_10009EF2C(0, v28[2] + 1, 1, v28);
      }

      v33 = v28[2];
      v32 = v28[3];
      if (v33 >= v32 >> 1)
      {
        v28 = sub_10009EF2C(v32 > 1, v33 + 1, 1, v28);
      }

      ++v27;
      (*(v11 + 8))(v17, v10);
      v28[2] = v33 + 1;
      v29 = v53;
      (*(v11 + 32))(v28 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v33, v53, v10);
      v26 = v30;
      result = v48;
      if (v47 == v27)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v34 = v42;
    sub_10009F550();
    v35 = v41;
    sub_100085990(v34, v41);
    v36 = sub_10009F560();
    result = (*(*(v36 - 8) + 48))(v35, 1, v36);
    if (result != 1)
    {

      sub_10009FDB0();

      sub_100005568(v37, v38);
      return sub_100085A00(v34);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100085864()
{
  result = qword_1000DA5D8;
  if (!qword_1000DA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA5D8);
  }

  return result;
}

unint64_t sub_1000858B8()
{
  result = qword_1000DA5E8;
  if (!qword_1000DA5E8)
  {
    sub_1000053DC(&qword_1000DA5E0, &qword_1000B1E40);
    sub_10008593C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA5E8);
  }

  return result;
}

unint64_t sub_10008593C()
{
  result = qword_1000DA5F0;
  if (!qword_1000DA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA5F0);
  }

  return result;
}

uint64_t sub_100085990(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100085A00(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100085A68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v48 = a1;
  v3 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = sub_1000A0290();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = sub_10009F270();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_10009F260();
  sub_100085EF4();
  v22 = v53;
  sub_10009F250();
  if (v22)
  {
  }

  v53 = v15;
  v41 = v7;
  v42 = v9;
  v25 = v49;
  v24 = v50;
  v48 = v51;
  v40 = v52;
  sub_1000017BC(&qword_1000DA600, &qword_1000B1E48);
  sub_1000054CC(v25, v24);
  sub_100085F48();
  sub_10009F250();
  v38 = v24;
  v39 = v21;
  v37 = v25;
  result = sub_100005568(v25, v24);
  v26 = v49;
  v47 = *(v49 + 16);
  if (v47)
  {
    v27 = 0;
    v44 = v11 + 8;
    v45 = (v11 + 16);
    v43 = v11 + 32;
    v28 = &_swiftEmptyArrayStorage;
    v46 = a2;
    v29 = v53;
    while (v27 < *(v26 + 16))
    {
      v30 = v26;
      v31 = *(v26 + 8 * v27 + 32);

      sub_1000A0280();
      (*v45)(v29, v17, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_10009EF04(0, v28[2] + 1, 1, v28);
      }

      v33 = v28[2];
      v32 = v28[3];
      if (v33 >= v32 >> 1)
      {
        v28 = sub_10009EF04(v32 > 1, v33 + 1, 1, v28);
      }

      ++v27;
      (*(v11 + 8))(v17, v10);
      v28[2] = v33 + 1;
      v29 = v53;
      (*(v11 + 32))(v28 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v33, v53, v10);
      v26 = v30;
      result = v48;
      if (v47 == v27)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v34 = v42;
    sub_10009F550();
    v35 = v41;
    sub_100085990(v34, v41);
    v36 = sub_10009F560();
    result = (*(*(v36 - 8) + 48))(v35, 1, v36);
    if (result != 1)
    {

      sub_10009FDF0();

      sub_100005568(v37, v38);
      return sub_100085A00(v34);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100085EF4()
{
  result = qword_1000DA5F8;
  if (!qword_1000DA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA5F8);
  }

  return result;
}

unint64_t sub_100085F48()
{
  result = qword_1000DA608;
  if (!qword_1000DA608)
  {
    sub_1000053DC(&qword_1000DA600, &qword_1000B1E48);
    sub_100085FCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA608);
  }

  return result;
}

unint64_t sub_100085FCC()
{
  result = qword_1000DA610;
  if (!qword_1000DA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA610);
  }

  return result;
}

uint64_t sub_100086020@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v53 = a1;
  v3 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = &v38 - v7;
  v8 = sub_10009F370();
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000A02D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = sub_10009F270();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_10009F260();
  sub_1000865B0();
  v24 = v58;
  sub_10009F250();
  if (v24)
  {
  }

  v58 = v17;
  v51 = v11;
  v52 = v8;
  v26 = v54;
  v27 = v55;
  v53 = v56;
  v41 = v57;
  sub_1000017BC(&qword_1000DA620, &qword_1000B1E50);
  sub_1000054CC(v26, v27);
  sub_100086604();
  sub_10009F250();
  v39 = v27;
  v40 = v23;
  result = sub_100005568(v26, v27);
  v50 = v54;
  v28 = v26;
  v49 = *(v54 + 16);
  if (v49)
  {
    v29 = 0;
    v48 += 16;
    v45 = v13 + 8;
    v46 = (v13 + 16);
    v44 = v13 + 32;
    v30 = &_swiftEmptyArrayStorage;
    v47 = a2;
    while (1)
    {
      v31 = v50;
      if (v29 >= *(v50 + 16))
      {
        break;
      }

      v32 = *(type metadata accessor for CircleTrustAcceptEnvelopeV1PayloadSchema() - 8);
      (*v48)(v51, v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29, v52);
      sub_1000A02C0();
      (*v46)(v58, v19, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_10009EEB4(0, v30[2] + 1, 1, v30);
      }

      v34 = v30[2];
      v33 = v30[3];
      if (v34 >= v33 >> 1)
      {
        v30 = sub_10009EEB4(v33 > 1, v34 + 1, 1, v30);
      }

      ++v29;
      (*(v13 + 8))(v19, v12);
      v30[2] = v34 + 1;
      (*(v13 + 32))(v30 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v34, v58, v12);
      v28 = v26;
      result = v53;
      if (v49 == v29)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v35 = v43;
    sub_10009F550();
    v36 = v42;
    sub_100085990(v35, v42);
    v37 = sub_10009F560();
    result = (*(*(v37 - 8) + 48))(v36, 1, v37);
    if (result != 1)
    {

      sub_10009FFC0();

      sub_100005568(v28, v39);
      return sub_100085A00(v35);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000865B0()
{
  result = qword_1000DA618;
  if (!qword_1000DA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA618);
  }

  return result;
}

unint64_t sub_100086604()
{
  result = qword_1000DA628;
  if (!qword_1000DA628)
  {
    sub_1000053DC(&qword_1000DA620, &qword_1000B1E50);
    sub_100086688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA628);
  }

  return result;
}

unint64_t sub_100086688()
{
  result = qword_1000DA630;
  if (!qword_1000DA630)
  {
    type metadata accessor for CircleTrustAcceptEnvelopeV1PayloadSchema();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA630);
  }

  return result;
}

uint64_t sub_1000866E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v53 = a1;
  v3 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = &v38 - v7;
  v8 = sub_10009F370();
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000A0250();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = sub_10009F270();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_10009F260();
  sub_100086C70();
  v24 = v58;
  sub_10009F250();
  if (v24)
  {
  }

  v58 = v17;
  v51 = v11;
  v52 = v8;
  v26 = v54;
  v27 = v55;
  v53 = v56;
  v41 = v57;
  sub_1000017BC(&qword_1000DA640, &qword_1000B1E58);
  sub_1000054CC(v26, v27);
  sub_100086CC4();
  sub_10009F250();
  v39 = v27;
  v40 = v23;
  result = sub_100005568(v26, v27);
  v50 = v54;
  v28 = v26;
  v49 = *(v54 + 16);
  if (v49)
  {
    v29 = 0;
    v48 += 16;
    v45 = v13 + 8;
    v46 = (v13 + 16);
    v44 = v13 + 32;
    v30 = &_swiftEmptyArrayStorage;
    v47 = a2;
    while (1)
    {
      v31 = v50;
      if (v29 >= *(v50 + 16))
      {
        break;
      }

      v32 = *(type metadata accessor for CircleTrustAckEnvelopeV1PayloadSchema() - 8);
      (*v48)(v51, v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29, v52);
      sub_1000A0240();
      (*v46)(v58, v19, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_10009EE8C(0, v30[2] + 1, 1, v30);
      }

      v34 = v30[2];
      v33 = v30[3];
      if (v34 >= v33 >> 1)
      {
        v30 = sub_10009EE8C(v33 > 1, v34 + 1, 1, v30);
      }

      ++v29;
      (*(v13 + 8))(v19, v12);
      v30[2] = v34 + 1;
      (*(v13 + 32))(v30 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v34, v58, v12);
      v28 = v26;
      result = v53;
      if (v49 == v29)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v35 = v43;
    sub_10009F550();
    v36 = v42;
    sub_100085990(v35, v42);
    v37 = sub_10009F560();
    result = (*(*(v37 - 8) + 48))(v36, 1, v37);
    if (result != 1)
    {

      sub_10009FD70();

      sub_100005568(v28, v39);
      return sub_100085A00(v35);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100086C70()
{
  result = qword_1000DA638;
  if (!qword_1000DA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA638);
  }

  return result;
}

unint64_t sub_100086CC4()
{
  result = qword_1000DA648;
  if (!qword_1000DA648)
  {
    sub_1000053DC(&qword_1000DA640, &qword_1000B1E58);
    sub_100086D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA648);
  }

  return result;
}

unint64_t sub_100086D48()
{
  result = qword_1000DA650;
  if (!qword_1000DA650)
  {
    type metadata accessor for CircleTrustAckEnvelopeV1PayloadSchema();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA650);
  }

  return result;
}

uint64_t sub_100086DA0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v53 = a1;
  v3 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = &v38 - v7;
  v8 = sub_10009F370();
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000A0330();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = sub_10009F270();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_10009F260();
  sub_100087330();
  v24 = v58;
  sub_10009F250();
  if (v24)
  {
  }

  v58 = v17;
  v51 = v11;
  v52 = v8;
  v26 = v54;
  v27 = v55;
  v53 = v56;
  v41 = v57;
  sub_1000017BC(&qword_1000DA660, &qword_1000B1E60);
  sub_1000054CC(v26, v27);
  sub_100087384();
  sub_10009F250();
  v39 = v27;
  v40 = v23;
  result = sub_100005568(v26, v27);
  v50 = v54;
  v28 = v26;
  v49 = *(v54 + 16);
  if (v49)
  {
    v29 = 0;
    v48 += 16;
    v45 = v13 + 8;
    v46 = (v13 + 16);
    v44 = v13 + 32;
    v30 = &_swiftEmptyArrayStorage;
    v47 = a2;
    while (1)
    {
      v31 = v50;
      if (v29 >= *(v50 + 16))
      {
        break;
      }

      v32 = *(type metadata accessor for CircleTrustDeclineEnvelopeV1PayloadSchema() - 8);
      (*v48)(v51, v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29, v52);
      sub_1000A0320();
      (*v46)(v58, v19, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_10009EEDC(0, v30[2] + 1, 1, v30);
      }

      v34 = v30[2];
      v33 = v30[3];
      if (v34 >= v33 >> 1)
      {
        v30 = sub_10009EEDC(v33 > 1, v34 + 1, 1, v30);
      }

      ++v29;
      (*(v13 + 8))(v19, v12);
      v30[2] = v34 + 1;
      (*(v13 + 32))(v30 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v34, v58, v12);
      v28 = v26;
      result = v53;
      if (v49 == v29)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v35 = v43;
    sub_10009F550();
    v36 = v42;
    sub_100085990(v35, v42);
    v37 = sub_10009F560();
    result = (*(*(v37 - 8) + 48))(v36, 1, v37);
    if (result != 1)
    {

      sub_1000A0030();

      sub_100005568(v28, v39);
      return sub_100085A00(v35);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100087330()
{
  result = qword_1000DA658;
  if (!qword_1000DA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA658);
  }

  return result;
}

unint64_t sub_100087384()
{
  result = qword_1000DA668;
  if (!qword_1000DA668)
  {
    sub_1000053DC(&qword_1000DA660, &qword_1000B1E60);
    sub_100087408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA668);
  }

  return result;
}

unint64_t sub_100087408()
{
  result = qword_1000DA670;
  if (!qword_1000DA670)
  {
    type metadata accessor for CircleTrustDeclineEnvelopeV1PayloadSchema();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA670);
  }

  return result;
}

uint64_t sub_100087460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v203 = a2;
  v199 = a1;
  v176 = a3;
  v4 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v174 = v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v175 = v140 - v8;
  v9 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v173 = v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v184 = v140 - v13;
  v172 = sub_10009F370();
  v179 = *(v172 - 8);
  v14 = v179[8];
  v15 = __chkstk_darwin(v172);
  v183 = v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v182 = v140 - v17;
  v168 = sub_1000A0080();
  v185 = *(v168 - 8);
  v18 = *(v185 + 64);
  v19 = __chkstk_darwin(v168);
  v167 = v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v171 = v140 - v21;
  v22 = sub_1000017BC(&qword_1000DA678, &qword_1000B1E68);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v170 = v140 - v24;
  v194 = sub_1000A0070();
  v178 = *(v194 - 8);
  v25 = v178[8];
  v26 = __chkstk_darwin(v194);
  v169 = v140 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v197 = v140 - v28;
  v181 = sub_1000A0510();
  v177 = *(v181 - 8);
  v29 = *(v177 + 64);
  __chkstk_darwin(v181);
  v180 = v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_10009F490();
  v187 = *(v189 - 8);
  v31 = *(v187 + 64);
  v32 = __chkstk_darwin(v189);
  v188 = v140 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v190 = v140 - v34;
  v35 = sub_10009F440();
  v36 = *(v35 - 8);
  v200 = v35;
  v201 = v36;
  v37 = *(v36 + 64);
  v38 = __chkstk_darwin(v35);
  v204 = v140 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v209 = v140 - v40;
  v41 = sub_10009F470();
  v202 = *(v41 - 8);
  v42 = *(v202 + 64);
  __chkstk_darwin(v41);
  v44 = v140 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for KeyPackageSchema();
  v186 = *(v45 - 8);
  v46 = *(v186 + 64);
  __chkstk_darwin(v45);
  v48 = v140 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for CircleTrustEnvelopeV1PayloadSchema();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  __chkstk_darwin(v49);
  v53 = v140 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10009F270();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  v57 = sub_10009F260();
  sub_1000889E0();
  sub_10009F250();
  if (v3)
  {
  }

  v161 = v50;
  v163 = v49;
  v165 = v45;
  v162 = v44;
  v166 = v48;
  v203 = v41;
  v164 = v53;
  v60 = v205;
  v59 = v206;
  v62 = v207;
  v61 = v208;
  sub_1000017BC(&qword_1000DA688, &qword_1000B1E70);
  sub_1000054CC(v60, v59);
  sub_100088A34();
  sub_10009F250();
  v63 = v57;
  v154 = v62;
  v153 = v61;
  v199 = 0;
  result = sub_100005568(v60, v59);
  v64 = v205;
  v65 = *(v205 + 16);
  if (v65)
  {
    v66 = 0;
    v67 = v202;
    v195 = v202 + 16;
    v193 = (v201 + 16);
    v192 = v201 + 8;
    v196 = (v202 + 8);
    v191 = v201 + 32;
    v152 = (v177 + 16);
    v150 = (v187 + 16);
    v149 = v187 + 8;
    v148 = v187 + 32;
    v147 = (v178 + 6);
    v146 = (v178 + 4);
    v145 = (v179 + 2);
    v143 = (v178 + 2);
    v141 = (v185 + 16);
    v140[2] = v185 + 8;
    v144 = (v178 + 1);
    v140[1] = v185 + 32;
    v178 = &_swiftEmptyArrayStorage;
    v68 = v164;
    v69 = v194;
    v70 = v163;
    v157 = v59;
    v156 = v60;
    v198 = v63;
    v155 = v205;
    v142 = v65;
    while (v66 < *(v64 + 16))
    {
      v71 = v64 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
      v72 = *(v161 + 72);
      v151 = v66;
      sub_100088BE4(v71 + v72 * v66, v68, type metadata accessor for CircleTrustEnvelopeV1PayloadSchema);
      sub_1000017BC(&qword_1000DA6A0, &qword_1000B1E78);
      v73 = (v68 + v70[15]);
      v74 = *v73;
      v75 = v73[1];
      sub_100088AE8();
      v76 = v199;
      result = sub_10009F250();
      v77 = v197;
      if (v76)
      {

        sub_100005568(v156, v157);

        return sub_100088CD0(v164, type metadata accessor for CircleTrustEnvelopeV1PayloadSchema);
      }

      v78 = v205;
      v158 = *(v205 + 16);
      if (v158)
      {
        v79 = 0;
        v80 = v186;
        v160 = v205 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
        v81 = &_swiftEmptyArrayStorage;
        v82 = v162;
        v159 = v205;
        while (v79 < *(v78 + 16))
        {
          v179 = v81;
          v83 = *(v80 + 72);
          v177 = v79;
          v84 = v166;
          result = sub_100088BE4(v160 + v83 * v79, v166, type metadata accessor for KeyPackageSchema);
          v85 = *(v84 + *(v165 + 20));
          v199 = *(v85 + 16);
          if (v199)
          {
            v86 = 0;
            v87 = &_swiftEmptyArrayStorage;
            while (v86 < *(v85 + 16))
            {
              (*(v67 + 16))(v82, v85 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v86, v203);
              sub_1000017BC(&qword_1000DA6B8, &qword_1000B1E80);
              v88 = v82;
              v89 = sub_10009F450();
              v91 = v90;
              sub_100088C4C();
              sub_10009F250();
              sub_100005568(v89, v91);
              sub_10009F460();
              v92 = v209;
              sub_10009F430();
              v82 = v88;
              v93 = v200;
              (*v193)(v204, v92, v200);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v87 = sub_10009EE64(0, v87[2] + 1, 1, v87);
              }

              v95 = v87[2];
              v94 = v87[3];
              if (v95 >= v94 >> 1)
              {
                v87 = sub_10009EE64(v94 > 1, v95 + 1, 1, v87);
              }

              ++v86;
              v96 = v201;
              (*(v201 + 8))(v209, v93);
              (*v196)(v82, v203);
              v87[2] = v95 + 1;
              result = (*(v96 + 32))(v87 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v95, v204, v93);
              v67 = v202;
              if (v199 == v86)
              {
                goto LABEL_18;
              }
            }

            __break(1u);
            break;
          }

LABEL_18:
          v97 = v166;
          (*v152)(v180, v166, v181);
          v98 = (v97 + *(v165 + 24));
          v100 = *v98;
          v99 = v98[1];

          v101 = v190;
          sub_10009F480();
          (*v150)(v188, v101, v189);
          v81 = v179;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_10009EE3C(0, v81[2] + 1, 1, v81);
          }

          v77 = v197;
          v103 = v81[2];
          v102 = v81[3];
          v104 = v189;
          if (v103 >= v102 >> 1)
          {
            v108 = sub_10009EE3C(v102 > 1, v103 + 1, 1, v81);
            v104 = v189;
            v81 = v108;
          }

          v105 = v177 + 1;
          v106 = v187;
          (*(v187 + 8))(v190, v104);
          sub_100088CD0(v166, type metadata accessor for KeyPackageSchema);
          v81[2] = v103 + 1;
          result = (*(v106 + 32))(v81 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v103, v188, v104);
          v79 = v105;
          v107 = v105 == v158;
          v82 = v162;
          v80 = v186;
          v78 = v159;
          v69 = v194;
          if (v107)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
        break;
      }

      v81 = &_swiftEmptyArrayStorage;
LABEL_26:
      v179 = v81;
      v109 = v163;
      v110 = v164;
      v111 = *&v164[v163[17]];
      v112 = v170;
      sub_1000A0060();
      result = (*v147)(v112, 1, v69);
      if (result == 1)
      {
        goto LABEL_41;
      }

      (*v146)(v77, v112, v69);
      v113 = *v145;
      v114 = v172;
      (*v145)(v182, v110, v172);
      sub_100005620(v110 + v109[5], v184, &qword_1000D8BC8, &qword_1000A85F8);
      v113(v183, v110 + v109[6], v114);
      sub_100005620(v110 + v109[7], v173, &qword_1000D8BC8, &qword_1000A85F8);
      v115 = v109[9];
      v116 = (v110 + v109[8]);
      v117 = v116[1];
      v199 = *v116;
      v118 = v109[11];
      LODWORD(v160) = *(v110 + v109[10]);
      v119 = *(v110 + v115 + 8);
      v177 = *(v110 + v115);
      LODWORD(v159) = *(v110 + v118);
      v120 = v109[13];
      v121 = (v110 + v109[12]);
      v122 = v121[1];
      v158 = *v121;
      v140[0] = *(v110 + v120);
      v123 = (v110 + v109[14]);
      v124 = v109;
      v125 = *v123;
      v126 = v123[1];
      v127 = *(v110 + v124[16]);
      (*v143)(v169, v197, v194);

      v128 = v171;
      sub_1000A0050();
      v199 = 0;
      v129 = v167;
      v130 = v168;
      (*v141)(v167, v128, v168);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v178 = sub_10009EE14(0, v178[2] + 1, 1, v178);
      }

      v131 = v185;
      v67 = v202;
      v70 = v163;
      v132 = v151;
      v134 = v178[2];
      v133 = v178[3];
      if (v134 >= v133 >> 1)
      {
        v136 = sub_10009EE14(v133 > 1, v134 + 1, 1, v178);
        v132 = v151;
        v178 = v136;
      }

      (*(v131 + 8))(v128, v130);
      v69 = v194;
      (*v144)(v197, v194);
      v135 = v178;
      v178[2] = v134 + 1;
      (*(v131 + 32))(v135 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v134, v129, v130);
      v68 = v164;
      result = sub_100088CD0(v164, type metadata accessor for CircleTrustEnvelopeV1PayloadSchema);
      v66 = v132 + 1;
      v59 = v157;
      v60 = v156;
      v64 = v155;
      if (v132 + 1 == v142)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  else
  {
    v178 = &_swiftEmptyArrayStorage;
LABEL_34:
    v137 = v175;
    sub_10009F550();
    v138 = v174;
    sub_100005620(v137, v174, &qword_1000DA5D0, &qword_1000B1E38);
    v139 = sub_10009F560();
    result = (*(*(v139 - 8) + 48))(v138, 1, v139);
    if (result != 1)
    {

      sub_10009FB80();

      sub_100005568(v60, v59);
      return sub_100085A00(v137);
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_1000889E0()
{
  result = qword_1000DA680;
  if (!qword_1000DA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA680);
  }

  return result;
}

unint64_t sub_100088A34()
{
  result = qword_1000DA690;
  if (!qword_1000DA690)
  {
    sub_1000053DC(&qword_1000DA688, &qword_1000B1E70);
    sub_100088B9C(&qword_1000DA698, type metadata accessor for CircleTrustEnvelopeV1PayloadSchema);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA690);
  }

  return result;
}

unint64_t sub_100088AE8()
{
  result = qword_1000DA6A8;
  if (!qword_1000DA6A8)
  {
    sub_1000053DC(&qword_1000DA6A0, &qword_1000B1E78);
    sub_100088B9C(&qword_1000DA6B0, type metadata accessor for KeyPackageSchema);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA6A8);
  }

  return result;
}

uint64_t sub_100088B9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100088BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100088C4C()
{
  result = qword_1000DA6C0;
  if (!qword_1000DA6C0)
  {
    sub_1000053DC(&qword_1000DA6B8, &qword_1000B1E80);
    sub_100005424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA6C0);
  }

  return result;
}

uint64_t sub_100088CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100088D30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v48 = a1;
  v3 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = sub_1000A0350();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = sub_10009F270();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_10009F260();
  sub_1000891BC();
  v22 = v53;
  sub_10009F250();
  if (v22)
  {
  }

  v53 = v15;
  v41 = v7;
  v42 = v9;
  v25 = v49;
  v24 = v50;
  v48 = v51;
  v40 = v52;
  sub_1000017BC(&qword_1000DA6D0, &qword_1000B1E88);
  sub_1000054CC(v25, v24);
  sub_100089210();
  sub_10009F250();
  v38 = v24;
  v39 = v21;
  v37 = v25;
  result = sub_100005568(v25, v24);
  v26 = v49;
  v47 = *(v49 + 16);
  if (v47)
  {
    v27 = 0;
    v44 = v11 + 8;
    v45 = (v11 + 16);
    v43 = v11 + 32;
    v28 = &_swiftEmptyArrayStorage;
    v46 = a2;
    v29 = v53;
    while (v27 < *(v26 + 16))
    {
      v30 = v26;
      v31 = *(v26 + 8 * v27 + 32);

      sub_1000A0340();
      (*v45)(v29, v17, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_10009EF54(0, v28[2] + 1, 1, v28);
      }

      v33 = v28[2];
      v32 = v28[3];
      if (v33 >= v32 >> 1)
      {
        v28 = sub_10009EF54(v32 > 1, v33 + 1, 1, v28);
      }

      ++v27;
      (*(v11 + 8))(v17, v10);
      v28[2] = v33 + 1;
      v29 = v53;
      (*(v11 + 32))(v28 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v33, v53, v10);
      v26 = v30;
      result = v48;
      if (v47 == v27)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v34 = v42;
    sub_10009F550();
    v35 = v41;
    sub_100085990(v34, v41);
    v36 = sub_10009F560();
    result = (*(*(v36 - 8) + 48))(v35, 1, v36);
    if (result != 1)
    {

      sub_1000A00B0();

      sub_100005568(v37, v38);
      return sub_100085A00(v34);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000891BC()
{
  result = qword_1000DA6C8;
  if (!qword_1000DA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA6C8);
  }

  return result;
}

unint64_t sub_100089210()
{
  result = qword_1000DA6D8;
  if (!qword_1000DA6D8)
  {
    sub_1000053DC(&qword_1000DA6D0, &qword_1000B1E88);
    sub_100089294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA6D8);
  }

  return result;
}

unint64_t sub_100089294()
{
  result = qword_1000DA6E0;
  if (!qword_1000DA6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA6E0);
  }

  return result;
}

uint64_t sub_1000892E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v53 = a1;
  v3 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = &v38 - v7;
  v8 = sub_10009F370();
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000A0470();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = sub_10009F270();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_10009F260();
  sub_100089878();
  v24 = v58;
  sub_10009F250();
  if (v24)
  {
  }

  v58 = v17;
  v51 = v11;
  v52 = v8;
  v26 = v54;
  v27 = v55;
  v53 = v56;
  v41 = v57;
  sub_1000017BC(&qword_1000DA6F0, &qword_1000B1E90);
  sub_1000054CC(v26, v27);
  sub_1000898CC();
  sub_10009F250();
  v39 = v27;
  v40 = v23;
  result = sub_100005568(v26, v27);
  v50 = v54;
  v28 = v26;
  v49 = *(v54 + 16);
  if (v49)
  {
    v29 = 0;
    v48 += 16;
    v45 = v13 + 8;
    v46 = (v13 + 16);
    v44 = v13 + 32;
    v30 = &_swiftEmptyArrayStorage;
    v47 = a2;
    while (1)
    {
      v31 = v50;
      if (v29 >= *(v50 + 16))
      {
        break;
      }

      v32 = *(type metadata accessor for DelegatedCircleTrustStopEnvelopeV1PayloadSchema() - 8);
      (*v48)(v51, v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29, v52);
      sub_1000A0460();
      (*v46)(v58, v19, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_10009EF7C(0, v30[2] + 1, 1, v30);
      }

      v34 = v30[2];
      v33 = v30[3];
      if (v34 >= v33 >> 1)
      {
        v30 = sub_10009EF7C(v33 > 1, v34 + 1, 1, v30);
      }

      ++v29;
      (*(v13 + 8))(v19, v12);
      v30[2] = v34 + 1;
      (*(v13 + 32))(v30 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v34, v58, v12);
      v28 = v26;
      result = v53;
      if (v49 == v29)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v35 = v43;
    sub_10009F550();
    v36 = v42;
    sub_100085990(v35, v42);
    v37 = sub_10009F560();
    result = (*(*(v37 - 8) + 48))(v36, 1, v37);
    if (result != 1)
    {

      sub_1000A0300();

      sub_100005568(v28, v39);
      return sub_100085A00(v35);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100089878()
{
  result = qword_1000DA6E8;
  if (!qword_1000DA6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA6E8);
  }

  return result;
}

unint64_t sub_1000898CC()
{
  result = qword_1000DA6F8;
  if (!qword_1000DA6F8)
  {
    sub_1000053DC(&qword_1000DA6F0, &qword_1000B1E90);
    sub_100089950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA6F8);
  }

  return result;
}

unint64_t sub_100089950()
{
  result = qword_1000DA700;
  if (!qword_1000DA700)
  {
    type metadata accessor for DelegatedCircleTrustStopEnvelopeV1PayloadSchema();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA700);
  }

  return result;
}

uint64_t sub_1000899A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v53 = a1;
  v3 = sub_1000017BC(&qword_1000DA5D0, &qword_1000B1E38);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = &v38 - v7;
  v8 = sub_10009F370();
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000A0200();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = sub_10009F270();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_10009F260();
  sub_100089F38();
  v24 = v58;
  sub_10009F250();
  if (v24)
  {
  }

  v58 = v17;
  v51 = v11;
  v52 = v8;
  v26 = v54;
  v27 = v55;
  v53 = v56;
  v41 = v57;
  sub_1000017BC(&qword_1000DA710, &qword_1000B1E98);
  sub_1000054CC(v26, v27);
  sub_100089F8C();
  sub_10009F250();
  v39 = v27;
  v40 = v23;
  result = sub_100005568(v26, v27);
  v50 = v54;
  v28 = v26;
  v49 = *(v54 + 16);
  if (v49)
  {
    v29 = 0;
    v48 += 16;
    v45 = v13 + 8;
    v46 = (v13 + 16);
    v44 = v13 + 32;
    v30 = &_swiftEmptyArrayStorage;
    v47 = a2;
    while (1)
    {
      v31 = v50;
      if (v29 >= *(v50 + 16))
      {
        break;
      }

      v32 = *(type metadata accessor for PeerTrustAckEnvelopeV1PayloadSchema() - 8);
      (*v48)(v51, v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29, v52);
      sub_1000A01F0();
      (*v46)(v58, v19, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_10009EDEC(0, v30[2] + 1, 1, v30);
      }

      v34 = v30[2];
      v33 = v30[3];
      if (v34 >= v33 >> 1)
      {
        v30 = sub_10009EDEC(v33 > 1, v34 + 1, 1, v30);
      }

      ++v29;
      (*(v13 + 8))(v19, v12);
      v30[2] = v34 + 1;
      (*(v13 + 32))(v30 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v34, v58, v12);
      v28 = v26;
      result = v53;
      if (v49 == v29)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v35 = v43;
    sub_10009F550();
    v36 = v42;
    sub_100085990(v35, v42);
    v37 = sub_10009F560();
    result = (*(*(v37 - 8) + 48))(v36, 1, v37);
    if (result != 1)
    {

      sub_10009FC80();

      sub_100005568(v28, v39);
      return sub_100085A00(v35);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100089F38()
{
  result = qword_1000DA708;
  if (!qword_1000DA708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA708);
  }

  return result;
}

unint64_t sub_100089F8C()
{
  result = qword_1000DA718;
  if (!qword_1000DA718)
  {
    sub_1000053DC(&qword_1000DA710, &qword_1000B1E98);
    sub_10008A010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA718);
  }

  return result;
}

unint64_t sub_10008A010()
{
  result = qword_1000DA720;
  if (!qword_1000DA720)
  {
    type metadata accessor for PeerTrustAckEnvelopeV1PayloadSchema();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA720);
  }

  return result;
}

uint64_t sub_10008A078@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = sub_10009F9D0();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009F980();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v42 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10009F270();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_10008A4DC();
  sub_10009F250();
  if (v1)
  {
  }

  v19 = v7;
  v20 = v5;
  v18 = v6;
  v21 = v2;
  v43[8] = v53;
  v43[9] = v54;
  v43[10] = v55;
  v44 = v56;
  v43[4] = v49;
  v43[5] = v50;
  v43[6] = v51;
  v43[7] = v52;
  v43[0] = v45;
  v43[1] = v46;
  v43[2] = v47;
  v43[3] = v48;
  v32 = *(&v45 + 1);
  v38 = *(&v47 + 1);
  v39 = *(&v46 + 1);
  v29 = v48;
  v30 = v47;
  v36 = v45;
  v37 = *(&v48 + 1);
  v34 = *(&v50 + 1);
  v35 = *(&v49 + 1);
  v33 = *(&v51 + 1);
  v22 = v51;
  v31 = *(&v52 + 1);
  v23 = v52;
  v27 = *(&v54 + 1);
  v28 = *(&v53 + 1);
  v25 = BYTE1(v55);
  v26 = v55;
  v24 = *(&v55 + 1);

  v14 = v42;
  sub_10009F970();
  sub_1000087D0(v43);
  v16 = v19;
  v15 = v20;
  v17 = v18;
  (*(v19 + 16))(v20, v14, v18);
  (*(v40 + 104))(v15, enum case for IDSClientMessageType.statusKitInvitation(_:), v21);
  sub_10009FC10();

  return (*(v16 + 8))(v14, v17);
}

unint64_t sub_10008A460(uint64_t a1)
{
  result = sub_10008A488();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10008A488()
{
  result = qword_1000DA728;
  if (!qword_1000DA728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA728);
  }

  return result;
}

unint64_t sub_10008A4DC()
{
  result = qword_1000DA730;
  if (!qword_1000DA730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA730);
  }

  return result;
}

uint64_t IDSProtobufSchema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  v31 = a3;
  v35 = a4;
  v30 = a2;
  v5 = sub_10009F4B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v29 = &v27 - v11;
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  v14 = sub_1000017BC(&qword_1000DA738, &qword_1000B1F10);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  v19 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10008A8D0();
  sub_1000A0CE0();
  v21 = v30;
  v20 = v31;
  v33 = v30;
  v34 = v31;
  v28 = *(v6 + 104);
  v28(v13, enum case for IDSProtobuf.IDSProtobufKey.data(_:), v5);
  sub_100005750(v21, v20);
  sub_100006804();
  v22 = v32;
  sub_1000A0AD0();
  if (v22)
  {
    (*(v6 + 8))(v13, v5);
    sub_1000057B0(v33, v34);
    return (*(v15 + 8))(v18, v14);
  }

  else
  {
    v32 = v15;
    v24 = *(v6 + 8);
    v24(v13, v5);
    sub_1000057B0(v33, v34);
    v28(v29, enum case for IDSProtobuf.IDSProtobufKey.type(_:), v5);
    sub_1000A0B00();
    v24(v29, v5);
    v25 = v27;
    v28(v27, enum case for IDSProtobuf.IDSProtobufKey.isResponse(_:), v5);
    sub_1000A0A90();
    v26 = v32;
    v24(v25, v5);
    return (*(v26 + 8))(v18, v14);
  }
}

unint64_t sub_10008A8D0()
{
  result = qword_1000DA740;
  if (!qword_1000DA740)
  {
    sub_10009F4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA740);
  }

  return result;
}

char *IDSProtobufSchema.init(from:)(uint64_t *a1)
{
  result = sub_10008A9D4(a1);
  if (v1)
  {
    return (v3 & 0xFF01FFFF);
  }

  return result;
}

char *sub_10008A95C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10008A9D4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 18) = BYTE2(v6) & 1;
    *(a2 + 19) = HIBYTE(v6);
  }

  return result;
}

char *sub_10008A9D4(uint64_t *a1)
{
  v2 = sub_10009F4B0();
  v35 = *(v2 - 8);
  v3 = *(v35 + 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v31 - v8;
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = sub_1000017BC(&qword_1000DA748, &qword_1000B2028);
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = *(v36 + 64);
  __chkstk_darwin(v12);
  v15 = &v31 - v14;
  v16 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10008A8D0();
  v17 = v38;
  sub_1000A0CD0();
  if (v17)
  {
    sub_100002308(a1);
  }

  else
  {
    v33 = v6;
    v34 = v9;
    v38 = a1;
    v18 = v35;
    v19 = *(v35 + 13);
    v19(v11, enum case for IDSProtobuf.IDSProtobufKey.data(_:), v2);
    sub_100005424();
    sub_1000A0970();
    v32 = *(v18 + 8);
    v32(v11, v2);
    v21 = v40;
    v35 = v39;
    v22 = v34;
    v19(v34, enum case for IDSProtobuf.IDSProtobufKey.type(_:), v2);
    v23 = sub_1000A09A0();
    v24 = v22;
    v25 = v32;
    v32(v24, v2);
    LODWORD(v34) = v23;
    v41 = BYTE2(v23) & 1;
    v26 = v33;
    v19(v33, enum case for IDSProtobuf.IDSProtobufKey.isResponse(_:), v2);
    v27 = v37;
    sub_1000A0930();
    v28 = v27;
    v29 = v15;
    v30 = v38;
    v25(v26, v2);
    (*(v36 + 8))(v29, v28);
    v6 = v35;
    sub_100005750(v35, v21);
    sub_100002308(v30);
    sub_1000057B0(v6, v21);
  }

  return v6;
}

__n128 sub_10008ADFC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_10008AE10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 20))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 19);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10008AE70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 19) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_10008AEC4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CDAC8;
  v8._object = v3;
  v5 = sub_1000A08F0(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10008AF24@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CDAC8;
  v9._object = a2;
  v6 = sub_1000A08F0(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10008AF88(uint64_t a1)
{
  v2 = sub_10008B19C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008AFC4(uint64_t a1)
{
  v2 = sub_10008B19C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NearbySessionMessageSchema.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v15 = a4;
  v7 = sub_1000017BC(&qword_1000DA750, &qword_1000B2030);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10008B19C();
  sub_1000A0CE0();
  LOBYTE(v16) = 0;
  sub_1000A0B60();
  if (!v4)
  {
    v16 = a3;
    v17 = v15;
    v18 = 1;
    sub_1000054CC(a3, v15);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_10008B19C()
{
  result = qword_1000DA758;
  if (!qword_1000DA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA758);
  }

  return result;
}

uint64_t NearbySessionMessageSchema.init(from:)(uint64_t *a1)
{
  result = sub_10008B268(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10008B218@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10008B268(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_10008B268(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000DA778, &qword_1000B2278);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_1000022C4(a1, v8);
  sub_10008B19C();
  sub_1000A0CD0();
  if (!v1)
  {
    v10[16] = 0;
    v8 = sub_1000A0A00();
    v10[15] = 1;
    sub_100005424();
    sub_1000A0A20();
    (*(v4 + 8))(v7, v3);
  }

  sub_100002308(a1);
  return v8;
}

unint64_t sub_10008B450()
{
  result = qword_1000DA760;
  if (!qword_1000DA760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA760);
  }

  return result;
}

unint64_t sub_10008B4A8()
{
  result = qword_1000DA768;
  if (!qword_1000DA768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA768);
  }

  return result;
}

unint64_t sub_10008B500()
{
  result = qword_1000DA770;
  if (!qword_1000DA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA770);
  }

  return result;
}

uint64_t sub_10008B554(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v3)
  {
    v5 = "invalidKeyMaterial";
  }

  else
  {
    v5 = "kHomedVersionKey";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000001ALL;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (*a2)
  {
    v8 = "kHomedVersionKey";
  }

  else
  {
    v8 = "invalidKeyMaterial";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000A0BD0();
  }

  return v10 & 1;
}

Swift::Int sub_10008B604()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10008B688()
{
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_10008B6F8()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

void sub_10008B784(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001ALL;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "kHomedVersionKey";
  }

  else
  {
    v3 = "invalidKeyMaterial";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_10008B7C8()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_10008B814(uint64_t a1)
{
  v2 = sub_10008BA48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008B850(uint64_t a1)
{
  v2 = sub_10008BA48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSHomeKitInvitationSchema.IDSHomeKitInvitationRequestedCapabilitiesSchema.encode(to:)(void *a1, uint64_t a2)
{
  v5 = sub_1000017BC(&qword_1000DA780, &qword_1000B2280);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10008BA48();
  sub_1000A0CE0();
  v14 = 0;
  sub_1000A0B50();
  if (!v2)
  {
    v12[1] = a2;
    v13 = 1;
    sub_1000017BC(&qword_1000DA790, &qword_1000B2288);
    sub_1000902F0(&qword_1000DA798);
    sub_1000A0B80();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10008BA48()
{
  result = qword_1000DA788;
  if (!qword_1000DA788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA788);
  }

  return result;
}

unint64_t sub_10008BAB4(char a1)
{
  result = 0x6D614E656D6F486BLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
    case 9:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
    case 16:
      result = 0xD00000000000002BLL;
      break;
    case 6:
      result = 0x63532E47522E4D48;
      break;
    case 7:
      result = 0x495555656D6F486BLL;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0x4B4449726573556BLL;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_10008BD04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10008E6CC(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = result;
  }

  return result;
}

uint64_t sub_10008BD54(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10008BAB4(*a1);
  v5 = v4;
  if (v3 == sub_10008BAB4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();
  }

  return v8 & 1;
}

Swift::Int sub_10008BDDC()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_10008BAB4(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10008BE40()
{
  sub_10008BAB4(*v0);
  sub_1000A05B0();
}

Swift::Int sub_10008BE94()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_10008BAB4(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10008BEF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10008EBE4();
  *a2 = result;
  return result;
}

unint64_t sub_10008BF24@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10008BAB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10008BF6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10008EBE4();
  *a1 = result;
  return result;
}

uint64_t sub_10008BFA0(uint64_t a1)
{
  v2 = sub_10008E8CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008BFDC(uint64_t a1)
{
  v2 = sub_10008E8CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSHomeKitInvitationSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DA7A0, &qword_1000B2290);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v44 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10008E8CC();
  sub_1000A0CE0();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v45) = 0;
  sub_1000A0A80();
  if (!v2)
  {
    v13 = type metadata accessor for IDSHomeKitInvitationSchema(0);
    v14 = v13[5];
    LOBYTE(v45) = 1;
    sub_10009F350();
    sub_10008E9E8(&qword_1000D84A0, &type metadata accessor for Date);
    sub_1000A0AD0();
    v45 = *(v3 + v13[6]);
    v46 = 2;
    sub_10008E940();
    sub_1000A0AD0();
    v15 = *(v3 + v13[7]);
    LOBYTE(v45) = 3;
    sub_1000A0A90();
    v16 = v3 + v13[8];
    v17 = *v16;
    v18 = v16[8];
    LOBYTE(v45) = 4;
    sub_1000A0AB0();
    v19 = *(v3 + v13[9]);
    LOBYTE(v45) = 5;
    sub_1000A0A90();
    v45 = *(v3 + v13[10]);
    v46 = 6;
    sub_10008E994();
    sub_1000A0AD0();
    v20 = v13[11];
    LOBYTE(v45) = 7;
    sub_10009F370();
    sub_10008E9E8(&qword_1000D8808, &type metadata accessor for UUID);
    sub_1000A0AD0();
    v21 = (v3 + v13[12]);
    v22 = v21[1];
    *&v45 = *v21;
    *(&v45 + 1) = v22;
    v46 = 8;
    sub_100005750(v45, v22);
    v44[1] = sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v45, *(&v45 + 1));
    v23 = (v3 + v13[13]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v45) = 9;
    sub_1000A0A80();
    v26 = v13[14];
    LOBYTE(v45) = 10;
    sub_1000A0AD0();
    v27 = (v3 + v13[15]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v45) = 11;
    sub_1000A0A80();
    v31 = (v3 + v13[16]);
    v32 = v31[1];
    *&v45 = *v31;
    *(&v45 + 1) = v32;
    v46 = 12;
    sub_100005750(v45, v32);
    sub_1000A0AD0();
    sub_1000057B0(v45, *(&v45 + 1));
    v33 = (v3 + v13[17]);
    v34 = *v33;
    v35 = v33[1];
    LOBYTE(v45) = 13;
    sub_1000A0A80();
    v36 = v3 + v13[18];
    v37 = *v36;
    v38 = v36[8];
    LOBYTE(v45) = 14;
    sub_1000A0AB0();
    v39 = v3 + v13[19];
    v40 = *v39;
    v41 = v39[8];
    LOBYTE(v45) = 15;
    sub_1000A0AB0();
    v42 = (v3 + v13[20]);
    v43 = v42[1];
    *&v45 = *v42;
    *(&v45 + 1) = v43;
    v46 = 16;
    sub_100005750(v45, v43);
    sub_1000A0AD0();
    sub_1000057B0(v45, *(&v45 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t IDSHomeKitInvitationSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v52 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v48 - v7;
  v9 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v48 - v11;
  v13 = sub_1000017BC(&qword_1000DA7C0, &qword_1000B2298);
  v53 = *(v13 - 8);
  v54 = v13;
  v14 = *(v53 + 64);
  __chkstk_darwin(v13);
  v16 = v48 - v15;
  v17 = type metadata accessor for IDSHomeKitInvitationSchema(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10008E8CC();
  v55 = v16;
  v22 = v56;
  sub_1000A0CD0();
  if (v22)
  {
    return sub_100002308(a1);
  }

  v49 = a1;
  v50 = v17;
  v56 = v20;
  LOBYTE(v57) = 0;
  v23 = sub_1000A0920();
  v24 = v56;
  *v56 = v23;
  v24[1] = v25;
  sub_10009F350();
  LOBYTE(v57) = 1;
  sub_10008E9E8(&qword_1000D84B8, &type metadata accessor for Date);
  sub_1000A0970();
  v26 = v50;
  sub_1000056E8(v12, v24 + v50[5], &qword_1000D84A8, &unk_1000B0C40);
  v58 = 2;
  sub_10008EA74();
  v48[1] = 0;
  sub_1000A0970();
  *(v24 + v26[6]) = v57;
  LOBYTE(v57) = 3;
  *(v24 + v26[7]) = sub_1000A0930();
  LOBYTE(v57) = 4;
  v27 = sub_1000A0950();
  v28 = v24 + v26[8];
  *v28 = v27;
  v28[8] = v29 & 1;
  LOBYTE(v57) = 5;
  *(v24 + v26[9]) = sub_1000A0930();
  v58 = 6;
  sub_10008EAC8();
  sub_1000A0970();
  *(v24 + v26[10]) = v57;
  sub_10009F370();
  LOBYTE(v57) = 7;
  sub_10008E9E8(&qword_1000D8850, &type metadata accessor for UUID);
  sub_1000A0970();
  sub_1000056E8(v8, v56 + v50[11], &qword_1000D8BC8, &qword_1000A85F8);
  v58 = 8;
  sub_100005424();
  sub_1000A0970();
  *(v56 + v50[12]) = v57;
  LOBYTE(v57) = 9;
  v30 = sub_1000A0920();
  v31 = (v56 + v50[13]);
  *v31 = v30;
  v31[1] = v32;
  LOBYTE(v57) = 10;
  sub_1000A0970();
  sub_1000056E8(v52, v56 + v50[14], &qword_1000D8BC8, &qword_1000A85F8);
  LOBYTE(v57) = 11;
  v33 = sub_1000A0920();
  v34 = (v56 + v50[15]);
  *v34 = v33;
  v34[1] = v35;
  v58 = 12;
  sub_1000A0970();
  *(v56 + v50[16]) = v57;
  LOBYTE(v57) = 13;
  v36 = sub_1000A0920();
  v37 = (v56 + v50[17]);
  *v37 = v36;
  v37[1] = v38;
  LOBYTE(v57) = 14;
  v39 = sub_1000A0950();
  v40 = v56 + v50[18];
  *v40 = v39;
  v40[8] = v41 & 1;
  LOBYTE(v57) = 15;
  v42 = sub_1000A0950();
  v43 = v56 + v50[19];
  *v43 = v42;
  v43[8] = v44 & 1;
  v58 = 16;
  sub_1000A0970();
  (*(v53 + 8))(v55, v54);
  v45 = v51;
  v46 = v56;
  *(v56 + v50[20]) = v57;
  sub_10008F1AC(v46, v45, type metadata accessor for IDSHomeKitInvitationSchema);
  sub_100002308(v49);
  return sub_10008F214(v46, type metadata accessor for IDSHomeKitInvitationSchema);
}

uint64_t sub_10008D158(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "HMWeekDayScheduleRules";
  }

  else
  {
    v2 = "eyExternalRepresentationKey";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "HMWeekDayScheduleRules";
  }

  else
  {
    v4 = "eyExternalRepresentationKey";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1000A0BD0();
  }

  return v5 & 1;
}

Swift::Int sub_10008D1FC()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10008D274()
{
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_10008D2D8()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

void sub_10008D358(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "HMWeekDayScheduleRules";
  }

  else
  {
    v2 = "eyExternalRepresentationKey";
  }

  *a1 = 0xD000000000000016;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_10008D3CC(uint64_t a1)
{
  v2 = sub_10008EB1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008D408(uint64_t a1)
{
  v2 = sub_10008EB1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSHomeKitInviteeScheduleSchema.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000017BC(&qword_1000DA7D8, &qword_1000B22A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10008EB1C();
  sub_1000A0CE0();
  v16 = a2;
  v15 = 0;
  sub_1000017BC(&qword_1000DA7E8, &qword_1000B22A8);
  sub_100090188(&qword_1000DA7F0, sub_10008EB70);
  sub_1000A0AD0();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    sub_1000017BC(&qword_1000DA800, &qword_1000B22B0);
    sub_100090254(&qword_1000DA808, &qword_1000DA810);
    sub_1000A0AD0();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10008D684@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10008EC38(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10008D6CC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000025;
  v3 = *a1;
  v4 = "eRuleCodingKeyStartTime";
  if (v3 == 1)
  {
    v5 = 0xD000000000000025;
  }

  else
  {
    v5 = 0xD00000000000002BLL;
  }

  if (v3 == 1)
  {
    v6 = "eRuleCodingKeyStartTime";
  }

  else
  {
    v6 = "eRuleCodingKeyEndTime";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000027;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "HMYearDayScheduleRules";
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000002BLL;
    v4 = "eRuleCodingKeyEndTime";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000027;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "HMYearDayScheduleRules";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000A0BD0();
  }

  return v11 & 1;
}

Swift::Int sub_10008D7A8()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10008D844()
{
  *v0;
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_10008D8CC()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10008D964@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008EF04(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10008D994(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000025;
  v3 = "eRuleCodingKeyStartTime";
  if (*v1 != 1)
  {
    v2 = 0xD00000000000002BLL;
    v3 = "eRuleCodingKeyEndTime";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000027;
    v4 = "HMYearDayScheduleRules";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

unint64_t sub_10008D9F0()
{
  v1 = 0xD000000000000025;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002BLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000027;
  }

  *v0;
  return result;
}

uint64_t sub_10008DA48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008EF04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10008DA70(uint64_t a1)
{
  v2 = sub_10008EEB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008DAAC(uint64_t a1)
{
  v2 = sub_10008EEB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSHomeKitInviteeScheduleWeekDayRuleSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000DA818, &qword_1000B22B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10008EEB0();
  sub_1000A0CE0();
  v11 = *v3;
  v12 = *(v3 + 8);
  v18[15] = 0;
  sub_1000A0AB0();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = *(v3 + 24);
  v18[14] = 1;
  sub_1000A0AB0();
  v16 = v3[4];
  v17 = *(v3 + 40);
  v18[13] = 2;
  sub_1000A0AB0();
  return (*(v6 + 8))(v9, v5);
}

double IDSHomeKitInviteeScheduleWeekDayRuleSchema.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10008EF50(a1, &v6);
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

uint64_t sub_10008DCF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6144646E45444D48;
  }

  else
  {
    v4 = 0x7472617453444D48;
  }

  if (v3)
  {
    v5 = 0xEF79654B65746144;
  }

  else
  {
    v5 = 0xED000079654B6574;
  }

  if (*a2)
  {
    v6 = 0x6144646E45444D48;
  }

  else
  {
    v6 = 0x7472617453444D48;
  }

  if (*a2)
  {
    v7 = 0xED000079654B6574;
  }

  else
  {
    v7 = 0xEF79654B65746144;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000A0BD0();
  }

  return v9 & 1;
}

Swift::Int sub_10008DDB0()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10008DE4C()
{
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_10008DED4()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10008DF78@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_1000A08F0(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void sub_10008DFD4(uint64_t *a1@<X8>)
{
  v2 = 0x7472617453444D48;
  if (*v1)
  {
    v2 = 0x6144646E45444D48;
  }

  v3 = 0xEF79654B65746144;
  if (*v1)
  {
    v3 = 0xED000079654B6574;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10008E02C()
{
  if (*v0)
  {
    result = 0x6144646E45444D48;
  }

  else
  {
    result = 0x7472617453444D48;
  }

  *v0;
  return result;
}

uint64_t sub_10008E08C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, Swift::OpaquePointer a3@<X4>, char *a4@<X8>)
{
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v7 = sub_1000A08F0(a3, v10);

  if (v7 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!v7)
  {
    v9 = 0;
  }

  *a4 = v9;
  return result;
}

uint64_t sub_10008E0EC(uint64_t a1)
{
  v2 = sub_10008F158();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008E128(uint64_t a1)
{
  v2 = sub_10008F158();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSHomeKitInviteeScheduleYearDayRuleSchema.encode(to:)(void *a1)
{
  v3 = sub_1000017BC(&qword_1000DA828, &qword_1000B22C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10008F158();
  sub_1000A0CE0();
  v11[15] = 0;
  sub_10009F350();
  sub_10008E9E8(&qword_1000D84A0, &type metadata accessor for Date);
  sub_1000A0AD0();
  if (!v1)
  {
    v9 = *(type metadata accessor for IDSHomeKitInviteeScheduleYearDayRuleSchema(0) + 20);
    v11[14] = 1;
    sub_1000A0AD0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t IDSHomeKitInviteeScheduleYearDayRuleSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v30 = &v24 - v9;
  v31 = sub_1000017BC(&qword_1000DA838, &qword_1000B22C8);
  v29 = *(v31 - 8);
  v10 = *(v29 + 64);
  __chkstk_darwin(v31);
  v12 = &v24 - v11;
  v13 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRuleSchema(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10008F158();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v25 = v13;
  v26 = v16;
  v18 = v29;
  v27 = v8;
  sub_10009F350();
  v33 = 0;
  sub_10008E9E8(&qword_1000D84B8, &type metadata accessor for Date);
  v19 = v30;
  v20 = v31;
  sub_1000A0970();
  v21 = v26;
  sub_1000056E8(v19, v26, &qword_1000D84A8, &unk_1000B0C40);
  v32 = 1;
  v22 = v27;
  sub_1000A0970();
  (*(v18 + 8))(v12, v20);
  sub_1000056E8(v22, v21 + *(v25 + 20), &qword_1000D84A8, &unk_1000B0C40);
  sub_10008F1AC(v21, v28, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRuleSchema);
  sub_100002308(a1);
  return sub_10008F214(v21, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRuleSchema);
}

void *sub_10008E6CC(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000DAA58, &qword_1000B2C28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_1000022C4(a1, a1[3]);
  sub_10008BA48();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    v13 = 0;
    sub_1000A09F0();
    sub_1000017BC(&qword_1000DA790, &qword_1000B2288);
    v12 = 1;
    sub_1000902F0(&qword_1000DAA60);
    sub_1000A0A20();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100002308(a1);
  }

  return v9;
}

unint64_t sub_10008E8CC()
{
  result = qword_1000DA7A8;
  if (!qword_1000DA7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA7A8);
  }

  return result;
}

unint64_t sub_10008E940()
{
  result = qword_1000DA7B0;
  if (!qword_1000DA7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA7B0);
  }

  return result;
}

unint64_t sub_10008E994()
{
  result = qword_1000DA7B8;
  if (!qword_1000DA7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA7B8);
  }

  return result;
}

uint64_t sub_10008E9E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008EA30(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_10008EA74()
{
  result = qword_1000DA7C8;
  if (!qword_1000DA7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA7C8);
  }

  return result;
}

unint64_t sub_10008EAC8()
{
  result = qword_1000DA7D0;
  if (!qword_1000DA7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA7D0);
  }

  return result;
}

unint64_t sub_10008EB1C()
{
  result = qword_1000DA7E0;
  if (!qword_1000DA7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA7E0);
  }

  return result;
}

unint64_t sub_10008EB70()
{
  result = qword_1000DA7F8;
  if (!qword_1000DA7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA7F8);
  }

  return result;
}

uint64_t sub_10008EBE4()
{
  v0 = sub_1000A0BE0();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_10008EC38(uint64_t *a1)
{
  v2 = sub_1000017BC(&qword_1000DAA30, &qword_1000B2C20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10008EB1C();
  sub_1000A0CD0();
  sub_1000017BC(&qword_1000DA7E8, &qword_1000B22A8);
  HIBYTE(v10) = 0;
  sub_100090188(&qword_1000DAA38, sub_100090200);
  sub_1000A0970();
  v9 = v11;
  sub_1000017BC(&qword_1000DA800, &qword_1000B22B0);
  HIBYTE(v10) = 1;
  sub_100090254(&qword_1000DAA48, &qword_1000DAA50);
  sub_1000A0970();
  (*(v3 + 8))(v6, v2);
  sub_100002308(a1);
  return v9;
}

unint64_t sub_10008EEB0()
{
  result = qword_1000DA820;
  if (!qword_1000DA820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA820);
  }

  return result;
}

uint64_t sub_10008EF04(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CDD70;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10008EF50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000DAA28, &qword_1000B2C18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10008EEB0();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v27 = 0;
  v11 = sub_1000A0950();
  v13 = v12;
  v14 = v11;
  v26 = 1;
  v15 = sub_1000A0950();
  v24 = v16;
  v23 = v15;
  v25 = 2;
  v17 = sub_1000A0950();
  v18 = v9;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  result = sub_100002308(a1);
  *a2 = v14;
  *(a2 + 8) = v13 & 1;
  *(a2 + 16) = v23;
  *(a2 + 24) = v24 & 1;
  *(a2 + 32) = v17;
  *(a2 + 40) = v20 & 1;
  return result;
}

unint64_t sub_10008F158()
{
  result = qword_1000DA830;
  if (!qword_1000DA830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA830);
  }

  return result;
}

uint64_t sub_10008F1AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008F214(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10008F318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_10008F474(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10008F5B0()
{
  sub_10007CBE4(319, &qword_1000D92B8);
  if (v0 <= 0x3F)
  {
    sub_10008F790(319, &qword_1000D8528, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      sub_10007CBE4(319, &qword_1000DA8A8);
      if (v2 <= 0x3F)
      {
        sub_10007CBE4(319, &qword_1000DA418);
        if (v3 <= 0x3F)
        {
          sub_10007CBE4(319, &qword_1000D8530);
          if (v4 <= 0x3F)
          {
            sub_10007CBE4(319, &unk_1000DA8B0);
            if (v5 <= 0x3F)
            {
              sub_10008F790(319, &qword_1000D8C50, &type metadata accessor for UUID);
              if (v6 <= 0x3F)
              {
                sub_10007CBE4(319, &qword_1000D86B8);
                if (v7 <= 0x3F)
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

void sub_10008F790(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000A07A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10008F7F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10008F850(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

__n128 sub_10008F8B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10008F8C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008F8E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_10008F940(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10008F9CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10008FA48()
{
  sub_10008F790(319, &qword_1000D8528, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for IDSHomeKitInvitationSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSHomeKitInvitationSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10008FC64()
{
  result = qword_1000DA9B0;
  if (!qword_1000DA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9B0);
  }

  return result;
}

unint64_t sub_10008FCBC()
{
  result = qword_1000DA9B8;
  if (!qword_1000DA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9B8);
  }

  return result;
}

unint64_t sub_10008FD14()
{
  result = qword_1000DA9C0;
  if (!qword_1000DA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9C0);
  }

  return result;
}

unint64_t sub_10008FD6C()
{
  result = qword_1000DA9C8;
  if (!qword_1000DA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9C8);
  }

  return result;
}

unint64_t sub_10008FDC4()
{
  result = qword_1000DA9D0;
  if (!qword_1000DA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9D0);
  }

  return result;
}

unint64_t sub_10008FE1C()
{
  result = qword_1000DA9D8;
  if (!qword_1000DA9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA9D8);
  }

  return result;
}