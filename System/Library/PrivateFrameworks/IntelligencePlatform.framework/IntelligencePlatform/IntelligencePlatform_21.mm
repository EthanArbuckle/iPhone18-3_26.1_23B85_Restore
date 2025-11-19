uint64_t sub_1ABBF8068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v125 = a1;
  v119 = a4;
  v6 = 0x44495F444DLL;
  v126 = sub_1ABF223D4();
  v7 = sub_1ABA7BB64(v126);
  v120 = v8;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v118 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v93 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v93 - v16;
  v18 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v19 = sub_1ABA7BB64(v18);
  v124 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v93 - v23;
  v25 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  v26 = sub_1ABA7BB64(v25);
  v122 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v31 = &v93 - v30;
  v32 = *(a2 + 8);
  v33 = *(a2 + 16);

  sub_1ABF22CE4();
  v128[3] = sub_1ABF22D14();
  v128[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v128);
  sub_1ABF22D24();
  v127[3] = MEMORY[0x1E69E6530];
  v127[4] = MEMORY[0x1E69A0178];
  v127[0] = a3;
  v129[3] = sub_1ABF22424();
  v129[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v129);
  sub_1ABF22AD4();
  sub_1ABB6EEA4(v127);
  sub_1ABA84B54(v128);
  v123 = v25;
  sub_1ABF22CA4();
  sub_1ABA84B54(v129);
  sub_1ABAAB754();
  v125 = v18;
  v34 = v121;
  v35 = sub_1ABF22284();
  if (v34)
  {
    v37 = v122;
    v36 = v123;
    (*(v124 + 8))(v24, v125);
    (*(v37 + 8))(v31, v36);
  }

  else
  {
    v38 = v35;
    v117 = v24;
    v116 = v31;
    v115 = v15;
    v39 = (v120 + 8);
    v120 = "name";
    v114 = "entity_relevance";
    v121 = MEMORY[0x1E69E7CC0];
    while (sub_1ABE7EDC8())
    {
      v40 = v38;
      sub_1ABB33C40();
      v41 = sub_1ABF24444();
      v43 = v42;
      v44 = *v39;
      (*v39)(v17, v126);
      if (v43)
      {
        if (qword_1ED871B18 != -1)
        {
          swift_once();
        }

        v45 = sub_1ABF237F4();
        sub_1ABA7AA24(v45, qword_1ED871B20);
        v46 = sub_1ABF237D4();
        v47 = sub_1ABF24664();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = v6;
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_1ABA78000, v46, v47, "MD_ID isn't available in entity_summary view", v49, 2u);
          v50 = v49;
          v6 = v48;
          MEMORY[0x1AC5AB8B0](v50, -1, -1);
        }

        v38 = v40;
      }

      else
      {
        sub_1ABB32E40();
        v112 = v51;
        v113 = v52;
        sub_1ABB32E40();
        v111 = v53;
        v110 = v54;
        v55 = v115;
        sub_1ABA7D6B0();
        v109 = v56;
        v108 = v57;
        sub_1ABB32E40();
        v107 = v58;
        v106 = v59;
        sub_1ABB32E40();
        v104 = v60;
        v62 = v61;
        sub_1ABB32E40();
        v103 = v63;
        v102 = v64;
        sub_1ABB32E40();
        v101 = v65;
        v100 = v66;
        sub_1ABA7D6B0();
        v99 = v67;
        v98 = v68;
        v105 = v62;
        sub_1ABB32E40();
        v97 = v69;
        v96 = v70;
        sub_1ABB33C40();
        v95 = sub_1ABF24334();
        v131 = v71;
        v93 = v39;
        v44(v55, v126);
        v72 = v118;
        sub_1ABB33C40();
        v94 = sub_1ABF24444();
        v74 = v73;
        v44(v72, v126);
        v75 = v131 & 1;
        LOBYTE(v127[0]) = v131 & 1;
        v131 = v74 & 1;
        v130 = v74 & 1;
        LODWORD(v128[0]) = v129[0];
        *(v128 + 3) = *(v129 + 3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = *(v121 + 16);
          sub_1ABADA86C();
          v121 = v90;
        }

        v76 = *(v121 + 16);
        if (v76 >= *(v121 + 24) >> 1)
        {
          sub_1ABADA86C();
          v121 = v91;
        }

        v77 = v121;
        *(v121 + 16) = v76 + 1;
        v78 = v77 + 184 * v76;
        v79 = v113;
        *(v78 + 32) = v41;
        *(v78 + 40) = v79;
        v80 = v111;
        *(v78 + 48) = v112;
        *(v78 + 56) = v80;
        v81 = v109;
        *(v78 + 64) = v110;
        *(v78 + 72) = v81;
        v82 = v107;
        *(v78 + 80) = v108;
        *(v78 + 88) = v82;
        v83 = v105;
        *(v78 + 96) = v106;
        *(v78 + 104) = v83;
        v84 = v103;
        *(v78 + 112) = v104;
        *(v78 + 120) = v84;
        v85 = v101;
        *(v78 + 128) = v102;
        *(v78 + 136) = v85;
        v86 = v99;
        *(v78 + 144) = v100;
        *(v78 + 152) = v86;
        v87 = v97;
        *(v78 + 160) = v98;
        *(v78 + 168) = v87;
        v88 = v95;
        *(v78 + 176) = v96;
        *(v78 + 184) = v88;
        *(v78 + 192) = v75;
        LODWORD(v88) = v128[0];
        *(v78 + 196) = *(v128 + 3);
        *(v78 + 193) = v88;
        *(v78 + 200) = v94;
        *(v78 + 208) = v131;
        v6 = 0x44495F444DLL;
        v38 = v40;
      }
    }

    (*(v124 + 8))(v117, v125);
    result = (*(v122 + 8))(v116, v123);
    *v119 = v121;
  }

  return result;
}

uint64_t static PersonEntityTaggingService.operatingPoints(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    if (qword_1EB4D0340 != -1)
    {
LABEL_22:
      swift_once();
    }

    v3 = MEMORY[0x1E69E7CC8];
    v4 = off_1EB4D5108;
    while (1)
    {
      v5 = *v2;
      if (v4[2] && (v6 = *v2, v7 = sub_1ABAAFEB4(), (v8 & 1) != 0))
      {
        v9 = *(v4[7] + 8 * v7);
        swift_isUniquelyReferenced_nonNull_native();
        v10 = sub_1ABAAFEB4();
        if (__OFADD__(v3[2], (v11 & 1) == 0))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v12 = v10;
        v13 = v11;
        sub_1ABAD219C(&qword_1EB4D51A8, &qword_1ABF494F0);
        sub_1ABA80A5C();
        if (sub_1ABF24C64())
        {
          v14 = sub_1ABAAFEB4();
          if ((v13 & 1) != (v15 & 1))
          {
            result = sub_1ABF25104();
            __break(1u);
            return result;
          }

          v12 = v14;
        }

        if (v13)
        {
          v16 = v3[7];
          v17 = *(v16 + 8 * v12);
          *(v16 + 8 * v12) = v9;
        }

        else
        {
          sub_1ABA93478(&v3[v12 >> 6]);
          *(v3[6] + v12) = v5;
          *(v3[7] + 8 * v12) = v9;
          v22 = v3[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v3[2] = v24;
        }
      }

      else
      {
        v18 = sub_1ABAAFEB4();
        if (v19)
        {
          v20 = v18;
          swift_isUniquelyReferenced_nonNull_native();
          v26 = v3;
          v21 = v3[3];
          sub_1ABAD219C(&qword_1EB4D51A8, &qword_1ABF494F0);
          sub_1ABA80A5C();
          sub_1ABF24C64();
          v3 = v26;

          type metadata accessor for PersonEntityTaggingService.PersonETOperatingPoints();
          sub_1ABAB20D0();
          sub_1ABF24C84();
        }
      }

      ++v2;
      if (!--v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t static PersonEntityTaggingService.rocCurve(for:)()
{
  type metadata accessor for PersonEntityTaggingService.PersonETReceiverOperatingCharacteristic();
  sub_1ABAB20D0();

  return sub_1ABF239C4();
}

id sub_1ABBF8C8C()
{
  v0 = objc_allocWithZone(type metadata accessor for PersonEntityTaggingService.PersonETOperatingPoints());
  result = PersonEntityTaggingService.PersonETOperatingPoints.init(precision0point9:precision0point8:precision0point7:recall0point9:recall0point8:recall0point7:highPrecision:highRecall:highF1:)(0.9, 0.8, 0.7, 0.6, 0.75, 0.8, 0.9, 0.65, v0, v1, v2, v3, v4, v5, v6, v7, 0x3FEA3D70A3D70A3DLL);
  qword_1EB4D50F8 = result;
  return result;
}

id sub_1ABBF8DAC()
{
  v0 = objc_allocWithZone(type metadata accessor for PersonEntityTaggingService.PersonETOperatingPoints());
  result = PersonEntityTaggingService.PersonETOperatingPoints.init(precision0point9:precision0point8:precision0point7:recall0point9:recall0point8:recall0point7:highPrecision:highRecall:highF1:)(0.95, 0.9, 0.8, 0.7, 0.8, 0.85, 0.92, 0.72, v0, v1, v2, v3, v4, v5, v6, v7, 0x3FEB333333333333);
  qword_1EB4D5100 = result;
  return result;
}

void *sub_1ABBF8E30()
{
  sub_1ABAD219C(&qword_1EB4D5250, &qword_1ABF49708);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF49460;
  *(inited + 32) = 4;
  if (qword_1EB4D0338 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB4D5100;
  *(inited + 40) = qword_1EB4D5100;
  *(inited + 48) = 7;
  *(inited + 56) = v1;
  *(inited + 64) = 6;
  *(inited + 72) = v1;
  *(inited + 80) = 15;
  *(inited + 88) = v1;
  *(inited + 96) = 17;
  *(inited + 104) = v1;
  *(inited + 112) = 16;
  *(inited + 120) = v1;
  *(inited + 128) = 8;
  *(inited + 136) = v1;
  *(inited + 144) = 9;
  *(inited + 152) = v1;
  *(inited + 160) = 10;
  *(inited + 168) = v1;
  *(inited + 176) = 18;
  *(inited + 184) = v1;
  *(inited + 192) = 20;
  *(inited + 200) = v1;
  *(inited + 208) = 19;
  *(inited + 216) = v1;
  *(inited + 224) = 21;
  v2 = qword_1EB4D0330;
  v3 = v1;
  if (v2 == -1)
  {
    v4 = v3;
  }

  else
  {
    swift_once();
    v4 = qword_1EB4D5100;
  }

  v5 = qword_1EB4D50F8;
  *(inited + 232) = qword_1EB4D50F8;
  *(inited + 240) = 23;
  *(inited + 248) = v5;
  *(inited + 256) = 26;
  *(inited + 264) = v5;
  *(inited + 272) = 22;
  *(inited + 280) = v4;
  type metadata accessor for PersonEntityTaggingService.PersonETOperatingPoints();
  sub_1ABAB20D0();
  v6 = v5;
  v7 = v4;
  result = sub_1ABF239C4();
  off_1EB4D5108 = result;
  return result;
}

id PersonEntityTaggingService.PersonETOperatingPoints.init(precision0point9:precision0point8:precision0point7:recall0point9:recall0point8:recall0point7:highPrecision:highRecall:highF1:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *&v17[OBJC_IVAR___GDPersonETOperatingPointsInner_precision0point9] = a1;
  *&v17[OBJC_IVAR___GDPersonETOperatingPointsInner_precision0point8] = a2;
  *&v17[OBJC_IVAR___GDPersonETOperatingPointsInner_precision0point7] = a3;
  *&v17[OBJC_IVAR___GDPersonETOperatingPointsInner_recall0point9] = a4;
  *&v17[OBJC_IVAR___GDPersonETOperatingPointsInner_recall0point8] = a5;
  *&v17[OBJC_IVAR___GDPersonETOperatingPointsInner_recall0point7] = a6;
  *&v17[OBJC_IVAR___GDPersonETOperatingPointsInner_highPrecision] = a7;
  *&v17[OBJC_IVAR___GDPersonETOperatingPointsInner_highRecall] = a8;
  *&v17[OBJC_IVAR___GDPersonETOperatingPointsInner_highF1] = a17;
  v19.receiver = v17;
  v19.super_class = type metadata accessor for PersonEntityTaggingService.PersonETOperatingPoints();
  return objc_msgSendSuper2(&v19, sel_init);
}

id PersonEntityTaggingService.PersonETOperatingPoints.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PersonEntityTaggingService.PersonETOperatingCharacteristic.init(truePositives:falsePositives:trueNegatives:falseNegatives:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___GDPersonETOperatingCharacteristicInner_truePositives] = a1;
  *&v4[OBJC_IVAR___GDPersonETOperatingCharacteristicInner_falsePositives] = a2;
  *&v4[OBJC_IVAR___GDPersonETOperatingCharacteristicInner_trueNegatives] = a3;
  *&v4[OBJC_IVAR___GDPersonETOperatingCharacteristicInner_falseNegatives] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for PersonEntityTaggingService.PersonETOperatingCharacteristic();
  return objc_msgSendSuper2(&v6, sel_init);
}

id PersonEntityTaggingService.PersonETReceiverOperatingCharacteristic.init(threshold:precision:recall:)(double a1, double a2, double a3)
{
  *&v3[OBJC_IVAR___GDPersonETReceiverOperatingCharacteristicInner_threshold] = a1;
  *&v3[OBJC_IVAR___GDPersonETReceiverOperatingCharacteristicInner_precision] = a2;
  *&v3[OBJC_IVAR___GDPersonETReceiverOperatingCharacteristicInner_recall] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PersonEntityTaggingService.PersonETReceiverOperatingCharacteristic();
  return objc_msgSendSuper2(&v5, sel_init);
}

id PersonEntityTaggingService.PersonETTotalOperatingCharacteristic.init(threshold:operatingCharacteristic:)(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR___GDPersonETTotalOperatingCharacteristicInner_threshold] = a2;
  *&v2[OBJC_IVAR___GDPersonETTotalOperatingCharacteristicInner_operatingCharacteristic] = a1;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PersonEntityTaggingService.PersonETTotalOperatingCharacteristic();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1ABBF9528(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t static EntityTaggingService.operatingPoints(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    if (qword_1EB4D0358 != -1)
    {
LABEL_22:
      swift_once();
    }

    v3 = off_1EB4D51A0;
    v4 = MEMORY[0x1E69E7CC8];
    v5 = 72;
    while (1)
    {
      v6 = *v2;
      if (v3[2] && (v7 = *v2, v8 = sub_1ABAAFEB4(), (v9 & 1) != 0))
      {
        memcpy(__dst, (v3[7] + v8 * v5), sizeof(__dst));
        swift_isUniquelyReferenced_nonNull_native();
        v10 = sub_1ABAAFEB4();
        if (__OFADD__(v4[2], (v11 & 1) == 0))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v5 = v10;
        v12 = v11;
        sub_1ABAD219C(&qword_1EB4D5240, &qword_1ABF494F8);
        LODWORD(v13) = sub_1ABF24C64();
        if (v13)
        {
          v13 = sub_1ABAAFEB4();
          if ((v12 & 1) != (v14 & 1))
          {
            result = sub_1ABF25104();
            __break(1u);
            return result;
          }

          v5 = v13;
        }

        if (v12)
        {
          sub_1ABA7C100(v13, v14, v15, v16, v17, v18, v19, v20, v4, __dst[0]);
        }

        else
        {
          sub_1ABA93478(&v4[v5 >> 6]);
          *(v4[6] + v5) = v6;
          sub_1ABA7C100(v23, v24, v25, v26, v27, v28, v29, v30, v4, __dst[0]);
          v31 = v4[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_21;
          }

          v4[2] = v33;
        }
      }

      else
      {
        sub_1ABAAFEB4();
        if (v21)
        {
          swift_isUniquelyReferenced_nonNull_native();
          *__dst = v4;
          v22 = v4[3];
          sub_1ABAD219C(&qword_1EB4D5240, &qword_1ABF494F8);
          sub_1ABA80A5C();
          sub_1ABF24C64();
          v4 = *__dst;
          sub_1ABAB20D0();
          sub_1ABF24C84();
        }
      }

      ++v2;
      if (!--v1)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t static EntityTaggingService.rocCurve(for:)()
{
  sub_1ABAB20D0();

  return sub_1ABF239C4();
}

double sub_1ABBF97E4()
{
  xmmword_1EB4D5110 = xmmword_1ABF49470;
  unk_1EB4D5120 = xmmword_1ABF49480;
  result = 0.75;
  xmmword_1EB4D5130 = xmmword_1ABF49490;
  unk_1EB4D5140 = xmmword_1ABF494A0;
  qword_1EB4D5150 = 0x3FEA3D70A3D70A3DLL;
  return result;
}

double sub_1ABBF982C()
{
  xmmword_1EB4D5158 = xmmword_1ABF494B0;
  unk_1EB4D5168 = xmmword_1ABF494C0;
  result = 0.8;
  xmmword_1EB4D5178 = xmmword_1ABF494D0;
  unk_1EB4D5188 = xmmword_1ABF494E0;
  qword_1EB4D5198 = 0x3FEB333333333333;
  return result;
}

void *sub_1ABBF986C()
{
  sub_1ABAD219C(&qword_1EB4D5248, &qword_1ABF49700);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1ABF49460;
  *(v0 + 32) = 4;
  if (qword_1EB4D0350 != -1)
  {
    swift_once();
  }

  memcpy((v0 + 40), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 112) = 7;
  memcpy((v0 + 120), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 192) = 6;
  memcpy((v0 + 200), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 272) = 15;
  memcpy((v0 + 280), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 352) = 17;
  memcpy((v0 + 360), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 432) = 16;
  memcpy((v0 + 440), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 512) = 8;
  memcpy((v0 + 520), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 592) = 9;
  memcpy((v0 + 600), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 672) = 10;
  memcpy((v0 + 680), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 752) = 18;
  memcpy((v0 + 760), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 832) = 20;
  memcpy((v0 + 840), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 912) = 19;
  memcpy((v0 + 920), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 992) = 21;
  if (qword_1EB4D0348 != -1)
  {
    swift_once();
  }

  memcpy((v0 + 1000), &xmmword_1EB4D5110, 0x48uLL);
  *(v0 + 1072) = 23;
  memcpy((v0 + 1080), &xmmword_1EB4D5110, 0x48uLL);
  *(v0 + 1152) = 26;
  memcpy((v0 + 1160), &xmmword_1EB4D5110, 0x48uLL);
  *(v0 + 1232) = 22;
  memcpy((v0 + 1240), &xmmword_1EB4D5158, 0x48uLL);
  sub_1ABAB20D0();
  result = sub_1ABF239C4();
  off_1EB4D51A0 = result;
  return result;
}

__n128 EntityTaggingService.TotalOperatingCharacteristic.operatingCharacteristic.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1ABBF9CB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBF9CD0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_1ABBF9D18(uint64_t a1, int a2)
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

uint64_t sub_1ABBF9D38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1ABBF9D7C(uint64_t a1, int a2)
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

uint64_t sub_1ABBF9D9C(uint64_t result, int a2, int a3)
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

void sub_1ABBF9DE8(void *a1)
{
  v2 = sub_1ABF21BF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 count];
  v23 = MEMORY[0x1E69E7CC0];
  sub_1ABADE24C();
  v8 = v23;
  v9 = a1;
  sub_1ABF24754();

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v17 = v3;
  if (v7)
  {
    sub_1ABC0DB00(&qword_1EB4D56D8, 255, MEMORY[0x1E6968EB0]);
    do
    {
      sub_1ABF24864();
      if (!v22)
      {
        goto LABEL_21;
      }

      sub_1ABAE2BF0(v21, &v19);
      sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v10 = v18;
        v11 = [v18 longLongValue];
      }

      else
      {
        v11 = 0;
      }

      sub_1ABA84B54(v21);
      v23 = v8;
      v12 = *(v8 + 16);
      if (v12 >= *(v8 + 24) >> 1)
      {
        sub_1ABADE24C();
        v8 = v23;
      }

      *(v8 + 16) = v12 + 1;
      *(v8 + 8 * v12 + 32) = v11;
    }

    while (--v7);
  }

  sub_1ABC0DB00(&qword_1EB4D56D8, 255, MEMORY[0x1E6968EB0]);
  while (1)
  {
    sub_1ABF24864();
    if (!v20)
    {
      break;
    }

    sub_1ABAFF238(&v19, v21);
    sub_1ABAE2BF0(v21, &v19);
    sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v13 = v18;
      v14 = [v18 longLongValue];
    }

    else
    {
      v14 = 0;
    }

    sub_1ABA84B54(v21);
    v23 = v8;
    v15 = *(v8 + 16);
    if (v15 >= *(v8 + 24) >> 1)
    {
      sub_1ABADE24C();
      v8 = v23;
    }

    *(v8 + 16) = v15 + 1;
    *(v8 + 8 * v15 + 32) = v14;
  }

  (*(v17 + 8))(v6, v2);
  sub_1ABAB08B8(&v19, &qword_1EB4D3000, &unk_1ABF3AA60);
}

uint64_t sub_1ABBFA180(void *a1)
{
  v2 = sub_1ABF21BF4();
  v21[0] = *(v2 - 8);
  v3 = *(v21[0] + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABF24754();
  v21[2] = sub_1ABC0DB00(&qword_1EB4D56D8, 255, MEMORY[0x1E6968EB0]);
  v22 = v5;
  while (1)
  {
    sub_1ABF24864();
    if (!v26)
    {
      (*(v21[0] + 8))(v5, v2);
      return a1;
    }

    sub_1ABAFF238(&v25, v24);
    sub_1ABAE2BF0(v24, &v23);
    sub_1ABAFF390(0, &qword_1EB4D56E0, off_1E7960300);
    if (!swift_dynamicCast())
    {
      goto LABEL_16;
    }

    v6 = v2;
    v7 = v27;
    v8 = [v27 idValue];
    v9 = [v7 tag] - 1;
    v10 = v9 > 0x19 ? 0 : byte_1ABF4AD5A[v9];
    swift_isUniquelyReferenced_nonNull_native();
    v23 = a1;
    v11 = sub_1ABAF81A8();
    if (__OFADD__(a1[2], (v12 & 1) == 0))
    {
      break;
    }

    v13 = v11;
    v14 = v12;
    sub_1ABAD219C(&qword_1EB4D56E8, &unk_1ABF4ACE8);
    if (sub_1ABF24C64())
    {
      v15 = sub_1ABAF81A8();
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_20;
      }

      v13 = v15;
    }

    a1 = v23;
    if (v14)
    {
      *(v23[7] + v13) = v10;
    }

    else
    {
      v23[(v13 >> 6) + 8] |= 1 << v13;
      *(a1[6] + 8 * v13) = v8;
      *(a1[7] + v13) = v10;
      v17 = a1[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_19;
      }

      a1[2] = v19;
    }

    v2 = v6;
    v5 = v22;
LABEL_16:
    sub_1ABA84B54(v24);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABBFA5FC(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_1ABAD219C(a2, a3);
    sub_1ABA89740();
    v6 = sub_1ABF24D54();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v8 = v6;
  a4(a1, 1, &v8);
  return v8;
}

IntelligencePlatform::PersonEntityTagType __swiftcall PersonEntityTagType.init(qid:)(Swift::String qid)
{
  object = qid._object;
  countAndFlagsBits = qid._countAndFlagsBits;
  v4 = v1;
  v5 = qid._countAndFlagsBits == 0x3036353751 && qid._object == 0xE500000000000000;
  if (v5 || (sub_1ABA7C038() & 1) != 0)
  {

    v7 = 6;
  }

  else
  {
    v8 = countAndFlagsBits == 0x3536353751 && object == 0xE500000000000000;
    if (v8 || (sub_1ABA7C038() & 1) != 0)
    {

      v7 = 7;
    }

    else
    {
      v9 = countAndFlagsBits == 0x32333237373151 && object == 0xE700000000000000;
      if (v9 || (sub_1ABA7C038() & 1) != 0)
      {

        v7 = 16;
      }

      else
      {
        v10 = countAndFlagsBits == 0x34393138303351 && object == 0xE700000000000000;
        if (v10 || (sub_1ABA7C038() & 1) != 0)
        {

          v7 = 17;
        }

        else
        {
          v11 = countAndFlagsBits == 0x3634313638303151 && object == 0xE900000000000035;
          if (v11 || (sub_1ABA7C038() & 1) != 0)
          {

            v7 = 9;
          }

          else
          {
            v12 = countAndFlagsBits == 0x34393035393551 && object == 0xE700000000000000;
            if (v12 || (sub_1ABA7C038() & 1) != 0)
            {

              v7 = 10;
            }

            else
            {
              v13 = countAndFlagsBits == 0x3835373533323951 && object == 0xE800000000000000;
              if (v13 || (sub_1ABA7C038() & 1) != 0)
              {

                v7 = 12;
              }

              else
              {
                v14 = countAndFlagsBits == 0x3434333833323951 && object == 0xE800000000000000;
                if (v14 || (sub_1ABA7C038() & 1) != 0)
                {

                  v7 = 13;
                }

                else
                {
                  v15 = countAndFlagsBits == 0x3737373932373151 && object == 0xE900000000000037;
                  if (v15 || (sub_1ABA7C038() & 1) != 0)
                  {

                    v7 = 21;
                  }

                  else
                  {
                    v16 = countAndFlagsBits == 0x30333838383151 && object == 0xE700000000000000;
                    if (v16 || (sub_1ABA7C038() & 1) != 0)
                    {

                      v7 = 19;
                    }

                    else
                    {
                      v17 = countAndFlagsBits == 3551824 && object == 0xE300000000000000;
                      if (v17 || (sub_1ABA7C038() & 1) != 0)
                      {

                        v7 = 18;
                      }

                      else if (countAndFlagsBits == 0x38373832313251 && object == 0xE700000000000000)
                      {

                        v7 = 20;
                      }

                      else
                      {
                        v19 = sub_1ABA7C038();

                        if (v19)
                        {
                          v7 = 20;
                        }

                        else
                        {
                          v7 = 1;
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

  *v4 = v7;
  return result;
}

uint64_t sub_1ABBFACF4@<X0>(uint64_t *a1@<X8>)
{
  result = PersonEntityTagType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABBFADDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1ABBFAE04, 0, 0);
}

uint64_t sub_1ABBFAE04()
{
  sub_1ABA906D0();
  v1 = v0[2];
  if (!v1)
  {
    sub_1ABB668FC();
    v1 = sub_1ABF239C4();
  }

  v0[7] = v1;
  v3 = v0[2];
  v2 = v0[3];
  if (v2)
  {
    v4 = v0[2];
  }

  else
  {
    sub_1ABB668FC();

    v2 = sub_1ABF239C4();
  }

  v0[8] = v2;
  v6 = v0[3];
  v5 = v0[4];
  if (v5)
  {
    v7 = v0[3];
  }

  else
  {
    sub_1ABB668FC();

    v5 = sub_1ABF239C4();
  }

  v0[9] = v5;
  v8 = v0[4];
  v9 = v0[5];
  if (v9)
  {
    v10 = v0[4];

    v11 = v9;
  }

  else
  {
    sub_1ABB668FC();

    v11 = sub_1ABF239C4();
  }

  v0[10] = v11;

  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_1ABBFAFE4;
  v13 = v0[6];

  return sub_1ABBFD000(v1, v2, v5, v11);
}

uint64_t sub_1ABBFAFE4()
{
  sub_1ABA906D0();
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;

  v6 = v2[10];
  v7 = v2[9];
  v8 = v2[8];
  v9 = v2[7];
  if (v0)
  {
    v10 = v2[10];
  }

  else
  {
    v11 = v2[9];
  }

  v12 = *(v4 + 8);

  return v12();
}

void *static PersonEntityTaggingService.supportedTags(version:)(uint64_t a1, char a2)
{
  type metadata accessor for EntityTaggingService();
  if (a2 & 1 | (*&a1 != 1.0))
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    return &unk_1F2091788;
  }
}

void *static EntityTaggingService.supportedTags(version:)(uint64_t a1, char a2)
{
  if (a2 & 1 | (*&a1 != 1.0))
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    return &unk_1F2091788;
  }
}

char *PersonEntityTaggingService.__allocating_init(etConfig:)()
{
  v0 = objc_allocWithZone(sub_1ABA7E2D8());
  v1 = sub_1ABA8A294();
  return PersonEntityTaggingService.init(etConfig:)(v1);
}

char *PersonEntityTaggingService.init(etConfig:)(void *a1)
{
  v3 = v1;
  type metadata accessor for ViewService();
  v5 = a1;
  v6 = static ViewService.clientService.getter(v5);
  type metadata accessor for EntityTaggingService();
  v7 = swift_allocObject();
  EntityTaggingService.init(etConfig:viewService:)(a1, v6);
  if (v2)
  {

    type metadata accessor for PersonEntityTaggingService();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v3[OBJC_IVAR___GDEntityTaggingServiceInner_entityTaggingService] = v7;
    *&v3[OBJC_IVAR___GDEntityTaggingServiceInner_feedbackService] = [objc_allocWithZone(type metadata accessor for FeedbackService()) init];
    v9.receiver = v3;
    v9.super_class = type metadata accessor for PersonEntityTaggingService();
    v3 = objc_msgSendSuper2(&v9, sel_init);
  }

  return v3;
}

uint64_t EntityTaggingService.__allocating_init(etConfig:)(void *a1)
{
  v2 = type metadata accessor for ViewService();
  v3 = static ViewService.clientService.getter(v2);
  type metadata accessor for EntityTaggingService();
  v4 = swift_allocObject();
  EntityTaggingService.init(etConfig:viewService:)(a1, v3);
  return v4;
}

uint64_t sub_1ABBFB45C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABBFB474()
{
  sub_1ABA7BBF8();
  v1 = *(*(v0 + 32) + OBJC_IVAR___GDEntityTaggingServiceInner_entityTaggingService);
  v2 = swift_task_alloc();
  v3 = sub_1ABA9F194(v2);
  *v3 = v4;
  v5 = sub_1ABA82E4C(v3);

  return sub_1ABC006A0(v5, v6);
}

uint64_t sub_1ABBFB504()
{
  sub_1ABA7BBF8();
  sub_1ABAB10C8();
  v4 = *(v3 + 40);
  v5 = *v2;
  sub_1ABA7BBC0();
  *v6 = v5;

  sub_1ABA82A20();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1ABBFB60C(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_1ABF240D4();
  v4[5] = v7;
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1ABBFB6F0;

  return sub_1ABBFB45C(v7, a2);
}

uint64_t sub_1ABBFB6F0()
{
  sub_1ABA8C008();
  v2 = v0;
  sub_1ABAB10C8();
  v4 = v3;
  sub_1ABA7D1C8();
  *v5 = v4;
  v7 = v6[6];
  v8 = v6[5];
  v9 = v6[3];
  v10 = v6[2];
  v11 = *v1;
  sub_1ABA7BBC0();
  *v12 = v11;

  if (v2)
  {
    v13 = sub_1ABF21BD4();

    v14 = v13;
  }

  else
  {
    type metadata accessor for PersonEntityTaggingService.ScoreRankedPersonEntityTags();
    v15 = sub_1ABF23954();

    v14 = v15;
  }

  v16 = sub_1ABA9FA38();
  v17(v16);

  _Block_release(v4);
  sub_1ABA7BBE0();

  return v18();
}

uint64_t sub_1ABBFB894(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABBFB8AC()
{
  sub_1ABA7BBF8();
  v1 = *(*(v0 + 32) + OBJC_IVAR___GDEntityTaggingServiceInner_entityTaggingService);
  v2 = swift_task_alloc();
  v3 = sub_1ABA9F194(v2);
  *v3 = v4;
  v5 = sub_1ABA82E4C(v3);

  return sub_1ABC00E7C(v5, v6);
}

uint64_t sub_1ABBFB9D0(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1ABBFBA98;

  return sub_1ABBFB894(a1, a2);
}

uint64_t sub_1ABBFBA98()
{
  sub_1ABA8C008();
  sub_1ABA9E694();
  v4 = v3[5];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v2;
  sub_1ABA7BBC0();
  *v8 = v7;

  sub_1ABA88B68();
  v10 = *(v9 + 32);
  if (v0)
  {
    sub_1ABF21BD4();

    v11 = sub_1ABA7AD00();
    v12(v11, 0, v1);

    _Block_release(v10);
  }

  else
  {
    sub_1ABA7AD00();
    sub_1ABA89148();
    v13();
    _Block_release(v10);
  }

  sub_1ABA8C598();

  return v14();
}

uint64_t sub_1ABBFBC14(_BYTE *a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 49) = *a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABBFBC30()
{
  sub_1ABA7BBF8();
  v1 = *(*(v0 + 24) + OBJC_IVAR___GDEntityTaggingServiceInner_entityTaggingService);
  *(v0 + 48) = *(v0 + 49);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1ABBFBCDC;
  v3 = *(v0 + 16);

  return sub_1ABC00D18((v0 + 48), v3);
}

uint64_t sub_1ABBFBCDC()
{
  sub_1ABA7BBF8();
  sub_1ABAB10C8();
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  sub_1ABA7BBC0();
  *v7 = v6;
  *(v8 + 40) = v0;

  if (!v0)
  {
    sub_1ABA82A20();

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABBFBDFC, 0, 0);
}

uint64_t sub_1ABBFBDFC()
{
  sub_1ABA7BBE0();
  v1 = *(v0 + 40);
  return v2();
}

uint64_t sub_1ABBFBE20(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABBFBE38()
{
  sub_1ABA7BBF8();
  v1 = *(*(v0 + 32) + OBJC_IVAR___GDEntityTaggingServiceInner_entityTaggingService);
  v2 = swift_task_alloc();
  v3 = sub_1ABA9F194(v2);
  *v3 = v4;
  v5 = sub_1ABA82E4C(v3);

  return sub_1ABC01074(v5, v6);
}

uint64_t sub_1ABBFBEC8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABBFBEE0()
{
  sub_1ABA7BBF8();
  v1 = *(*(v0 + 32) + OBJC_IVAR___GDEntityTaggingServiceInner_entityTaggingService);
  v2 = swift_task_alloc();
  v3 = sub_1ABA9F194(v2);
  *v3 = v4;
  v5 = sub_1ABA82E4C(v3);

  return sub_1ABC01248(v5, v6);
}

uint64_t sub_1ABBFBF90(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v7 = sub_1ABF240D4();
  v4[6] = v7;
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[7] = v9;
  *v9 = v4;
  v9[1] = sub_1ABBFC08C;

  return sub_1ABBFBEC8(v7, a2);
}

uint64_t sub_1ABBFC08C()
{
  sub_1ABA8C008();
  v2 = v0;
  sub_1ABAB10C8();
  v4 = v3;
  sub_1ABA7D1C8();
  *v5 = v4;
  v7 = v6[7];
  v8 = v6[6];
  v9 = v6[3];
  v10 = v6[2];
  v11 = *v1;
  sub_1ABA7BBC0();
  *v12 = v11;

  if (v2)
  {
    v13 = sub_1ABF21BD4();

    v14 = v13;
  }

  else
  {
    v15 = v4[5];
    type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons();
    sub_1ABC0D42C();
    v16 = sub_1ABF23954();

    v14 = v16;
  }

  v17 = sub_1ABA9FA38();
  v18(v17);

  _Block_release(v4);
  sub_1ABA7BBE0();

  return v19();
}

void static PersonEntityTaggingService.gdTagType(name:)()
{
  sub_1ABA8BA68();
  v1 = v0;
  v3 = v2;
  v4 = 0;
  while (1)
  {
    v5 = byte_1F20915D8[v4++ + 32];
    v6 = 0xE500000000000000;
    v7 = 0x7465736E75;
    switch(v5)
    {
      case 1:
        v6 = 0xE700000000000000;
        v7 = 0x6E776F6E6B6E75;
        break;
      case 2:
        v7 = 0x726568746FLL;
        break;
      case 3:
        v6 = 0xE600000000000000;
        v7 = 0x666C6573796DLL;
        break;
      case 4:
        v6 = 0xE600000000000000;
        v7 = 0x796C696D6166;
        break;
      case 5:
        v6 = 0xE600000000000000;
        v7 = 0x746E65726170;
        break;
      case 6:
        v7 = 0x726568746F6DLL;
        v6 = 0xE600000000000000;
        break;
      case 7:
        v6 = 0xE600000000000000;
        v11 = 1752457574;
        goto LABEL_28;
      case 8:
        v6 = 0xE700000000000000;
        v7 = 0x676E696C626973;
        break;
      case 9:
        v6 = 0xE700000000000000;
        v10 = 0x6568746F7262;
        goto LABEL_26;
      case 10:
        v6 = 0xE600000000000000;
        v11 = 1953720691;
LABEL_28:
        v7 = v11 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        break;
      case 11:
        v6 = 0xEB00000000746E65;
        v7 = 0x726150646E617267;
        break;
      case 12:
        v7 = 0x746F6D646E617267;
        goto LABEL_23;
      case 13:
        v7 = 0x746166646E617267;
LABEL_23:
        v6 = 0xEB00000000726568;
        break;
      case 14:
        v6 = 0xE700000000000000;
        v9 = 0x6C696843796DLL;
        goto LABEL_19;
      case 15:
        v7 = 0x646C696863;
        break;
      case 16:
        v6 = 0xE300000000000000;
        v7 = 7237491;
        break;
      case 17:
        v6 = 0xE800000000000000;
        v12 = 0x746867756164;
        goto LABEL_33;
      case 18:
        v6 = 0xE700000000000000;
        v10 = 0x656E74726170;
LABEL_26:
        v7 = v10 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        break;
      case 19:
        v6 = 0xE400000000000000;
        v7 = 1701210487;
        break;
      case 20:
        v6 = 0xE700000000000000;
        v9 = 0x6E6162737568;
LABEL_19:
        v7 = v9 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
        break;
      case 21:
        v6 = 0xE600000000000000;
        v7 = 0x646E65697266;
        break;
      case 22:
        v7 = 0xD000000000000010;
        v6 = 0x80000001ABF81E70;
        break;
      case 23:
        v6 = 0xE800000000000000;
        v12 = 0x6B726F776F63;
LABEL_33:
        v7 = v12 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        break;
      case 24:
        v6 = 0xE800000000000000;
        v7 = 0x726F62686769656ELL;
        break;
      case 25:
        v6 = 0xE900000000000065;
        v7 = 0x74616D6573756F68;
        break;
      case 26:
        v6 = 0xE600000000000000;
        v7 = 0x696E6D756C61;
        break;
      case 27:
        v8 = 1699772781;
        goto LABEL_36;
      case 28:
        v7 = 0x676F44796DLL;
        break;
      case 29:
        v8 = 1631811949;
LABEL_36:
        v7 = v8 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
        break;
      default:
        break;
    }

    if (v7 == v3 && v6 == v1)
    {
      break;
    }

    v14 = sub_1ABF25054();

    if (v14)
    {
      goto LABEL_46;
    }

    if (v4 == 30)
    {
      goto LABEL_47;
    }
  }

LABEL_46:
  PersonEntityTagType.gdTagType.getter();
LABEL_47:
  sub_1ABA8D208();
}

uint64_t static EntityTaggingService.checkServiceState()()
{
  v23[1] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for ViewService();
  v2 = static ViewService.clientService.getter(v1);
  v3 = OBJC_IVAR___GDSwiftViewService_accessRequester;
  v4 = *&v2[OBJC_IVAR___GDSwiftViewService_accessRequester];
  v5 = sub_1ABF23BD4();
  v23[0] = 0;
  v6 = [v4 requestAssertionForViewName:v5 error:v23];

  v7 = v23[0];
  if (v6)
  {
    sub_1ABA9EBD0();
    v8 = *(v0 + 8);
    v9 = v7;

    v8(v6, &OBJC_IVAR___GDSwiftViewService_databaseCache, v0);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v12 = 1;
  }

  else
  {
    v10 = v23[0];
    v11 = sub_1ABF21BE4();

    swift_willThrow();
    v12 = 0;
  }

  v13 = *&v2[v3];
  sub_1ABA8C954();
  v14 = sub_1ABF23BD4();
  v23[0] = 0;
  v15 = [v13 requestAssertionForViewName:v14 error:v23];

  v16 = v23[0];
  if (v15)
  {
    sub_1ABA9EBD0();
    v17 = *(v12 + 8);
    v18 = v16;

    v17(v15, &OBJC_IVAR___GDSwiftViewService_databaseCache, v12);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v12 & 1) == 0)
    {
      result = 0;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v19 = v23[0];
  v20 = sub_1ABF21BE4();

  swift_willThrow();
  if (v12)
  {
LABEL_9:
    result = 1;
    goto LABEL_10;
  }

  result = 2;
LABEL_10:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ABBFC938(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABBFC94C()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + OBJC_IVAR___GDEntityTaggingServiceInner_feedbackService);
  sub_1ABB150F0();
  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABBFC9D4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABBFC9E8()
{
  sub_1ABA906D0();
  receiver = v0[2].receiver;
  v2 = [receiver eventIds];
  sub_1ABBF9DE8(v2);
  v4 = v3;

  v5 = [receiver feedbackType];
  if (v5 >= 5)
  {
    return sub_1ABF24CD4();
  }

  v6 = v5;
  v7 = type metadata accessor for EntityTaggingStatefulFeedback();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC20IntelligencePlatform29EntityTaggingStatefulFeedback_kind];
  *v9 = v4;
  v9[8] = v6;
  v0[1].receiver = v8;
  v0[1].super_class = v7;
  v10 = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[3].receiver = v10;
  v11 = swift_task_alloc();
  v0[3].super_class = v11;
  *v11 = v0;
  *(v11 + 1) = sub_1ABBFCB68;
  super_class = v0[2].super_class;

  return sub_1ABBFC938(v10);
}

uint64_t sub_1ABBFCB68()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (!v0)
  {

    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABBFCC88, 0, 0);
}

uint64_t sub_1ABBFCC88()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();
  v2 = *(v0 + 64);

  return v1();
}

id EntityTaggingStatefulFeedback.__allocating_init(kind:)()
{
  v2 = objc_allocWithZone(sub_1ABA9EFD8());
  v3 = *(v0 + 8);
  v4 = &v2[OBJC_IVAR____TtC20IntelligencePlatform29EntityTaggingStatefulFeedback_kind];
  *v4 = *v0;
  v4[8] = v3;
  v6.receiver = v2;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1ABBFCDC8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1ABBFCE8C;

  return sub_1ABBFC9D4(v6);
}

uint64_t sub_1ABBFCE8C()
{
  sub_1ABA8C008();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;
  v6 = v3[5];
  v7 = v3[3];
  v8 = v3[2];
  *v5 = *v1;

  sub_1ABA88B68();
  v10 = *(v9 + 32);
  if (v2)
  {
    v11 = sub_1ABF21BD4();

    v12 = sub_1ABA7AD00();
    v13(v12, v11);
  }

  else
  {
    v14 = sub_1ABA7AD00();
    v15(v14, 0);
  }

  _Block_release(v4[4]);
  sub_1ABA8C598();

  return v16();
}

uint64_t sub_1ABBFD000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  return sub_1ABA8C014();
}

void sub_1ABBFD01C()
{
  v1 = *(v0 + 208);
  v2 = *(v1 + 32);
  *(v0 + 472) = v2;
  v3 = -1 << v2;
  v4 = *(v1 + 64);
  sub_1ABAA30F8();
  v7 = v6 & v5;
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + 248) = MEMORY[0x1E69E7CC0];

  if (v7)
  {
LABEL_5:
    sub_1ABA9F44C();
    *(v0 + 256) = v7;
    *(v0 + 264) = v15;
    v16 = __clz(__rbit64(v7)) | (v15 << 6);
    v18 = *(*(v17 + 48) + 8 * v16);
    *(v0 + 473) = *(*(v17 + 56) + v16);
    if ((v18 & 0x80000000000000) != 0)
    {
      v19 = v0 + 16;
      *(v0 + 16) = v14;
    }

    else
    {
      v19 = v0 + 32;
      *(v0 + 32) = v14 + 1272;
    }

    sub_1ABA95828(v18);
    sub_1ABF24FF4();
    sub_1ABA9E92C();

    sub_1ABA898B4();
    *(v0 + 272) = v19;
    v20 = swift_task_alloc();
    *(v0 + 280) = v20;
    *v20 = v0;
    sub_1ABC107D8();
LABEL_9:
    *(v21 + 8) = v22;
    v23 = *(v0 + 240);
    v24 = sub_1ABA97B08();

    sub_1ABAB3D24(v24, v25, 0);
    return;
  }

  v10 = 0;
  v11 = (v0 + 64);
  v12 = (v0 + 168);
  v13 = (v0 + 184);
  while (((63 - v3) >> 6) - 1 != v10)
  {
    v7 = *(v9 + 8 * v10++ + 72);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  v26 = *(v0 + 216);

  *(v0 + 474) = *(v26 + 32);
  v27 = *(v26 + 64);
  sub_1ABAA30F8();
  v30 = v29 & v28;
  *(v0 + 304) = v8;

  if (v30)
  {
    v31 = *(v0 + 216);
LABEL_17:
    sub_1ABA89B4C();
    *(v0 + 312) = v30;
    *(v0 + 320) = v34;
    sub_1ABAA49A0(v35);
    *(v0 + 475) = v38;
    if ((v36 & 0x80000000000000) != 0)
    {
      v39 = (v0 + 56);
      *(v0 + 48) = v37;
      v12 = (v0 + 160);
      v11 = (v0 + 48);
    }

    else
    {
      v39 = (v0 + 72);
      *(v0 + 64) = v37 + 1272;
    }

    *v39 = 0xE300000000000000;
    *v12 = v36;
    v40 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v40);

    v41 = *v11;
    *(v0 + 328) = *v39;
    v42 = swift_task_alloc();
    *(v0 + 336) = v42;
    *v42 = v0;
    sub_1ABAA4060();
    goto LABEL_9;
  }

  sub_1ABAABCA0();
  while (v33 != v32)
  {
    v30 = *(*(v0 + 216) + 8 * v32++ + 72);
    if (v30)
    {
      goto LABEL_17;
    }
  }

  v43 = *(v0 + 216);
  v44 = *(v0 + 224);

  *(v0 + 476) = *(v44 + 32);
  v45 = *(v44 + 64);
  sub_1ABAA30F8();
  v48 = v47 & v46;
  *(v0 + 360) = v8;

  if (v48)
  {
    v49 = *(v0 + 224);
    v50 = (v0 + 80);
LABEL_26:
    sub_1ABA89B4C();
    *(v0 + 368) = v48;
    *(v0 + 376) = v55;
    sub_1ABAA49A0(v56);
    *(v0 + 477) = v60;
    if ((v57 & 0x80000000000000) != 0)
    {
      v61 = (v0 + 88);
      *(v0 + 80) = v58;
      v13 = v59;
    }

    else
    {
      v61 = (v0 + 104);
      *(v0 + 96) = v58 + 1272;
      v50 = (v0 + 96);
    }

    *v61 = 0xE300000000000000;
    *v13 = v57;
    v62 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v62);

    v63 = *v50;
    *(v0 + 384) = *v61;
    v64 = swift_task_alloc();
    v65 = sub_1ABA9E544(v64);
    *v65 = v66;
    sub_1ABA8C024();
    goto LABEL_9;
  }

  sub_1ABAABCA0();
  v50 = (v0 + 80);
  while (v52 != v51)
  {
    sub_1ABA8AB0C();
    v48 = *(v53 + 72);
    v51 = v54;
    if (v48)
    {
      goto LABEL_26;
    }
  }

  v67 = *(v0 + 224);
  v68 = *(v0 + 232);

  *(v0 + 478) = *(v68 + 32);
  v69 = *(v68 + 64);
  sub_1ABAA30F8();
  v72 = v71 & v70;
  *(v0 + 416) = v8;

  if (v72)
  {
    sub_1ABA88FA4();
    v73 = (v0 + 200);
LABEL_35:
    sub_1ABA89B4C();
    *(v0 + 424) = v72;
    *(v0 + 432) = v78;
    sub_1ABAA49A0(v79);
    *(v0 + 479) = v82;
    if ((v80 & 0x80000000000000) != 0)
    {
      v83 = (v0 + 120);
      *(v0 + 112) = v81;
      v73 = (v0 + 192);
      v84 = (v0 + 112);
    }

    else
    {
      v83 = (v0 + 136);
      *(v0 + 128) = v81 + 1272;
      v84 = (v0 + 128);
    }

    *v83 = 0xE300000000000000;
    *v73 = v80;
    v85 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v85);

    v86 = *v84;
    *(v0 + 440) = *v83;
    v87 = swift_task_alloc();
    v88 = sub_1ABA899FC(v87);
    *v88 = v89;
    sub_1ABA7C128();
    goto LABEL_9;
  }

  sub_1ABAABCA0();
  v73 = (v0 + 200);
  while (v75 != v74)
  {
    sub_1ABAB6790();
    v72 = *(v76 + 72);
    v74 = v77;
    if (v72)
    {
      goto LABEL_35;
    }
  }

  v90 = *(v0 + 232);
  v99 = *(v0 + 240);

  v91 = 0;
  v92 = *(v8 + 16);
  v93 = (v8 + 40);
  v94 = OBJC_IVAR___GDEntityTaggingServiceInner_feedbackService;
  while (v92 != v91)
  {
    if (v91 >= *(v8 + 16))
    {
      __break(1u);
      return;
    }

    v95 = *(v93 - 1);
    v96 = *(v99 + v94);
    v97 = *v93;
    sub_1ABB14E68();

    ++v91;
    v93 += 2;
  }

  sub_1ABA80A84();

  v98();
}

uint64_t sub_1ABBFD5D4()
{
  sub_1ABA7BC04();
  sub_1ABA89080();
  v3 = v0;
  sub_1ABA7BBC0();
  *v4 = v0;
  v5 = v0[35];
  v6 = *v2;
  sub_1ABA7D1C8();
  *v7 = v6;
  v0[36] = v8;
  v0[37] = v1;

  sub_1ABA8920C();
  v10 = *(v9 + 272);
  if (v1)
  {
    v11 = v3[31];
  }

  else
  {
    v12 = *(v9 + 272);
  }

  sub_1ABA97330();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1ABBFD700()
{
  v106 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 473);
  v3 = *(v0 + 248);
  v104 = 1;
  v105[0] = v2;
  v4 = objc_allocWithZone(type metadata accessor for EntityTaggingDirectFeedback());
  EntityTaggingDirectFeedback.init(kind:tagInference:)(&v104, v105);
  v5 = sub_1ABAB0F7C(OBJC_IVAR___GDScoreRankedPersonEntityTagsInner_inferenceEventId);
  v6 = *(v0 + 248);
  if ((v5 & 1) == 0)
  {
    sub_1ABAB56BC();
    v6 = v99;
  }

  sub_1ABAA0574();
  if (v7)
  {
    sub_1ABAA12E8();
    v6 = v100;
  }

  sub_1ABAA0710();
  v8 = *(v0 + 296);
  v10 = *(v0 + 256);
  v9 = *(v0 + 264);
  *(v0 + 248) = v6;
  v11 = (v10 - 1) & v10;
  if (v11)
  {
    v12 = *(v0 + 208);
LABEL_12:
    *(v0 + 256) = v11;
    *(v0 + 264) = v9;
    sub_1ABAA3CA0(v9);
    *(v0 + 473) = v17;
    if ((v18 & 0x80000000000000) != 0)
    {
      v19 = v0 + 16;
      sub_1ABA9F44C();
      *(v0 + 16) = v22;
    }

    else
    {
      v19 = v0 + 32;
      sub_1ABA969C4();
      *(v0 + 32) = v21;
    }

    sub_1ABA95828(v20);
    sub_1ABF24FF4();
    sub_1ABA9E92C();

    sub_1ABA898B4();
    *(v0 + 272) = v19;
    v23 = swift_task_alloc();
    *(v0 + 280) = v23;
    *v23 = v0;
    v24 = sub_1ABC107D8();
    goto LABEL_16;
  }

  v13 = (v0 + 64);
  v14 = (v0 + 160);
  v15 = (v0 + 168);
  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_40:
      sub_1ABAA0B94();
      sub_1ABAB65D4();
      while (v79 != v78)
      {
        sub_1ABAB6790();
        v75 = *(v80 + 72);
        v78 = v77;
        if (v75)
        {
          goto LABEL_43;
        }
      }

      v93 = *(v0 + 232);
      v103 = *(v0 + 240);

      sub_1ABA9E0E8();
      v94 = OBJC_IVAR___GDEntityTaggingServiceInner_feedbackService;
      while (1)
      {
        if (v15 == v13)
        {

          sub_1ABA80A84();
          goto LABEL_54;
        }

        sub_1ABA9E1F4();
        if (v7)
        {
          __break(1u);
          return;
        }

        v95 = *(v6 + 32);
        v96 = *(v103 + v94);
        v97 = *(v6 + 40);
        sub_1ABA8A4F0();

        if (v8)
        {
          break;
        }

        sub_1ABA9E448();
      }

      sub_1ABA7C144();
LABEL_54:

      v98();
      return;
    }

    if (v16 >= (((1 << *(v0 + 472)) + 63) >> 6))
    {
      break;
    }

    v11 = *(*(v0 + 208) + 8 * v16 + 64);
    ++v9;
    if (v11)
    {
      v9 = v16;
      goto LABEL_12;
    }
  }

  v102 = (v0 + 128);
  v101 = (v0 + 112);
  v29 = *(v0 + 208);
  v30 = *(v0 + 216);

  *(v0 + 474) = *(v30 + 32);
  v31 = *(v30 + 64);
  sub_1ABAA30F8();
  v34 = v33 & v32;
  *(v0 + 304) = v6;

  if (v34)
  {
    v35 = 0;
    v36 = *(v0 + 216);
LABEL_24:
    *(v0 + 312) = v34;
    *(v0 + 320) = v35;
    sub_1ABA827DC(v36);
    *(v0 + 475) = v39;
    if ((v40 & 0x80000000000000) != 0)
    {
      v41 = (v0 + 56);
      sub_1ABA9F44C();
      *(v0 + 48) = v44;
      v15 = (v0 + 160);
      v13 = (v0 + 48);
    }

    else
    {
      v41 = (v0 + 72);
      sub_1ABA969C4();
      *(v0 + 64) = v43;
    }

    *v41 = 0xE300000000000000;
    *v15 = v42;
    v45 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v45);

    v46 = *v13;
    *(v0 + 328) = *v41;
    v47 = swift_task_alloc();
    *(v0 + 336) = v47;
    *v47 = v0;
    sub_1ABAA4060();
    goto LABEL_16;
  }

  sub_1ABAA0B94();
  sub_1ABAB65D4();
  while (v38 != v37)
  {
    v35 = v37 + 1;
    v36 = *(v0 + 216);
    v34 = *(v36 + 8 * v37++ + 72);
    if (v34)
    {
      goto LABEL_24;
    }
  }

  v48 = *(v0 + 216);
  v13 = *(v0 + 224);

  *(v0 + 476) = *(v13 + 32);
  v49 = v13[8];
  sub_1ABAA30F8();
  v52 = v51 & v50;
  *(v0 + 360) = v6;

  if (!v52)
  {
    sub_1ABAA0B94();
    sub_1ABAB65D4();
    while (v55 != v54)
    {
      sub_1ABA8AB0C();
      v52 = *(v56 + 72);
      v54 = v57;
      if (v52)
      {
        goto LABEL_33;
      }
    }

    v71 = *(v0 + 224);
    v14 = *(v0 + 232);

    sub_1ABA9F93C();
    v72 = v14[8];
    sub_1ABAA30F8();
    v75 = v74 & v73;
    *(v0 + 416) = v6;

    if (v75)
    {
      sub_1ABA88FA4();
LABEL_43:
      *(v0 + 424) = v75;
      *(v0 + 432) = v77;
      sub_1ABA827DC(v76);
      *(v0 + 479) = v81;
      if ((v82 & 0x80000000000000) != 0)
      {
        v83 = (v0 + 120);
        sub_1ABA9F44C();
        *(v0 + 112) = v87;
        v86 = v101;
      }

      else
      {
        v83 = (v0 + 136);
        sub_1ABA969C4();
        *(v0 + 128) = v85;
        v86 = v102;
      }

      sub_1ABA95828(v84);
      v88 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v88);

      v89 = *v86;
      *(v0 + 440) = *v83;
      v90 = swift_task_alloc();
      v91 = sub_1ABA899FC(v90);
      *v91 = v92;
      sub_1ABA7C128();
      goto LABEL_16;
    }

    goto LABEL_40;
  }

  v53 = *(v0 + 224);
LABEL_33:
  sub_1ABA89B4C();
  *(v0 + 368) = v52;
  *(v0 + 376) = v58;
  sub_1ABAA49A0(v59);
  *(v0 + 477) = v63;
  if ((v60 & 0x80000000000000) != 0)
  {
    v64 = (v0 + 88);
    *(v0 + 80) = v61;
    v65 = v62;
  }

  else
  {
    v64 = (v0 + 104);
    *(v0 + 96) = v61 + 1272;
    v65 = (v0 + 96);
  }

  sub_1ABA95828(v60);
  v66 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v66);

  v67 = *v65;
  *(v0 + 384) = *v64;
  v68 = swift_task_alloc();
  v69 = sub_1ABA9E544(v68);
  *v69 = v70;
  sub_1ABA8C024();
LABEL_16:
  *(v24 + 8) = v25;
  v26 = *(v0 + 240);
  v27 = sub_1ABA97B08();

  sub_1ABAB3D24(v27, v28, 0);
}

uint64_t sub_1ABBFDCE4()
{
  sub_1ABA7BC04();
  sub_1ABA89080();
  v3 = v0;
  sub_1ABA7BBC0();
  *v4 = v0;
  v5 = v0[42];
  v6 = *v2;
  sub_1ABA7D1C8();
  *v7 = v6;
  v0[43] = v8;
  v0[44] = v1;

  sub_1ABA8920C();
  v10 = *(v9 + 328);
  if (v1)
  {
    v11 = v3[38];
  }

  else
  {
    v12 = *(v9 + 328);
  }

  sub_1ABA97330();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1ABBFDE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1ABA8CFC8();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = *(v26 + 344);
  v30 = *(v26 + 475);
  v31 = *(v26 + 304);
  BYTE6(a14) = 2;
  HIBYTE(a14) = v30;
  v32 = objc_allocWithZone(type metadata accessor for EntityTaggingDirectFeedback());
  EntityTaggingDirectFeedback.init(kind:tagInference:)(&a14 + 6, &a14 + 7);
  v33 = sub_1ABAB0F7C(OBJC_IVAR___GDScoreRankedPersonEntityTagsInner_inferenceEventId);
  v34 = *(v26 + 304);
  if ((v33 & 1) == 0)
  {
LABEL_47:
    sub_1ABAB56BC();
    v34 = v118;
  }

  sub_1ABAA0574();
  if (v35)
  {
    sub_1ABAA12E8();
    v34 = v119;
  }

  sub_1ABAA0710();
  v36 = *(v26 + 352);
  v38 = *(v26 + 312);
  v37 = *(v26 + 320);
  *(v26 + 304) = v34;
  v39 = (v38 - 1) & v38;
  if (v39)
  {
    v40 = *(v26 + 216);
LABEL_11:
    *(v26 + 312) = v39;
    *(v26 + 320) = v37;
    sub_1ABAA3CA0(v37);
    *(v26 + 475) = v44;
    if ((v45 & 0x80000000000000) != 0)
    {
      v46 = v26 + 48;
      sub_1ABA9F44C();
      *(v26 + 48) = v49;
    }

    else
    {
      v46 = v26 + 64;
      sub_1ABA969C4();
      *(v26 + 64) = v48;
    }

    sub_1ABA95828(v47);
    sub_1ABF24FF4();
    sub_1ABA9E92C();

    sub_1ABA898B4();
    *(v26 + 328) = v46;
    v50 = swift_task_alloc();
    *(v26 + 336) = v50;
    *v50 = v26;
    v51 = sub_1ABAA4060();
    goto LABEL_15;
  }

  v41 = (v26 + 96);
  v42 = (v26 + 184);
  while (1)
  {
    v43 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v43 >= (((1 << *(v26 + 474)) + 63) >> 6))
    {
      break;
    }

    v39 = *(*(v26 + 216) + 8 * v43 + 64);
    ++v37;
    if (v39)
    {
      v37 = v43;
      goto LABEL_11;
    }
  }

  v58 = *(v26 + 216);
  v59 = *(v26 + 224);

  v60 = *(v59 + 32);
  *(v26 + 476) = v60;
  v61 = -1 << v60;
  v62 = *(v59 + 64);
  sub_1ABAA30F8();
  v65 = v64 & v63;
  *(v26 + 360) = v34;

  if (v65)
  {
    v66 = 0;
    v67 = *(v26 + 224);
LABEL_23:
    *(v26 + 368) = v65;
    *(v26 + 376) = v66;
    sub_1ABA827DC(v67);
    *(v26 + 477) = v71;
    if ((v72 & 0x80000000000000) != 0)
    {
      v73 = (v26 + 88);
      sub_1ABA9F44C();
      *(v26 + 80) = v76;
      v42 = (v26 + 176);
      v41 = (v26 + 80);
    }

    else
    {
      v73 = (v26 + 104);
      sub_1ABA969C4();
      *(v26 + 96) = v75;
    }

    *v73 = 0xE300000000000000;
    *v42 = v74;
    v77 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v77);

    v78 = *v41;
    *(v26 + 384) = *v73;
    v79 = swift_task_alloc();
    v80 = sub_1ABA9E544(v79);
    *v80 = v81;
    sub_1ABA8C024();
    goto LABEL_15;
  }

  sub_1ABAA0B94();
  sub_1ABAB65D4();
  while (v69 != v68)
  {
    sub_1ABA8AB0C();
    v65 = *(v70 + 72);
    v68 = v66;
    if (v65)
    {
      goto LABEL_23;
    }
  }

  v82 = *(v26 + 224);
  v83 = *(v26 + 232);

  sub_1ABA9F93C();
  v84 = *(v83 + 64);
  sub_1ABAA30F8();
  v87 = v86 & v85;
  *(v26 + 416) = v34;

  if (v87)
  {
    sub_1ABA88FA4();
    v88 = (v26 + 128);
LABEL_32:
    sub_1ABA89B4C();
    *(v26 + 424) = v87;
    *(v26 + 432) = v93;
    sub_1ABAA49A0(v94);
    *(v26 + 479) = v98;
    if ((v95 & 0x80000000000000) != 0)
    {
      v99 = (v26 + 120);
      *(v26 + 112) = v96;
      v88 = v97;
    }

    else
    {
      v99 = (v26 + 136);
      *(v26 + 128) = v96 + 1272;
    }

    sub_1ABA95828(v95);
    v100 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v100);

    v101 = *v88;
    *(v26 + 440) = *v99;
    v102 = swift_task_alloc();
    v103 = sub_1ABA899FC(v102);
    *v103 = v104;
    sub_1ABA7C128();
LABEL_15:
    *(v51 + 8) = v52;
    v53 = *(v26 + 240);
    sub_1ABA97B08();
    sub_1ABA8B690();

    sub_1ABAB3D24(v54, v55, v56);
    return;
  }

  sub_1ABAA0B94();
  sub_1ABAB65D4();
  v88 = (v26 + 128);
  while (v90 != v89)
  {
    sub_1ABAB6790();
    v87 = *(v91 + 72);
    v89 = v92;
    if (v87)
    {
      goto LABEL_32;
    }
  }

  v105 = *(v26 + 232);
  v120 = *(v26 + 240);

  sub_1ABA9E0E8();
  v106 = OBJC_IVAR___GDEntityTaggingServiceInner_feedbackService;
  while (1)
  {
    if (v61 == v59)
    {

      sub_1ABA80A84();
      goto LABEL_43;
    }

    sub_1ABA9E1F4();
    if (v35)
    {
      __break(1u);
      return;
    }

    v107 = *(v34 + 32);
    v108 = *(v120 + v106);
    v109 = *(v34 + 40);
    sub_1ABA8A4F0();

    if (v36)
    {
      break;
    }

    sub_1ABA9E448();
  }

  sub_1ABA7C144();
LABEL_43:
  sub_1ABA8B690();

  v111(v110, v111, v112, v113, v114, v115, v116, v117, a9, v26 + 192, v26 + 112, v26 + 200, v120, a14, a15, a16, a17, a18);
}

uint64_t sub_1ABBFE2A4()
{
  sub_1ABA7BC04();
  sub_1ABA89080();
  v3 = v0;
  sub_1ABA7BBC0();
  *v4 = v0;
  v5 = v0[49];
  v6 = *v2;
  sub_1ABA7D1C8();
  *v7 = v6;
  v0[50] = v8;
  v0[51] = v1;

  sub_1ABA8920C();
  v10 = *(v9 + 384);
  if (v1)
  {
    v11 = v3[45];
  }

  else
  {
    v12 = *(v9 + 384);
  }

  sub_1ABA97330();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1ABBFE3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA88600();
  a21 = v23;
  a22 = v24;
  sub_1ABA827D0();
  a20 = v22;
  v25 = *(v22 + 400);
  v26 = *(v22 + 477);
  v27 = *(v22 + 360);
  BYTE6(a10) = 3;
  HIBYTE(a10) = v26;
  v28 = objc_allocWithZone(type metadata accessor for EntityTaggingDirectFeedback());
  EntityTaggingDirectFeedback.init(kind:tagInference:)(&a10 + 6, &a10 + 7);
  v29 = sub_1ABAB0F7C(OBJC_IVAR___GDScoreRankedPersonEntityTagsInner_inferenceEventId);
  v30 = *(v22 + 360);
  if ((v29 & 1) == 0)
  {
LABEL_38:
    sub_1ABAB56BC();
    v30 = v91;
  }

  sub_1ABAA0574();
  if (v31)
  {
    sub_1ABAA12E8();
    v30 = v92;
  }

  sub_1ABAA0710();
  v32 = *(v22 + 408);
  v34 = *(v22 + 368);
  v33 = *(v22 + 376);
  *(v22 + 360) = v30;
  v35 = (v34 - 1) & v34;
  if (v35)
  {
    v36 = *(v22 + 224);
LABEL_11:
    *(v22 + 368) = v35;
    *(v22 + 376) = v33;
    sub_1ABAA3CA0(v33);
    *(v22 + 477) = v40;
    if ((v41 & 0x80000000000000) != 0)
    {
      v42 = v22 + 80;
      sub_1ABA9F44C();
      *(v22 + 80) = v45;
    }

    else
    {
      v42 = v22 + 96;
      sub_1ABA969C4();
      *(v22 + 96) = v44;
    }

    sub_1ABA95828(v43);
    sub_1ABF24FF4();
    sub_1ABA9E92C();

    sub_1ABA898B4();
    *(v22 + 384) = v42;
    v46 = swift_task_alloc();
    v47 = sub_1ABA9E544(v46);
    *v47 = v48;
    v49 = sub_1ABA8C024();
    goto LABEL_15;
  }

  v37 = (v22 + 128);
  v38 = (v22 + 200);
  while (1)
  {
    v39 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v39 >= (((1 << *(v22 + 476)) + 63) >> 6))
    {
      break;
    }

    v35 = *(*(v22 + 224) + 8 * v39 + 64);
    ++v33;
    if (v35)
    {
      v33 = v39;
      goto LABEL_11;
    }
  }

  v56 = *(v22 + 224);
  v57 = *(v22 + 232);

  sub_1ABA9F93C();
  v58 = v57[8];
  sub_1ABAA30F8();
  v61 = v60 & v59;
  *(v22 + 416) = v30;

  if (v61)
  {
    sub_1ABA88FA4();
LABEL_23:
    *(v22 + 424) = v61;
    *(v22 + 432) = v63;
    sub_1ABA827DC(v62);
    *(v22 + 479) = v67;
    if ((v68 & 0x80000000000000) != 0)
    {
      v69 = (v22 + 120);
      sub_1ABA9F44C();
      *(v22 + 112) = v72;
      v38 = (v22 + 192);
      v37 = (v22 + 112);
    }

    else
    {
      v69 = (v22 + 136);
      sub_1ABA969C4();
      *(v22 + 128) = v71;
    }

    *v69 = 0xE300000000000000;
    *v38 = v70;
    v73 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v73);

    v74 = *v37;
    *(v22 + 440) = *v69;
    v75 = swift_task_alloc();
    v76 = sub_1ABA899FC(v75);
    *v76 = v77;
    sub_1ABA7C128();
LABEL_15:
    *(v49 + 8) = v50;
    v51 = *(v22 + 240);
    sub_1ABA97B08();
    sub_1ABA8BF40();

    sub_1ABAB3D24(v52, v53, v54);
    return;
  }

  sub_1ABAA0B94();
  sub_1ABAB65D4();
  while (v65 != v64)
  {
    sub_1ABAB6790();
    v61 = *(v66 + 72);
    v64 = v63;
    if (v61)
    {
      goto LABEL_23;
    }
  }

  v78 = *(v22 + 232);
  v93 = *(v22 + 240);

  sub_1ABA9E0E8();
  v79 = OBJC_IVAR___GDEntityTaggingServiceInner_feedbackService;
  while (1)
  {
    if (v61 == v22 + 192)
    {

      sub_1ABA80A84();
      goto LABEL_34;
    }

    sub_1ABA9E1F4();
    if (v31)
    {
      __break(1u);
      return;
    }

    v80 = *(v30 + 32);
    v81 = *(v93 + v79);
    v82 = *(v30 + 40);
    sub_1ABA8A4F0();

    if (v32)
    {
      break;
    }

    sub_1ABA9E448();
  }

  sub_1ABA7C144();
LABEL_34:
  sub_1ABA8BF40();

  v84(v83, v84, v85, v86, v87, v88, v89, v90, v93, a10, a11, a12, a13, a14);
}

uint64_t sub_1ABBFE730()
{
  sub_1ABA7BC04();
  sub_1ABA89080();
  v3 = v0;
  sub_1ABA7BBC0();
  *v4 = v0;
  v5 = v0[56];
  v6 = *v2;
  sub_1ABA7D1C8();
  *v7 = v6;
  v0[57] = v8;
  v0[58] = v1;

  sub_1ABA8920C();
  v10 = *(v9 + 440);
  if (v1)
  {
    v11 = v3[52];
  }

  else
  {
    v12 = *(v9 + 440);
  }

  sub_1ABA97330();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABBFE85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA88600();
  a21 = v26;
  a22 = v27;
  sub_1ABA827D0();
  a20 = v22;
  v28 = *(v22 + 456);
  v29 = *(v22 + 479);
  v30 = *(v22 + 416);
  BYTE6(a10) = 4;
  HIBYTE(a10) = v29;
  v31 = objc_allocWithZone(type metadata accessor for EntityTaggingDirectFeedback());
  EntityTaggingDirectFeedback.init(kind:tagInference:)(&a10 + 6, &a10 + 7);
  v32 = sub_1ABAB0F7C(OBJC_IVAR___GDScoreRankedPersonEntityTagsInner_inferenceEventId);
  v33 = *(v22 + 416);
  if ((v32 & 1) == 0)
  {
LABEL_28:
    sub_1ABAB56BC();
    v33 = v71;
  }

  sub_1ABAA0574();
  if (v34)
  {
    sub_1ABAA12E8();
    v33 = v72;
  }

  sub_1ABAA0710();
  v35 = *(v22 + 464);
  v37 = *(v22 + 424);
  v36 = *(v22 + 432);
  *(v22 + 416) = v33;
  v38 = (v37 - 1) & v37;
  if (v38)
  {
    v39 = *(v22 + 232);
LABEL_10:
    *(v22 + 424) = v38;
    *(v22 + 432) = v36;
    sub_1ABAA3CA0(v36);
    *(v22 + 479) = v41;
    if ((v42 & 0x80000000000000) != 0)
    {
      v43 = v22 + 112;
      sub_1ABA9F44C();
      *(v22 + 112) = v46;
    }

    else
    {
      v43 = v22 + 128;
      sub_1ABA969C4();
      *(v22 + 128) = v45;
    }

    sub_1ABA95828(v44);
    sub_1ABF24FF4();
    sub_1ABA9E92C();

    sub_1ABA898B4();
    *(v22 + 440) = v43;
    v47 = swift_task_alloc();
    v48 = sub_1ABA899FC(v47);
    *v48 = v49;
    v50 = sub_1ABA7C128();
    *(v50 + 8) = v51;
    v52 = *(v22 + 240);
    sub_1ABA97B08();
    sub_1ABA8BF40();

    return sub_1ABAB3D24(v53, v54, v55);
  }

  else
  {
    while (1)
    {
      v40 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v40 >= (((1 << *(v22 + 478)) + 63) >> 6))
      {
        break;
      }

      v38 = *(*(v22 + 232) + 8 * v40 + 64);
      ++v36;
      if (v38)
      {
        v36 = v40;
        goto LABEL_10;
      }
    }

    v58 = *(v22 + 232);
    v73 = *(v22 + 240);

    sub_1ABA9E0E8();
    v59 = OBJC_IVAR___GDEntityTaggingServiceInner_feedbackService;
    while (1)
    {
      if (v25 == v24)
      {

        sub_1ABA80A84();
        goto LABEL_23;
      }

      sub_1ABA9E1F4();
      if (v34)
      {
        goto LABEL_27;
      }

      v60 = *(v33 + 32);
      v61 = *(v73 + v59);
      v62 = *(v33 + 40);
      sub_1ABA8A4F0();

      if (v35)
      {
        break;
      }

      sub_1ABA9E448();
    }

    sub_1ABA7C144();
LABEL_23:
    sub_1ABA8BF40();

    return v64(v63, v64, v65, v66, v67, v68, v69, v70, v73, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1ABBFEAB0()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 208);

  v2 = *(v0 + 296);
  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABBFEB0C()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 216);

  v2 = *(v0 + 352);
  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABBFEB68()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 224);

  v2 = *(v0 + 408);
  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABBFEBC4()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 232);

  v2 = *(v0 + 464);
  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABBFEC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABBFEC80()
{
  sub_1ABA906D0();
  if (v0[2])
  {
    v1 = sub_1ABBFA180(MEMORY[0x1E69E7CC8]);
  }

  else
  {
    v1 = 0;
  }

  v0[7] = v1;
  if (v0[3])
  {
    v2 = sub_1ABBFA180(MEMORY[0x1E69E7CC8]);
  }

  else
  {
    v2 = 0;
  }

  v0[8] = v2;
  if (v0[4])
  {
    v3 = sub_1ABBFA180(MEMORY[0x1E69E7CC8]);
  }

  else
  {
    v3 = 0;
  }

  v0[9] = v3;
  if (v0[5])
  {
    v4 = sub_1ABBFA180(MEMORY[0x1E69E7CC8]);
  }

  else
  {
    v4 = 0;
  }

  v0[10] = v4;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1ABBFEDD8;
  v6 = v0[6];

  return sub_1ABBFADDC(v1, v2, v3, v4);
}

uint64_t sub_1ABBFEDD8()
{
  sub_1ABC10824();
  sub_1ABA8C008();
  sub_1ABA7BC10();
  v2 = v1[11];
  v3 = v1[10];
  v4 = v1[9];
  v5 = v1[8];
  v6 = v1[7];
  v7 = *v0;
  sub_1ABA7BBC0();
  *v8 = v7;

  sub_1ABA7BBE0();
  sub_1ABAA9184();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1ABBFEFE4(void *a1, void *a2, void *a3, void *a4, void *aBlock, void *a6)
{
  v6[5] = a4;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v6[7] = _Block_copy(aBlock);
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  a6;
  v16 = swift_task_alloc();
  v6[8] = v16;
  *v16 = v6;
  v16[1] = sub_1ABBFF0DC;

  return sub_1ABBFEC64(a1, a2, a3, a4);
}

uint64_t sub_1ABBFF0DC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;
  v6 = v3[8];
  v7 = v3[6];
  v8 = v3[5];
  v9 = v3[4];
  v10 = v3[3];
  v11 = v3[2];
  *v5 = *v1;

  sub_1ABA88B68();
  v13 = *(v12 + 56);
  if (v2)
  {
    v14 = sub_1ABF21BD4();

    v15 = sub_1ABA7AD00();
    v16(v15, v14);
  }

  else
  {
    v17 = sub_1ABA7AD00();
    v18(v17, 0);
  }

  _Block_release(v4[7]);
  sub_1ABA8C598();

  return v19();
}

id PersonEntityTaggingService.EntityTagConfiguration.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonEntityTaggingService.EntityTagConfiguration();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PersonEntityTaggingService.ScoreRankedPersonEntityTags.ScoredPersonEntityTag.__allocating_init(tag:score:inferenceEventId:)()
{
  sub_1ABC107F4();
  v0 = sub_1ABA952B0();
  return PersonEntityTaggingService.ScoreRankedPersonEntityTags.ScoredPersonEntityTag.init(tag:score:inferenceEventId:)(v1, v2, v0);
}

uint64_t PersonEntityTaggingService.ScoreRankedPersonEntityTags.ScoredPersonEntityTag.__allocating_init(gdTag:score:inferenceEventIdValue:)()
{
  sub_1ABC107F4();
  v0 = sub_1ABA952B0();
  return PersonEntityTaggingService.ScoreRankedPersonEntityTags.ScoredPersonEntityTag.init(gdTag:score:inferenceEventIdValue:)(v1, v2, v0);
}

id PersonEntityTaggingService.ScoreRankedPersonEntityTags.__allocating_init(idValue:scoredPersonEntityTags:inferenceEventIdValue:)()
{
  sub_1ABA963F8();
  v0 = sub_1ABA96068();
  return PersonEntityTaggingService.ScoreRankedPersonEntityTags.init(idValue:scoredPersonEntityTags:inferenceEventIdValue:)(v0, v1, v2);
}

id PersonEntityTaggingService.ScoreRankedPersonEntityTags.__allocating_init(id:scoredPersonEntityTags:inferenceEventId:)()
{
  sub_1ABA963F8();
  v0 = sub_1ABA96068();
  return PersonEntityTaggingService.ScoreRankedPersonEntityTags.init(id:scoredPersonEntityTags:inferenceEventId:)(v0, v1, v2);
}

id PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.__allocating_init(id:score:inferenceEventId:)()
{
  sub_1ABC107F4();
  v0 = sub_1ABA952B0();
  return PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.init(id:score:inferenceEventId:)(v1, v2, v0);
}

id PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.init(id:score:inferenceEventId:)(void *a1, uint64_t a2, double a3)
{
  *&v3[OBJC_IVAR___GDScoredPersonInner_id] = *a1;
  *&v3[OBJC_IVAR___GDScoredPersonInner_score] = a3;
  *&v3[OBJC_IVAR___GDScoredPersonInner_inferenceEventId] = a2;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson();
  return objc_msgSendSuper2(&v5, sel_init);
}

id PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.__allocating_init(idValue:score:inferenceEventIdValue:)()
{
  sub_1ABC107F4();
  v0 = sub_1ABA952B0();
  return PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.init(idValue:score:inferenceEventIdValue:)(v1, v2, v0);
}

id PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.init(idValue:score:inferenceEventIdValue:)(uint64_t a1, uint64_t a2, double a3)
{
  v9 = a1;
  v5 = objc_allocWithZone(type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson());
  v6 = a2;
  v7 = v5;
  PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.init(id:score:inferenceEventId:)(&v9, v6, a3);
  sub_1ABA7D1BC();
  swift_getObjectType();
  sub_1ABA8A608();
  return v7;
}

id PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PersonEntityTaggingService.ScoreRankedEntityTagPersons.__allocating_init(tag:scoredEntities:inferenceEventId:)()
{
  sub_1ABA963F8();
  v0 = sub_1ABA96068();
  return PersonEntityTaggingService.ScoreRankedEntityTagPersons.init(tag:scoredEntities:inferenceEventId:)(v0, v1, v2);
}

id PersonEntityTaggingService.ScoreRankedEntityTagPersons.init(tag:scoredEntities:inferenceEventId:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR___GDScoreRankedEntityTagPersonsInner_tag] = *a1;
  *&v3[OBJC_IVAR___GDScoreRankedEntityTagPersonsInner_scoredEntities] = a2;
  *&v3[OBJC_IVAR___GDScoreRankedEntityTagPersonsInner_inferenceEventId] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons();
  return objc_msgSendSuper2(&v5, sel_init);
}

id PersonEntityTaggingService.ScoreRankedEntityTagPersons.__allocating_init(gdTag:scoredEntities:inferenceEventIdValue:)()
{
  sub_1ABA963F8();
  v0 = sub_1ABA96068();
  return PersonEntityTaggingService.ScoreRankedEntityTagPersons.init(gdTag:scoredEntities:inferenceEventIdValue:)(v0, v1, v2);
}

id PersonEntityTaggingService.ScoreRankedEntityTagPersons.init(gdTag:scoredEntities:inferenceEventIdValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  PersonEntityTagType.init(gdTagType:)(&v9, a1);
  v5 = objc_allocWithZone(type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons());
  v6 = a3;
  v7 = v5;
  PersonEntityTaggingService.ScoreRankedEntityTagPersons.init(tag:scoredEntities:inferenceEventId:)(&v9, a2, v6);
  sub_1ABA7D1BC();
  swift_getObjectType();
  sub_1ABA8A608();
  return v7;
}

id sub_1ABBFFA90()
{
  sub_1ABAB20D0();
  v0 = sub_1ABF239C4();
  v1 = type metadata accessor for PersonEntityTaggingService.PersonEntityTaggingOptions();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR___GDPersonEntityTaggingOptionsInner_tagThresholds] = v0;
  v4.receiver = v2;
  v4.super_class = v1;
  result = objc_msgSendSuper2(&v4, sel_init);
  qword_1EB4CED78 = result;
  return result;
}

id PersonEntityTaggingService.PersonEntityTaggingOptions.__allocating_init(tagThresholds:)()
{
  v2 = objc_allocWithZone(sub_1ABA9EFD8());
  *&v2[OBJC_IVAR___GDPersonEntityTaggingOptionsInner_tagThresholds] = v0;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id static PersonEntityTaggingService.PersonEntityTaggingOptions.defaultPersonTaggingOptions.getter()
{
  if (qword_1EB4CED70 != -1)
  {
    sub_1ABA993E0();
  }

  v1 = qword_1EB4CED78;

  return v1;
}

uint64_t PersonEntityTaggingService.PersonEntityTaggingOptions.__allocating_init(tagNameThresholds:)()
{
  v0 = objc_allocWithZone(sub_1ABA9EFD8());
  v1 = sub_1ABA7D1BC();
  return PersonEntityTaggingService.PersonEntityTaggingOptions.init(tagNameThresholds:)(v1);
}

id PersonEntityTaggingService.PersonEntityTaggingOptions.init(tagThresholds:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___GDPersonEntityTaggingOptionsInner_tagThresholds] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PersonEntityTaggingService.PersonEntityTaggingOptions();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1ABBFFC14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1ABBFFC78(v4);
}

uint64_t sub_1ABBFFC40()
{
  v1 = OBJC_IVAR___GDPersonEntityTaggingOptionsInner_tagThresholds;
  sub_1ABA8CE94();
  v2 = *(v0 + v1);
}

uint64_t sub_1ABBFFC78(uint64_t a1)
{
  v3 = OBJC_IVAR___GDPersonEntityTaggingOptionsInner_tagThresholds;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t EntityTaggingService.__allocating_init(config:)()
{
  sub_1ABA8A1C4();
  v0 = swift_allocObject();
  EntityTaggingService.init(config:)();
  return v0;
}

uint64_t EntityTaggingService.init(config:)()
{
  v2 = v0;
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ViewService();
  v4 = static ViewService.clientService.getter(v3);
  v5 = *&v4[OBJC_IVAR___GDSwiftViewService_accessRequester];
  sub_1ABA8C954();
  v6 = sub_1ABF23BD4();
  v22[0] = 0;
  v7 = [v5 requestAssertionForViewName:v6 error:v22];

  v8 = v22[0];
  if (v7)
  {
    v21 = v2;
    v9 = *&v4[OBJC_IVAR___GDSwiftViewService_databaseCache];
    v11 = v9[5];
    v10 = v9[6];
    sub_1ABA93E20(v9 + 2, v11);
    v12 = *(v10 + 8);
    v13 = v8;

    v14 = v12(v7, v11, v10);
    if (!v1)
    {
      v17 = v14;
      v18 = v15;

      v2 = v21;
      *(v21 + 16) = v7;
      *(v21 + 24) = v17;
      *(v21 + 32) = v18;
      strcpy((v21 + 40), "entity_tagging");
      *(v21 + 55) = -18;
      *(v21 + 56) = 0xD000000000000018;
      *(v21 + 64) = 0x80000001ABF8B950;
      strcpy((v21 + 72), "entity_tagging");
      *(v21 + 87) = -18;
      goto LABEL_7;
    }

    swift_unknownObjectRelease();

    v2 = v21;
  }

  else
  {
    v16 = v22[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  type metadata accessor for EntityTaggingService();
  swift_deallocPartialClassInstance();
LABEL_7:
  v19 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t EntityTaggingService.__allocating_init(etConfig:viewService:)(void *a1, char *a2)
{
  sub_1ABA8A1C4();
  v4 = swift_allocObject();
  EntityTaggingService.init(etConfig:viewService:)(a1, a2);
  return v4;
}

uint64_t EntityTaggingService.init(etConfig:viewService:)(void *a1, char *a2)
{
  v4 = v2;
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = *&a2[OBJC_IVAR___GDSwiftViewService_accessRequester];
  sub_1ABA8C954();
  v8 = sub_1ABF23BD4();
  v24[0] = 0;
  v9 = [v7 requestAssertionForViewName:v8 error:v24];

  v10 = v24[0];
  if (v9)
  {
    v23 = a1;
    v11 = *&a2[OBJC_IVAR___GDSwiftViewService_databaseCache];
    v13 = v11[5];
    v12 = v11[6];
    sub_1ABA93E20(v11 + 2, v13);
    v14 = *(v12 + 8);
    v15 = v10;

    v16 = v14(v9, v13, v12);
    if (!v3)
    {
      v19 = v16;
      v20 = v17;

      *(v4 + 16) = v9;
      *(v4 + 24) = v19;
      *(v4 + 32) = v20;
      strcpy((v4 + 40), "entity_tagging");
      *(v4 + 55) = -18;
      *(v4 + 56) = 0xD000000000000018;
      *(v4 + 64) = 0x80000001ABF8B950;
      strcpy((v4 + 72), "entity_tagging");
      *(v4 + 87) = -18;
      goto LABEL_7;
    }

    swift_unknownObjectRelease();

    a1 = v23;
  }

  else
  {
    v18 = v24[0];
    sub_1ABA7E2D8();
    sub_1ABF21BE4();

    swift_willThrow();
  }

  type metadata accessor for EntityTaggingService();
  swift_deallocPartialClassInstance();
LABEL_7:
  v21 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1ABC00278(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[6] = a3;
  v5[7] = v4;
  v5[4] = a1;
  v5[5] = a2;
  v5[8] = *a4;
  return sub_1ABA8C014();
}

uint64_t sub_1ABC00298()
{
  sub_1ABA7BC04();
  receiver = v0[4].receiver;
  if (receiver)
  {
    v2 = type metadata accessor for PersonEntityTaggingService.PersonEntityTaggingOptions();
    v3 = objc_allocWithZone(v2);
    *&v3[OBJC_IVAR___GDPersonEntityTaggingOptionsInner_tagThresholds] = receiver;
    v0[1].receiver = v3;
    v0[1].super_class = v2;

    v4 = objc_msgSendSuper2(v0 + 1, sel_init);
    v5 = v4;
  }

  else
  {
    v4 = 0;
  }

  v0[4].super_class = v4;
  v6 = swift_task_alloc();
  v0[5].receiver = v6;
  *v6 = v0;
  v6[1] = sub_1ABC00390;
  v7 = v0[3].receiver;
  super_class = v0[3].super_class;
  v9 = v0[2].super_class;

  return sub_1ABAB2EAC(v9, v7, v4);
}

uint64_t sub_1ABC00390()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *(v4 + 72);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v10 + 88) = v9;
  *(v10 + 96) = v0;

  if (v0)
  {
    v11 = sub_1ABC00644;
  }

  else
  {
    v11 = sub_1ABC004AC;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

char *sub_1ABC004AC()
{
  sub_1ABA827D0();
  v1 = *(*(v0 + 88) + OBJC_IVAR___GDScoreRankedPersonEntityTagsInner_scoredPersonEntityTags);
  v2 = sub_1ABAAB7C8(v1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1ABA9F25C();
    result = sub_1ABADE27C(v4, v5, v6);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    v9 = v22;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v10 = sub_1ABA82DB8();
        v11 = MEMORY[0x1AC5AA170](v10);
      }

      else
      {
        v11 = *(v1 + 8 * v8 + 32);
      }

      v12 = v11[OBJC_IVAR___GDScoredPersonEntityTagInner_tag];
      v13 = *&v11[OBJC_IVAR___GDScoredPersonEntityTagInner_score];

      v15 = *(v22 + 16);
      v14 = *(v22 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1ABADE27C((v14 > 1), v15 + 1, 1);
      }

      ++v8;
      *(v22 + 16) = v15 + 1;
      v16 = v22 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
    }

    while (v3 != v8);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v17 = *(v0 + 88);
  v18 = *(v0 + 32);
  v19 = *&v17[OBJC_IVAR___GDScoreRankedPersonEntityTagsInner_id];
  v20 = *&v17[OBJC_IVAR___GDScoreRankedPersonEntityTagsInner_inferenceEventId];

  *v18 = v19;
  v18[1] = v9;
  v18[2] = v20;
  sub_1ABA80A84();

  return v21();
}

uint64_t sub_1ABC00644()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();
  v2 = *(v0 + 96);

  return v1();
}

uint64_t sub_1ABC006A0(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABC006B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, Class a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_1ABA8CFC8();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = v26[12];
  if (v29)
  {
    v52 = v26[12];
  }

  else
  {
    if (qword_1EB4CED70 == -1)
    {
      v29 = 0;
    }

    else
    {
      sub_1ABA993E0();
      v29 = v26[12];
    }

    v52 = qword_1EB4CED78;
  }

  v30 = v26[11];
  v31 = type metadata accessor for PersonEntityTaggingService.ScoreRankedPersonEntityTags();
  v32 = v29;
  v33 = sub_1ABF239C4();
  v34 = *(v30 + 16);
  if (v34)
  {
    a10 = v26[13];
    v35 = (v26[11] + 40);
    do
    {
      v37 = *(v35 - 1);
      v36 = *v35;
      swift_bridgeObjectRetain_n();
      EntityIdentifier.init(_:)(v37, v36, &a13);
      if (a14)
      {
      }

      else
      {
        v38 = a13;
        memcpy(v26 + 2, (a10 + 16), 0x48uLL);
        a13 = v38;
        v39 = sub_1ABAB2408(&a13, v52);
        v41 = v40;
        a13 = v38;
        v42 = objc_allocWithZone(v31);
        PersonEntityTaggingService.ScoreRankedPersonEntityTags.init(id:scoredPersonEntityTags:inferenceEventId:)(&a13, v39, v41);
        swift_isUniquelyReferenced_nonNull_native();
        a13 = v33;
        sub_1ABAFBC14();

        v33 = a13;
      }

      v35 += 2;
      --v34;
    }

    while (v34);
  }

  sub_1ABA82A20();
  sub_1ABA8B690();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, v31, v52, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1ABC008D8(uint64_t a1, _BYTE *a2, void *a3)
{
  *(v4 + 32) = a1;
  *(v4 + 40) = v3;
  *(v4 + 89) = *a2;
  *(v4 + 48) = *a3;
  return sub_1ABA8C014();
}

uint64_t sub_1ABC008FC()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = type metadata accessor for PersonEntityTaggingService.PersonEntityTaggingOptions();
    v3 = objc_allocWithZone(v2);
    *&v3[OBJC_IVAR___GDPersonEntityTaggingOptionsInner_tagThresholds] = v1;
    *(v0 + 16) = v3;
    *(v0 + 24) = v2;

    v4 = objc_msgSendSuper2((v0 + 16), sel_init);
    v5 = v4;
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 56) = v4;
  *(v0 + 88) = *(v0 + 89);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1ABC009F4;
  v7 = *(v0 + 40);
  v8 = sub_1ABAA25B0();

  return sub_1ABC00D18(v8, v9);
}

uint64_t sub_1ABC009F4()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *(v4 + 56);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v10 + 72) = v9;
  *(v10 + 80) = v0;

  if (v0)
  {
    v11 = sub_1ABC00CBC;
  }

  else
  {
    v11 = sub_1ABC00B10;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

char *sub_1ABC00B10()
{
  sub_1ABA827D0();
  v1 = *(*(v0 + 72) + OBJC_IVAR___GDScoreRankedEntityTagPersonsInner_scoredEntities);
  v2 = sub_1ABAAB7C8(v1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1ABA9F25C();
    result = sub_1ABADE29C(v4, v5, v6);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v23 = v0;
    v8 = 0;
    v9 = v24;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v10 = sub_1ABA82DB8();
        v11 = MEMORY[0x1AC5AA170](v10);
      }

      else
      {
        v11 = *(v1 + 8 * v8 + 32);
      }

      v12 = *&v11[OBJC_IVAR___GDScoredPersonInner_id];
      v13 = *&v11[OBJC_IVAR___GDScoredPersonInner_score];
      v14 = *&v11[OBJC_IVAR___GDScoredPersonInner_inferenceEventId];

      v16 = *(v24 + 16);
      v15 = *(v24 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1ABADE29C((v15 > 1), v16 + 1, 1);
      }

      *(v24 + 16) = v16 + 1;
      v17 = (v24 + 24 * v16);
      v17[4] = v12;
      ++v8;
      v17[5] = v13;
      v17[6] = v14;
    }

    while (v3 != v8);
    v0 = v23;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v0 + 72);
  v19 = *(v0 + 32);
  v20 = v18[OBJC_IVAR___GDScoreRankedEntityTagPersonsInner_tag];
  v21 = *&v18[OBJC_IVAR___GDScoreRankedEntityTagPersonsInner_inferenceEventId];

  *v19 = v20;
  *(v19 + 8) = v9;
  *(v19 + 16) = v21;
  sub_1ABA80A84();

  return v22();
}

uint64_t sub_1ABC00CBC()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_1ABC00D18(_BYTE *a1, uint64_t a2)
{
  *(v3 + 88) = a2;
  *(v3 + 96) = v2;
  *(v3 + 104) = *a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABC00D34()
{
  sub_1ABA8C008();
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 88);
  }

  else
  {
    if (qword_1EB4CED70 == -1)
    {
      v1 = 0;
    }

    else
    {
      sub_1ABA993E0();
      v1 = *(v0 + 88);
    }

    v2 = qword_1EB4CED78;
  }

  v3 = *(v0 + 104);
  memcpy((v0 + 16), (*(v0 + 96) + 16), 0x48uLL);
  v4 = v1;
  sub_1ABA8A3B0();
  sub_1ABC1DAC4(v5, v6);
  if (v3)
  {

    sub_1ABA7C144();

    return v7();
  }

  else
  {
    v15 = *(v0 + 104);
    v9 = objc_allocWithZone(type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons());
    sub_1ABA89148();
    v13 = PersonEntityTaggingService.ScoreRankedEntityTagPersons.init(tag:scoredEntities:inferenceEventId:)(v10, v11, v12);

    sub_1ABA82A20();

    return v14(v13);
  }
}

uint64_t sub_1ABC00E7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABC00E94()
{
  sub_1ABA7BBF8();
  PersonEntityTagType.init(gdTagType:)((v0 + 56), *(v0 + 16));
  v1 = swift_task_alloc();
  v2 = sub_1ABA9F194(v1);
  *v2 = v3;
  v2[1] = sub_1ABC00F30;
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return sub_1ABC00D18((v0 + 56), v4);
}

uint64_t sub_1ABC00F30()
{
  sub_1ABA7BBF8();
  sub_1ABAB10C8();
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  sub_1ABA7BBC0();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (!v0)
  {
    sub_1ABA82A20();

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABC01050, 0, 0);
}

uint64_t sub_1ABC01050()
{
  sub_1ABA7BBE0();
  v1 = *(v0 + 48);
  return v2();
}

uint64_t sub_1ABC01074(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABC0108C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA88600();
  sub_1ABA827D0();
  v15 = v14[12];
  if (v15)
  {
    v16 = v14[12];
  }

  else
  {
    if (qword_1EB4CED70 == -1)
    {
      v15 = 0;
    }

    else
    {
      sub_1ABA993E0();
      v15 = v14[12];
    }

    v16 = qword_1EB4CED78;
  }

  v17 = v14[13];
  v18 = v14[11];
  v19 = type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons();
  sub_1ABAB20D0();
  v20 = v15;
  v21 = sub_1ABF239C4();
  v22 = *(v18 + 16);
  v23 = (v18 + 32);
  if (v22)
  {
    while (1)
    {
      v24 = *v23;
      memcpy(v14 + 2, (v17 + 16), 0x48uLL);
      LOBYTE(a10) = v24;
      sub_1ABA8A3B0();
      sub_1ABC1DAC4(v25, v26);
      if (v15)
      {
        break;
      }

      v27 = objc_allocWithZone(v19);
      sub_1ABA89148();
      v15 = PersonEntityTaggingService.ScoreRankedEntityTagPersons.init(tag:scoredEntities:inferenceEventId:)(v28, v29, v30);
      swift_isUniquelyReferenced_nonNull_native();
      a10 = v21;
      sub_1ABAFBC28();
      ++v23;
      if (!--v22)
      {
        goto LABEL_9;
      }
    }

    sub_1ABA7C144();
    sub_1ABA8BF40();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
  }

  else
  {
LABEL_9:

    sub_1ABA82A20();
    sub_1ABA8BF40();

    return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1ABC01248(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1ABA8C014();
}

void sub_1ABC01260()
{
  sub_1ABA88600();
  sub_1ABA827D0();
  v1 = sub_1ABAAB7C8(v0[2]);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    v19 = MEMORY[0x1E69E7CC0];
    sub_1ABADE21C();
    if (v3 < 0)
    {
      __break(1u);
      return;
    }

    v4 = 0;
    v5 = v0[2];
    v2 = v19;
    v6 = v5 & 0xC000000000000001;
    v18 = v5 + 32;
    do
    {
      if (v6)
      {
        v7 = MEMORY[0x1AC5AA170](v4, v0[2]);
      }

      else
      {
        v7 = *(v18 + 8 * v4);
      }

      v8 = v7;
      v9 = [v7 integerValue];

      if ((v9 - 1) > 0x19)
      {
        v10 = 0;
      }

      else
      {
        v10 = byte_1ABF4AD5A[(v9 - 1)];
      }

      v11 = *(v19 + 16);
      if (v11 >= *(v19 + 24) >> 1)
      {
        sub_1ABADE21C();
      }

      ++v4;
      *(v19 + 16) = v11 + 1;
      *(v19 + v11 + 32) = v10;
    }

    while (v3 != v4);
  }

  v0[5] = v2;
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_1ABC013F4;
  v13 = v0[3];
  v14 = v0[4];
  sub_1ABA8BF40();

  sub_1ABC01074(v15, v16);
}

uint64_t sub_1ABC013F4()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *(v4 + 40);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v10 + 56) = v9;

  if (v0)
  {
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABC01530, 0, 0);
}

void sub_1ABC01530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1ABA8CFC8();
  v76 = v18;
  v19 = *(v18 + 56);
  v20 = sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v72 = type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons();
  v73 = v20;
  v71 = sub_1ABC0D42C();
  v21 = sub_1ABF239C4();
  v22 = -1;
  v23 = -1 << *(v19 + 32);
  if (-v23 < 64)
  {
    v22 = ~(-1 << -v23);
  }

  v24 = v22 & *(v19 + 64);
  v25 = (63 - v23) >> 6;

  v26 = 0;
LABEL_4:
  while (2)
  {
    v27 = v21 & 0xC000000000000001;
    v28 = v21 & 0xFFFFFFFFFFFFFF8;
    if (v21 < 0)
    {
      v28 = v21;
    }

    v74 = v28;
    if (!v24)
    {
      while (1)
      {
LABEL_7:
        v29 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
          goto LABEL_37;
        }

        if (v29 >= v25)
        {
          break;
        }

        v24 = *(v19 + 64 + 8 * v29);
        ++v26;
        if (v24)
        {
          v26 = v29;
          goto LABEL_11;
        }
      }

      v61 = *(v76 + 56);

      sub_1ABA82A20();
      sub_1ABA8B690();

      v64(v62, v63, v64, v65, v66, v67, v68, v69, a9, v71, v72, v73, v74, v76, a15, a16, a17, a18);
      return;
    }

    while (1)
    {
LABEL_11:
      v30 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      if (*(v19 + 16))
      {
        v32 = *(v76 + 56);
        v33 = sub_1ABAAFEB4();
        if (v34)
        {
          a9 = *(*(v19 + 56) + 8 * v33);
          if (v27)
          {
            v39 = sub_1ABF24CA4();
            if (__OFADD__(v39, 1))
            {
              goto LABEL_42;
            }

            v21 = sub_1ABC03E74(v74, v39 + 1);
          }

          swift_isUniquelyReferenced_nonNull_native();
          a15 = v21;
          sub_1ABAF88E4();
          v75 = v41;
          if (__OFADD__(*(v21 + 16), (v41 & 1) == 0))
          {
            __break(1u);
            goto LABEL_41;
          }

          v42 = v40;
          sub_1ABAD219C(&qword_1EB4D52F0, &qword_1ABF497A8);
          if (sub_1ABF24C64())
          {
            sub_1ABAF88E4();
            if ((v75 & 1) != (v44 & 1))
            {
LABEL_37:
              sub_1ABA8B690();

              sub_1ABF25104();
              return;
            }

            v42 = v43;
            if ((v75 & 1) == 0)
            {
LABEL_26:
              *(v21 + 8 * (v42 >> 6) + 64) |= 1 << v42;
              *(*(v21 + 48) + 8 * v42) = v31;
              *(*(v21 + 56) + 8 * v42) = a9;
              v45 = *(v21 + 16);
              v46 = __OFADD__(v45, 1);
              v47 = v45 + 1;
              if (!v46)
              {
                *(v21 + 16) = v47;
                goto LABEL_4;
              }

              goto LABEL_43;
            }
          }

          else if ((v75 & 1) == 0)
          {
            goto LABEL_26;
          }

          v59 = *(v21 + 56);
          v60 = *(v59 + 8 * v42);
          *(v59 + 8 * v42) = a9;

          goto LABEL_4;
        }
      }

      if (v27)
      {
        break;
      }

      sub_1ABAF88E4();
      if (v38)
      {
        v56 = v37;
        swift_isUniquelyReferenced_nonNull_native();
        a15 = v21;
        v57 = *(v21 + 24);
        sub_1ABAD219C(&qword_1EB4D52F0, &qword_1ABF497A8);
        sub_1ABF24C64();

        v58 = *(*(v21 + 56) + 8 * v56);
        sub_1ABF24C84();

        goto LABEL_4;
      }

LABEL_17:

      if (!v24)
      {
        goto LABEL_7;
      }
    }

    v35 = v31;
    v36 = sub_1ABF24CB4();

    if (!v36)
    {
      goto LABEL_17;
    }

    swift_unknownObjectRelease();

    sub_1ABF24CA4();
    v48 = sub_1ABA89740();
    v50 = sub_1ABC03E74(v48, v49);

    sub_1ABAF88E4();
    v52 = v51;
    v54 = v53;

    if (v54)
    {

      v55 = *(*(v50 + 56) + 8 * v52);
      sub_1ABF24C84();

      v21 = v50;
      continue;
    }

    break;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t EntityTaggingService.deinit()
{
  sub_1ABAA0D78();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t EntityTaggingService.__deallocating_deinit()
{
  sub_1ABAA0D78();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1ABA8A1C4();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABC01A8C()
{
  sub_1ABAB20D0();
  result = sub_1ABF239C4();
  qword_1EB4D5258 = result;
  return result;
}

uint64_t static EntityTaggingService.PersonTaggingOptions.defaultPersonTaggingOptions.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EB4D0368 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EB4D5258;
}

uint64_t EntityTaggingService.PersonTaggingOptions.tagThresholds.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1ABC01BA4(char a1)
{
  result = 0x7465536E75;
  switch(a1)
  {
    case 1:
      v3 = 0x726165707061;
      goto LABEL_6;
    case 2:
      v3 = 0x747065636361;
      goto LABEL_6;
    case 3:
      v3 = 0x7463656A6572;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      break;
    case 4:
      result = 0x6165707061736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABC01C3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736449746E657665 && a2 == 0xE800000000000000)
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

uint64_t sub_1ABC01CB4(uint64_t a1)
{
  v2 = sub_1ABC0D590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC01CF0(uint64_t a1)
{
  v2 = sub_1ABC0D590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC01D2C(uint64_t a1)
{
  v2 = sub_1ABC0D5E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC01D68(uint64_t a1)
{
  v2 = sub_1ABC0D5E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC01DAC(uint64_t a1)
{
  v2 = sub_1ABC0D494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC01DE8(uint64_t a1)
{
  v2 = sub_1ABC0D494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC01E24(uint64_t a1)
{
  v2 = sub_1ABC0D4E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC01E60(uint64_t a1)
{
  v2 = sub_1ABC0D4E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC01E9C(uint64_t a1)
{
  v2 = sub_1ABC0D53C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC01ED8(uint64_t a1)
{
  v2 = sub_1ABC0D53C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC01F14(uint64_t a1)
{
  v2 = sub_1ABC0D638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC01F50(uint64_t a1)
{
  v2 = sub_1ABC0D638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityTaggingStatefulFeedback.FeedbackKind.encode(to:)()
{
  sub_1ABA7BCA8();
  v73 = v1;
  v2 = v0;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D52F8, &qword_1ABF497B0);
  v6 = sub_1ABA7BB64(v5);
  v68 = v7;
  v69 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7FBE0();
  v67 = v11;
  v12 = sub_1ABAD219C(&qword_1EB4D5300, &qword_1ABF497B8);
  v13 = sub_1ABA7BB64(v12);
  v65 = v14;
  v66 = v13;
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7FBE0();
  v64 = v18;
  v19 = sub_1ABAD219C(&qword_1EB4D5308, &qword_1ABF497C0);
  v20 = sub_1ABA7BB64(v19);
  v62 = v21;
  v63 = v20;
  v23 = *(v22 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7FBE0();
  v61 = v25;
  v26 = sub_1ABAD219C(&qword_1EB4D5310, &qword_1ABF497C8);
  v27 = sub_1ABA7BB64(v26);
  v59 = v28;
  v60 = v27;
  v30 = *(v29 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v58 - v32;
  v34 = sub_1ABAD219C(&qword_1EB4D5318, &qword_1ABF497D0);
  sub_1ABA7BB64(v34);
  v58 = v35;
  v37 = *(v36 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v58 - v39;
  v41 = sub_1ABAD219C(&qword_1EB4D5320, &qword_1ABF497D8);
  v71 = sub_1ABA7BB64(v41);
  v72 = v42;
  v44 = *(v43 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v58 - v46;
  v70 = *v2;
  v48 = *(v2 + 8);
  v49 = v4[4];
  sub_1ABA93E20(v4, v4[3]);
  sub_1ABC0D494();
  sub_1ABF252E4();
  switch(v48)
  {
    case 1:
      sub_1ABC0D5E4();
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABAA6038(&qword_1EB4D4770);
      sub_1ABA97304();
      v51 = v60;
      sub_1ABF24F14();
      v56 = *(v59 + 8);
      v57 = v33;
      goto LABEL_8;
    case 2:
      sub_1ABC0D590();
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABAA6038(&qword_1EB4D4770);
      sub_1ABA97304();
      sub_1ABF24F14();
      v53 = *(v62 + 8);
      v54 = sub_1ABA805B4();
      v55(v54);
      (*(v72 + 8))(v47, v49);
      goto LABEL_10;
    case 3:
      sub_1ABC0D53C();
      v50 = v64;
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABAA6038(&qword_1EB4D4770);
      sub_1ABA97304();
      v51 = v66;
      sub_1ABAA043C();
      v52 = v65;
      goto LABEL_6;
    case 4:
      sub_1ABC0D4E8();
      v50 = v67;
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABAA6038(&qword_1EB4D4770);
      sub_1ABA97304();
      v51 = v69;
      sub_1ABAA043C();
      v52 = v68;
LABEL_6:
      v56 = *(v52 + 8);
      v57 = v50;
LABEL_8:
      v56(v57, v51);
      break;
    default:
      sub_1ABC0D638();
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABAA6038(&qword_1EB4D4770);
      sub_1ABA97304();
      sub_1ABF24F14();
      (*(v58 + 8))(v40, v34);
      break;
  }

  (*(v72 + 8))(v47, v49);
LABEL_10:
  sub_1ABA7BC90();
}

void EntityTaggingStatefulFeedback.FeedbackKind.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v111 = v10;
  v13 = v12;
  v109 = v14;
  v102 = sub_1ABAD219C(&qword_1EB4D5358, &qword_1ABF497E8);
  sub_1ABA7BB64(v102);
  v105 = v15;
  v17 = *(v16 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7FBE0();
  v108 = v19;
  v20 = sub_1ABAD219C(&qword_1EB4D5360, &qword_1ABF497F0);
  v21 = sub_1ABA7BB64(v20);
  v103 = v22;
  v104 = v21;
  v24 = *(v23 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7FBE0();
  v107 = v26;
  v27 = sub_1ABAD219C(&qword_1EB4D5368, &qword_1ABF497F8);
  v28 = sub_1ABA7BB64(v27);
  v100 = v29;
  v101 = v28;
  v31 = *(v30 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA7FBE0();
  v106 = v33;
  v34 = sub_1ABAD219C(&qword_1EB4D5370, &qword_1ABF49800);
  v35 = sub_1ABA7BB64(v34);
  v98 = v36;
  v99 = v35;
  v38 = *(v37 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABA7BCE0();
  v40 = sub_1ABAD219C(&qword_1EB4D5378, &qword_1ABF49808);
  sub_1ABA7BB64(v40);
  v97 = v41;
  v43 = *(v42 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v91 - v45;
  v47 = sub_1ABAD219C(&qword_1EB4D5380, &unk_1ABF49810);
  sub_1ABA7BB64(v47);
  v49 = v48;
  v51 = *(v50 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v91 - v53;
  v56 = v13[3];
  v55 = v13[4];
  v110 = v13;
  sub_1ABA93E20(v13, v56);
  sub_1ABC0D494();
  v57 = v111;
  sub_1ABF252C4();
  if (v57)
  {
    goto LABEL_10;
  }

  v93 = v40;
  v94 = v46;
  v95 = v11;
  v96 = 0;
  v58 = v109;
  v111 = v49;
  v59 = sub_1ABF24EA4();
  sub_1ABAD4EA4(v59, 0);
  if (v61 == v62 >> 1)
  {
LABEL_9:
    v69 = sub_1ABF24B44();
    swift_allocError();
    v71 = v70;
    v72 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v71 = &type metadata for EntityTaggingStatefulFeedback.FeedbackKind;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    v73 = *MEMORY[0x1E69E6AF8];
    sub_1ABA7D08C(v69);
    (*(v74 + 104))(v71);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v111 + 8))(v54, v47);
LABEL_10:
    v75 = v110;
LABEL_11:
    sub_1ABA84B54(v75);
    sub_1ABA7BC90();
    return;
  }

  if (v61 < (v62 >> 1))
  {
    v63 = v47;
    v92 = *(v60 + v61);
    sub_1ABAD4E90(v61 + 1);
    v65 = v64;
    v67 = v66;
    swift_unknownObjectRelease();
    if (v65 == v67 >> 1)
    {
      switch(v92)
      {
        case 1:
          LOBYTE(a10) = 1;
          sub_1ABC0D5E4();
          v79 = v96;
          sub_1ABA8BFB0();
          sub_1ABF24D94();
          if (v79)
          {
            goto LABEL_19;
          }

          sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
          sub_1ABA9078C(&qword_1EB4D47C8);
          sub_1ABA96F98();
          sub_1ABAA2880();
          swift_unknownObjectRelease();
          v87 = sub_1ABA8BAC4();
          v88(v87);
          v89 = sub_1ABA8BCC0();
          v90(v89);
          goto LABEL_22;
        case 2:
          LOBYTE(a10) = 2;
          sub_1ABC0D590();
          sub_1ABA8BFB0();
          v77 = v96;
          sub_1ABF24D94();
          if (v77)
          {
            goto LABEL_19;
          }

          sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
          sub_1ABA9078C(&qword_1EB4D47C8);
          sub_1ABF24DF4();
          sub_1ABA8C750();
          swift_unknownObjectRelease();
          goto LABEL_21;
        case 3:
          LOBYTE(a10) = 3;
          sub_1ABC0D53C();
          v78 = v96;
          sub_1ABF24D94();
          if (!v78)
          {
            goto LABEL_7;
          }

          goto LABEL_19;
        case 4:
          LOBYTE(a10) = 4;
          sub_1ABC0D4E8();
          sub_1ABA8BFB0();
          v76 = v96;
          sub_1ABF24D94();
          if (!v76)
          {
            goto LABEL_7;
          }

          goto LABEL_19;
        default:
          LOBYTE(a10) = 0;
          sub_1ABC0D638();
          sub_1ABA8BFB0();
          v68 = v96;
          sub_1ABF24D94();
          if (v68)
          {
LABEL_19:
            v80 = sub_1ABA8BCC0();
            v81(v80);
            swift_unknownObjectRelease();
            goto LABEL_10;
          }

LABEL_7:
          v63 = sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
          sub_1ABA9078C(&qword_1EB4D47C8);
          sub_1ABA96F98();
          sub_1ABAA2880();
          sub_1ABA8C750();
          swift_unknownObjectRelease();
LABEL_21:
          v82 = sub_1ABA8BAC4();
          v83(v82);
          v84 = *(v63 + 8);
          v85 = sub_1ABA805B4();
          v86(v85);
LABEL_22:
          v75 = v110;
          *v58 = a10;
          *(v58 + 8) = v92;
          break;
      }

      goto LABEL_11;
    }

    v47 = v63;
    goto LABEL_9;
  }

  __break(1u);
}

id EntityTaggingStatefulFeedback.init(kind:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &v1[OBJC_IVAR____TtC20IntelligencePlatform29EntityTaggingStatefulFeedback_kind];
  *v3 = *a1;
  v3[8] = v2;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EntityTaggingStatefulFeedback();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1ABC02EC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
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

uint64_t sub_1ABC02F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC02EC4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABC02F68(uint64_t a1)
{
  v2 = sub_1ABC0D6F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC02FA4(uint64_t a1)
{
  v2 = sub_1ABC0D6F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC03010(void *a1)
{
  v2 = v1;
  v4 = sub_1ABAD219C(&qword_1EB4D5388, &qword_1ABF49820);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v10 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC0D6F8();
  sub_1ABF252E4();
  v15 = *(v2 + OBJC_IVAR____TtC20IntelligencePlatform29EntityTaggingStatefulFeedback_kind);
  v16 = *(v2 + OBJC_IVAR____TtC20IntelligencePlatform29EntityTaggingStatefulFeedback_kind + 8);
  sub_1ABBCF4E4(v15, v16);
  sub_1ABC0D74C();
  sub_1ABF24F84();
  sub_1ABBCF47C(v15, v16);
  v11 = *(v6 + 8);
  v12 = sub_1ABA82DB8();
  return v13(v12);
}

void EntityTaggingStatefulFeedback.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(sub_1ABA7E2D8());
  sub_1ABA8A294();
  EntityTaggingStatefulFeedback.init(from:)();
}

void EntityTaggingStatefulFeedback.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D53A0, &qword_1ABF49828);
  sub_1ABA7BB64(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BCE0();
  v8 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABC0D6F8();
  sub_1ABA89290();
  if (v1)
  {
    sub_1ABA84B54(v3);
    type metadata accessor for EntityTaggingStatefulFeedback();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1ABC0D7A0();
    sub_1ABA9FD50();
    v9 = v15;
    v10 = &v0[OBJC_IVAR____TtC20IntelligencePlatform29EntityTaggingStatefulFeedback_kind];
    *v10 = v14;
    v10[8] = v9;
    v13.receiver = v0;
    v13.super_class = type metadata accessor for EntityTaggingStatefulFeedback();
    objc_msgSendSuper2(&v13, sel_init);
    v11 = sub_1ABA8E0A8();
    v12(v11);
    sub_1ABA84B54(v3);
  }

  sub_1ABA7BC90();
}

void sub_1ABC03348(void *a1@<X8>)
{
  EntityTaggingStatefulFeedback.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

IntelligencePlatform::EntityTaggingDirectFeedback::FeedbackKind_optional __swiftcall EntityTaggingDirectFeedback.FeedbackKind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1ABC033BC@<X0>(uint64_t *a1@<X8>)
{
  result = EntityTaggingDirectFeedback.FeedbackKind.rawValue.getter();
  *a1 = result;
  return result;
}

id EntityTaggingDirectFeedback.init(kind:tagInference:)(_BYTE *a1, char *a2)
{
  v3 = *a2;
  v2[OBJC_IVAR____TtC20IntelligencePlatform27EntityTaggingDirectFeedback_kind] = *a1;
  v2[OBJC_IVAR____TtC20IntelligencePlatform27EntityTaggingDirectFeedback_tagInference] = v3;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for EntityTaggingDirectFeedback();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1ABC035A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265666E49676174 && a2 == 0xEC00000065636E65)
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

uint64_t sub_1ABC03670(char a1)
{
  if (a1)
  {
    return 0x7265666E49676174;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_1ABC036B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC035A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC036D8(uint64_t a1)
{
  v2 = sub_1ABC0D818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC03714(uint64_t a1)
{
  v2 = sub_1ABC0D818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1ABC03768(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1ABC037A0(void *a1)
{
  v3 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4D53C0, &qword_1ABF49830);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15[-v11];
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC0D818();
  sub_1ABF252E4();
  v15[15] = *(v3 + OBJC_IVAR____TtC20IntelligencePlatform27EntityTaggingDirectFeedback_kind);
  v15[14] = 0;
  sub_1ABC0D86C();
  sub_1ABF24F84();
  if (!v2)
  {
    v15[13] = *(v3 + OBJC_IVAR____TtC20IntelligencePlatform27EntityTaggingDirectFeedback_tagInference);
    v15[12] = 1;
    sub_1ABC0D8C0();
    sub_1ABF24F84();
  }

  return (*(v7 + 8))(v12, v5);
}

void EntityTaggingDirectFeedback.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(sub_1ABA7E2D8());
  v1 = sub_1ABA8A294();
  EntityTaggingDirectFeedback.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
}

void EntityTaggingDirectFeedback.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1ABA7BCA8();
  v16 = v15;
  v17 = sub_1ABAD219C(&qword_1EB4D53E0, &qword_1ABF49838);
  sub_1ABA7BB64(v17);
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BCE0();
  v21 = v16[4];
  sub_1ABA93E20(v16, v16[3]);
  sub_1ABC0D818();
  sub_1ABA89290();
  if (v14)
  {
    sub_1ABA84B54(v16);
    type metadata accessor for EntityTaggingDirectFeedback();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1ABC0D914();
    sub_1ABA9FD50();
    v13[OBJC_IVAR____TtC20IntelligencePlatform27EntityTaggingDirectFeedback_kind] = a13;
    sub_1ABC0D968();
    sub_1ABA9FD50();
    v13[OBJC_IVAR____TtC20IntelligencePlatform27EntityTaggingDirectFeedback_tagInference] = a13;
    v24.receiver = v13;
    v24.super_class = type metadata accessor for EntityTaggingDirectFeedback();
    objc_msgSendSuper2(&v24, sel_init);
    v22 = sub_1ABA8E0A8();
    v23(v22);
    sub_1ABA84B54(v16);
  }

  sub_1ABA7BC90();
}

void sub_1ABC03B48(void *a1@<X8>)
{
  EntityTaggingDirectFeedback.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1ABC03B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1ABAD219C(&qword_1EB4D1AC0, &qword_1ABF33C50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1ABC1070C(a3, v25 - v11, &qword_1EB4D1AC0, &qword_1ABF33C50);
  v13 = sub_1ABF24294();
  if (sub_1ABA7E1E0(v12, 1, v13) == 1)
  {
    sub_1ABAB08B8(v12, &qword_1EB4D1AC0, &qword_1ABF33C50);
  }

  else
  {
    sub_1ABF24284();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_1ABF24244();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1ABF23CA4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1ABAB08B8(a3, &qword_1EB4D1AC0, &qword_1ABF33C50);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1ABAB08B8(a3, &qword_1EB4D1AC0, &qword_1ABF33C50);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1ABC03E74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1ABAD219C(&qword_1EB4D56C8, &qword_1ABF4ACC8);
    v2 = sub_1ABF24D44();
    v17 = v2;
    sub_1ABF24C94();
    while (1)
    {
      v3 = sub_1ABF24CC4();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
      swift_dynamicCast();
      type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1ABC069AC();
      }

      v2 = v17;
      v4 = *(v17 + 40);
      result = sub_1ABF247A4();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1ABC040AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_1ABA8A8E4();
  v16 = v12;
  v18 = v17;
  sub_1ABA840E0(v19);
  sub_1ABAD219C(&qword_1EB4D56C0, &qword_1ABF4ACC0);
  sub_1ABA8A5C4();
  sub_1ABA9FC04();
  sub_1ABAB2B08();
  if (!v20)
  {
LABEL_31:

LABEL_32:
    *v16 = v18;
    sub_1ABA89EC8();
    return;
  }

  v49 = v13;
  v21 = 0;
  v22 = v13;
  sub_1ABA7D6D4();
  sub_1ABAA152C();
  if (!v14)
  {
LABEL_4:
    v24 = v21;
    while (1)
    {
      v21 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v21 >= v12)
      {
        break;
      }

      sub_1ABA90FBC();
      if (v25)
      {
        sub_1ABA96BF4();
        v14 = v27 & v26;
        goto LABEL_9;
      }
    }

    if ((a12 & 1) == 0)
    {

      v16 = v12;
      goto LABEL_32;
    }

    sub_1ABA9A404();
    v16 = v12;
    if (v45 != v46)
    {
      sub_1ABAA2C8C(v44);
    }

    else
    {
      v47 = sub_1ABAA5318();
      sub_1ABB18078(v47, v48, v22);
    }

    *(v13 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    sub_1ABAA3890();
LABEL_9:
    sub_1ABA9F6C8(v23);
    v29 = *v28;
    v30 = *(v28 + 8);
    v33 = *(v32 + 8 * v31);
    if ((a12 & 1) == 0)
    {
    }

    sub_1ABA9ED2C();
    sub_1ABF25254();
    if (!v30)
    {
      MEMORY[0x1AC5AA8D0](v29);
    }

    v34 = sub_1ABF25294();
    sub_1ABA80A6C(v34);
    v36 = *(v15 + 8 * v35);
    sub_1ABC107CC();
    if (v37)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_23:
    sub_1ABA8FE48();
    sub_1ABAB5A90();
    v43 = v42 + 16 * v41;
    *v43 = v29;
    *(v43 + 8) = v30;
    *(*(v18 + 56) + 8 * v41) = v33;
    sub_1ABAA4528();
    v13 = v49;
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v37)
    {
      if (v39)
      {
        break;
      }
    }

    if (v38 == v40)
    {
      v38 = 0;
    }

    sub_1ABAA0A94(v38);
    if (!v37)
    {
      sub_1ABA83620();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_1ABC04270(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1ABAD219C(&qword_1EB4D19B0, &unk_1ABF33B40);
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v39 - v8;
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D5708, &unk_1ABF4AD10);
  v43 = a2;
  result = sub_1ABF24D34();
  v12 = result;
  if (!*(v9 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v12;
    return result;
  }

  v39 = v3;
  v13 = 0;
  v14 = (v9 + 64);
  v15 = 1 << *(v9 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v9 + 64);
  v18 = (v15 + 63) >> 6;
  v40 = (v6 + 16);
  v41 = v9;
  v42 = v6;
  v19 = (v6 + 32);
  v20 = result + 64;
  if (!v17)
  {
LABEL_9:
    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      sub_1ABB18078(0, (v38 + 63) >> 6, v14);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_14:
    v24 = v21 | (v13 << 6);
    v25 = *(v9 + 56);
    v26 = *(*(v9 + 48) + 8 * v24);
    v27 = *(v42 + 72);
    v28 = v25 + v27 * v24;
    if (v43)
    {
      (*v19)(v44, v28, v45);
    }

    else
    {
      (*v40)(v44, v28, v45);
    }

    v29 = *(v12 + 40);
    sub_1ABF25234();
    MEMORY[0x1AC5AA8D0](v26);
    result = sub_1ABF25294();
    v30 = -1 << *(v12 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
    {
      break;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v20 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    *(*(v12 + 48) + 8 * v33) = v26;
    result = (*v19)(*(v12 + 56) + v27 * v33, v44, v45);
    ++*(v12 + 16);
    v9 = v41;
    if (!v17)
    {
      goto LABEL_9;
    }
  }

  v34 = 0;
  v35 = (63 - v30) >> 6;
  while (++v32 != v35 || (v34 & 1) == 0)
  {
    v36 = v32 == v35;
    if (v32 == v35)
    {
      v32 = 0;
    }

    v34 |= v36;
    v37 = *(v20 + 8 * v32);
    if (v37 != -1)
    {
      v33 = __clz(__rbit64(~v37)) + (v32 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1ABC045D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D56F8, &qword_1ABF4AD00);
  result = sub_1ABF24D34();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v8;
    return result;
  }

  v32 = a2;
  v33 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_32;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      sub_1ABB18078(0, (v31 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + 8 * v19);
    v21 = *(*(v5 + 56) + 8 * v19);
    v22 = *(v8 + 40);
    sub_1ABF25234();
    MEMORY[0x1AC5AA8D0](v20);
    result = sub_1ABF25294();
    v23 = -1 << *(v8 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v15 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v8 + 48) + 8 * v26) = v20;
    *(*(v8 + 56) + 8 * v26) = v21;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v15 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1ABC04858(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D5718, &unk_1ABF4AD30);
  v42 = a2;
  result = sub_1ABF24D34();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_35:

LABEL_36:
    *v3 = v8;
    return result;
  }

  v40 = v2;
  v41 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      sub_1ABB18078(0, (v39 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
    goto LABEL_35;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = 5 * (v16 | (v9 << 6));
    v20 = *(v5 + 56);
    v21 = *(v5 + 48) + 8 * v19;
    v44 = *v21;
    v46 = *(v21 + 8);
    v22 = *(v21 + 24);
    v48 = *(v21 + 16);
    v43 = *(v21 + 32);
    v23 = *(v21 + 33);
    v24 = (v20 + 8 * v19);
    v25 = *v24;
    v47 = *(v24 + 1);
    v26 = v24[4];
    v45 = v24[3];
    if ((v42 & 1) == 0)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
    }

    v27 = *(v8 + 40);
    sub_1ABF25234();
    sub_1ABF23D34();
    sub_1ABF25254();
    if (v23 != 2)
    {
      MEMORY[0x1AC5AA8A0](v23 & 1);
    }

    result = sub_1ABF25294();
    v28 = -1 << *(v8 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
    {
      break;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v15 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v36 = 5 * v31;
    v37 = *(v8 + 48) + 8 * v36;
    *v37 = v44;
    *(v37 + 8) = v46;
    *(v37 + 16) = v48;
    *(v37 + 24) = v22;
    *(v37 + 32) = v43;
    *(v37 + 33) = v23;
    v38 = *(v8 + 56) + 8 * v36;
    *v38 = v25;
    *(v38 + 8) = v47;
    *(v38 + 24) = v45;
    *(v38 + 32) = v26;
    ++*(v8 + 16);
    v5 = v41;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v32 = 0;
  v33 = (63 - v28) >> 6;
  while (++v30 != v33 || (v32 & 1) == 0)
  {
    v34 = v30 == v33;
    if (v30 == v33)
    {
      v30 = 0;
    }

    v32 |= v34;
    v35 = *(v15 + 8 * v30);
    if (v35 != -1)
    {
      v31 = __clz(__rbit64(~v35)) + (v30 << 6);
      goto LABEL_27;
    }
  }

LABEL_38:
  __break(1u);
  return result;
}

void sub_1ABC04BB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D56F0, &qword_1ABF4ACF8);
  sub_1ABA82DB8();
  v52 = a2;
  v7 = sub_1ABF24D34();
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return;
  }

  v50 = v3;
  v51 = v5;
  v8 = 0;
  v9 = v5;
  sub_1ABA7D6D4();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 8;
  v16 = 48;
  if (!v12)
  {
LABEL_6:
    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v19;
      if (*(v9 + 8 * v8))
      {
        v17 = v7;
        sub_1ABA96BF4();
        v53 = v21 & v20;
        goto LABEL_11;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_32;
    }

    v44 = *(v5 + 32);
    sub_1ABAA57D0();
    v3 = v50;
    if (v46 != v47)
    {
      sub_1ABAA2C8C(v45);
    }

    else
    {
      v48 = sub_1ABAA5318();
      sub_1ABB18078(v48, v49, v9);
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v17 = v7;
    v18 = __clz(__rbit64(v12));
    v53 = (v12 - 1) & v12;
LABEL_11:
    v22 = v18 | (v8 << 6);
    v23 = *(v5 + 56);
    v24 = (*(v5 + 48) + v22 * v16);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[3];
    v56 = v24[2];
    v28 = v24[5];
    v55 = v24[4];
    v29 = *(v23 + 8 * v22);
    if ((v52 & 1) == 0)
    {

      v30 = v29;
    }

    v31 = v17[5];
    sub_1ABF25234();
    v54 = v25;
    sub_1ABF23D34();
    sub_1ABF23D34();
    sub_1ABF23D34();
    v32 = sub_1ABF25294();
    v7 = v17;
    sub_1ABA80A6C(v32);
    v34 = v15[v33];
    sub_1ABC107CC();
    if (v35)
    {
      break;
    }

    sub_1ABA8154C();
    v38 = v26;
    v37 = v29;
    v39 = v54;
LABEL_23:
    *(v15 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v16 = 48;
    v43 = (v7[6] + 48 * v36);
    *v43 = v39;
    v43[1] = v38;
    v43[2] = v56;
    v43[3] = v27;
    v43[4] = v55;
    v43[5] = v28;
    *(v7[7] + 8 * v36) = v37;
    ++v7[2];
    v5 = v51;
    v12 = v53;
    if (!v53)
    {
      goto LABEL_6;
    }
  }

  sub_1ABA8E674();
  v39 = v54;
  while (1)
  {
    sub_1ABA9E640();
    if (v35)
    {
      if (v41)
      {
        break;
      }
    }

    if (v40 == v42)
    {
      v40 = 0;
    }

    if (v15[v40] != -1)
    {
      sub_1ABA83620();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1ABC04E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_1ABA8963C();
  v16 = v12;
  v18 = v17;
  sub_1ABA840E0(v19);
  sub_1ABAD219C(&qword_1EB4D3E98, &qword_1ABF40F70);
  sub_1ABA8A5C4();
  sub_1ABA9FC04();
  sub_1ABAB2B08();
  if (!v20)
  {
LABEL_29:

LABEL_30:
    *v16 = v18;
    sub_1ABA9EE7C();
    return;
  }

  v21 = 0;
  sub_1ABA7D6D4();
  sub_1ABAA152C();
  if (!v14)
  {
LABEL_4:
    v23 = v21;
    while (1)
    {
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v21 >= v12)
      {
        break;
      }

      sub_1ABA90FBC();
      if (v24)
      {
        sub_1ABA96BF4();
        v14 = v26 & v25;
        goto LABEL_9;
      }
    }

    if ((a12 & 1) == 0)
    {

      v16 = v12;
      goto LABEL_30;
    }

    sub_1ABA9A404();
    v16 = v12;
    if (v45 != v46)
    {
      sub_1ABAA2C8C(v44);
    }

    else
    {
      v47 = sub_1ABAA5318();
      sub_1ABB18078(v47, v48, v13);
    }

    *(v13 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    sub_1ABAA3890();
LABEL_9:
    sub_1ABA9F6C8(v22);
    v28 = *v27;
    v29 = v27[1];
    v32 = *(v31 + 8 * v30);
    if ((a12 & 1) == 0)
    {
      v33 = v27[1];
    }

    sub_1ABA9ED2C();
    sub_1ABF23D34();
    v34 = sub_1ABF25294();
    sub_1ABA80A6C(v34);
    v36 = *(v15 + 8 * v35);
    sub_1ABC107CC();
    if (v37)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_21:
    sub_1ABA8FE48();
    sub_1ABAB5A90();
    v43 = (v42 + 16 * v41);
    *v43 = v28;
    v43[1] = v29;
    *(*(v18 + 56) + 8 * v41) = v32;
    sub_1ABAA4528();
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v37)
    {
      if (v39)
      {
        break;
      }
    }

    if (v38 == v40)
    {
      v38 = 0;
    }

    sub_1ABAA0A94(v38);
    if (!v37)
    {
      sub_1ABA83620();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1ABC04FF0()
{
  sub_1ABA8963C();
  v5 = v4;
  sub_1ABA840E0(v6);
  sub_1ABAD219C(&qword_1EB4D56D0, &unk_1ABF4ACD0);
  sub_1ABA8A5C4();
  sub_1ABF24D34();
  sub_1ABAB2B08();
  if (!v7)
  {
LABEL_29:

    *v0 = v5;
    sub_1ABA9EE7C();
    return;
  }

  v40 = v1;
  v8 = 0;
  v9 = v1;
  sub_1ABA7D6D4();
  sub_1ABAA152C();
  if (!v2)
  {
LABEL_4:
    v11 = v8;
    while (1)
    {
      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v8 >= v0)
      {
        break;
      }

      sub_1ABA90FBC();
      if (v12)
      {
        sub_1ABA96BF4();
        v2 = v14 & v13;
        goto LABEL_9;
      }
    }

    if (v5)
    {
      sub_1ABA9A404();
      if (v36 != v37)
      {
        sub_1ABAA2C8C(v35);
      }

      else
      {
        v38 = sub_1ABAA5318();
        sub_1ABB18078(v38, v39, v9);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_1ABAA3890();
LABEL_9:
    sub_1ABA9F6C8(v10);
    v16 = *v15;
    v17 = v15[1];
    v21 = (v19 + v18 * v20);
    v22 = *v21;
    v23 = v21[1];
    v41 = *(v21 + 16);
    if ((v5 & 1) == 0)
    {
    }

    sub_1ABA9ED2C();
    sub_1ABF23D34();
    v24 = sub_1ABF25294();
    sub_1ABA80A6C(v24);
    v26 = *(v3 + 8 * v25);
    sub_1ABC107CC();
    if (v27)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_21:
    sub_1ABA8FE48();
    sub_1ABAB5A90();
    v33 = (v32 + 16 * v31);
    *v33 = v16;
    v33[1] = v17;
    v34 = *(v5 + 56) + 24 * v31;
    *v34 = v22;
    *(v34 + 8) = v23;
    *(v34 + 16) = v41;
    sub_1ABAA4528();
    v1 = v40;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v27)
    {
      if (v29)
      {
        break;
      }
    }

    if (v28 == v30)
    {
      v28 = 0;
    }

    sub_1ABAA0A94(v28);
    if (!v27)
    {
      sub_1ABA83620();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1ABC051B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  v7 = v5;
  v9 = sub_1ABA840E0(a1);
  sub_1ABA9F5B8(v9, v10, v11, v12);
  sub_1ABA8A5C4();
  sub_1ABA9FC04();
  sub_1ABAB2B08();
  if (!v13)
  {
LABEL_30:

LABEL_31:
    *v7 = a2;
    return;
  }

  v14 = 0;
  v16 = (v6 + 64);
  v15 = *(v6 + 64);
  v17 = *(v6 + 32);
  sub_1ABA7F040();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v23 = a2 + 64;
  if ((v19 & v18) == 0)
  {
LABEL_4:
    v25 = v14;
    while (1)
    {
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v14 >= v22)
      {
        break;
      }

      ++v25;
      if (v16[v14])
      {
        sub_1ABA96BF4();
        v20 = v27 & v26;
        goto LABEL_9;
      }
    }

    if ((v49 & 1) == 0)
    {

      v7 = v5;
      goto LABEL_31;
    }

    sub_1ABA9A404();
    v7 = v5;
    if (v45 != v46)
    {
      *v16 = -1 << v44;
    }

    else
    {
      v47 = sub_1ABAA5318();
      sub_1ABB18078(v47, v48, v6 + 64);
    }

    *(v6 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_1ABA9E81C();
LABEL_9:
    v28 = v24 | (v14 << 6);
    v29 = (*(v6 + 48) + 16 * v28);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(v6 + 56) + 40 * v28;
    if (v49)
    {
      a5(v32, v51);
    }

    else
    {
      sub_1ABA93FC4(v32, v51);
    }

    v33 = *(a2 + 40);
    sub_1ABF25234();
    sub_1ABF23D34();
    v34 = sub_1ABF25294();
    sub_1ABA80A6C(v34);
    v36 = *(v23 + 8 * v35);
    sub_1ABC107CC();
    if (v37)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_22:
    sub_1ABA8FE48();
    sub_1ABA8B2A0(v41);
    a5(v51, (v43 + 40 * v42));
    sub_1ABAA4528();
    if (!v20)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v37)
    {
      if (v39)
      {
        break;
      }
    }

    if (v38 == v40)
    {
      v38 = 0;
    }

    if (*(v23 + 8 * v38) != -1)
    {
      sub_1ABA83620();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1ABC053B0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CodableLocation();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D56B0, &unk_1ABF4ACA8);
  v44 = a2;
  result = sub_1ABF24D34();
  v13 = v10;
  v14 = result;
  if (!*(v10 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v14;
    return result;
  }

  v42 = v3;
  v15 = 0;
  v16 = (v10 + 64);
  v17 = 1 << *(v10 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v10 + 64);
  v20 = (v17 + 63) >> 6;
  v21 = result + 64;
  v45 = v10;
  if (!v19)
  {
LABEL_9:
    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v15 >= v20)
      {
        break;
      }

      v24 = v16[v15];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v19 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_35;
    }

    v40 = 1 << *(v13 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      sub_1ABB18078(0, (v40 + 63) >> 6, v16);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v13 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_14:
    v25 = v22 | (v15 << 6);
    v26 = *(v43 + 72);
    v27 = *(v13 + 48) + v26 * v25;
    if (v44)
    {
      sub_1ABB5E1C0(v27, v9);
    }

    else
    {
      sub_1ABAFEEF4(v27, v9);
    }

    v28 = v9;
    v29 = *(*(v45 + 56) + 8 * v25);
    v30 = *(v14 + 40);
    sub_1ABF25234();
    v31 = v28;
    CodableLocation.hash(into:)();
    result = sub_1ABF25294();
    v32 = -1 << *(v14 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
    {
      break;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v21 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    result = sub_1ABB5E1C0(v31, *(v14 + 48) + v26 * v35);
    *(*(v14 + 56) + 8 * v35) = v29;
    v9 = v31;
    ++*(v14 + 16);
    v13 = v45;
    if (!v19)
    {
      goto LABEL_9;
    }
  }

  v36 = 0;
  v37 = (63 - v32) >> 6;
  while (++v34 != v37 || (v36 & 1) == 0)
  {
    v38 = v34 == v37;
    if (v34 == v37)
    {
      v34 = 0;
    }

    v36 |= v38;
    v39 = *(v21 + 8 * v34);
    if (v39 != -1)
    {
      v35 = __clz(__rbit64(~v39)) + (v34 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_1ABC05874()
{
  sub_1ABA8A8E4();
  sub_1ABA9F348();
  sub_1ABA840E0(v5);
  sub_1ABAD219C(&qword_1EB4D5628, &qword_1ABF4AC20);
  sub_1ABA8A5C4();
  sub_1ABA8950C();
  sub_1ABAB2B08();
  if (!v6)
  {
LABEL_27:

    *v0 = v2;
    sub_1ABA89EC8();
    return;
  }

  v30 = v3;
  v7 = 0;
  sub_1ABA7D6D4();
  sub_1ABA8D3C0();
  if (!v3)
  {
LABEL_4:
    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v4)
      {
        break;
      }

      ++v9;
      if (v1[v7])
      {
        sub_1ABA96BF4();
        v3 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v30)
    {
      sub_1ABA9A404();
      if (v26 != v27)
      {
        sub_1ABAA2C8C(v25);
      }

      else
      {
        v28 = sub_1ABAA5318();
        sub_1ABB18078(v28, v29, v1);
      }

      v1[2] = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1ABAA3890();
LABEL_9:
    v12 = v8 | (v7 << 6);
    v13 = *(v1[6] + v12);
    v14 = *(v1[7] + 8 * v12);
    sub_1ABA9ED2C();
    sub_1ABF25264();
    v15 = sub_1ABF25294();
    sub_1ABA80A6C(v15);
    v17 = v0[v16];
    sub_1ABC107CC();
    if (v18)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_19:
    sub_1ABA8FE48();
    sub_1ABA8AD60(v22);
    *(v24 + 8 * v23) = v14;
    sub_1ABAA4528();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v18)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    if (v0[v19] != -1)
    {
      sub_1ABA83620();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1ABC05A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_1ABA9F348();
  v11 = v10;
  v66 = sub_1ABA9F5B8(v10, v12, v13, v14);
  sub_1ABA7BB64(v66);
  v16 = v15;
  v18 = *(v17 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7FBE0();
  v65 = v20;
  v21 = *v6;
  if ((*v6)[3] > v11)
  {
    v22 = (*v6)[3];
  }

  sub_1ABAD219C(a5, a6);
  sub_1ABA8A5C4();
  v64 = v7;
  sub_1ABA8950C();
  sub_1ABAB2B08();
  if (!v23)
  {
LABEL_32:

LABEL_33:
    *v6 = a6;
    return;
  }

  v60 = v6;
  v24 = 0;
  v26 = v21 + 8;
  v25 = v21[8];
  v27 = *(v21 + 32);
  sub_1ABA7F040();
  v30 = v29 & v28;
  v32 = (v31 + 63) >> 6;
  v61 = (v16 + 16);
  v62 = v21;
  v63 = v16;
  v33 = (v16 + 32);
  v34 = a6 + 8;
  if ((v29 & v28) == 0)
  {
LABEL_6:
    v36 = v24;
    while (1)
    {
      v24 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v24 >= v32)
      {
        break;
      }

      ++v36;
      if (v26[v24])
      {
        sub_1ABA96BF4();
        v30 = v38 & v37;
        goto LABEL_11;
      }
    }

    if ((v64 & 1) == 0)
    {

      v6 = v60;
      goto LABEL_33;
    }

    sub_1ABA9A404();
    v6 = v60;
    if (v56 != v57)
    {
      *v26 = -1 << v55;
    }

    else
    {
      v58 = sub_1ABAA5318();
      sub_1ABB18078(v58, v59, v26);
    }

    v21[2] = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v35 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
LABEL_11:
    v39 = v35 | (v24 << 6);
    v40 = v21[7];
    v41 = *(v21[6] + v39);
    v42 = *(v63 + 72);
    v43 = v40 + v42 * v39;
    if (v64)
    {
      (*v33)(v65, v43, v66);
    }

    else
    {
      (*v61)(v65, v43, v66);
    }

    v44 = a6[5];
    sub_1ABF25234();
    sub_1ABF25264();
    v45 = sub_1ABF25294();
    sub_1ABA80A6C(v45);
    v47 = v34[v46];
    sub_1ABC107CC();
    if (v48)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_24:
    sub_1ABA8FE48();
    *(v34 + v52) |= v53;
    *(a6[6] + v54) = v41;
    (*v33)(a6[7] + v42 * v54, v65, v66);
    sub_1ABAA4528();
    v21 = v62;
    if (!v30)
    {
      goto LABEL_6;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v48)
    {
      if (v50)
      {
        break;
      }
    }

    if (v49 == v51)
    {
      v49 = 0;
    }

    if (v34[v49] != -1)
    {
      sub_1ABA83620();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1ABC05D38()
{
  sub_1ABA8963C();
  sub_1ABA9F348();
  v6 = sub_1ABA840E0(v5);
  sub_1ABA9F5B8(v6, v7, v8, v9);
  sub_1ABA8A5C4();
  sub_1ABA8950C();
  sub_1ABAB2B08();
  if (!v10)
  {
LABEL_27:

    *v0 = v2;
    sub_1ABA9EE7C();
    return;
  }

  v33 = v3;
  v11 = 0;
  v12 = *(v1 + 64);
  *(v1 + 32);
  sub_1ABA8D3C0();
  if (!v3)
  {
LABEL_4:
    v14 = v11;
    while (1)
    {
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v11 >= v4)
      {
        break;
      }

      ++v14;
      if (*(v1 + 64 + 8 * v11))
      {
        sub_1ABA96BF4();
        v3 = v16 & v15;
        goto LABEL_9;
      }
    }

    if (v33)
    {
      sub_1ABA9A404();
      if (v29 != v30)
      {
        sub_1ABAA2C8C(v28);
      }

      else
      {
        v31 = sub_1ABAA5318();
        sub_1ABB18078(v31, v32, v1 + 64);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1ABAA3890();
LABEL_9:
    v17 = v13 | (v11 << 6);
    v18 = *(*(v1 + 48) + v17);
    v19 = *(*(v1 + 56) + 8 * v17);
    sub_1ABA9ED2C();
    sub_1ABF25264();
    v20 = sub_1ABF25294() & ~(-1 << *(v2 + 32));
    if (((-1 << v20) & ~v0[v20 >> 6]) == 0)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_19:
    sub_1ABA8FE48();
    sub_1ABA8AD60(v25);
    *(v27 + 8 * v26) = v19;
    sub_1ABAA4528();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v24)
    {
      if (v22)
      {
        break;
      }
    }

    if (v21 == v23)
    {
      v21 = 0;
    }

    if (v0[v21] != -1)
    {
      sub_1ABA83620();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1ABC05F40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v63 = sub_1ABA9F5B8(a1, a2, a3, a4);
  sub_1ABA7BB64(v63);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7FBE0();
  v62 = v17;
  v18 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v19 = *(*v9 + 24);
  }

  sub_1ABAD219C(a5, a6);
  v60 = v10;
  v20 = sub_1ABA8950C();
  if (!*(v18 + 16))
  {
LABEL_32:

LABEL_33:
    *v9 = v20;
    return;
  }

  v21 = 0;
  v23 = (v18 + 64);
  v22 = *(v18 + 64);
  v24 = *(v18 + 32);
  sub_1ABA7F040();
  v27 = v26 & v25;
  v29 = (v28 + 63) >> 6;
  v58 = v9;
  v59 = v18;
  v61 = (v13 + 32);
  if ((v26 & v25) == 0)
  {
LABEL_6:
    v31 = v21;
    while (1)
    {
      v21 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v21 >= v29)
      {
        break;
      }

      ++v31;
      if (v23[v21])
      {
        sub_1ABA96BF4();
        v27 = v33 & v32;
        goto LABEL_11;
      }
    }

    if ((v60 & 1) == 0)
    {

      v9 = v58;
      goto LABEL_33;
    }

    v52 = *(v18 + 32);
    sub_1ABAA57D0();
    v9 = v58;
    if (v54 != v55)
    {
      *v23 = -1 << v53;
    }

    else
    {
      v56 = sub_1ABAA5318();
      sub_1ABB18078(v56, v57, v23);
    }

    *(v18 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    sub_1ABA9E81C();
LABEL_11:
    v34 = v30 | (v21 << 6);
    v35 = *(v18 + 56);
    v36 = (*(v18 + 48) + 16 * v34);
    v38 = *v36;
    v37 = v36[1];
    v39 = *(v13 + 72);
    v40 = v35 + v39 * v34;
    if (v60)
    {
      (*v61)(v62, v40, v63);
    }

    else
    {
      (*(v13 + 16))(v62, v40, v63);
    }

    v41 = *(v20 + 40);
    sub_1ABF25234();
    sub_1ABF23D34();
    v42 = sub_1ABF25294();
    sub_1ABA80A6C(v42);
    v44 = *(v20 + 64 + 8 * v43);
    sub_1ABC107CC();
    if (v45)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_24:
    sub_1ABA8FE48();
    sub_1ABA8CAF4();
    v51 = (v50 + 16 * v49);
    *v51 = v38;
    v51[1] = v37;
    (*v61)(*(v20 + 56) + v39 * v49, v62, v63);
    sub_1ABAA4528();
    v18 = v59;
    if (!v27)
    {
      goto LABEL_6;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v45)
    {
      if (v47)
      {
        break;
      }
    }

    if (v46 == v48)
    {
      v46 = 0;
    }

    sub_1ABA9F7BC(v46);
    if (!v45)
    {
      sub_1ABA83620();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1ABC06200()
{
  sub_1ABA8BA68();
  sub_1ABA9F348();
  sub_1ABA840E0(v8);
  sub_1ABAD219C(&qword_1EB4D5638, &unk_1ABF4AC30);
  sub_1ABA8A5C4();
  sub_1ABA8950C();
  sub_1ABAB2B08();
  if (!v9)
  {

LABEL_30:
    *v0 = v3;
    sub_1ABA8D208();
    return;
  }

  v31 = v0;
  v10 = 0;
  sub_1ABA7D6D4();
  sub_1ABA88D3C();
  if (!v0)
  {
LABEL_4:
    v12 = v10;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v10 >= v7)
      {
        break;
      }

      ++v12;
      if (*(v2 + 8 * v10))
      {
        sub_1ABA96BF4();
        v0 = (v14 & v13);
        goto LABEL_9;
      }
    }

    if (v4)
    {
      sub_1ABA9A404();
      if (v27 != v28)
      {
        sub_1ABAA2C8C(v26);
      }

      else
      {
        v29 = sub_1ABAA5318();
        sub_1ABB18078(v29, v30, v2);
      }

      *(v2 + 16) = 0;
    }

    v0 = v31;
    goto LABEL_30;
  }

  while (1)
  {
    sub_1ABA9DF8C();
LABEL_9:
    sub_1ABA9DE54(v11);
    if ((v4 & 1) == 0)
    {
      v15 = v1;
    }

    v16 = *(v3 + 40);
    v17 = sub_1ABF247A4();
    sub_1ABA80A6C(v17);
    v19 = *(v5 + 8 * v18);
    sub_1ABC107CC();
    if (v20)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_21:
    sub_1ABA8FE48();
    sub_1ABA8CAF4();
    *(v25 + 8 * v24) = v1;
    *(*(v3 + 56) + 8 * v24) = v6;
    sub_1ABAA4528();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v20)
    {
      if (v22)
      {
        break;
      }
    }

    if (v21 == v23)
    {
      v21 = 0;
    }

    sub_1ABA9F7BC(v21);
    if (!v20)
    {
      sub_1ABA83620();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1ABC06384()
{
  sub_1ABA8A8E4();
  v5 = v0;
  v6 = *v0;
  if (*(*v0 + 24) > v1)
  {
    v7 = *(*v0 + 24);
  }

  v45 = v2;
  sub_1ABA9F5B8(v1, v2, v3, v4);
  v8 = sub_1ABF24D34();
  if (!*(v6 + 16))
  {
LABEL_31:

LABEL_32:
    *v5 = v8;
    sub_1ABA89EC8();
    return;
  }

  v43 = v5;
  v44 = v6;
  v9 = 0;
  v10 = v6;
  sub_1ABA7D6D4();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v16 = v8 + 64;
  if ((v12 & v11) == 0)
  {
LABEL_6:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v9 >= v15)
      {
        break;
      }

      ++v18;
      if (*(v10 + 8 * v9))
      {
        sub_1ABA96BF4();
        v13 = v20 & v19;
        goto LABEL_11;
      }
    }

    if ((v45 & 1) == 0)
    {

      v5 = v43;
      goto LABEL_32;
    }

    v37 = *(v6 + 32);
    sub_1ABAA57D0();
    v5 = v43;
    if (v39 != v40)
    {
      sub_1ABAA2C8C(v38);
    }

    else
    {
      v41 = sub_1ABAA5318();
      sub_1ABB18078(v41, v42, v10);
    }

    *(v6 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v21 = v17 | (v9 << 6);
    v22 = (*(v6 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(*(v6 + 56) + 8 * v21);
    if ((v45 & 1) == 0)
    {
      v26 = v22[1];
    }

    sub_1ABA9ED2C();
    sub_1ABF23D34();
    v27 = sub_1ABF25294();
    sub_1ABA80A6C(v27);
    v29 = *(v16 + 8 * v28);
    sub_1ABC107CC();
    if (v30)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_23:
    sub_1ABA8FE48();
    sub_1ABA8B2A0(v34);
    *(v36 + 8 * v35) = v25;
    sub_1ABAA4528();
    v6 = v44;
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v30)
    {
      if (v32)
      {
        break;
      }
    }

    if (v31 == v33)
    {
      v31 = 0;
    }

    if (*(v16 + 8 * v31) != -1)
    {
      sub_1ABA83620();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_1ABC06554(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D5528, &qword_1ABF4AAE8);
  result = sub_1ABF24D34();
  v8 = result;
  if (!*(v5 + 16))
  {

LABEL_35:
    *v3 = v8;
    return result;
  }

  v34 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        sub_1ABB18078(0, (v33 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
    goto LABEL_35;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + 8 * v19);
    if (a2)
    {
      v21 = *(v5 + 56) + 72 * v19;
      v35 = *v21;
      v36 = *(v21 + 16);
      v37 = *(v21 + 32);
      v38 = *(v21 + 48);
      v22 = *(v21 + 64);
    }

    else
    {
      memcpy(__dst, (*(v5 + 56) + 72 * v19), 0x48uLL);
      v22 = *&__dst[4];
      v37 = __dst[2];
      v38 = __dst[3];
      v35 = __dst[0];
      v36 = __dst[1];
      sub_1ABC106B0(__dst, v39);
    }

    v23 = *(v8 + 40);
    result = sub_1ABF25224();
    v24 = -1 << *(v8 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v8 + 48) + 8 * v27) = v20;
    v32 = *(v8 + 56) + 72 * v27;
    *v32 = v35;
    *(v32 + 16) = v36;
    *(v32 + 32) = v37;
    *(v32 + 48) = v38;
    *(v32 + 64) = v22;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v15 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_1ABC06820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_1ABA8A8E4();
  v16 = v12;
  v18 = v17;
  v20 = sub_1ABA840E0(v19);
  sub_1ABA9F5B8(v20, v21, v22, v23);
  sub_1ABA8A5C4();
  sub_1ABA9FC04();
  sub_1ABAB2B08();
  if (!v24)
  {
LABEL_29:

LABEL_30:
    *v16 = v18;
    sub_1ABA89EC8();
    return;
  }

  v25 = 0;
  sub_1ABA7D6D4();
  sub_1ABAA152C();
  if (!v14)
  {
LABEL_4:
    v27 = v25;
    while (1)
    {
      v25 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v25 >= v12)
      {
        break;
      }

      sub_1ABA90FBC();
      if (v28)
      {
        sub_1ABA96BF4();
        v14 = v30 & v29;
        goto LABEL_9;
      }
    }

    if ((a12 & 1) == 0)
    {

      v16 = v12;
      goto LABEL_30;
    }

    sub_1ABA9A404();
    v16 = v12;
    if (v44 != v45)
    {
      sub_1ABAA2C8C(v43);
    }

    else
    {
      v46 = sub_1ABAA5318();
      sub_1ABB18078(v46, v47, v13);
    }

    v13[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    sub_1ABAA3890();
LABEL_9:
    v31 = v26 | (v25 << 6);
    v32 = *(v13[6] + 8 * v31);
    v33 = *(v13[7] + 8 * v31);
    if ((a12 & 1) == 0)
    {
    }

    sub_1ABA9ED2C();
    MEMORY[0x1AC5AA8D0](v32);
    v34 = sub_1ABF25294();
    sub_1ABA80A6C(v34);
    v36 = *(v15 + 8 * v35);
    sub_1ABC107CC();
    if (v37)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_21:
    sub_1ABA8FE48();
    sub_1ABAB5A90();
    *(v42 + 8 * v41) = v32;
    *(*(v18 + 56) + 8 * v41) = v33;
    sub_1ABAA4528();
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v37)
    {
      if (v39)
      {
        break;
      }
    }

    if (v38 == v40)
    {
      v38 = 0;
    }

    sub_1ABAA0A94(v38);
    if (!v37)
    {
      sub_1ABA83620();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1ABC069AC()
{
  sub_1ABA8BA68();
  sub_1ABA9F348();
  v9 = sub_1ABA840E0(v8);
  sub_1ABA9F5B8(v9, v10, v11, v12);
  sub_1ABA8A5C4();
  sub_1ABA8950C();
  sub_1ABAB2B08();
  if (!v13)
  {

LABEL_30:
    *v0 = v3;
    sub_1ABA8D208();
    return;
  }

  v36 = v0;
  v14 = 0;
  sub_1ABA7D6D4();
  sub_1ABA88D3C();
  if (!v0)
  {
LABEL_4:
    v16 = v14;
    while (1)
    {
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v14 >= v7)
      {
        break;
      }

      ++v16;
      if (*(v2 + 8 * v14))
      {
        sub_1ABA96BF4();
        v0 = (v18 & v17);
        goto LABEL_9;
      }
    }

    if (v4)
    {
      sub_1ABA9A404();
      if (v32 != v33)
      {
        sub_1ABAA2C8C(v31);
      }

      else
      {
        v34 = sub_1ABAA5318();
        sub_1ABB18078(v34, v35, v2);
      }

      *(v2 + 16) = 0;
    }

    v0 = v36;
    goto LABEL_30;
  }

  while (1)
  {
    sub_1ABA9DF8C();
LABEL_9:
    sub_1ABA9DE54(v15);
    if ((v4 & 1) == 0)
    {
      v19 = v1;
      v20 = v6;
    }

    v21 = *(v3 + 40);
    v22 = sub_1ABF247A4();
    sub_1ABA80A6C(v22);
    v24 = *(v5 + 8 * v23);
    sub_1ABC107CC();
    if (v25)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_21:
    sub_1ABA8FE48();
    sub_1ABA8CAF4();
    *(v30 + 8 * v29) = v1;
    *(*(v3 + 56) + 8 * v29) = v6;
    sub_1ABAA4528();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v25)
    {
      if (v27)
      {
        break;
      }
    }

    if (v26 == v28)
    {
      v26 = 0;
    }

    sub_1ABA9F7BC(v26);
    if (!v25)
    {
      sub_1ABA83620();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1ABC06AFC(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = a3;
  v6 = sub_1ABAD219C(&qword_1EB4D19B0, &unk_1ABF33B40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D19B8, &qword_1ABF4AD20);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v47 = v40 - v15;
  v46 = *(a1 + 16);
  if (!v46)
  {
LABEL_13:

    return;
  }

  v40[1] = v3;
  v41 = v14;
  v16 = 0;
  v45 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v43 = v6;
  v44 = v17;
  v48 = (v7 + 32);
  v42 = a1;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v47;
    sub_1ABC1070C(v45 + *(v14 + 72) * v16, v47, &qword_1EB4D19B8, &qword_1ABF4AD20);
    v19 = *v18;
    v53 = *v18;
    v20 = *v48;
    v21 = v10;
    (*v48)(v10, &v18[v44], v6);
    v22 = *v49;
    v24 = sub_1ABAF81A8();
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5710, &qword_1ABF4AD28);
      sub_1ABF24C74();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = *v49;
    *(*v49 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    *(v33[6] + 8 * v24) = v19;
    v34 = v33[7] + *(v7 + 72) * v24;
    v10 = v21;
    v6 = v43;
    v20(v34, v21, v43);
    v35 = v33[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_20;
    }

    ++v16;
    v33[2] = v37;
    a2 = 1;
    v14 = v41;
    a1 = v42;
    if (v46 == v16)
    {
      goto LABEL_13;
    }
  }

  v29 = v49;
  sub_1ABC04270(v27, a2 & 1);
  v30 = *v29;
  v31 = sub_1ABAF81A8();
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v38 = swift_allocError();
  swift_willThrow();
  v52 = v38;
  v39 = v38;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v21, v43);

    return;
  }

LABEL_22:
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC06F78(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v6 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_21;
    }

    v8 = *i;
    v9 = *(i - 1);
    v10 = *a3;
    v12 = sub_1ABAF81A8();
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_18;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5700, &qword_1ABF4AD08);
      sub_1ABF24C74();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    *(v20[6] + 8 * v12) = v9;
    *(v20[7] + 8 * v12) = v8;
    v21 = v20[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_19;
    }

    v20[2] = v23;
    ++v5;
    a2 = 1;
  }

  sub_1ABC045D8(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_1ABAF81A8();
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_20;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_21:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0722C(uint64_t a1, char a2, uint64_t *a3)
{
  v42 = a3;
  v3 = a1;
  v4 = 0;
  v29 = *(a1 + 16);
  v5 = 32;
  while (1)
  {
    if (v29 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(v3 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    memcpy(__dst, (v3 + v5), 0x50uLL);
    v31 = *(&__dst[3] + 1);
    v32 = *&__dst[4];
    v33 = *&__dst[3];
    v34 = *(&__dst[4] + 1);
    v6 = __dst[2];
    v7 = __dst[1];
    v8 = __dst[0];
    sub_1ABC1070C(__dst, v36, &qword_1EB4D19F8, &qword_1ABF33B88);
    if (!*(&v8 + 1))
    {
      goto LABEL_17;
    }

    v30 = v5;
    __dst[0] = v8;
    __dst[1] = v7;
    LOWORD(__dst[2]) = v6;
    v9 = *v42;
    v39 = v8;
    v40 = v7;
    v41 = v6;
    v11 = sub_1ABAF8684();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5720, &unk_1ABF4AD40);
      sub_1ABF24C74();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v20 = *v42;
    v20[(v11 >> 6) + 8] |= 1 << v11;
    v21 = v20[6] + 40 * v11;
    *v21 = v8;
    *(v21 + 16) = v7;
    *(v21 + 32) = v6;
    v22 = (v20[7] + 40 * v11);
    *v22 = *(&v6 + 1);
    v22[1] = v33;
    v22[2] = v31;
    v22[3] = v32;
    v22[4] = v34;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_21;
    }

    v20[2] = v25;
    v5 = v30 + 80;
    ++v4;
    a2 = 1;
    v3 = a1;
  }

  v16 = v42;
  sub_1ABC04858(v14, a2 & 1);
  v17 = *v16;
  __dst[5] = __dst[0];
  __dst[6] = __dst[1];
  v38 = __dst[2];
  v18 = sub_1ABAF8684();
  if ((v15 & 1) != (v19 & 1))
  {
    goto LABEL_22;
  }

  v11 = v18;
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    return;
  }

LABEL_23:
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC075DC(uint64_t a1, char a2, void *a3)
{
  v26 = *(a1 + 16);
  if (!v26)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 56)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    sub_1ABC1070C(i, &v31, &qword_1EB4D1160, &qword_1ABF4AA00);
    v8 = v31;
    v7 = v32;
    v29 = v31;
    v30 = v32;
    sub_1ABA946C0(v33, v28);
    v9 = *a3;
    v11 = sub_1ABA94FC8(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D54E8, &unk_1ABF4AA08);
      sub_1ABF24C74();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_1ABA946C0(v28, v19[7] + 40 * v11);
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    ++v5;
    v19[2] = v23;
    a2 = 1;
    if (v26 == v5)
    {

      return;
    }
  }

  sub_1ABC051B4(v14, a2 & 1, &unk_1EB4D54E0, &unk_1ABF4A9F8, sub_1ABAFF5C4);
  v16 = *a3;
  v17 = sub_1ABA94FC8(v8, v7);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v34 = v24;
  v25 = v24;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1ABA84B54(v28);

    return;
  }

LABEL_22:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC0791C(uint64_t a1, char a2, void *a3)
{
  v26 = *(a1 + 16);
  if (!v26)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 56)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    sub_1ABC1070C(i, &v31, &qword_1EB4D1170, &qword_1ABF4AA20);
    v8 = v31;
    v7 = v32;
    v29 = v31;
    v30 = v32;
    sub_1ABA946C0(v33, v28);
    v9 = *a3;
    v11 = sub_1ABA94FC8(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D54F8, &qword_1ABF4AA28);
      sub_1ABF24C74();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_1ABA946C0(v28, v19[7] + 40 * v11);
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    ++v5;
    v19[2] = v23;
    a2 = 1;
    if (v26 == v5)
    {

      return;
    }
  }

  sub_1ABC051B4(v14, a2 & 1, &unk_1EB4D54F0, &unk_1ABF4AA18, sub_1ABAFF5C4);
  v16 = *a3;
  v17 = sub_1ABA94FC8(v8, v7);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v34 = v24;
  v25 = v24;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1ABA84B54(v28);

    return;
  }

LABEL_22:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC07C5C(uint64_t a1, char a2, uint64_t *a3)
{
  v42 = a3;
  v6 = type metadata accessor for CodableLocation();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v43 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1ABAD219C(&qword_1EB4D1740, &qword_1ABF338D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v37 - v13;
  v40 = *(a1 + 16);
  if (!v40)
  {
LABEL_13:

    return;
  }

  v37[0] = v6;
  v37[1] = v3;
  v15 = 0;
  v16 = *(v11 + 48);
  v38 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v39 = v16;
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_22;
    }

    v17 = v12;
    sub_1ABC1070C(v38 + *(v12 + 72) * v15, v14, &qword_1EB4D1740, &qword_1ABF338D0);
    sub_1ABB5E1C0(v14, v43);
    v18 = *&v14[v39];
    v19 = *v42;
    v21 = sub_1ABAF83B4();
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_19;
    }

    v25 = v20;
    if (v19[3] < v24)
    {
      break;
    }

    if (a2)
    {
      if (v20)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D56B8, &qword_1ABF4ACB8);
      sub_1ABF24C74();
      if (v25)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v30 = v43;
    v31 = *v42;
    *(*v42 + 8 * (v21 >> 6) + 64) |= 1 << v21;
    sub_1ABB5E1C0(v30, v31[6] + *(v41 + 72) * v21);
    *(v31[7] + 8 * v21) = v18;
    v32 = v31[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_20;
    }

    ++v15;
    v31[2] = v34;
    a2 = 1;
    v12 = v17;
    if (v40 == v15)
    {
      goto LABEL_13;
    }
  }

  v26 = v42;
  sub_1ABC053B0(v24, a2 & 1);
  v27 = *v26;
  v28 = sub_1ABAF83B4();
  if ((v25 & 1) != (v29 & 1))
  {
    goto LABEL_21;
  }

  v21 = v28;
  if ((v25 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v35 = swift_allocError();
  swift_willThrow();
  v46 = v35;
  v36 = v35;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1ABAFEF58(v43);

    return;
  }

LABEL_22:
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC08078(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v24 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 8);
    if (v7 == 7)
    {
      goto LABEL_17;
    }

    v8 = *i;
    v26 = *(i - 8);
    v9 = *a3;
    v11 = sub_1ABAFF5B8(v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5678, &qword_1ABF4AC70);
      sub_1ABF24C74();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v18[6] + v11) = v7;
    *(v18[7] + 8 * v11) = v8;
    v19 = v18[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v18[2] = v21;
    ++v5;
    a2 = 1;
  }

  sub_1ABC05D38();
  v15 = *a3;
  v16 = sub_1ABAFF5B8(v7);
  if ((v14 & 1) != (v17 & 1))
  {
    goto LABEL_22;
  }

  v11 = v16;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v22 = swift_allocError();
  swift_willThrow();

  v23 = v22;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC08344(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v24 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 8);
    if (v7 == 9)
    {
      goto LABEL_17;
    }

    v8 = *i;
    v26 = *(i - 8);
    v9 = *a3;
    v11 = sub_1ABAFF5B8(v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5698, &qword_1ABF4AC90);
      sub_1ABF24C74();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v18[6] + v11) = v7;
    *(v18[7] + 8 * v11) = v8;
    v19 = v18[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v18[2] = v21;
    ++v5;
    a2 = 1;
  }

  sub_1ABC05D38();
  v15 = *a3;
  v16 = sub_1ABAFF5B8(v7);
  if ((v14 & 1) != (v17 & 1))
  {
    goto LABEL_22;
  }

  v11 = v16;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v22 = swift_allocError();
  swift_willThrow();

  v23 = v22;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC08610(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v24 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 8);
    if (v7 == 4)
    {
      goto LABEL_17;
    }

    v8 = *i;
    v26 = *(i - 8);
    v9 = *a3;
    v11 = sub_1ABAFF5B8(v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5688, &unk_1ABF4AC80);
      sub_1ABF24C74();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v18[6] + v11) = v7;
    *(v18[7] + 8 * v11) = v8;
    v19 = v18[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v18[2] = v21;
    ++v5;
    a2 = 1;
  }

  sub_1ABC05D38();
  v15 = *a3;
  v16 = sub_1ABAFF5B8(v7);
  if ((v14 & 1) != (v17 & 1))
  {
    goto LABEL_22;
  }

  v11 = v16;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v22 = swift_allocError();
  swift_willThrow();

  v23 = v22;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}

void sub_1ABC088DC(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v24 == v5)
    {
LABEL_17:

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1ABF25104();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 8);
    if (v7 == 5)
    {
      goto LABEL_17;
    }

    v8 = *i;
    v26 = *(i - 8);
    v9 = *a3;
    v11 = sub_1ABAFF5B8(v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D5668, &qword_1ABF4AC60);
      sub_1ABF24C74();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v18[6] + v11) = v7;
    *(v18[7] + 8 * v11) = v8;
    v19 = v18[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v18[2] = v21;
    ++v5;
    a2 = 1;
  }

  sub_1ABC05D38();
  v15 = *a3;
  v16 = sub_1ABAFF5B8(v7);
  if ((v14 & 1) != (v17 & 1))
  {
    goto LABEL_22;
  }

  v11 = v16;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v22 = swift_allocError();
  swift_willThrow();

  v23 = v22;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8BF80);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](39, 0xE100000000000000);
  sub_1ABF24CD4();
  __break(1u);
}