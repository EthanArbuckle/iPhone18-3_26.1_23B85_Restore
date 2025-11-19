void sub_100046884(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MessageData.BodySection();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v57 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v51[-v14];
  __chkstk_darwin(v16);
  v18 = &v51[-v17];
  __chkstk_darwin(v19);
  v21 = &v51[-v20];
  v22 = *(v2 + 20);
  sub_100050EB8(a2, &v51[-v20], type metadata accessor for MailboxTaskLogger);
  sub_100050EB8(a2, v18, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v59 = a1;
  sub_100050EB8(a1, v9, type metadata accessor for MessageData.BodySection);
  v58 = a2;
  v23 = sub_1004A4A54();
  v24 = sub_1004A6004();
  v25 = os_log_type_enabled(v23, v24);
  v56 = v22;
  v55 = v10;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v54 = v15;
    v27 = v26;
    v53 = swift_slowAlloc();
    v62[0] = v53;
    *v27 = 68159747;
    v52 = v24;
    *(v27 + 4) = 2;
    *(v27 + 8) = 256;
    v28 = v22;
    v29 = &v18[*(v10 + 20)];
    *(v27 + 10) = *v29;
    *(v27 + 11) = 2082;
    v30 = *(v10 + 20);
    v31 = v3;
    v32 = &v21[v30];
    *(v27 + 13) = sub_10015BA6C(*&v21[v30 + 8], *&v21[v30 + 16], v62);
    *(v27 + 21) = 1040;
    *(v27 + 23) = 2;
    *(v27 + 27) = 512;
    LOWORD(v29) = *(v29 + 12);
    sub_100050F20(v18, type metadata accessor for MailboxTaskLogger);
    *(v27 + 29) = v29;
    *(v27 + 31) = 2160;
    *(v27 + 33) = 0x786F626C69616DLL;
    *(v27 + 41) = 2085;
    v33 = *(v32 + 4);
    LODWORD(v29) = *(v32 + 10);
    v3 = v31;

    sub_100050F20(v21, type metadata accessor for MailboxTaskLogger);
    v60 = v33;
    v61 = v29;
    v34 = sub_1004A5824();
    v36 = sub_10015BA6C(v34, v35, v62);

    *(v27 + 43) = v36;
    *(v27 + 51) = 1024;
    *(v27 + 53) = v28;
    *(v27 + 57) = 2082;
    v37 = SectionSpecifier.debugDescription.getter(*v9, *(v9 + 1), v9[16]);
    v39 = v38;
    sub_100050F20(v9, type metadata accessor for MessageData.BodySection);
    v40 = sub_10015BA6C(v37, v39, v62);

    *(v27 + 59) = v40;
    _os_log_impl(&_mh_execute_header, v23, v52, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received body section data for section '%{public}s'", v27, 0x43u);
    swift_arrayDestroy();

    if (*(v31 + 54))
    {
      return;
    }
  }

  else
  {
    sub_100050F20(v18, type metadata accessor for MailboxTaskLogger);

    sub_100050F20(v21, type metadata accessor for MailboxTaskLogger);
    sub_100050F20(v9, type metadata accessor for MessageData.BodySection);
    if (*(v3 + 54))
    {
      return;
    }
  }

  v41 = *v59;
  v42 = v59[1];
  v43 = *(v3 + 24);
  v44 = *(v59 + 16);

  v46 = SectionSpecifier.init(part:kind:)(v45, 0, 2u);
  v48 = v47;
  v50 = v49;
  LOBYTE(v41) = static SectionSpecifier.__derived_struct_equals(_:_:)(v41, v42, v44, v46, v47, v49);

  sub_1000511A4(v48, v50);
  if (v41)
  {
    sub_10004A98C(v59, v58);
  }
}

uint64_t sub_10004700C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + *(_s18SectionDataRequestVMa() + 20));

  v5 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v4, v3);

  return v5 & 1;
}

uint64_t sub_100047070(int a1)
{
  v3 = type metadata accessor for MessageHeader();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10000C9C0(&qword_1005CE1F8, &qword_1004D0918);
  v7 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v51 = &v41 - v8;
  v9 = _s19MessageHeaderStatusOMa(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v50 = &v41 - v14;
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v56 = _s25MessageSectionsToDownloadVMa(0);
  v54 = *(v56 - 8);
  v18 = *(v54 + 64);
  __chkstk_darwin(v56);
  v42 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = (&v41 - v21);
  result = _s18InProgressMessagesVMa(0);
  v24 = *(result + 32);
  v43 = v1;
  v41 = v24;
  v55 = *(v1 + v24);
  v53 = *(v55 + 16);
  if (v53)
  {
    v25 = 0;
    v52 = v55 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v26 = (v4 + 48);
    v47 = (v4 + 56);
    v48 = v3;
    v46 = a1;
    v45 = v12;
    do
    {
      if (v25 >= *(v55 + 16))
      {
        __break(1u);
        return result;
      }

      sub_100050EB8(v52 + *(v54 + 72) * v25, v22, _s25MessageSectionsToDownloadVMa);
      v27 = *(v56 + 20);
      sub_100050EB8(v22 + v27, v17, _s19MessageHeaderStatusOMa);
      v28 = *v26;
      v29 = (*v26)(v17, 3, v3);
      sub_100050F20(v17, _s19MessageHeaderStatusOMa);
      if (*v22 != a1 || *(*(v22 + *(v56 + 24)) + 16))
      {
        result = sub_100050F20(v22, _s25MessageSectionsToDownloadVMa);
        goto LABEL_4;
      }

      v30 = v50;
      (*v47)(v50, 1, 3, v3);
      v31 = *(v49 + 48);
      v32 = v22 + v27;
      v33 = v51;
      sub_100050EB8(v32, v51, _s19MessageHeaderStatusOMa);
      v3 = v48;
      sub_100050EB8(v30, v33 + v31, _s19MessageHeaderStatusOMa);
      v34 = v28(v33, 3, v3);
      if (v34 > 1)
      {
        if (v34 == 2)
        {
          sub_100050F20(v50, _s19MessageHeaderStatusOMa);
          v35 = v51;
          if (v28((v51 + v31), 3, v3) == 2)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_100050F20(v50, _s19MessageHeaderStatusOMa);
          v35 = v51;
          if (v28((v51 + v31), 3, v3) == 3)
          {
            goto LABEL_23;
          }
        }
      }

      else if (v34)
      {
        sub_100050F20(v50, _s19MessageHeaderStatusOMa);
        v35 = v51;
        if (v28((v51 + v31), 3, v3) == 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v35 = v51;
        v36 = v45;
        sub_100050EB8(v51, v45, _s19MessageHeaderStatusOMa);
        if (!v28((v35 + v31), 3, v3))
        {
          v37 = v35 + v31;
          v38 = v44;
          sub_100050F80(v37, v44, type metadata accessor for MessageHeader);
          v39 = static MessageHeader.== infix(_:_:)();
          sub_100050F20(v38, type metadata accessor for MessageHeader);
          sub_100050F20(v50, _s19MessageHeaderStatusOMa);
          v3 = v48;
          sub_100050F20(v36, type metadata accessor for MessageHeader);
          if (v39)
          {
LABEL_23:
            sub_100050F20(v35, _s19MessageHeaderStatusOMa);
            sub_100050F20(v22, _s25MessageSectionsToDownloadVMa);
LABEL_24:
            v40 = v42;
            sub_100168F68(v25, v42);
            return sub_100050F20(v40, _s25MessageSectionsToDownloadVMa);
          }

          sub_100050F20(v35, _s19MessageHeaderStatusOMa);
          goto LABEL_19;
        }

        sub_100050F20(v50, _s19MessageHeaderStatusOMa);
        sub_100050F20(v36, type metadata accessor for MessageHeader);
      }

      sub_100025F40(v35, &qword_1005CE1F8, &qword_1004D0918);
LABEL_19:
      result = sub_100050F20(v22, _s25MessageSectionsToDownloadVMa);
      a1 = v46;
      if (!v29)
      {
        goto LABEL_24;
      }

LABEL_4:
      ++v25;
    }

    while (v53 != v25);
  }

  return result;
}

double sub_100047730@<D0>(int a1@<W0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + *(_s18InProgressMessagesVMa(0) + 28));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    while (*v7 != a1)
    {
      v7 += 12;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v8 = *v7;
    v9 = v7[1];
    v10 = v7[3];
    v24[2] = v7[2];
    v24[3] = v10;
    v24[0] = v8;
    v24[1] = v9;
    v11 = v7[4];
    v12 = v7[5];
    v13 = v7[7];
    v24[6] = v7[6];
    v24[7] = v13;
    v24[4] = v11;
    v24[5] = v12;
    v14 = v7[8];
    v15 = v7[9];
    v16 = v7[10];
    *(v25 + 9) = *(v7 + 169);
    v24[9] = v15;
    v25[0] = v16;
    v24[8] = v14;
    memmove(__dst, v7, 0xB9uLL);
    UInt32.init(_:)(__dst);
    sub_10005104C(v24, &v23);
    v36 = __dst[8];
    v37 = __dst[9];
    v38[0] = v27[0];
    *(v38 + 9) = *(v27 + 9);
    v32 = __dst[4];
    v33 = __dst[5];
    v34 = __dst[6];
    v35 = __dst[7];
    v28 = __dst[0];
    v29 = __dst[1];
    v30 = __dst[2];
    v31 = __dst[3];
  }

  else
  {
LABEL_5:
    sub_100051164(&v28);
  }

  v17 = v37;
  a2[8] = v36;
  a2[9] = v17;
  a2[10] = v38[0];
  *(a2 + 169) = *(v38 + 9);
  v18 = v33;
  a2[4] = v32;
  a2[5] = v18;
  v19 = v35;
  a2[6] = v34;
  a2[7] = v19;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  result = *&v30;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

__n128 sub_100047878@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *(a2 + 8);

  sub_10004793C(v6, v7, v8, a3, v16);

  v9 = v17[0];
  *(a4 + 192) = v16[12];
  *(a4 + 208) = v9;
  *(a4 + 217) = *(v17 + 9);
  v10 = v16[9];
  *(a4 + 128) = v16[8];
  *(a4 + 144) = v10;
  v11 = v16[11];
  *(a4 + 160) = v16[10];
  *(a4 + 176) = v11;
  v12 = v16[5];
  *(a4 + 64) = v16[4];
  *(a4 + 80) = v12;
  v13 = v16[7];
  *(a4 + 96) = v16[6];
  *(a4 + 112) = v13;
  v14 = v16[1];
  *a4 = v16[0];
  *(a4 + 16) = v14;
  result = v16[3];
  *(a4 + 32) = v16[2];
  *(a4 + 48) = result;
  return result;
}

uint64_t sub_10004793C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v130 = a3;
  v129 = a2;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v128 = (&v116 - v15);
  __chkstk_darwin(v16);
  v123 = &v116 - v17;
  __chkstk_darwin(v18);
  v124 = (&v116 - v19);
  __chkstk_darwin(v20);
  v125 = (&v116 - v21);
  __chkstk_darwin(v22);
  v126 = &v116 - v23;
  v278 = *(v5 + 136);
  v279 = *(v5 + 152);
  v280 = *(v5 + 168);
  v281 = *(v5 + 184);
  v274 = *(v5 + 72);
  v275 = *(v5 + 88);
  v276 = *(v5 + 104);
  v277 = *(v5 + 120);
  v270 = *(v5 + 8);
  v271 = *(v5 + 24);
  v272 = *(v5 + 40);
  v273 = *(v5 + 56);
  v290 = *(v5 + 136);
  v291 = *(v5 + 152);
  v292 = *(v5 + 168);
  v293 = *(v5 + 184);
  v286 = *(v5 + 72);
  v287 = *(v5 + 88);
  v288 = *(v5 + 104);
  v289 = *(v5 + 120);
  v282 = *(v5 + 8);
  v283 = *(v5 + 24);
  v284 = *(v5 + 40);
  v285 = *(v5 + 56);
  if (sub_10003EC1C(&v282) == 1)
  {
    sub_1000503E0(&v258);
  }

  else
  {
    v196 = v290;
    v197 = v291;
    v198 = v292;
    LOBYTE(v199) = v293;
    v192 = v286;
    v193 = v287;
    v194 = v288;
    v195 = v289;
    v188 = v282;
    v189 = v283;
    v190 = v284;
    v191 = v285;
    UInt32.init(_:)(&v188);
    v266 = v196;
    v267 = v197;
    v268 = v198;
    v262 = v192;
    v263 = v193;
    v264 = v194;
    v265 = v195;
    v258 = v188;
    v259 = v189;
    v260 = v190;
    v269 = v199;
    v261 = v191;
  }

  sub_10005104C(v5, &v188);
  sub_10005104C(v5, &v188);
  if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(a1, _swiftEmptyArrayStorage))
  {
    result = sub_100051084(v5);
    v25 = *(v5 + 4);
    v26 = v25 * 1.25;
    if (v26 != INFINITY)
    {
      if (v26 > -1.0)
      {
        if (v26 < 4294967300.0)
        {
          v27 = __CFADD__(v25, 0x4000);
          v28 = v25 + 0x4000;
          if (!v27)
          {
            v29 = a1;
            if (v28 <= v26)
            {
              v30 = v26;
            }

            else
            {
              v30 = v28;
            }

            v31 = *v6;
            sub_1000503E0(&v234);
            v254 = v242;
            v255 = v243;
            v256 = v244;
            v257 = v245;
            v250 = v238;
            v251 = v239;
            v252 = v240;
            v253 = v241;
            v246 = v234;
            v247 = v235;
            v248 = v236;
            v249 = v237;

            v32 = v129;

            sub_100025F40(&v246, &qword_1005CDFD0, &qword_1004EE450);
            *(&v161[8] + 1) = v266;
            *(&v161[9] + 1) = v267;
            *(&v161[10] + 1) = v268;
            BYTE1(v161[11]) = v269;
            *(&v161[4] + 1) = v262;
            *(&v161[5] + 1) = v263;
            *(&v161[6] + 1) = v264;
            *(&v161[7] + 1) = v265;
            *(v161 + 1) = v258;
            *(&v161[1] + 1) = v259;
            *(&v161[2] + 1) = v260;
            *(&v161[3] + 1) = v261;
            *(&v138[8] + 7) = v161[8];
            *(&v138[9] + 7) = v161[9];
            *(&v138[10] + 7) = v161[10];
            *(&v138[4] + 7) = v161[4];
            *(&v138[5] + 7) = v161[5];
            *(&v138[6] + 7) = v161[6];
            *(&v138[7] + 7) = v161[7];
            *(v138 + 7) = v161[0];
            *(&v138[1] + 7) = v161[1];
            *(&v138[2] + 7) = v161[2];
            *(&v138[3] + 7) = v161[3];
            v157 = v161[8];
            v158 = v161[9];
            v159 = v161[10];
            v153 = v161[4];
            v154 = v161[5];
            v155 = v161[6];
            v156 = v161[7];
            v149 = v161[0];
            v150 = v161[1];
            v151 = v161[2];
            LOBYTE(v135) = 1;
            *(&v135 + 1) = v32;
            *&v136 = __PAIR64__(v31, v130);
            *(&v136 + 1) = v29;
            LODWORD(v137) = v30;
            *(&v137 + 1) = _swiftEmptyArrayStorage;
            LODWORD(v138[0]) = 0;
            WORD2(v138[0]) = 2;
            BYTE6(v138[0]) = 0;
            *(&v138[11] + 7) = v161[11];
            LOBYTE(v139) = 1;
            v140 = v32;
            v141 = v130;
            v142 = v31;
            v143 = v29;
            v144 = v30;
            v145 = _swiftEmptyArrayStorage;
            v146 = 0;
            v147 = 2;
            v148 = 0;
            v160 = v161[11];
            v152 = v161[3];
            sub_100050408(&v135, &v188);
            sub_100050440(&v139);
            v162 = v138[9];
            v163[0] = v138[10];
            *(v163 + 9) = *(&v138[10] + 9);
            v161[8] = v138[5];
            v161[9] = v138[6];
            v161[10] = v138[7];
            v161[11] = v138[8];
            v161[4] = v138[1];
            v161[5] = v138[2];
            v161[6] = v138[3];
            v161[7] = v138[4];
            v161[0] = v135;
            v161[1] = v136;
            v161[2] = v137;
            v161[3] = v138[0];
            result = UInt32.init(_:)(v161);
            v200 = v162;
            v201[0] = v163[0];
            *(v201 + 9) = *(v163 + 9);
            v196 = v161[8];
            v197 = v161[9];
            v198 = v161[10];
            v199 = v161[11];
LABEL_44:
            v192 = v161[4];
            v193 = v161[5];
            v194 = v161[6];
            v195 = v161[7];
            v188 = v161[0];
            v189 = v161[1];
            v190 = v161[2];
            v191 = v161[3];
            v108 = v201[0];
            a5[12] = v200;
            a5[13] = v108;
            *(a5 + 217) = *(v201 + 9);
            v109 = v197;
            a5[8] = v196;
            a5[9] = v109;
            v110 = v199;
            a5[10] = v198;
            a5[11] = v110;
            v111 = v193;
            a5[4] = v192;
            a5[5] = v111;
            v112 = v195;
            a5[6] = v194;
            a5[7] = v112;
            v113 = v189;
            *a5 = v188;
            a5[1] = v113;
            v114 = v191;
            a5[2] = v190;
            a5[3] = v114;
            return result;
          }

          goto LABEL_57;
        }

        goto LABEL_55;
      }

      goto LABEL_53;
    }

    goto LABEL_51;
  }

  v184 = v278;
  v185 = v279;
  v186 = v280;
  v187 = v281;
  v180 = v274;
  v181 = v275;
  v182 = v276;
  v183 = v277;
  v176 = v270;
  v177 = v271;
  v178 = v272;
  v179 = v273;
  v33 = sub_10003EC1C(&v176);
  v127 = a1;
  v122 = a5;
  if (v33 == 1)
  {
    goto LABEL_18;
  }

  v121 = v10;
  v161[8] = v184;
  v161[9] = v185;
  v161[10] = v186;
  LOBYTE(v161[11]) = v187;
  v161[4] = v180;
  v161[5] = v181;
  v161[6] = v182;
  v161[7] = v183;
  v161[0] = v176;
  v161[1] = v177;
  v161[2] = v178;
  v161[3] = v179;
  if (sub_10000FE74(v161) != 1)
  {
    v254 = v161[8];
    v255 = v161[9];
    v256 = v161[10];
    v250 = v161[4];
    v251 = v161[5];
    v252 = v161[6];
    v253 = v161[7];
    v246 = v161[0];
    v247 = v161[1];
    v248 = v161[2];
    v257 = v161[11];
    v249 = v161[3];
    BodyStructure.find(_:)(a1, v202);
    v216 = v202[8];
    v217 = v202[9];
    v218 = v202[10];
    v219 = v203;
    v212 = v202[4];
    v213 = v202[5];
    v214 = v202[6];
    v215 = v202[7];
    v208 = v202[0];
    v209 = v202[1];
    v210 = v202[2];
    v211 = v202[3];
    if (sub_10000FE74(&v208) == 1)
    {
      sub_100051084(v5);
      goto LABEL_17;
    }

    v228 = v216;
    v229 = v217;
    v230 = v218;
    v224 = v212;
    v225 = v213;
    v226 = v214;
    v227 = v215;
    v220 = v208;
    v221 = v209;
    v222 = v210;
    v223 = v211;
    v232[8] = v216;
    v232[9] = v217;
    v232[10] = v218;
    v232[4] = v212;
    v232[5] = v213;
    v232[6] = v214;
    v232[7] = v215;
    v232[0] = v208;
    v232[1] = v209;
    v232[2] = v210;
    v231 = v219;
    v233 = v219;
    v232[3] = v211;
    if (sub_10000FE88(v232) == 1)
    {
      UInt32.init(_:)(v232);
      v49 = v124;
      sub_100050EB8(a4, v124, type metadata accessor for MailboxTaskLogger);
      v50 = v123;
      sub_100050EB8(a4, v123, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10005104C(v5, &v188);
      sub_10000E268(v202, &v188, &qword_1005CE210, &unk_1004D0930);
      sub_10005104C(v5, &v188);
      sub_10000E268(v202, &v188, &qword_1005CE210, &unk_1004D0930);

      v51 = sub_1004A4A54();
      v52 = sub_1004A6034();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v139 = v128;
        *v53 = 68160259;
        LODWORD(v126) = v52;
        *(v53 + 4) = 2;
        *(v53 + 8) = 256;
        v54 = v121;
        v55 = v50 + *(v121 + 20);
        *(v53 + 10) = *v55;
        *(v53 + 11) = 2082;
        v56 = *(v54 + 20);
        v125 = v51;
        v57 = v49;
        v58 = v49 + v56;
        *(v53 + 13) = sub_10015BA6C(*(v58 + 1), *(v58 + 2), &v139);
        *(v53 + 21) = 1040;
        *(v53 + 23) = 2;
        *(v53 + 27) = 512;
        LOWORD(v55) = *(v55 + 24);
        sub_100050F20(v50, type metadata accessor for MailboxTaskLogger);
        *(v53 + 29) = v55;
        *(v53 + 31) = 2160;
        *(v53 + 33) = 0x786F626C69616DLL;
        *(v53 + 41) = 2085;
        v59 = *(v58 + 4);
        LODWORD(v55) = *(v58 + 10);

        sub_100050F20(v57, type metadata accessor for MailboxTaskLogger);
        *&v188 = v59;
        DWORD2(v188) = v55;
        v60 = sub_1004A5824();
        v62 = sub_10015BA6C(v60, v61, &v139);

        *(v53 + 43) = v62;
        *(v53 + 51) = 1024;
        sub_100051084(v6);
        *(v53 + 53) = *v6;
        sub_100051084(v6);
        *(v53 + 57) = 2080;
        BodyStructure.mediaType.getter();
        v64 = v63;
        v66 = v65;

        v67 = sub_10015BA6C(v64, v66, &v139);

        *(v53 + 59) = v67;
        *(v53 + 67) = 2082;
        v68 = SectionSpecifier.Part.debugDescription.getter(v127);
        v70 = sub_10015BA6C(v68, v69, &v139);

        *(v53 + 69) = v70;
        *(v53 + 77) = 2048;
        v71 = sub_10004C0F8();
        sub_100025F40(v202, &qword_1005CE210, &unk_1004D0930);
        *(v53 + 79) = v71;
        sub_100025F40(v202, &qword_1005CE210, &unk_1004D0930);
        v72 = v125;
        _os_log_impl(&_mh_execute_header, v125, v126, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Adding multi-part '%s' section '[%{public}s]' (approx. %{iec-bytes}ld)", v53, 0x57u);
        swift_arrayDestroy();

        sub_100051084(v6);

LABEL_28:
        sub_100025F40(v202, &qword_1005CE210, &unk_1004D0930);
LABEL_32:
        v172 = v278;
        v173 = v279;
        v174 = v280;
        v175 = v281;
        v168 = v274;
        v169 = v275;
        v170 = v276;
        v171 = v277;
        v164 = v270;
        v165 = v271;
        v166 = v272;
        v167 = v273;
        goto LABEL_33;
      }

      sub_100025F40(v202, &qword_1005CE210, &unk_1004D0930);
      sub_100051084(v6);
      sub_100050F20(v50, type metadata accessor for MailboxTaskLogger);
      sub_100051084(v6);
      sub_100025F40(v202, &qword_1005CE210, &unk_1004D0930);
      sub_100051084(v6);

      sub_100025F40(v202, &qword_1005CE210, &unk_1004D0930);
      v101 = v49;
    }

    else
    {
      v123 = *(UInt32.init(_:)(v232) + 0x50);
      sub_100050EB8(a4, v126, type metadata accessor for MailboxTaskLogger);
      sub_100050EB8(a4, v125, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10005104C(v5, &v188);
      sub_10005104C(v5, &v188);
      v119 = BodyStructure.mediaType.getter();
      v120 = v73;
      v75 = v74;
      v77 = v76;
      sub_10000E268(v202, &v188, &qword_1005CE210, &unk_1004D0930);
      sub_10000E268(v202, &v188, &qword_1005CE210, &unk_1004D0930);

      v78 = sub_1004A4A54();
      v79 = sub_1004A6034();

      v124 = v77;

      v128 = v78;
      v80 = os_log_type_enabled(v78, v79);
      v81 = v121;
      if (v80)
      {
        v82 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v139 = v118;
        *v82 = 68160515;
        *(v82 + 4) = 2;
        *(v82 + 8) = 256;
        v83 = *(v81 + 20);
        v117 = v75;
        v84 = v125;
        v85 = v125 + v83;
        *(v82 + 10) = *(&v125->isa + v83);
        *(v82 + 11) = 2082;
        v86 = *(v81 + 20);
        LODWORD(v121) = v79;
        v87 = v126;
        v88 = v126 + v86;
        *(v82 + 13) = sub_10015BA6C(*(v126 + v86 + 8), *(v126 + v86 + 16), &v139);
        *(v82 + 21) = 1040;
        *(v82 + 23) = 2;
        *(v82 + 27) = 512;
        LOWORD(v85) = *(v85 + 12);
        sub_100050F20(v84, type metadata accessor for MailboxTaskLogger);
        *(v82 + 29) = v85;
        *(v82 + 31) = 2160;
        *(v82 + 33) = 0x786F626C69616DLL;
        *(v82 + 41) = 2085;
        v89 = v87;
        v90 = *(v88 + 32);
        LODWORD(v88) = *(v88 + 40);

        sub_100050F20(v89, type metadata accessor for MailboxTaskLogger);
        *&v188 = v90;
        DWORD2(v188) = v88;
        v91 = sub_1004A5824();
        v93 = sub_10015BA6C(v91, v92, &v139);

        *(v82 + 43) = v93;
        *(v82 + 51) = 1024;
        sub_100051084(v6);
        *(v82 + 53) = *v6;
        sub_100051084(v6);
        *(v82 + 57) = 2082;
        v94 = v117;

        v95 = sub_10015BA6C(v119, v94, &v139);

        *(v82 + 59) = v95;
        *(v82 + 67) = 2082;

        v96 = sub_10015BA6C(v120, v124, &v139);

        *(v82 + 69) = v96;
        *(v82 + 77) = 2082;
        v97 = SectionSpecifier.Part.debugDescription.getter(v127);
        v99 = sub_10015BA6C(v97, v98, &v139);

        *(v82 + 79) = v99;
        *(v82 + 87) = 2048;
        sub_100025F40(v202, &qword_1005CE210, &unk_1004D0930);
        *(v82 + 89) = v123;
        sub_100025F40(v202, &qword_1005CE210, &unk_1004D0930);
        v100 = v128;
        _os_log_impl(&_mh_execute_header, v128, v121, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Adding '%{public}s/%{public}s' section '[%{public}s]' (%{iec-bytes}ld)", v82, 0x61u);
        swift_arrayDestroy();

        sub_100051084(v6);

        goto LABEL_28;
      }

      sub_100025F40(v202, &qword_1005CE210, &unk_1004D0930);
      sub_100051084(v6);
      sub_100050F20(v125, type metadata accessor for MailboxTaskLogger);
      sub_100051084(v6);
      sub_100025F40(v202, &qword_1005CE210, &unk_1004D0930);

      sub_100051084(v6);

      sub_100025F40(v202, &qword_1005CE210, &unk_1004D0930);
      v101 = v126;
    }

    sub_100050F20(v101, type metadata accessor for MailboxTaskLogger);
    goto LABEL_32;
  }

LABEL_17:
  v10 = v121;
LABEL_18:
  sub_100050EB8(a4, v128, type metadata accessor for MailboxTaskLogger);
  sub_100050EB8(a4, v13, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10005104C(v5, &v188);
  sub_10005104C(v5, &v188);

  v34 = sub_1004A4A54();
  v35 = sub_1004A6014();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    *&v161[0] = v126;
    *v36 = 68159747;
    LODWORD(v125) = v35;
    *(v36 + 4) = 2;
    *(v36 + 8) = 256;
    v37 = &v13[*(v10 + 20)];
    *(v36 + 10) = *v37;
    *(v36 + 11) = 2082;
    v38 = *(v10 + 20);
    v124 = v34;
    v39 = v128;
    v40 = v128 + v38;
    *(v36 + 13) = sub_10015BA6C(*(&v128[1].isa + v38), *(&v128[2].isa + v38), v161);
    *(v36 + 21) = 1040;
    *(v36 + 23) = 2;
    *(v36 + 27) = 512;
    LOWORD(v37) = *(v37 + 12);
    sub_100050F20(v13, type metadata accessor for MailboxTaskLogger);
    *(v36 + 29) = v37;
    *(v36 + 31) = 2160;
    *(v36 + 33) = 0x786F626C69616DLL;
    *(v36 + 41) = 2085;
    v41 = *(v40 + 4);
    LODWORD(v40) = *(v40 + 10);

    sub_100050F20(v39, type metadata accessor for MailboxTaskLogger);
    *&v188 = v41;
    DWORD2(v188) = v40;
    v42 = sub_1004A5824();
    v44 = sub_10015BA6C(v42, v43, v161);

    *(v36 + 43) = v44;
    *(v36 + 51) = 1024;
    sub_100051084(v6);
    *(v36 + 53) = *v6;
    sub_100051084(v6);
    *(v36 + 57) = 2082;
    v45 = SectionSpecifier.Part.debugDescription.getter(v127);
    v47 = sub_10015BA6C(v45, v46, v161);

    *(v36 + 59) = v47;
    v48 = v124;
    _os_log_impl(&_mh_execute_header, v124, v125, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Section '[%{public}s]' not found in complete body structure.", v36, 0x43u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100051084(v6);
    sub_100050F20(v13, type metadata accessor for MailboxTaskLogger);
    sub_100051084(v6);

    sub_100050F20(v128, type metadata accessor for MailboxTaskLogger);
  }

  v196 = v278;
  v197 = v279;
  v198 = v280;
  LOBYTE(v199) = v281;
  v192 = v274;
  v193 = v275;
  v194 = v276;
  v195 = v277;
  v188 = v270;
  v189 = v271;
  v190 = v272;
  v191 = v273;
  result = sub_10003EC1C(&v188);
  if (result == 1)
  {
    goto LABEL_34;
  }

  v172 = v196;
  v173 = v197;
  v174 = v198;
  v175 = v199;
  v168 = v192;
  v169 = v193;
  v170 = v194;
  v171 = v195;
  v164 = v188;
  v165 = v189;
  v166 = v190;
  v167 = v191;
LABEL_33:
  v196 = v172;
  v197 = v173;
  v198 = v174;
  LOBYTE(v199) = v175;
  v192 = v168;
  v193 = v169;
  v194 = v170;
  v195 = v171;
  v188 = v164;
  v189 = v165;
  v190 = v166;
  v191 = v167;
  result = sub_10000FE74(&v188);
  if (result == 1)
  {
LABEL_34:
    a5 = v122;
LABEL_35:
    LODWORD(v102) = v6[1];
    goto LABEL_36;
  }

  v242 = v196;
  v243 = v197;
  v244 = v198;
  v245 = v199;
  v238 = v192;
  v239 = v193;
  v240 = v194;
  v241 = v195;
  v234 = v188;
  v235 = v189;
  v236 = v190;
  v237 = v191;
  v161[8] = v172;
  v161[9] = v173;
  v161[10] = v174;
  LOBYTE(v161[11]) = v175;
  v161[4] = v168;
  v161[5] = v169;
  v161[6] = v170;
  v161[7] = v171;
  v161[0] = v164;
  v161[1] = v165;
  v161[2] = v166;
  v161[3] = v167;
  sub_1000510B4(v161, &v139);
  BodyStructure.subscript.getter(v127, v204);
  sub_100051084(v6);
  v206[8] = v204[8];
  v206[9] = v204[9];
  v206[10] = v204[10];
  v207 = v205;
  v206[4] = v204[4];
  v206[5] = v204[5];
  v206[6] = v204[6];
  v206[7] = v204[7];
  v206[0] = v204[0];
  v206[1] = v204[1];
  v206[2] = v204[2];
  v206[3] = v204[3];
  v115 = sub_10000FE88(v206) == 1;
  a5 = v122;
  if (v115)
  {
    UInt32.init(_:)(v206);
    result = sub_100051110(v204);
    goto LABEL_35;
  }

  v102 = *(UInt32.init(_:)(v206) + 0x50);
  result = sub_100051110(v204);
  if ((v102 & 0x8000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if (!HIDWORD(v102))
  {
LABEL_36:
    v103 = v102 * 1.25;
    if (v103 != INFINITY)
    {
      if (v103 > -1.0)
      {
        if (v103 < 4294967300.0)
        {
          if (v102 < 0xFFFFC000)
          {
            if (v102 + 0x4000 <= v103)
            {
              v104 = v103;
            }

            else
            {
              v104 = v102 + 0x4000;
            }

            v105 = *v6;
            sub_1000503E0(v131);
            v133[8] = v131[8];
            v133[9] = v131[9];
            v133[10] = v131[10];
            v134 = v132;
            v133[4] = v131[4];
            v133[5] = v131[5];
            v133[6] = v131[6];
            v133[7] = v131[7];
            v133[0] = v131[0];
            v133[1] = v131[1];
            v133[2] = v131[2];
            v133[3] = v131[3];
            v106 = v127;

            v107 = v129;

            sub_100025F40(v133, &qword_1005CDFD0, &qword_1004EE450);
            *(&v161[8] + 1) = v266;
            *(&v161[9] + 1) = v267;
            *(&v161[10] + 1) = v268;
            BYTE1(v161[11]) = v269;
            *(&v161[4] + 1) = v262;
            *(&v161[5] + 1) = v263;
            *(&v161[6] + 1) = v264;
            *(&v161[7] + 1) = v265;
            *(v161 + 1) = v258;
            *(&v161[1] + 1) = v259;
            *(&v161[2] + 1) = v260;
            *(&v161[3] + 1) = v261;
            *(&v138[8] + 7) = v161[8];
            *(&v138[9] + 7) = v161[9];
            *(&v138[10] + 7) = v161[10];
            *(&v138[4] + 7) = v161[4];
            *(&v138[5] + 7) = v161[5];
            *(&v138[6] + 7) = v161[6];
            *(&v138[7] + 7) = v161[7];
            *(v138 + 7) = v161[0];
            *(&v138[1] + 7) = v161[1];
            *(&v138[2] + 7) = v161[2];
            *(&v138[3] + 7) = v161[3];
            v157 = v161[8];
            v158 = v161[9];
            v159 = v161[10];
            v153 = v161[4];
            v154 = v161[5];
            v155 = v161[6];
            v156 = v161[7];
            v149 = v161[0];
            v150 = v161[1];
            v151 = v161[2];
            LOBYTE(v135) = 1;
            *(&v135 + 1) = v107;
            *&v136 = __PAIR64__(v105, v130);
            *(&v136 + 1) = v106;
            LODWORD(v137) = v104;
            *(&v137 + 1) = _swiftEmptyArrayStorage;
            LODWORD(v138[0]) = 0;
            WORD2(v138[0]) = 2;
            BYTE6(v138[0]) = 0;
            *(&v138[11] + 7) = v161[11];
            LOBYTE(v139) = 1;
            v140 = v107;
            v141 = v130;
            v142 = v105;
            v143 = v106;
            v144 = v104;
            v145 = _swiftEmptyArrayStorage;
            v146 = 0;
            v147 = 2;
            v148 = 0;
            v160 = v161[11];
            v152 = v161[3];
            sub_100050408(&v135, &v188);
            sub_100050440(&v139);
            v162 = v138[9];
            v163[0] = v138[10];
            *(v163 + 9) = *(&v138[10] + 9);
            v161[8] = v138[5];
            v161[9] = v138[6];
            v161[10] = v138[7];
            v161[11] = v138[8];
            v161[4] = v138[1];
            v161[5] = v138[2];
            v161[6] = v138[3];
            v161[7] = v138[4];
            v161[0] = v135;
            v161[1] = v136;
            v161[2] = v137;
            v161[3] = v138[0];
            result = UInt32.init(_:)(v161);
            v199 = v161[11];
            v200 = v162;
            v201[0] = v163[0];
            *(v201 + 9) = *(v163 + 9);
            v196 = v161[8];
            v197 = v161[9];
            v198 = v161[10];
            goto LABEL_44;
          }

          goto LABEL_58;
        }

        goto LABEL_56;
      }

      goto LABEL_54;
    }

    goto LABEL_52;
  }

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
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

double sub_100049244@<D0>(int a1@<W0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + *(_s18InProgressMessagesVMa(0) + 28));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v5 + 32);
    while (1)
    {
      v9 = *v8;
      v8 += 48;
      if (v9 == a1)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }

    sub_100169078(v7, v16);
    UInt32.init(_:)(v16);
    v26 = v16[8];
    v27 = v16[9];
    v28[0] = v17[0];
    *(v28 + 9) = *(v17 + 9);
    v22 = v16[4];
    v23 = v16[5];
    v24 = v16[6];
    v25 = v16[7];
    v18 = v16[0];
    v19 = v16[1];
    v20 = v16[2];
    v21 = v16[3];
  }

  else
  {
LABEL_5:
    sub_100051164(&v18);
  }

  v10 = v27;
  a2[8] = v26;
  a2[9] = v10;
  a2[10] = v28[0];
  *(a2 + 169) = *(v28 + 9);
  v11 = v23;
  a2[4] = v22;
  a2[5] = v11;
  v12 = v25;
  a2[6] = v24;
  a2[7] = v12;
  v13 = v19;
  *a2 = v18;
  a2[1] = v13;
  result = *&v20;
  v15 = v21;
  a2[2] = v20;
  a2[3] = v15;
  return result;
}

uint64_t sub_10004934C(uint64_t a1, int a2, uint64_t a3)
{
  v129 = a1;
  v130 = a3;
  v128 = a2;
  v127 = type metadata accessor for MailboxTaskLogger(0);
  v4 = *(*(v127 - 8) + 64);
  __chkstk_darwin(v127);
  v131 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v132 = &v123 - v7;
  v8 = type metadata accessor for MessageSectionData(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v123 - v13;
  v15 = type metadata accessor for SegmentResequencer.PopResult(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = (&v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = sub_1004A5384();
  v140 = *(v136 - 8);
  v19 = *(v140 + 64);
  __chkstk_darwin(v136);
  v142 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000C9C0(&qword_1005CE228, &qword_1004D0948);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v123 - v23;
  v25 = type metadata accessor for MessageSectionData.Segment(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v134 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = _s25MessageSectionsToDownloadVMa(0);
  v143 = *(v29 + 24);
  v144 = v3;
  v30 = *(v3 + v143);
  v135 = *(v30 + 2);
  if (!v135)
  {
    return 0xF000000000000007;
  }

  v124 = v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v125 = v11;
  v126 = v8;
  v133 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_42:
    v30 = sub_100139890(v30);
  }

  v32 = 0;
  v33 = v30 + 88;
  v34 = v140;
  v140 += 32;
  v141 = (v34 + 48);
  v138 = (v26 + 48);
  v139 = (v26 + 56);
  v35 = v135;
  v26 = v136;
  while (1)
  {
    if (v35 == v32)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v32 >= *(v30 + 2))
    {
      goto LABEL_41;
    }

    v36 = v33 - 16;
    sub_100129368(v18);
    if ((*v141)(v18, 1, v26) == 1)
    {
      sub_100050F20(v18, type metadata accessor for SegmentResequencer.PopResult);
      (*v139)(v24, 1, 1, v25);
    }

    else
    {
      v37 = *v140;
      (*v140)(v142, v18, v26);
      if (*(v33 - 3))
      {
        sub_1000503E0(&v205);
        v38 = v137;
      }

      else
      {
        *(v33 - 3) = 1;
        v39 = *v33;
        v40 = *(v33 + 1);
        v41 = *(v33 + 3);
        v183 = *(v33 + 2);
        v184 = v41;
        v181 = v39;
        v182 = v40;
        v42 = *(v33 + 4);
        v43 = *(v33 + 5);
        v44 = *(v33 + 7);
        v187 = *(v33 + 6);
        v188 = v44;
        v185 = v42;
        v186 = v43;
        v45 = *(v33 + 8);
        v46 = *(v33 + 9);
        v47 = *(v33 + 10);
        v192 = v33[176];
        v190 = v46;
        v191 = v47;
        v189 = v45;
        memmove(&v193, v33, 0xB1uLL);
        v48 = sub_10003EC1C(&v193);
        v38 = v137;
        if (v48 == 1)
        {
          goto LABEL_12;
        }

        v213 = v201;
        v214 = v202;
        v215 = v203;
        LOBYTE(v216) = v204;
        v209 = v197;
        v210 = v198;
        v211 = v199;
        v212 = v200;
        v205 = v193;
        v206 = v194;
        v207 = v195;
        v208 = v196;
        if (sub_10000FE74(&v205) == 1)
        {
LABEL_12:
          sub_100051270(&v169);
        }

        else
        {
          v153 = v213;
          v154 = v214;
          v155 = v215;
          v156 = v216;
          v149 = v209;
          v150 = v210;
          v151 = v211;
          v152 = v212;
          v145 = v205;
          v146 = v206;
          v147 = v207;
          v148 = v208;
          UInt32.init(_:)(&v145);
          v165 = v189;
          v166 = v190;
          v167 = v191;
          v168 = v192;
          v161 = v185;
          v162 = v186;
          v163 = v187;
          v164 = v188;
          v157 = v181;
          v158 = v182;
          v159 = v183;
          v160 = v184;
          sub_10003E6D4(&v157, &v169);
          v177 = v153;
          v178 = v154;
          v179 = v155;
          v180 = v156;
          v173 = v149;
          v174 = v150;
          v175 = v151;
          v176 = v152;
          v169 = v145;
          v170 = v146;
          v171 = v147;
          v172 = v148;
        }

        v165 = v177;
        v166 = v178;
        v167 = v179;
        v168 = v180;
        v161 = v173;
        v162 = v174;
        v163 = v175;
        v164 = v176;
        v157 = v169;
        v158 = v170;
        v159 = v171;
        v160 = v172;
        UInt32.init(_:)(&v157);
        v213 = v165;
        v214 = v166;
        v215 = v167;
        LOBYTE(v216) = v168;
        v209 = v161;
        v210 = v162;
        v211 = v163;
        v212 = v164;
        v205 = v157;
        v206 = v158;
        v207 = v159;
        v208 = v160;
      }

      v49 = *(v33 - 2);
      v50 = *(v33 - 4);
      v137 = v38 & 0xFFFFFF0000000000 | *(v33 - 2) | (v50 << 32);
      v51 = sub_100129FEC(v49, v137);
      v54 = !v50 && v53 == 2;
      v55 = v54 && (v51 | v52) == 0;
      v56 = v55;
      v26 = v136;
      v37(v24, v142, v136);
      v36 = &v24[*(v25 + 24)];
      sub_1000503E0(&v181);
      v57 = v188;
      *(v36 + 6) = v187;
      *(v36 + 7) = v57;
      v58 = v186;
      *(v36 + 4) = v185;
      *(v36 + 5) = v58;
      v36[176] = v192;
      v59 = v191;
      *(v36 + 9) = v190;
      *(v36 + 10) = v59;
      *(v36 + 8) = v189;
      v60 = v182;
      *v36 = v181;
      *(v36 + 1) = v60;
      v61 = v184;
      *(v36 + 2) = v183;
      *(v36 + 3) = v61;
      v24[*(v25 + 20)] = v56;
      v62 = *(v36 + 9);
      v201 = *(v36 + 8);
      v202 = v62;
      v203 = *(v36 + 10);
      v204 = v36[176];
      v63 = *(v36 + 5);
      v197 = *(v36 + 4);
      v198 = v63;
      v64 = *(v36 + 7);
      v199 = *(v36 + 6);
      v200 = v64;
      v65 = *(v36 + 1);
      v193 = *v36;
      v194 = v65;
      v66 = *(v36 + 3);
      v195 = *(v36 + 2);
      v196 = v66;
      v67 = v214;
      *(v36 + 8) = v213;
      *(v36 + 9) = v67;
      *(v36 + 10) = v215;
      v36[176] = v216;
      v68 = v210;
      *(v36 + 4) = v209;
      *(v36 + 5) = v68;
      v69 = v212;
      *(v36 + 6) = v211;
      *(v36 + 7) = v69;
      v70 = v206;
      *v36 = v205;
      *(v36 + 1) = v70;
      v71 = v208;
      *(v36 + 2) = v207;
      *(v36 + 3) = v71;
      sub_100025F40(&v193, &qword_1005CE230, &unk_1004D0950);
      (*v139)(v24, 0, 1, v25);
      v35 = v135;
    }

    *(v144 + v143) = v30;
    if ((*v138)(v24, 1, v25) != 1)
    {
      break;
    }

    ++v32;
    sub_100025F40(v24, &qword_1005CE228, &qword_1004D0948);
    v33 += 240;
    if (v35 == v32)
    {
      return 0xF000000000000007;
    }
  }

  v73 = v134;
  sub_100050F80(v24, v134, type metadata accessor for MessageSectionData.Segment);
  if (v32 >= *(v30 + 2))
  {
    __break(1u);
    goto LABEL_44;
  }

  v30 = *(v33 - 4);
  LODWORD(v26) = *v144;
  v74 = v133;
  sub_100050EB8(v73, &v133[*(v126 + 28)], type metadata accessor for MessageSectionData.Segment);
  *v74 = v129;
  *(v74 + 8) = v128;
  *(v74 + 12) = v26;
  *(v74 + 16) = v30;
  v76 = *(v33 - 40);
  v75 = *(v33 - 24);
  v205 = *(v33 - 56);
  v206 = v76;
  v207 = v75;
  v77 = *(v33 + 24);
  v79 = *(v33 - 8);
  v78 = *(v33 + 8);
  v211 = *(v33 + 40);
  v210 = v77;
  v208 = v79;
  v209 = v78;
  v80 = *(v33 + 88);
  v82 = *(v33 + 56);
  v81 = *(v33 + 72);
  v215 = *(v33 + 104);
  v214 = v80;
  v212 = v82;
  v213 = v81;
  v84 = *(v33 + 136);
  v83 = *(v33 + 152);
  v85 = *(v33 + 120);
  *(v218 + 9) = *(v33 + 161);
  v218[0] = v83;
  v216 = v85;
  v217 = v84;
  v86 = *(&v207 + 1);
  v87 = v208;
  v88 = BYTE4(v208);
  swift_bridgeObjectRetain_n();

  sub_100050408(&v205, &v193);
  v89 = sub_100129FEC(v86, v87 | (v88 << 32));
  v91 = v90;
  v93 = v92;
  sub_100050440(&v205);
  if (!v88 && v93 == 2 && !(v89 | v91))
  {
    v94 = v144;
    sub_100168FA8(v32, &v193);
    v36 = *(&v194 + 1);
    v73 = *(v124 + 28);
    v32 = *(v94 + v73);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_33:
      v96 = *(v32 + 2);
      v95 = *(v32 + 3);
      if (v96 >= v95 >> 1)
      {
        v32 = sub_1000860D8((v95 > 1), v96 + 1, 1, v32);
      }

      sub_100050440(&v193);
      *(v32 + 2) = v96 + 1;
      *&v32[8 * v96 + 32] = v36;
      *(v144 + v73) = v32;
      goto LABEL_36;
    }

LABEL_44:
    v32 = sub_1000860D8(0, *(v32 + 2) + 1, 1, v32);
    goto LABEL_33;
  }

LABEL_36:
  v97 = v130;
  v98 = v132;
  sub_100050EB8(v130, v132, type metadata accessor for MailboxTaskLogger);
  v99 = v131;
  sub_100050EB8(v97, v131, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v100 = v133;
  v101 = v125;
  sub_100050EB8(v133, v125, type metadata accessor for MessageSectionData);

  v102 = sub_1004A4A54();
  v103 = sub_1004A6004();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = v98;
    v105 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    *&v181 = v144;
    *v105 = 68160003;
    LODWORD(v143) = v103;
    *(v105 + 4) = 2;
    *(v105 + 8) = 256;
    v106 = v127;
    v107 = *(v127 + 20);
    LODWORD(v142) = v26;
    v108 = v99 + v107;
    *(v105 + 10) = *(v99 + v107);
    *(v105 + 11) = 2082;
    v109 = v104 + *(v106 + 20);
    *(v105 + 13) = sub_10015BA6C(*(v109 + 8), *(v109 + 16), &v181);
    *(v105 + 21) = 1040;
    *(v105 + 23) = 2;
    *(v105 + 27) = 512;
    LOWORD(v108) = *(v108 + 24);
    sub_100050F20(v99, type metadata accessor for MailboxTaskLogger);
    *(v105 + 29) = v108;
    *(v105 + 31) = 2160;
    *(v105 + 33) = 0x786F626C69616DLL;
    *(v105 + 41) = 2085;
    v110 = *(v109 + 32);
    LODWORD(v109) = *(v109 + 40);

    sub_100050F20(v104, type metadata accessor for MailboxTaskLogger);
    *&v193 = v110;
    DWORD2(v193) = v109;
    v111 = v126;
    v112 = sub_1004A5824();
    v114 = sub_10015BA6C(v112, v113, &v181);

    *(v105 + 43) = v114;
    *(v105 + 51) = 1024;
    *(v105 + 53) = v142;
    *(v105 + 57) = 2048;
    v115 = v101 + *(v111 + 28);
    v116 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    sub_100050F20(v101, type metadata accessor for MessageSectionData);
    *(v105 + 59) = v116;
    *(v105 + 67) = 2082;
    v117 = SectionSpecifier.Part.debugDescription.getter(v30);
    v119 = v118;

    v120 = sub_10015BA6C(v117, v119, &v181);

    *(v105 + 69) = v120;
    _os_log_impl(&_mh_execute_header, v102, v143, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Forwarding %ld bytes for section '[%{public}s]' to the persistence.", v105, 0x4Du);
    swift_arrayDestroy();
    v100 = v133;
  }

  else
  {
    sub_100050F20(v101, type metadata accessor for MessageSectionData);
    sub_100050F20(v99, type metadata accessor for MailboxTaskLogger);

    sub_100050F20(v98, type metadata accessor for MailboxTaskLogger);
  }

  sub_100050F20(v134, type metadata accessor for MessageSectionData.Segment);
  v121 = swift_allocBox();
  sub_100050F80(v100, v122, type metadata accessor for MessageSectionData);
  return v121 | 0x5000000000000004;
}

unint64_t sub_10004A0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v76 = a5;
  v73 = type metadata accessor for MailboxTaskLogger(0);
  v8 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v75 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v67 - v11;
  __chkstk_darwin(v12);
  v70 = &v67 - v13;
  __chkstk_darwin(v14);
  v71 = &v67 - v15;
  v72 = _s25MessageSectionsToDownloadVMa(0);
  v16 = *(v72 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v72);
  v78 = (&v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v77 = &v67 - v20;
  __chkstk_darwin(v21);
  v79 = (&v67 - v22);
  v23 = *(v5 + *(_s18InProgressMessagesVMa(0) + 32));

  v25 = sub_10004D850(v24, v5, a2, a4);
  v27 = v26;

  v28 = v27;

  if (v27)
  {
    v30 = 0;
LABEL_15:
    LOBYTE(v85[0]) = v28 & 1;
    return v30 | ((v28 & 1) << 32);
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v25 < *(v23 + 16))
  {
    v31 = v23 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v25;
    v32 = v79;
    sub_100050EB8(v31, v79, _s25MessageSectionsToDownloadVMa);
    v30 = *v32;
    sub_100049244(*v32, v83);
    v85[8] = v83[8];
    v85[9] = v83[9];
    v86[0] = v84[0];
    *(v86 + 9) = *(v84 + 9);
    v85[4] = v83[4];
    v85[5] = v83[5];
    v85[6] = v83[6];
    v85[7] = v83[7];
    v85[0] = v83[0];
    v85[1] = v83[1];
    v85[2] = v83[2];
    v85[3] = v83[3];
    if (sub_100051008(v85) == 1)
    {
      v69 = v27;
      v33 = v76;
      v34 = v71;
      sub_100050EB8(v76, v71, type metadata accessor for MailboxTaskLogger);
      v35 = v70;
      sub_100050EB8(v33, v70, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v36 = sub_1004A4A54();
      v37 = sub_1004A6004();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v68 = v30;
        v82[0] = v39;
        *v38 = 68159491;
        *(v38 + 4) = 2;
        *(v38 + 8) = 256;
        v40 = v73;
        v41 = v35 + *(v73 + 20);
        *(v38 + 10) = *v41;
        *(v38 + 11) = 2082;
        v42 = v34 + *(v40 + 20);
        *(v38 + 13) = sub_10015BA6C(*(v42 + 8), *(v42 + 16), v82);
        *(v38 + 21) = 1040;
        *(v38 + 23) = 2;
        *(v38 + 27) = 512;
        LOWORD(v41) = *(v41 + 24);
        sub_100050F20(v35, type metadata accessor for MailboxTaskLogger);
        *(v38 + 29) = v41;
        *(v38 + 31) = 2160;
        *(v38 + 33) = 0x786F626C69616DLL;
        *(v38 + 41) = 2085;
        v43 = *(v42 + 32);
        v44 = *(v42 + 40);
        v33 = v76;

        sub_100050F20(v34, type metadata accessor for MailboxTaskLogger);
        v80 = v43;
        v81 = v44;
        v45 = sub_1004A5824();
        v47 = sub_10015BA6C(v45, v46, v82);

        *(v38 + 43) = v47;
        *(v38 + 51) = 1024;
        *(v38 + 53) = v68;
        _os_log_impl(&_mh_execute_header, v36, v37, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed download for message %u, but we don’t have a body structure for this message.", v38, 0x39u);
        swift_arrayDestroy();
        v30 = v68;
        v32 = v79;
      }

      else
      {
        sub_100050F20(v35, type metadata accessor for MailboxTaskLogger);

        sub_100050F20(v34, type metadata accessor for MailboxTaskLogger);
      }

      v28 = v69;
      v48 = v74;
      v50 = v77;
      v49 = v78;
    }

    else
    {
      sub_100025F40(v83, &qword_1005CE208, &qword_1004D0928);
      v48 = v74;
      v50 = v77;
      v49 = v78;
      v33 = v76;
    }

    sub_100050EB8(v33, v48, type metadata accessor for MailboxTaskLogger);
    v51 = v75;
    sub_100050EB8(v33, v75, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_100050EB8(v32, v50, _s25MessageSectionsToDownloadVMa);
    sub_100050EB8(v32, v49, _s25MessageSectionsToDownloadVMa);
    v52 = sub_1004A4A54();
    LODWORD(v76) = sub_1004A6034();
    if (os_log_type_enabled(v52, v76))
    {
      v53 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v82[0] = v74;
      *v53 = 68159747;
      *(v53 + 4) = 2;
      *(v53 + 8) = 256;
      v54 = v73;
      v55 = v51 + *(v73 + 20);
      *(v53 + 10) = *v55;
      *(v53 + 11) = 2082;
      v56 = v30;
      v57 = v51;
      v58 = v48;
      v59 = v48 + *(v54 + 20);
      *(v53 + 13) = sub_10015BA6C(*(v59 + 8), *(v59 + 16), v82);
      *(v53 + 21) = 1040;
      *(v53 + 23) = 2;
      *(v53 + 27) = 512;
      LOWORD(v55) = *(v55 + 24);
      v60 = v57;
      v30 = v56;
      sub_100050F20(v60, type metadata accessor for MailboxTaskLogger);
      *(v53 + 29) = v55;
      *(v53 + 31) = 2160;
      *(v53 + 33) = 0x786F626C69616DLL;
      *(v53 + 41) = 2085;
      v61 = *(v59 + 32);
      LODWORD(v59) = *(v59 + 40);

      sub_100050F20(v58, type metadata accessor for MailboxTaskLogger);
      v80 = v61;
      v81 = v59;
      v62 = sub_1004A5824();
      v64 = sub_10015BA6C(v62, v63, v82);

      *(v53 + 43) = v64;
      *(v53 + 51) = 2048;
      v65 = *(*(v77 + *(v72 + 28)) + 16);
      sub_100050F20(v77, _s25MessageSectionsToDownloadVMa);
      *(v53 + 53) = v65;
      *(v53 + 61) = 1024;
      LODWORD(v65) = *v78;
      sub_100050F20(v78, _s25MessageSectionsToDownloadVMa);
      *(v53 + 63) = v65;
      _os_log_impl(&_mh_execute_header, v52, v76, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed download of %ld sections for message %u.", v53, 0x43u);
      swift_arrayDestroy();

      v66 = v79;
    }

    else
    {
      sub_100050F20(v49, _s25MessageSectionsToDownloadVMa);
      sub_100050F20(v50, _s25MessageSectionsToDownloadVMa);
      sub_100050F20(v51, type metadata accessor for MailboxTaskLogger);

      sub_100050F20(v48, type metadata accessor for MailboxTaskLogger);
      v66 = v32;
    }

    sub_100050F20(v66, _s25MessageSectionsToDownloadVMa);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_10004A98C(uint64_t a1, uint64_t a2)
{
  v223 = a1;
  v3 = v2;
  v224 = a2;
  v4 = sub_1004A4644();
  v213 = *(v4 - 8);
  v214 = v4;
  v5 = *(v213 + 64);
  __chkstk_darwin(v4);
  v211 = &v196 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v212 = &v196 - v8;
  v9 = type metadata accessor for MessageData.BodySection();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v217 = &v196 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v204 = &v196 - v14;
  __chkstk_darwin(v15);
  v201 = &v196 - v16;
  __chkstk_darwin(v17);
  v210 = &v196 - v18;
  __chkstk_darwin(v19);
  v209 = (&v196 - v20);
  v220 = type metadata accessor for MailboxTaskLogger(0);
  v21 = *(*(v220 - 8) + 64);
  __chkstk_darwin(v220);
  v215 = (&v196 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v216 = &v196 - v24;
  __chkstk_darwin(v25);
  v202 = &v196 - v26;
  __chkstk_darwin(v27);
  v203 = &v196 - v28;
  __chkstk_darwin(v29);
  v199 = &v196 - v30;
  __chkstk_darwin(v31);
  v200 = &v196 - v32;
  __chkstk_darwin(v33);
  v218 = &v196 - v34;
  __chkstk_darwin(v35);
  v208 = (&v196 - v36);
  __chkstk_darwin(v37);
  v207 = &v196 - v38;
  __chkstk_darwin(v39);
  v219 = (&v196 - v40);
  v41 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v44 = &v196 - v43;
  v45 = sub_1004A5384();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  v206 = &v196 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v205 = &v196 - v50;
  __chkstk_darwin(v51);
  v53 = &v196 - v52;
  __chkstk_darwin(v54);
  v56 = &v196 - v55;
  v221 = *(v3 + 20);
  v57 = *(v10 + 32);
  v58 = v223;
  sub_10000E268(v223 + v57, v44, &qword_1005CE218, &unk_1004F3FD0);
  v59 = type metadata accessor for MessageData.BodyData();
  if ((*(*(v59 - 8) + 48))(v44, 1, v59) != 1)
  {
    v215 = *(v46 + 16);
    v216 = v3;
    v215(v53, v44, v45);
    sub_100050F20(v44, type metadata accessor for MessageData.BodyData);
    v217 = v46;
    (*(v46 + 32))(v56, v53, v45);
    v86 = *(v58 + 24);
    v197 = v45;
    v198 = v56;
    if (v86)
    {
      v87 = v224;
      v88 = v208;
      sub_100050EB8(v224, v208, type metadata accessor for MailboxTaskLogger);
      sub_100050EB8(v87, v218, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v89 = v206;
      v215(v206, v56, v45);
      v90 = v210;
      sub_100050EB8(v58, v210, type metadata accessor for MessageData.BodySection);
      v91 = sub_1004A4A54();
      v92 = sub_1004A6004();
      v93 = v45;
      if (os_log_type_enabled(v91, v92))
      {
        v94 = swift_slowAlloc();
        v219 = swift_slowAlloc();
        v227 = v219;
        *v94 = 68160003;
        LODWORD(v215) = v92;
        *(v94 + 4) = 2;
        *(v94 + 8) = 256;
        v95 = v220;
        v96 = *(v220 + 20);
        v97 = v88;
        v209 = v91;
        v98 = v218;
        v99 = v218 + v96;
        *(v94 + 10) = *(v218 + v96);
        *(v94 + 11) = 2082;
        v100 = v97 + *(v95 + 20);
        *(v94 + 13) = sub_10015BA6C(*(v100 + 8), *(v100 + 16), &v227);
        *(v94 + 21) = 1040;
        *(v94 + 23) = 2;
        *(v94 + 27) = 512;
        LOWORD(v99) = *(v99 + 24);
        sub_100050F20(v98, type metadata accessor for MailboxTaskLogger);
        *(v94 + 29) = v99;
        *(v94 + 31) = 2160;
        *(v94 + 33) = 0x786F626C69616DLL;
        *(v94 + 41) = 2085;
        v101 = *(v100 + 32);
        LODWORD(v100) = *(v100 + 40);

        sub_100050F20(v97, type metadata accessor for MailboxTaskLogger);
        v225 = v101;
        v226 = v100;
        v102 = sub_1004A5824();
        v104 = sub_10015BA6C(v102, v103, &v227);

        *(v94 + 43) = v104;
        *(v94 + 51) = 1024;
        *(v94 + 53) = v221;
        *(v94 + 57) = 2048;
        v105 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        v106 = v89;
        v107 = v217;
        v108 = *(v217 + 8);
        v108(v106, v93);
        *(v94 + 59) = v105;
        *(v94 + 67) = 2082;
        v87 = v224;
        v109 = SectionSpecifier.debugDescription.getter(*v90, *(v90 + 8), *(v90 + 16));
        v111 = v110;
        sub_100050F20(v90, type metadata accessor for MessageData.BodySection);
        v112 = sub_10015BA6C(v109, v111, &v227);

        *(v94 + 69) = v112;
        v113 = v209;
        _os_log_impl(&_mh_execute_header, v209, v215, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received %ld bytes for section '%{public}s'", v94, 0x4Du);
        swift_arrayDestroy();

        v56 = v198;
      }

      else
      {
        v159 = v89;
        v107 = v217;
        v108 = *(v217 + 8);
        v108(v159, v93);
        sub_100050F20(v218, type metadata accessor for MailboxTaskLogger);

        sub_100050F20(v88, type metadata accessor for MailboxTaskLogger);
        sub_100050F20(v90, type metadata accessor for MessageData.BodySection);
      }

      v157 = 0;
      v160 = v222;
    }

    else
    {
      LODWORD(v218) = *(v58 + 20);
      v87 = v224;
      sub_100050EB8(v224, v219, type metadata accessor for MailboxTaskLogger);
      v134 = v207;
      sub_100050EB8(v87, v207, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v135 = v205;
      v215(v205, v56, v45);
      v136 = v209;
      sub_100050EB8(v58, v209, type metadata accessor for MessageData.BodySection);
      v137 = sub_1004A4A54();
      v138 = sub_1004A6004();
      v139 = v45;
      if (os_log_type_enabled(v137, v138))
      {
        v140 = swift_slowAlloc();
        v215 = swift_slowAlloc();
        v227 = v215;
        *v140 = 68160259;
        LODWORD(v210) = v138;
        *(v140 + 4) = 2;
        *(v140 + 8) = 256;
        v141 = v220;
        v142 = v134 + *(v220 + 20);
        *(v140 + 10) = *v142;
        *(v140 + 11) = 2082;
        v143 = *(v141 + 20);
        v208 = v137;
        v144 = v219;
        v145 = v219 + v143;
        *(v140 + 13) = sub_10015BA6C(*(v219 + v143 + 8), *(v219 + v143 + 16), &v227);
        *(v140 + 21) = 1040;
        *(v140 + 23) = 2;
        *(v140 + 27) = 512;
        LOWORD(v142) = *(v142 + 24);
        sub_100050F20(v134, type metadata accessor for MailboxTaskLogger);
        *(v140 + 29) = v142;
        *(v140 + 31) = 2160;
        *(v140 + 33) = 0x786F626C69616DLL;
        *(v140 + 41) = 2085;
        v146 = *(v145 + 4);
        v147 = *(v145 + 10);

        sub_100050F20(v144, type metadata accessor for MailboxTaskLogger);
        v225 = v146;
        v226 = v147;
        v148 = sub_1004A5824();
        v150 = sub_10015BA6C(v148, v149, &v227);

        *(v140 + 43) = v150;
        *(v140 + 51) = 1024;
        *(v140 + 53) = v221;
        *(v140 + 57) = 2048;
        v151 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        v107 = v217;
        v108 = *(v217 + 8);
        v108(v135, v139);
        *(v140 + 59) = v151;
        *(v140 + 67) = 1024;
        v152 = v218;
        *(v140 + 69) = v218;
        *(v140 + 73) = 2082;
        v153 = SectionSpecifier.debugDescription.getter(v136->isa, v136[1].isa, v136[2].isa);
        v155 = v154;
        sub_100050F20(v136, type metadata accessor for MessageData.BodySection);
        v156 = sub_10015BA6C(v153, v155, &v227);

        *(v140 + 75) = v156;
        v157 = v152;
        v158 = v208;
        _os_log_impl(&_mh_execute_header, v208, v210, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received %ld bytes (offset %u) for section '%{public}s'", v140, 0x53u);
        swift_arrayDestroy();

        v87 = v224;
      }

      else
      {
        v161 = v217;
        v108 = *(v217 + 8);
        v108(v135, v139);
        v162 = v134;
        v107 = v161;
        sub_100050F20(v162, type metadata accessor for MailboxTaskLogger);

        v157 = v218;
        sub_100050F20(v219, type metadata accessor for MailboxTaskLogger);
        sub_100050F20(v136, type metadata accessor for MessageData.BodySection);
      }

      v160 = v222;
      v56 = v198;
    }

    v163 = v216;
    sub_100127F9C(v56, v157, v87);
    v164 = v56;
    if (!v160)
    {
      if (!*(v163 + 52))
      {
        v165 = *(v163 + 48);
        v166 = *(v163 + 40);
        v167 = v212;
        sub_100129238(v166);
        v168 = v211;
        sub_1004A45C4();
        LOBYTE(v165) = sub_1004A45E4();
        v169 = *(v213 + 8);
        v170 = v168;
        v171 = v214;
        v169(v170, v214);
        v172 = v167;
        v173 = v199;
        v174 = v171;
        v175 = v201;
        v169(v172, v174);
        v176 = v200;
        if (v165)
        {
          sub_100050EB8(v87, v200, type metadata accessor for MailboxTaskLogger);
          sub_100050EB8(v87, v173, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          sub_100050EB8(v223, v175, type metadata accessor for MessageData.BodySection);
          v177 = sub_1004A4A54();
          v178 = sub_1004A6004();
          if (os_log_type_enabled(v177, v178))
          {
            v179 = swift_slowAlloc();
            LODWORD(v223) = v178;
            v180 = v179;
            v181 = swift_slowAlloc();
            v222 = 0;
            v224 = v181;
            v227 = v181;
            *v180 = 68159747;
            *(v180 + 4) = 2;
            *(v180 + 8) = 256;
            v182 = v220;
            v183 = v175;
            v184 = v173;
            v185 = v173 + *(v220 + 20);
            *(v180 + 10) = *v185;
            *(v180 + 11) = 2082;
            v186 = v107;
            v187 = v176 + *(v182 + 20);
            *(v180 + 13) = sub_10015BA6C(*(v187 + 8), *(v187 + 16), &v227);
            *(v180 + 21) = 1040;
            *(v180 + 23) = 2;
            *(v180 + 27) = 512;
            LOWORD(v185) = *(v185 + 24);
            sub_100050F20(v184, type metadata accessor for MailboxTaskLogger);
            *(v180 + 29) = v185;
            *(v180 + 31) = 2160;
            *(v180 + 33) = 0x786F626C69616DLL;
            *(v180 + 41) = 2085;
            v188 = *(v187 + 32);
            LODWORD(v187) = *(v187 + 40);

            sub_100050F20(v176, type metadata accessor for MailboxTaskLogger);
            v225 = v188;
            v226 = v187;
            v189 = sub_1004A5824();
            v191 = sub_10015BA6C(v189, v190, &v227);

            *(v180 + 43) = v191;
            *(v180 + 51) = 1024;
            *(v180 + 53) = v221;
            *(v180 + 57) = 2082;
            v192 = SectionSpecifier.debugDescription.getter(*v183, *(v183 + 8), *(v183 + 16));
            v194 = v193;
            sub_100050F20(v183, type metadata accessor for MessageData.BodySection);
            v195 = sub_10015BA6C(v192, v194, &v227);

            *(v180 + 59) = v195;
            _os_log_impl(&_mh_execute_header, v177, v223, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: All data for section '%{public}s' has been received.", v180, 0x43u);
            swift_arrayDestroy();

            (*(v186 + 8))(v198, v197);
          }

          else
          {
            sub_100050F20(v173, type metadata accessor for MailboxTaskLogger);

            sub_100050F20(v176, type metadata accessor for MailboxTaskLogger);
            v108(v198, v197);
            sub_100050F20(v175, type metadata accessor for MessageData.BodySection);
          }

          return;
        }
      }

      v164 = v198;
    }

    v108(v164, v197);
    return;
  }

  v60 = v58;
  sub_100025F40(v44, &qword_1005CE218, &unk_1004F3FD0);
  if (*(v3 + 52))
  {
    goto LABEL_9;
  }

  v61 = *(v3 + 48);
  v62 = v212;
  sub_100129238(*(v3 + 40));
  v63 = v211;
  sub_1004A45C4();
  LOBYTE(v61) = sub_1004A45E4();
  v64 = *(v213 + 8);
  v65 = v63;
  v66 = v214;
  v64(v65, v214);
  v64(v62, v66);
  if ((v61 & 1) == 0)
  {
LABEL_9:
    v114 = v224;
    v115 = v216;
    sub_100050EB8(v224, v216, type metadata accessor for MailboxTaskLogger);
    v116 = v215;
    sub_100050EB8(v114, v215, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v117 = v217;
    sub_100050EB8(v60, v217, type metadata accessor for MessageData.BodySection);
    v118 = sub_1004A4A54();
    v119 = sub_1004A6014();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v224 = swift_slowAlloc();
      v227 = v224;
      *v120 = 68159747;
      *(v120 + 4) = 2;
      *(v120 + 8) = 256;
      v121 = v220;
      v122 = v116 + *(v220 + 20);
      *(v120 + 10) = *v122;
      *(v120 + 11) = 2082;
      v123 = v115 + *(v121 + 20);
      *(v120 + 13) = sub_10015BA6C(*(v123 + 8), *(v123 + 16), &v227);
      *(v120 + 21) = 1040;
      *(v120 + 23) = 2;
      *(v120 + 27) = 512;
      LOWORD(v122) = *(v122 + 12);
      sub_100050F20(v116, type metadata accessor for MailboxTaskLogger);
      *(v120 + 29) = v122;
      *(v120 + 31) = 2160;
      *(v120 + 33) = 0x786F626C69616DLL;
      *(v120 + 41) = 2085;
      v124 = v115;
      v125 = v117;
      v126 = *(v123 + 32);
      LODWORD(v122) = *(v123 + 40);

      sub_100050F20(v124, type metadata accessor for MailboxTaskLogger);
      v225 = v126;
      v226 = v122;
      v127 = sub_1004A5824();
      v129 = sub_10015BA6C(v127, v128, &v227);

      *(v120 + 43) = v129;
      *(v120 + 51) = 1024;
      *(v120 + 53) = v221;
      *(v120 + 57) = 2082;
      v130 = SectionSpecifier.debugDescription.getter(*v125, *(v125 + 8), *(v125 + 16));
      v132 = v131;
      sub_100050F20(v125, type metadata accessor for MessageData.BodySection);
      v133 = sub_10015BA6C(v130, v132, &v227);

      *(v120 + 59) = v133;
      _os_log_impl(&_mh_execute_header, v118, v119, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received BodySection with NIL data for section '%{public}s'. Message may have been deleted.", v120, 0x43u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100050F20(v116, type metadata accessor for MailboxTaskLogger);

      sub_100050F20(v115, type metadata accessor for MailboxTaskLogger);
      sub_100050F20(v117, type metadata accessor for MessageData.BodySection);
    }

    sub_10005121C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v67 = v224;
    v68 = v203;
    sub_100050EB8(v224, v203, type metadata accessor for MailboxTaskLogger);
    v69 = v202;
    sub_100050EB8(v67, v202, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v70 = v204;
    sub_100050EB8(v60, v204, type metadata accessor for MessageData.BodySection);
    v71 = sub_1004A4A54();
    v72 = sub_1004A6034();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v224 = swift_slowAlloc();
      v227 = v224;
      *v73 = 68159747;
      *(v73 + 4) = 2;
      *(v73 + 8) = 256;
      v74 = v220;
      v75 = v69 + *(v220 + 20);
      *(v73 + 10) = *v75;
      *(v73 + 11) = 2082;
      v76 = v68;
      v77 = v68 + *(v74 + 20);
      *(v73 + 13) = sub_10015BA6C(*(v77 + 8), *(v77 + 16), &v227);
      *(v73 + 21) = 1040;
      *(v73 + 23) = 2;
      *(v73 + 27) = 512;
      LOWORD(v75) = *(v75 + 24);
      sub_100050F20(v69, type metadata accessor for MailboxTaskLogger);
      *(v73 + 29) = v75;
      *(v73 + 31) = 2160;
      *(v73 + 33) = 0x786F626C69616DLL;
      *(v73 + 41) = 2085;
      v78 = *(v77 + 32);
      LODWORD(v77) = *(v77 + 40);

      sub_100050F20(v76, type metadata accessor for MailboxTaskLogger);
      v225 = v78;
      v226 = v77;
      v79 = sub_1004A5824();
      v81 = sub_10015BA6C(v79, v80, &v227);

      *(v73 + 43) = v81;
      *(v73 + 51) = 1024;
      *(v73 + 53) = v221;
      *(v73 + 57) = 2082;
      v82 = SectionSpecifier.debugDescription.getter(*v70, *(v70 + 8), *(v70 + 16));
      v84 = v83;
      sub_100050F20(v70, type metadata accessor for MessageData.BodySection);
      v85 = sub_10015BA6C(v82, v84, &v227);

      *(v73 + 59) = v85;
      _os_log_impl(&_mh_execute_header, v71, v72, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] UID %u: Received BodySection with NIL data for section '%{public}s', but we already have all data. Ignoring.", v73, 0x43u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100050F20(v69, type metadata accessor for MailboxTaskLogger);

      sub_100050F20(v68, type metadata accessor for MailboxTaskLogger);
      sub_100050F20(v70, type metadata accessor for MessageData.BodySection);
    }
  }
}

uint64_t sub_10004C0F8()
{
  v1 = *(v0 + 144);
  v25[8] = *(v0 + 128);
  v25[9] = v1;
  v25[10] = *(v0 + 160);
  v26 = *(v0 + 176);
  v2 = *(v0 + 80);
  v25[4] = *(v0 + 64);
  v25[5] = v2;
  v3 = *(v0 + 112);
  v25[6] = *(v0 + 96);
  v25[7] = v3;
  v4 = *(v0 + 16);
  v25[0] = *v0;
  v25[1] = v4;
  v5 = *(v0 + 48);
  v25[2] = *(v0 + 32);
  v25[3] = v5;
  if (sub_10000FE88(v25) != 1)
  {
    return *(UInt32.init(_:)(v25) + 0x50);
  }

  v6 = UInt32.init(_:)(v25);
  v7 = 0;
  v8 = *v6 + 32;
  v9 = *(*v6 + 16) + 1;
  while (--v9)
  {
    v10 = v8 + 184;
    v11 = *v8;
    v12 = *(v8 + 16);
    v13 = *(v8 + 48);
    v27[2] = *(v8 + 32);
    v27[3] = v13;
    v27[0] = v11;
    v27[1] = v12;
    v14 = *(v8 + 64);
    v15 = *(v8 + 80);
    v16 = *(v8 + 112);
    v27[6] = *(v8 + 96);
    v27[7] = v16;
    v27[4] = v14;
    v27[5] = v15;
    v17 = *(v8 + 128);
    v18 = *(v8 + 144);
    v19 = *(v8 + 160);
    v28 = *(v8 + 176);
    v27[9] = v18;
    v27[10] = v19;
    v27[8] = v17;
    v20 = sub_1000510B4(v27, v24);
    v21 = sub_10004C0F8(v20);
    sub_100051110(v27);
    v8 = v10;
    v22 = __OFADD__(v7, v21);
    v7 += v21;
    if (v22)
    {
      __break(1u);
      return *(UInt32.init(_:)(v25) + 0x50);
    }
  }

  return v7;
}

Swift::Int sub_10004C218(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001419C0(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 4);
          if (*(v12 - 2) >= v14)
          {
            break;
          }

          v15 = *(v12 + 3);
          v16 = v12[32];
          v17 = v12[33];
          *v13 = *(v12 - 8);
          v18 = *(v12 + 1);
          *(v12 - 2) = v14;
          *v12 = v15;
          v12[8] = v16;
          v12[9] = v17;
          v12 -= 24;
          *(v13 + 2) = v18;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_10000C9C0(&qword_1005CDFE0, &qword_1004D01E8);
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v20[0] = v7 + 4;
    v20[1] = v6;
    sub_10004C550(v20, v21, v22, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_10004C3D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10018900C(v2, 0);
  result = sub_100091D88(0, v2, 0);
  v4 = 0;
  v21 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  if ((v9 & v5) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return 0;
    }

    v10 = *(v6 + 8 * v12);
    ++v4;
    if (v10)
    {
      v4 = v12;
      do
      {
LABEL_8:
        v13 = __clz(__rbit64(v10)) | (v4 << 6);
        v14 = *(*(v21 + 48) + 4 * v13);
        v15 = *(v21 + 56) + 16 * v13;
        v16 = *v15;
        v22 = *(v15 + 8);
        v17 = *(v15 + 9);
        result = sub_10004CD58(v14);
        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        if (v19 >= v18 >> 1)
        {
          result = sub_100091D88((v18 > 1), v19 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v19 + 1;
        v20 = &_swiftEmptyArrayStorage[2 * v19];
        v20[4] = v16;
        v10 &= v10 - 1;
        *(v20 + 40) = v22;
        *(v20 + 41) = v17;
      }

      while (v10);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004C550(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100141810(v8);
      v8 = result;
    }

    v89 = v8 + 2;
    v90 = v8[2];
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = &v8[2 * v90];
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_10004CB2C((*a3 + 24 * *v91), (*a3 + 24 * *v93), *a3 + 24 * v94, v98);
        if (v5)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_114;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_115;
        }

        *v91 = v92;
        v91[1] = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_116;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v96 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 24 * v7);
      v11 = (*a3 + 24 * v9);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *v13;
        v17 = v13[6];
        v13 += 6;
        ++v15;
        if (v12 < v10 == v16 >= v17)
        {
          v7 = v15 - 1;
          if (v12 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v12 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 24 * v7 - 8;
        v19 = 24 * v9 + 17;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v29 + v19);
            v23 = *(v29 + v19 - 17);
            v24 = (v29 + v18);
            v25 = *(v22 - 9);
            v26 = *(v22 - 1);
            v27 = *v22;
            v28 = *v24;
            *(v22 - 17) = *(v24 - 1);
            *(v22 - 1) = v28;
            *(v24 - 4) = v23;
            *(v24 - 1) = v25;
            *v24 = v26;
            *(v24 + 1) = v27;
          }

          ++v21;
          v18 -= 24;
          v19 += 24;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v42 = v8[2];
    v41 = v8[3];
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_100085288((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v43;
    v44 = v8 + 4;
    v45 = &v8[2 * v42 + 4];
    *v45 = v9;
    v45[1] = v7;
    v98 = *v97;
    if (!*v97)
    {
      goto LABEL_127;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = v8[4];
          v48 = v8[5];
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = &v8[2 * v43];
          v65 = *v63;
          v64 = v63[1];
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = &v44[2 * v46];
          v71 = *v69;
          v70 = v69[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v43 < 2)
        {
          goto LABEL_112;
        }

        v73 = &v8[2 * v43];
        v75 = *v73;
        v74 = v73[1];
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_72:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = &v44[2 * v46];
        v78 = *v76;
        v77 = v76[1];
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_110;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = &v44[2 * v46 - 2];
        v85 = *v84;
        v86 = &v44[2 * v46];
        v87 = v86[1];
        sub_10004CB2C((*a3 + 24 * *v84), (*a3 + 24 * *v86), *a3 + 24 * v87, v98);
        if (v5)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_99;
        }

        if (v46 > v8[2])
        {
          goto LABEL_100;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = v8[2];
        if (v46 >= v88)
        {
          goto LABEL_101;
        }

        v43 = v88 - 1;
        result = memmove(&v44[2 * v46], v86 + 2, 16 * (v88 - 1 - v46));
        v8[2] = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_3;
        }
      }

      v51 = &v44[2 * v43];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = &v8[2 * v43];
      v60 = *v58;
      v59 = v58[1];
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = &v44[2 * v46];
        v82 = *v80;
        v81 = v80[1];
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v96;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 24 * v7 - 24;
  v32 = v9 - v7;
LABEL_30:
  v33 = v32;
  v34 = v31;
  while (1)
  {
    v35 = v34 + 24;
    v36 = *(v34 + 24);
    if (*v34 >= v36)
    {
LABEL_29:
      ++v7;
      v31 += 24;
      --v32;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v37 = *(v34 + 32);
    v38 = *(v34 + 40);
    v39 = *(v34 + 41);
    *v35 = *v34;
    result = *(v34 + 16);
    *v34 = v36;
    *(v34 + 8) = v37;
    *(v34 + 16) = v38;
    *(v34 + 17) = v39;
    v34 -= 24;
    *(v35 + 16) = result;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_10004CB2C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v4 < *v6)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 24 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v18 = v6 - 24;
    v5 -= 24;
    v19 = v13;
    do
    {
      v20 = (v5 + 24);
      v21 = *(v19 - 24);
      v19 -= 24;
      if (*v18 < v21)
      {
        if (v20 != v6)
        {
          v23 = *v18;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v23;
        }

        if (v13 <= v4 || (v6 -= 24, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v20 != v13)
      {
        v22 = *v19;
        *(v5 + 16) = *(v19 + 16);
        *v5 = v22;
      }

      v5 -= 24;
      v13 = v19;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v24 = 24 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v24])
  {
    memmove(v6, v4, v24);
  }

  return 1;
}

uint64_t sub_10004CD58(Swift::UInt32 a1)
{
  v4 = v1 + 1;
  v3 = v1[1];
  result = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v3;
  if ((result & 1) == 0)
  {
    result = sub_100091DA8(0, *(v3 + 16) + 1, 1);
    v3 = *v4;
  }

  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  if (v7 >= v6 >> 1)
  {
    result = sub_100091DA8((v6 > 1), v7 + 1, 1);
    v3 = *v4;
  }

  *(v3 + 16) = v7 + 1;
  *(v3 + 4 * v7 + 32) = a1;
  v1[1] = v3;
  v8 = *v1;
  if (!*v1)
  {
    if (v7 < 0xF)
    {
      return result;
    }

    return sub_100188230();
  }

  swift_beginAccess();
  v9 = *(v8 + 16);
  if (sub_1004A4754() <= v7)
  {
    return sub_100188230();
  }

  v10 = *v1;
  result = swift_isUniquelyReferenced_native();
  v11 = *v1;
  if ((result & 1) == 0)
  {
    if (!v11)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v12 = *v1;
    v13 = sub_1004A4774();

    *v1 = v13;
    v11 = v13;
  }

  if (!v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = *(v11 + 16);
  sub_1004A6E94();
  sub_1004A6EE4(a1);
  result = sub_1004A6F14();
  if (__OFSUB__(1 << *(v11 + 16), 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (sub_1004A46F4())
  {
    while (1)
    {
      sub_1004A4744();
    }
  }

  v15 = *(v3 + 16);
  return sub_1004A4734();
}

uint64_t sub_10004CF1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageHeader();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s19MessageHeaderStatusOMa(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C9C0(&qword_1005CE1F8, &qword_1004D0918);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v23 - v15;
  v18 = *(v17 + 56);
  sub_100050EB8(a1, &v23 - v15, _s19MessageHeaderStatusOMa);
  sub_100050EB8(a2, &v16[v18], _s19MessageHeaderStatusOMa);
  v19 = *(v5 + 48);
  v20 = v19(v16, 3, v4);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      if (v19(&v16[v18], 3, v4) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v19(&v16[v18], 3, v4) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_100025F40(v16, &qword_1005CE1F8, &qword_1004D0918);
    v21 = 0;
    return v21 & 1;
  }

  if (!v20)
  {
    sub_100050EB8(v16, v12, _s19MessageHeaderStatusOMa);
    if (!v19(&v16[v18], 3, v4))
    {
      sub_100050F80(&v16[v18], v8, type metadata accessor for MessageHeader);
      v21 = static MessageHeader.== infix(_:_:)();
      sub_100050F20(v8, type metadata accessor for MessageHeader);
      sub_100050F20(v12, type metadata accessor for MessageHeader);
      sub_100050F20(v16, _s19MessageHeaderStatusOMa);
      return v21 & 1;
    }

    sub_100050F20(v12, type metadata accessor for MessageHeader);
    goto LABEL_11;
  }

  if (v19(&v16[v18], 3, v4) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_100050F20(v16, _s19MessageHeaderStatusOMa);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_10004D254(uint64_t a1, uint64_t a2)
{
  if (*a2 != *a1 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v173 = v2;
  v174 = v3;
  v5 = *(a1 + 152);
  v71 = *(a1 + 136);
  v72 = v5;
  v73 = *(a1 + 168);
  v74 = *(a1 + 184);
  v6 = *(a1 + 88);
  v67 = *(a1 + 72);
  v68 = v6;
  v7 = *(a1 + 120);
  v69 = *(a1 + 104);
  v70 = v7;
  v8 = *(a1 + 24);
  v63 = *(a1 + 8);
  v64 = v8;
  v9 = *(a1 + 56);
  v65 = *(a1 + 40);
  v66 = v9;
  if (sub_10003EC1C(&v63) == 1)
  {
    v10 = *(a2 + 152);
    v169 = *(a2 + 136);
    v170 = v10;
    v171 = *(a2 + 168);
    v172 = *(a2 + 184);
    v11 = *(a2 + 88);
    v165 = *(a2 + 72);
    v166 = v11;
    v12 = *(a2 + 120);
    v167 = *(a2 + 104);
    v168 = v12;
    v13 = *(a2 + 24);
    v161 = *(a2 + 8);
    v162 = v13;
    v14 = *(a2 + 56);
    v163 = *(a2 + 40);
    v164 = v14;
    result = sub_10003EC1C(&v161);
    goto LABEL_5;
  }

  v83 = v71;
  v84 = v72;
  v85 = v73;
  v86 = v74;
  v79 = v67;
  v80 = v68;
  v81 = v69;
  v82 = v70;
  v75 = v63;
  v76 = v64;
  v77 = v65;
  v78 = v66;
  v16 = *(a2 + 152);
  v121 = *(a2 + 136);
  v122 = v16;
  v123 = *(a2 + 168);
  v124 = *(a2 + 184);
  v17 = *(a2 + 88);
  v117 = *(a2 + 72);
  v118 = v17;
  v18 = *(a2 + 120);
  v119 = *(a2 + 104);
  v120 = v18;
  v19 = *(a2 + 24);
  v113 = *(a2 + 8);
  v114 = v19;
  v20 = *(a2 + 56);
  v115 = *(a2 + 40);
  v116 = v20;
  if (sub_10003EC1C(&v113) == 1)
  {
    return 0;
  }

  v133 = v121;
  v134 = v122;
  v135 = v123;
  v136 = v124;
  v129 = v117;
  v130 = v118;
  v131 = v119;
  v132 = v120;
  v125 = v113;
  v126 = v114;
  v127 = v115;
  v128 = v116;
  v95 = v83;
  v96 = v84;
  v97 = v85;
  v98 = v86;
  v91 = v79;
  v92 = v80;
  v93 = v81;
  v94 = v82;
  v87 = v75;
  v88 = v76;
  v89 = v77;
  v90 = v78;
  if (sub_10000FE74(&v87) != 1)
  {
    v107 = v95;
    v108 = v96;
    v109 = v97;
    v110 = v98;
    v103 = v91;
    v104 = v92;
    v105 = v93;
    v106 = v94;
    v99 = v87;
    v100 = v88;
    v101 = v89;
    v102 = v90;
    v145 = v133;
    v146 = v134;
    v147 = v135;
    v148 = v136;
    v141 = v129;
    v142 = v130;
    v143 = v131;
    v144 = v132;
    v137 = v125;
    v138 = v126;
    v139 = v127;
    v140 = v128;
    if (sub_10000FE74(&v137) == 1)
    {
      return 0;
    }

    v157 = v145;
    v158 = v146;
    v159 = v147;
    v160 = v148;
    v153 = v141;
    v154 = v142;
    v155 = v143;
    v156 = v144;
    v149 = v137;
    v150 = v138;
    v151 = v139;
    v152 = v140;
    v111[8] = v107;
    v111[9] = v108;
    v111[10] = v109;
    v112 = v110;
    v111[4] = v103;
    v111[5] = v104;
    v111[6] = v105;
    v111[7] = v106;
    v111[0] = v99;
    v111[1] = v100;
    v111[2] = v101;
    v111[3] = v102;
    if (sub_10000FE88(v111) == 1)
    {
      v21 = UInt32.init(_:)(v111);
      v22 = *(v21 + 80);
      v45 = *(v21 + 64);
      v46 = v22;
      v47 = *(v21 + 96);
      *&v48 = *(v21 + 112);
      v23 = *(v21 + 16);
      v41 = *v21;
      v42 = v23;
      v24 = *(v21 + 48);
      v43 = *(v21 + 32);
      v44 = v24;
      v169 = v157;
      v170 = v158;
      v171 = v159;
      v172 = v160;
      v165 = v153;
      v166 = v154;
      v167 = v155;
      v168 = v156;
      v161 = v149;
      v162 = v150;
      v163 = v151;
      v164 = v152;
      if (sub_10000FE88(&v161) == 1)
      {
        v25 = UInt32.init(_:)(&v161);
        v26 = *(v25 + 80);
        v56 = *(v25 + 64);
        v57 = v26;
        v58 = *(v25 + 96);
        *&v59 = *(v25 + 112);
        v27 = *(v25 + 16);
        v52 = *v25;
        v53 = v27;
        v28 = *(v25 + 48);
        v54 = *(v25 + 32);
        v55 = v28;
        return static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v41, &v52);
      }
    }

    else
    {
      v29 = UInt32.init(_:)(v111);
      v30 = v29[9];
      v49 = v29[8];
      v50 = v30;
      v51 = v29[10];
      v31 = v29[5];
      v45 = v29[4];
      v46 = v31;
      v32 = v29[7];
      v47 = v29[6];
      v48 = v32;
      v33 = v29[1];
      v41 = *v29;
      v42 = v33;
      v34 = v29[3];
      v43 = v29[2];
      v44 = v34;
      v172 = v160;
      v170 = v158;
      v171 = v159;
      v168 = v156;
      v169 = v157;
      v166 = v154;
      v167 = v155;
      v164 = v152;
      v165 = v153;
      v162 = v150;
      v163 = v151;
      v161 = v149;
      if (sub_10000FE88(&v161) != 1)
      {
        v35 = UInt32.init(_:)(&v161);
        v36 = v35[9];
        v60 = v35[8];
        v61 = v36;
        v62 = v35[10];
        v37 = v35[5];
        v56 = v35[4];
        v57 = v37;
        v38 = v35[7];
        v58 = v35[6];
        v59 = v38;
        v39 = v35[1];
        v52 = *v35;
        v53 = v39;
        v40 = v35[3];
        v54 = v35[2];
        v55 = v40;
        return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v41, &v52);
      }
    }

    UInt32.init(_:)(&v161);
    return 0;
  }

  v169 = v133;
  v170 = v134;
  v171 = v135;
  v172 = v136;
  v165 = v129;
  v166 = v130;
  v167 = v131;
  v168 = v132;
  v161 = v125;
  v162 = v126;
  v163 = v127;
  v164 = v128;
  result = sub_10000FE74(&v161);
LABEL_5:
  if (result != 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10004D850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v56 = type metadata accessor for MessageHeader();
  v6 = *(v56 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v56);
  v42 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10000C9C0(&qword_1005CE1F8, &qword_1004D0918);
  v9 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v49 = v41 - v10;
  v11 = _s19MessageHeaderStatusOMa(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  __chkstk_darwin(v13);
  v51 = v41 - v14;
  __chkstk_darwin(v15);
  v54 = v41 - v17;
  v18 = *(a1 + 16);
  v19 = v18 == 0;
  if (v18)
  {
    v43 = v16;
    v41[1] = v4;
    v55 = (v6 + 48);
    v47 = (v6 + 56);
    v20 = 0;
    v53 = _s25MessageSectionsToDownloadVMa(0);
    v21 = (a1 + ((*(*(v53 - 8) + 80) + 32) & ~*(*(v53 - 8) + 80)));
    v52 = *(*(v53 - 8) + 72);
    v46 = v18;
    while (1)
    {
      v22 = v53;
      v23 = v54;
      v24 = *(v53 + 20);
      sub_100050EB8(v21 + v24, v54, _s19MessageHeaderStatusOMa);
      v25 = *v55;
      v26 = (*v55)(v23, 3, v56);
      sub_100050F20(v23, _s19MessageHeaderStatusOMa);
      if (*(*(v21 + *(v22 + 24)) + 16))
      {
        goto LABEL_5;
      }

      v50 = v19;
      v27 = v51;
      (*v47)(v51, 1, 3, v56);
      v28 = *(v48 + 48);
      v29 = v21 + v24;
      v30 = v49;
      sub_100050EB8(v29, v49, _s19MessageHeaderStatusOMa);
      sub_100050EB8(v27, v30 + v28, _s19MessageHeaderStatusOMa);
      v31 = v25(v30, 3, v56);
      if (v31 > 1)
      {
        break;
      }

      v32 = v26;
      if (v31)
      {
        v35 = v25(v30 + v28, 3, v56) == 1;
        goto LABEL_15;
      }

      v33 = v43;
      sub_100050EB8(v30, v43, _s19MessageHeaderStatusOMa);
      if (!v25(v30 + v28, 3, v56))
      {
        v36 = v30 + v28;
        v37 = v42;
        sub_100050F80(v36, v42, type metadata accessor for MessageHeader);
        v38 = static MessageHeader.== infix(_:_:)();
        v39 = v37;
        v30 = v49;
        sub_100050F20(v39, type metadata accessor for MessageHeader);
        v32 = v26;
        sub_100050F20(v33, type metadata accessor for MessageHeader);
        if (v38)
        {
LABEL_3:
          sub_100050F20(v30, _s19MessageHeaderStatusOMa);
          sub_100050F20(v51, _s19MessageHeaderStatusOMa);
          v18 = v46;
LABEL_4:
          if ((sub_10001EE3C(*v21 | 0x200000000, v44, v45) & 1) == 0)
          {
            return v20;
          }

          goto LABEL_5;
        }

        sub_100050F20(v30, _s19MessageHeaderStatusOMa);
        goto LABEL_17;
      }

      sub_100050F20(v33, type metadata accessor for MessageHeader);
LABEL_16:
      sub_100025F40(v30, &qword_1005CE1F8, &qword_1004D0918);
LABEL_17:
      v18 = v46;
      sub_100050F20(v51, _s19MessageHeaderStatusOMa);
      if (!v32)
      {
        goto LABEL_4;
      }

LABEL_5:
      ++v20;
      v21 = (v21 + v52);
      v19 = v18 == v20;
      if (v18 == v20)
      {
        return 0;
      }
    }

    v35 = v31 == 2;
    v32 = v26;
    v34 = v30 + v28;
    if (v35)
    {
      v35 = v25(v34, 3, v56) == 2;
    }

    else
    {
      v35 = v25(v34, 3, v56) == 3;
    }

LABEL_15:
    if (v35)
    {
      goto LABEL_3;
    }

    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_10004DDC8(unsigned int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v85 = a6;
  v92 = a1;
  v10 = *(a2 + 144);
  v126 = *(a2 + 128);
  v127 = v10;
  v128 = *(a2 + 160);
  v129 = *(a2 + 176);
  v11 = *(a2 + 80);
  v122 = *(a2 + 64);
  v123 = v11;
  v12 = *(a2 + 112);
  v124 = *(a2 + 96);
  v125 = v12;
  v13 = *(a2 + 16);
  v118 = *a2;
  v119 = v13;
  v14 = *(a2 + 48);
  v120 = *(a2 + 32);
  v121 = v14;
  v15 = _s25MessageSectionsToDownloadVMa(0);
  v87 = *(v15 - 8);
  v16 = *(v87 + 64);
  __chkstk_darwin(v15 - 8);
  v89 = &v80[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = type metadata accessor for MailboxTaskLogger(0);
  v18 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v86 = &v80[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v80[-v21];
  v91 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v23 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v25 = &v80[-v24];
  v93 = type metadata accessor for DownloadTask.CommandID(0);
  v26 = *(v93 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v93);
  v29 = &v80[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v32 = &v80[-v31];
  v33 = sub_100078B2C(a4, a5);
  v34 = v33;
  v35 = v33[2];
  if (v35)
  {
    v82 = v22;
    v83 = a2;
    v81 = a3;
    v36 = 0;
    v37 = v33 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v90 = v37;
    while (v36 < v34[2])
    {
      sub_100050EB8(&v37[*(v26 + 72) * v36], v32, type metadata accessor for DownloadTask.CommandID);
      sub_100050EB8(v32, v29, type metadata accessor for DownloadTask.CommandID);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100050F20(v32, type metadata accessor for DownloadTask.CommandID);
        sub_100050F20(v29, type metadata accessor for DownloadTask.CommandID);
      }

      else
      {
        sub_100025FDC(v29, v25, &unk_1005D91B0, &unk_1004CF400);
        LODWORD(v106) = v92;
        v38 = MessageIdentifierSet.contains(_:)(&v106, v91);
        v37 = v90;
        sub_100025F40(v25, &unk_1005D91B0, &unk_1004CF400);
        sub_100050F20(v32, type metadata accessor for DownloadTask.CommandID);
        if (v38)
        {

          v39 = v85;
          v40 = v82;
          sub_100050EB8(v85, v82, type metadata accessor for MailboxTaskLogger);
          v41 = v86;
          sub_100050EB8(v39, v86, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v42 = sub_1004A4A54();
          v43 = sub_1004A6034();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *&v94 = swift_slowAlloc();
            *v44 = 68159491;
            *(v44 + 4) = 2;
            *(v44 + 8) = 256;
            v45 = v84;
            v46 = &v41[*(v84 + 20)];
            *(v44 + 10) = *v46;
            *(v44 + 11) = 2082;
            v47 = v40 + *(v45 + 20);
            *(v44 + 13) = sub_10015BA6C(*(v47 + 8), *(v47 + 16), &v94);
            *(v44 + 21) = 1040;
            *(v44 + 23) = 2;
            *(v44 + 27) = 512;
            LOWORD(v46) = *(v46 + 12);
            sub_100050F20(v41, type metadata accessor for MailboxTaskLogger);
            *(v44 + 29) = v46;
            *(v44 + 31) = 2160;
            *(v44 + 33) = 0x786F626C69616DLL;
            *(v44 + 41) = 2085;
            v48 = *(v47 + 32);
            LODWORD(v47) = *(v47 + 40);

            sub_100050F20(v40, type metadata accessor for MailboxTaskLogger);
            *&v106 = v48;
            DWORD2(v106) = v47;
            v49 = sub_1004A5824();
            v51 = sub_10015BA6C(v49, v50, &v94);

            *(v44 + 43) = v51;
            *(v44 + 51) = 1024;
            v26 = v92;
            *(v44 + 53) = v92;
            _os_log_impl(&_mh_execute_header, v42, v43, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did receive body structure for message %u.", v44, 0x39u);
            swift_arrayDestroy();

            v29 = v88;
          }

          else
          {
            sub_100050F20(v41, type metadata accessor for MailboxTaskLogger);

            sub_100050F20(v40, type metadata accessor for MailboxTaskLogger);
            v29 = v88;
            v26 = v92;
          }

          v53 = v83;
          v54 = v87;
          v55 = _s18InProgressMessagesVMa(0);
          v56 = v55[11];
          sub_10003E6D4(v53, &v106);
          v57 = *&v29[v56];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v106 = *&v29[v56];
          result = sub_10001CE90(v53, v26, isUniquelyReferenced_nonNull_native);
          *&v29[v56] = v106;
          v93 = v55[7];
          v25 = *&v29[v93];
          v59 = *(v25 + 2) + 1;
          v60 = 32;
          while (--v59)
          {
            v61 = *&v25[v60];
            v60 += 192;
            if (v61 == v26)
            {
              return result;
            }
          }

          v62 = 0;
          v63 = *&v29[v55[8]];
          v64 = *(v63 + 16);
          while (v64 != v62)
          {
            if (v62 >= *(v63 + 16))
            {
              goto LABEL_29;
            }

            v65 = v89;
            sub_100050EB8(v63 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v62++, v89, _s25MessageSectionsToDownloadVMa);
            v66 = *v65;
            result = sub_100050F20(v65, _s25MessageSectionsToDownloadVMa);
            if (v66 == v26)
            {
              return result;
            }
          }

          sub_10003E6D4(v83, &v106);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_25:
            v67 = v81;
            v69 = *(v25 + 2);
            v68 = *(v25 + 3);
            if (v69 >= v68 >> 1)
            {
              v25 = sub_100085E34((v68 > 1), v69 + 1, 1, v25);
            }

            v102 = v126;
            v103 = v127;
            v104 = v128;
            v105 = v129;
            v98 = v122;
            v99 = v123;
            v100 = v124;
            v101 = v125;
            v94 = v118;
            v95 = v119;
            v96 = v120;
            v97 = v121;
            result = UInt32.init(_:)(&v94);
            v108 = v96;
            v109 = v97;
            v112 = v100;
            v113 = v101;
            v110 = v98;
            v111 = v99;
            v117 = v105;
            v115 = v103;
            v116 = v104;
            v114 = v102;
            v106 = v94;
            v107 = v95;
            *(v25 + 2) = v69 + 1;
            v70 = &v25[192 * v69];
            *(v70 + 8) = v26;
            *(v70 + 9) = v67;
            v71 = v106;
            v72 = v107;
            v73 = v108;
            *(v70 + 88) = v109;
            *(v70 + 72) = v73;
            *(v70 + 56) = v72;
            *(v70 + 40) = v71;
            v74 = v110;
            v75 = v111;
            v76 = v112;
            *(v70 + 152) = v113;
            *(v70 + 136) = v76;
            *(v70 + 120) = v75;
            *(v70 + 104) = v74;
            v77 = v114;
            v78 = v115;
            v79 = v116;
            v70[216] = v117;
            *(v70 + 200) = v79;
            *(v70 + 184) = v78;
            *(v70 + 168) = v77;
            *&v29[v93] = v25;
            return result;
          }

LABEL_30:
          v25 = sub_100085E34(0, *(v25 + 2) + 1, 1, v25);
          goto LABEL_25;
        }
      }

      if (v35 == ++v36)
      {
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }
}

uint64_t sub_10004E67C(unsigned int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v126 = a3;
  v135 = a1;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v123 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v127 = &v120 - v14;
  __chkstk_darwin(v15);
  v132 = &v120 - v16;
  __chkstk_darwin(v17);
  v128 = &v120 - v18;
  __chkstk_darwin(v19);
  v124 = &v120 - v20;
  __chkstk_darwin(v21);
  v125 = &v120 - v22;
  v23 = _s25MessageSectionsToDownloadVMa(0);
  v131 = *(v23 - 8);
  v24 = *(v131 + 64);
  __chkstk_darwin(v23 - 8);
  v130 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v26 = *(*(v134 - 8) + 64);
  __chkstk_darwin(v134);
  v28 = &v120 - v27;
  v136 = type metadata accessor for DownloadTask.CommandID(0);
  v29 = *(v136 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v136);
  v32 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v120 - v34;
  v36 = sub_100078B2C(a4, a5);
  v37 = v36;
  v38 = v36[2];
  if (v38)
  {
    v120 = v10;
    v121 = a6;
    v122 = a2;
    v39 = 0;
    v40 = v36 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v133 = v35;
    while (v39 < v37[2])
    {
      sub_100050EB8(&v40[*(v29 + 72) * v39], v35, type metadata accessor for DownloadTask.CommandID);
      sub_100050EB8(v35, v32, type metadata accessor for DownloadTask.CommandID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100025FDC(v32, v28, &unk_1005D91B0, &unk_1004CF400);
        LODWORD(v175) = v135;
        v41 = MessageIdentifierSet.contains(_:)(&v175, v134);
        v35 = v133;
        sub_100025F40(v28, &unk_1005D91B0, &unk_1004CF400);
        sub_100050F20(v35, type metadata accessor for DownloadTask.CommandID);
        if (v41)
        {

          result = _s18InProgressMessagesVMa(0);
          v43 = result;
          v136 = *(result + 28);
          v44 = v128;
          v40 = *(v129 + v136);
          v45 = *(v40 + 2) + 1;
          v46 = 32;
          v32 = v135;
          v47 = v132;
          while (--v45)
          {
            v48 = *&v40[v46];
            v46 += 192;
            if (v48 == v135)
            {
              return result;
            }
          }

          v49 = 0;
          v50 = v130;
          v51 = *(v129 + *(result + 32));
          v52 = *(v51 + 16);
          while (v52 != v49)
          {
            if (v49 >= *(v51 + 16))
            {
              goto LABEL_47;
            }

            sub_100050EB8(v51 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v49++, v50, _s25MessageSectionsToDownloadVMa);
            v53 = *v50;
            result = sub_100050F20(v50, _s25MessageSectionsToDownloadVMa);
            v54 = v53 == v32;
            v47 = v132;
            if (v54)
            {
              return result;
            }
          }

          v55 = *(v129 + 16);
          if (*(v55 + 16))
          {
            v56 = sub_100067004(v32);
            v57 = v127;
            if (v58)
            {
              v59 = (*(v55 + 56) + 184 * v56);
              v61 = v59[2];
              v60 = v59[3];
              v62 = v59[1];
              v151 = *v59;
              v152 = v62;
              v153 = v61;
              v154 = v60;
              v63 = v59[4];
              v64 = v59[5];
              v65 = v59[7];
              v157 = v59[6];
              v158 = v65;
              v155 = v63;
              v156 = v64;
              v66 = v59[8];
              v67 = v59[9];
              v68 = v59[10];
              v162 = *(v59 + 176);
              v160 = v67;
              v161 = v68;
              v159 = v66;
              memmove(&v163, v59, 0xB1uLL);
              UInt32.init(_:)(&v163);
              sub_10003E6D4(&v151, &v175);
              v183 = v171;
              v184 = v172;
              v185 = v173;
              v186 = v174;
              v179 = v167;
              v180 = v168;
              v181 = v169;
              v182 = v170;
              v175 = v163;
              v176 = v164;
              v177 = v165;
              v178 = v166;
            }

            else
            {
              sub_1000503E0(&v175);
            }
          }

          else
          {
            sub_1000503E0(&v175);
            v57 = v127;
          }

          if (v126)
          {
            sub_100025F40(&v175, &qword_1005CDFD0, &qword_1004EE450);
            v69 = v121;
            v70 = v125;
            sub_100050EB8(v121, v125, type metadata accessor for MailboxTaskLogger);
            v71 = v124;
            sub_100050EB8(v69, v124, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v72 = sub_1004A4A54();
            v73 = sub_1004A6034();
            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              v134 = swift_slowAlloc();
              *&v139 = v134;
              *v74 = 68159491;
              *(v74 + 4) = 2;
              *(v74 + 8) = 256;
              v75 = v120;
              v76 = v71 + *(v120 + 20);
              *(v74 + 10) = *v76;
              *(v74 + 11) = 2082;
              v77 = v70;
              v78 = v70 + *(v75 + 20);
              *(v74 + 13) = sub_10015BA6C(*(v78 + 8), *(v78 + 16), &v139);
              *(v74 + 21) = 1040;
              *(v74 + 23) = 2;
              *(v74 + 27) = 512;
              LOWORD(v76) = *(v76 + 24);
              sub_100050F20(v71, type metadata accessor for MailboxTaskLogger);
              *(v74 + 29) = v76;
              *(v74 + 31) = 2160;
              *(v74 + 33) = 0x786F626C69616DLL;
              *(v74 + 41) = 2085;
              v79 = *(v78 + 32);
              LODWORD(v78) = *(v78 + 40);

              sub_100050F20(v77, type metadata accessor for MailboxTaskLogger);
              *&v151 = v79;
              DWORD2(v151) = v78;
              v80 = sub_1004A5824();
              v32 = sub_10015BA6C(v80, v81, &v139);

              *(v74 + 43) = v32;
              LODWORD(v32) = v135;
              *(v74 + 51) = 1024;
              *(v74 + 53) = v32;
              _os_log_impl(&_mh_execute_header, v72, v73, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did receive message size for message %u.", v74, 0x39u);
              swift_arrayDestroy();
            }

            else
            {
              sub_100050F20(v71, type metadata accessor for MailboxTaskLogger);

              sub_100050F20(v70, type metadata accessor for MailboxTaskLogger);
            }

            sub_1000503E0(&v163);
          }

          else
          {
            v159 = v183;
            v160 = v184;
            v161 = v185;
            v162 = v186;
            v155 = v179;
            v156 = v180;
            v157 = v181;
            v158 = v182;
            v151 = v175;
            v152 = v176;
            v153 = v177;
            v154 = v178;
            if (sub_10003EC1C(&v151) == 1)
            {
              v82 = v121;
              sub_100050EB8(v121, v57, type metadata accessor for MailboxTaskLogger);
              v83 = v123;
              sub_100050EB8(v82, v123, type metadata accessor for MailboxTaskLogger);
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              v84 = sub_1004A4A54();
              v85 = sub_1004A6014();
              if (os_log_type_enabled(v84, v85))
              {
                v86 = swift_slowAlloc();
                v134 = swift_slowAlloc();
                *&v137[0] = v134;
                *v86 = 68159491;
                *(v86 + 4) = 2;
                *(v86 + 8) = 256;
                v87 = v120;
                v88 = v83 + *(v120 + 20);
                *(v86 + 10) = *v88;
                *(v86 + 11) = 2082;
                v89 = v57 + *(v87 + 20);
                *(v86 + 13) = sub_10015BA6C(*(v89 + 8), *(v89 + 16), v137);
                *(v86 + 21) = 1040;
                *(v86 + 23) = 2;
                *(v86 + 27) = 512;
                LOWORD(v88) = *(v88 + 24);
                sub_100050F20(v83, type metadata accessor for MailboxTaskLogger);
                *(v86 + 29) = v88;
                *(v86 + 31) = 2160;
                *(v86 + 33) = 0x786F626C69616DLL;
                *(v86 + 41) = 2085;
                v90 = *(v89 + 32);
                LODWORD(v89) = *(v89 + 40);

                sub_100050F20(v57, type metadata accessor for MailboxTaskLogger);
                *&v139 = v90;
                DWORD2(v139) = v89;
                v91 = sub_1004A5824();
                v32 = sub_10015BA6C(v91, v92, v137);

                *(v86 + 43) = v32;
                LODWORD(v32) = v135;
                *(v86 + 51) = 1024;
                *(v86 + 53) = v32;
                _os_log_impl(&_mh_execute_header, v84, v85, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did receive message size for message %u. Missing body structure.", v86, 0x39u);
                swift_arrayDestroy();
              }

              else
              {
                sub_100050F20(v83, type metadata accessor for MailboxTaskLogger);

                sub_100050F20(v57, type metadata accessor for MailboxTaskLogger);
              }

              sub_100051270(v137);
              v147 = v137[8];
              v148 = v137[9];
              v149 = v137[10];
              v150 = v138;
              v143 = v137[4];
              v144 = v137[5];
              v145 = v137[6];
              v146 = v137[7];
              v139 = v137[0];
              v140 = v137[1];
              v105 = v137[2];
              v106 = v137[3];
            }

            else
            {
              LODWORD(v137[0]) = v32;
              v93 = v129 + *(v43 + 24);
              MessageIdentifierSet.insert(_:)(&v139, v137, v134);
              v94 = v121;
              sub_100050EB8(v121, v44, type metadata accessor for MailboxTaskLogger);
              sub_100050EB8(v94, v47, type metadata accessor for MailboxTaskLogger);
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              v95 = sub_1004A4A54();
              v96 = sub_1004A6034();
              if (os_log_type_enabled(v95, v96))
              {
                v97 = swift_slowAlloc();
                LODWORD(v133) = v96;
                v98 = v97;
                v134 = swift_slowAlloc();
                *&v137[0] = v134;
                *v98 = 68159491;
                *(v98 + 4) = 2;
                *(v98 + 8) = 256;
                v99 = v120;
                v100 = v47 + *(v120 + 20);
                *(v98 + 10) = *v100;
                *(v98 + 11) = 2082;
                v101 = v44 + *(v99 + 20);
                *(v98 + 13) = sub_10015BA6C(*(v101 + 8), *(v101 + 16), v137);
                *(v98 + 21) = 1040;
                *(v98 + 23) = 2;
                *(v98 + 27) = 512;
                LOWORD(v100) = *(v100 + 24);
                sub_100050F20(v47, type metadata accessor for MailboxTaskLogger);
                *(v98 + 29) = v100;
                *(v98 + 31) = 2160;
                *(v98 + 33) = 0x786F626C69616DLL;
                *(v98 + 41) = 2085;
                v102 = *(v101 + 32);
                LODWORD(v101) = *(v101 + 40);

                sub_100050F20(v44, type metadata accessor for MailboxTaskLogger);
                *&v139 = v102;
                DWORD2(v139) = v101;
                v103 = sub_1004A5824();
                v32 = sub_10015BA6C(v103, v104, v137);

                *(v98 + 43) = v32;
                LODWORD(v32) = v135;
                *(v98 + 51) = 1024;
                *(v98 + 53) = v32;
                _os_log_impl(&_mh_execute_header, v95, v133, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did receive message size for message %u. Using cached body structure.", v98, 0x39u);
                swift_arrayDestroy();
              }

              else
              {
                sub_100050F20(v47, type metadata accessor for MailboxTaskLogger);

                sub_100050F20(v44, type metadata accessor for MailboxTaskLogger);
              }

              v147 = v159;
              v148 = v160;
              v149 = v161;
              v150 = v162;
              v143 = v155;
              v144 = v156;
              v145 = v157;
              v146 = v158;
              v139 = v151;
              v140 = v152;
              v105 = v153;
              v106 = v154;
            }

            v141 = v105;
            v142 = v106;
            UInt32.init(_:)(&v139);
            v171 = v147;
            v172 = v148;
            v173 = v149;
            v174 = v150;
            v167 = v143;
            v168 = v144;
            v169 = v145;
            v170 = v146;
            v163 = v139;
            v164 = v140;
            v165 = v141;
            v166 = v142;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
LABEL_43:
            v108 = *(v40 + 2);
            v107 = *(v40 + 3);
            if (v108 >= v107 >> 1)
            {
              result = sub_100085E34((v107 > 1), v108 + 1, 1, v40);
              v40 = result;
            }

            v153 = v165;
            v154 = v166;
            v157 = v169;
            v158 = v170;
            v155 = v167;
            v156 = v168;
            v162 = v174;
            v160 = v172;
            v161 = v173;
            v159 = v171;
            v151 = v163;
            v152 = v164;
            *(v40 + 2) = v108 + 1;
            v109 = &v40[192 * v108];
            v110 = v122;
            *(v109 + 8) = v32;
            *(v109 + 9) = v110;
            v111 = v151;
            v112 = v152;
            v113 = v153;
            *(v109 + 88) = v154;
            *(v109 + 72) = v113;
            *(v109 + 56) = v112;
            *(v109 + 40) = v111;
            v114 = v155;
            v115 = v156;
            v116 = v157;
            *(v109 + 152) = v158;
            *(v109 + 136) = v116;
            *(v109 + 120) = v115;
            *(v109 + 104) = v114;
            v117 = v159;
            v118 = v160;
            v119 = v161;
            v109[216] = v162;
            *(v109 + 200) = v119;
            *(v109 + 184) = v118;
            *(v109 + 168) = v117;
            *(v129 + v136) = v40;
            return result;
          }

LABEL_48:
          result = sub_100085E34(0, *(v40 + 2) + 1, 1, v40);
          v40 = result;
          goto LABEL_43;
        }
      }

      else
      {
        sub_100050F20(v35, type metadata accessor for DownloadTask.CommandID);
        sub_100050F20(v32, type metadata accessor for DownloadTask.CommandID);
      }

      if (v38 == ++v39)
      {
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }
}

uint64_t sub_10004F60C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v89 = a6;
  v12 = type metadata accessor for MailboxTaskLogger(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v85 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v87 = &v80 - v16;
  __chkstk_darwin(v17);
  v86 = &v80 - v18;
  __chkstk_darwin(v19);
  v88 = &v80 - v20;
  result = _s18InProgressMessagesVMa(0);
  v22 = *(v6 + *(result + 28));
  v23 = *(v22 + 16);
  if (v23)
  {
    v81 = v12;
    v82 = a1;
    v83 = a2;
    v84 = a3;
    v24 = 0;
    v25 = (v22 + 32);
    while (v24 < *(v22 + 16))
    {
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[3];
      *&v127[32] = v25[2];
      *&v127[48] = v28;
      *v127 = v26;
      *&v127[16] = v27;
      v29 = v25[4];
      v30 = v25[5];
      v31 = v25[7];
      *&v127[96] = v25[6];
      *&v127[112] = v31;
      *&v127[64] = v29;
      *&v127[80] = v30;
      v32 = v25[8];
      v33 = v25[9];
      v34 = v25[10];
      *&v127[169] = *(v25 + 169);
      *&v127[144] = v33;
      *&v127[160] = v34;
      *&v127[128] = v32;
      v35 = *v127;
      sub_10005104C(v127, &v115);
      if ((sub_10001EE3C(v35, a4, a5) & 1) == 0)
      {
        v111 = *&v127[136];
        v112 = *&v127[152];
        v113 = *&v127[168];
        v114 = v127[184];
        v107 = *&v127[72];
        v108 = *&v127[88];
        v109 = *&v127[104];
        v110 = *&v127[120];
        v103 = *&v127[8];
        v104 = *&v127[24];
        v105 = *&v127[40];
        v106 = *&v127[56];
        if (sub_10003EC1C(&v103) == 1)
        {
          sub_1000503E0(&v91);
          v36 = v89;
          v37 = v87;
          sub_100050EB8(v89, v87, type metadata accessor for MailboxTaskLogger);
          v38 = v85;
          sub_100050EB8(v36, v85, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          sub_10005104C(v127, &v115);
          sub_10005104C(v127, &v115);
          v39 = sub_1004A4A54();
          v40 = sub_1004A6034();
          v41 = os_log_type_enabled(v39, v40);
          v42 = v81;
          if (v41)
          {
            v43 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v90 = v89;
            *v43 = 68159491;
            LODWORD(v88) = v40;
            *(v43 + 4) = 2;
            *(v43 + 8) = 256;
            v44 = v38;
            v45 = v38 + *(v42 + 20);
            *(v43 + 10) = *v45;
            *(v43 + 11) = 2082;
            v46 = v37 + *(v42 + 20);
            *(v43 + 13) = sub_10015BA6C(*(v46 + 8), *(v46 + 16), &v90);
            *(v43 + 21) = 1040;
            *(v43 + 23) = 2;
            *(v43 + 27) = 512;
            v47 = *(v45 + 24);
            sub_100050F20(v44, type metadata accessor for MailboxTaskLogger);
            *(v43 + 29) = v47;
            *(v43 + 31) = 2160;
            *(v43 + 33) = 0x786F626C69616DLL;
            *(v43 + 41) = 2085;
            v48 = *(v46 + 32);
            LODWORD(v46) = *(v46 + 40);

            sub_100050F20(v37, type metadata accessor for MailboxTaskLogger);
            *&v115 = v48;
            DWORD2(v115) = v46;
            v49 = sub_1004A5824();
            v51 = sub_10015BA6C(v49, v50, &v90);

            *(v43 + 43) = v51;
            *(v43 + 51) = 1024;
            sub_100051084(v127);
            *(v43 + 53) = v35;
            sub_100051084(v127);
            _os_log_impl(&_mh_execute_header, v39, v88, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requesting sections to download for message %u.", v43, 0x39u);
            swift_arrayDestroy();

            goto LABEL_12;
          }

          sub_100051084(v127);
          sub_100050F20(v38, type metadata accessor for MailboxTaskLogger);
          sub_100051084(v127);

          v69 = v37;
LABEL_15:
          sub_100050F20(v69, type metadata accessor for MailboxTaskLogger);
        }

        else
        {
          v99 = v111;
          v100 = v112;
          v101 = v113;
          v102 = v114;
          v95 = v107;
          v96 = v108;
          v97 = v109;
          v98 = v110;
          v91 = v103;
          v92 = v104;
          v93 = v105;
          v94 = v106;
          UInt32.init(_:)(&v91);
          v53 = v88;
          v52 = v89;
          sub_100050EB8(v89, v88, type metadata accessor for MailboxTaskLogger);
          v54 = v86;
          sub_100050EB8(v52, v86, type metadata accessor for MailboxTaskLogger);
          sub_10005104C(v127, &v115);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          sub_10005104C(v127, &v115);
          sub_10005104C(v127, &v115);
          v39 = sub_1004A4A54();
          v55 = sub_1004A6034();
          v56 = os_log_type_enabled(v39, v55);
          v57 = v81;
          if (!v56)
          {
            sub_100051084(v127);
            sub_100050F20(v54, type metadata accessor for MailboxTaskLogger);
            sub_100051084(v127);

            v69 = v53;
            goto LABEL_15;
          }

          v58 = swift_slowAlloc();
          LODWORD(v87) = v55;
          v59 = v58;
          v89 = swift_slowAlloc();
          v90 = v89;
          *v59 = 68159491;
          *(v59 + 4) = 2;
          *(v59 + 8) = 256;
          v60 = v54 + *(v57 + 20);
          *(v59 + 10) = *v60;
          *(v59 + 11) = 2082;
          v61 = *(v57 + 20);
          v62 = v54;
          v63 = v53;
          v64 = v53 + v61;
          *(v59 + 13) = sub_10015BA6C(*(v64 + 8), *(v64 + 16), &v90);
          *(v59 + 21) = 1040;
          *(v59 + 23) = 2;
          *(v59 + 27) = 512;
          LOWORD(v60) = *(v60 + 24);
          sub_100050F20(v62, type metadata accessor for MailboxTaskLogger);
          *(v59 + 29) = v60;
          *(v59 + 31) = 2160;
          *(v59 + 33) = 0x786F626C69616DLL;
          *(v59 + 41) = 2085;
          v65 = *(v64 + 32);
          LODWORD(v60) = *(v64 + 40);

          sub_100050F20(v63, type metadata accessor for MailboxTaskLogger);
          *&v115 = v65;
          DWORD2(v115) = v60;
          v66 = sub_1004A5824();
          v68 = sub_10015BA6C(v66, v67, &v90);

          *(v59 + 43) = v68;
          *(v59 + 51) = 1024;
          sub_100051084(v127);
          *(v59 + 53) = v35;
          sub_100051084(v127);
          _os_log_impl(&_mh_execute_header, v39, v87, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Requesting sections to download for message %u (with body structure).", v59, 0x39u);
          swift_arrayDestroy();

LABEL_12:
        }

        v123 = v99;
        v124 = v100;
        v125 = v101;
        v126 = v102;
        v119 = v95;
        v120 = v96;
        v121 = v97;
        v122 = v98;
        v115 = v91;
        v116 = v92;
        v117 = v93;
        v118 = v94;
        v71 = v83;
        v70 = v84;
        v72 = v82;
        v73 = swift_allocObject();

        sub_100051084(v127);
        v74 = v124;
        *(v73 + 168) = v123;
        *(v73 + 184) = v74;
        *(v73 + 200) = v125;
        v75 = v120;
        *(v73 + 104) = v119;
        *(v73 + 120) = v75;
        v76 = v122;
        *(v73 + 136) = v121;
        *(v73 + 152) = v76;
        v77 = v116;
        *(v73 + 40) = v115;
        *(v73 + 56) = v77;
        v78 = v118;
        *(v73 + 72) = v117;
        *(v73 + 16) = v72;
        *(v73 + 24) = v71;
        *(v73 + 28) = v70 & 1;
        v79 = *&v127[4];
        *(v73 + 32) = v35;
        *(v73 + 36) = v79;
        *(v73 + 216) = v126;
        *(v73 + 88) = v78;
        return v35;
      }

      ++v24;
      result = sub_100051084(v127);
      v25 += 12;
      if (v23 == v24)
      {
        return 0xFF00000000;
      }
    }

    __break(1u);
  }

  else
  {
    return 0xFF00000000;
  }

  return result;
}

uint64_t sub_10004FE6C()
{
  result = _s18InProgressMessagesVMa(0);
  v96 = result;
  v97 = v0;
  v2 = *(v0 + *(result + 32));
  v3 = *(v2 + 2);
  if (v3)
  {
    v95 = *(result + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_59:
      v2 = sub_10013987C(v2);
    }

    v4 = 0;
    v98 = v3;
    v99 = v2;
    do
    {
      if (v4 == v3)
      {
        goto LABEL_51;
      }

      if (v4 >= *(v2 + 2))
      {
        goto LABEL_52;
      }

      v5 = _s25MessageSectionsToDownloadVMa(0);
      v6 = (v2 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + *(*(v5 - 8) + 72) * v4);
      v7 = *(v6 + *(v5 + 24));
      v8 = *(v7 + 2);
      v100 = v5;
      v101 = *(v5 + 24);
      if (v8)
      {
        v9 = 0;
        v10 = 272;
        v11 = 1;
        v12 = 86;
        v3 = &v120;
        v2 = &v106;
        while ((v7[v12] & 1) == 0)
        {
          ++v9;
          v12 += 240;
          ++v11;
          v10 += 240;
          if (v8 == v9)
          {
            goto LABEL_11;
          }
        }

        if (__OFADD__(v9, 1))
        {
          goto LABEL_58;
        }

        if (v9 + 1 != v8)
        {
          v21 = *(v7 + 2);
          while (v11 < v21)
          {
            v22 = &v7[v10];
            if ((v7[v10 + 54] & 1) == 0)
            {
              if (v11 != v9)
              {
                if (v9 >= v21)
                {
                  goto LABEL_48;
                }

                v23 = 240 * v9;
                v24 = &v7[240 * v9 + 32];
                v25 = *v24;
                v26 = *(v24 + 2);
                v107 = *(v24 + 1);
                v108 = v26;
                v106 = v25;
                v27 = *(v24 + 3);
                v28 = *(v24 + 4);
                v29 = *(v24 + 6);
                v111 = *(v24 + 5);
                v112 = v29;
                v109 = v27;
                v110 = v28;
                v30 = *(v24 + 7);
                v31 = *(v24 + 8);
                v32 = *(v24 + 10);
                v115 = *(v24 + 9);
                v116 = v32;
                v113 = v30;
                v114 = v31;
                v33 = *(v24 + 11);
                v34 = *(v24 + 12);
                v35 = *(v24 + 13);
                *(v119 + 9) = *(v24 + 217);
                v118 = v34;
                v119[0] = v35;
                v117 = v33;
                v36 = *v22;
                v37 = *(v22 + 2);
                v121 = *(v22 + 1);
                v122 = v37;
                v120 = v36;
                v38 = *(v22 + 3);
                v39 = *(v22 + 4);
                v40 = *(v22 + 6);
                v125 = *(v22 + 5);
                v126 = v40;
                v123 = v38;
                v124 = v39;
                v41 = *(v22 + 7);
                v42 = *(v22 + 8);
                v43 = *(v22 + 10);
                v129 = *(v22 + 9);
                v130 = v43;
                v127 = v41;
                v128 = v42;
                v44 = *(v22 + 11);
                v45 = *(v22 + 12);
                v46 = *(v22 + 13);
                *(v133 + 9) = *(v22 + 217);
                v132 = v45;
                v133[0] = v46;
                v131 = v44;
                sub_100050408(&v106, v104);
                sub_100050408(&v120, v104);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v6 + v101) = v7;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v7 = sub_100139890(v7);
                  *(v6 + v101) = v7;
                }

                if (v9 >= *(v7 + 2))
                {
                  goto LABEL_49;
                }

                v48 = &v7[v23];
                v49 = *&v7[v23 + 32];
                v50 = *&v7[v23 + 64];
                v102[1] = *&v7[v23 + 48];
                v102[2] = v50;
                v102[0] = v49;
                v51 = *&v7[v23 + 80];
                v52 = *&v7[v23 + 96];
                v53 = *&v7[v23 + 128];
                v102[5] = *&v7[v23 + 112];
                v102[6] = v53;
                v102[3] = v51;
                v102[4] = v52;
                v54 = *&v7[v23 + 144];
                v55 = *&v7[v23 + 160];
                v56 = *&v7[v23 + 192];
                v102[9] = *&v7[v23 + 176];
                v102[10] = v56;
                v102[7] = v54;
                v102[8] = v55;
                v57 = *&v7[v23 + 208];
                v58 = *&v7[v23 + 224];
                v59 = *&v7[v23 + 240];
                *(v103 + 9) = *&v7[v23 + 249];
                v102[12] = v58;
                v103[0] = v59;
                v102[11] = v57;
                v60 = v120;
                v61 = v122;
                *(v48 + 3) = v121;
                *(v48 + 4) = v61;
                *(v48 + 2) = v60;
                v62 = v123;
                v63 = v124;
                v64 = v126;
                *(v48 + 7) = v125;
                *(v48 + 8) = v64;
                *(v48 + 5) = v62;
                *(v48 + 6) = v63;
                v65 = v127;
                v66 = v128;
                v67 = v130;
                *(v48 + 11) = v129;
                *(v48 + 12) = v67;
                *(v48 + 9) = v65;
                *(v48 + 10) = v66;
                v68 = v131;
                v69 = v132;
                v70 = v133[0];
                *(v48 + 249) = *(v133 + 9);
                *(v48 + 14) = v69;
                *(v48 + 15) = v70;
                *(v48 + 13) = v68;
                sub_100050440(v102);
                v71 = *(v6 + v101);
                if (v11 >= *(v71 + 16))
                {
                  goto LABEL_50;
                }

                v72 = (v71 + v10);
                v73 = *v72;
                v74 = v72[2];
                v104[1] = v72[1];
                v104[2] = v74;
                v104[0] = v73;
                v75 = v72[3];
                v76 = v72[4];
                v77 = v72[6];
                v104[5] = v72[5];
                v104[6] = v77;
                v104[3] = v75;
                v104[4] = v76;
                v78 = v72[7];
                v79 = v72[8];
                v80 = v72[10];
                v104[9] = v72[9];
                v104[10] = v80;
                v104[7] = v78;
                v104[8] = v79;
                v81 = v72[11];
                v82 = v72[12];
                v83 = v72[13];
                *(v105 + 9) = *(v72 + 217);
                v104[12] = v82;
                v105[0] = v83;
                v104[11] = v81;
                v84 = v106;
                v85 = v108;
                v72[1] = v107;
                v72[2] = v85;
                *v72 = v84;
                v86 = v109;
                v87 = v110;
                v88 = v112;
                v72[5] = v111;
                v72[6] = v88;
                v72[3] = v86;
                v72[4] = v87;
                v89 = v113;
                v90 = v114;
                v91 = v116;
                v72[9] = v115;
                v72[10] = v91;
                v72[7] = v89;
                v72[8] = v90;
                v92 = v117;
                v93 = v118;
                v94 = v119[0];
                *(v72 + 217) = *(v119 + 9);
                v72[12] = v93;
                v72[13] = v94;
                v72[11] = v92;
                sub_100050440(v104);
                v7 = *(v6 + v101);
              }

              ++v9;
            }

            v13 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_47;
            }

            v21 = *(v7 + 2);
            ++v11;
            v10 += 240;
            if (v13 == v21)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
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
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v13 = *(v7 + 2);
LABEL_15:
        if (v13 < v9)
        {
          goto LABEL_55;
        }

        if (v9 < 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
LABEL_11:
        v13 = *(v7 + 2);
        v9 = v13;
      }

      v3 = (v9 - v13);
      if (__OFADD__(v13, v9 - v13))
      {
        goto LABEL_53;
      }

      v14 = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + v101) = v7;
      if (!v14 || v9 > *(v7 + 3) >> 1)
      {
        if (v13 <= v9)
        {
          v15 = v9;
        }

        else
        {
          v15 = v13;
        }

        v7 = sub_100085F94(v14, v15, 1, v7);
        *(v6 + v101) = v7;
      }

      v2 = (v7 + 32);
      result = swift_arrayDestroy();
      if (v13 != v9)
      {
        result = memmove(&v7[240 * v9 + 32], &v2[15 * v13], 240 * (*(v7 + 2) - v13));
        v16 = *(v7 + 2);
        v17 = __OFADD__(v16, v3);
        v18 = v3 + v16;
        if (v17)
        {
          goto LABEL_57;
        }

        *(v7 + 2) = v18;
      }

      *(v6 + v101) = v7;
      v2 = v99;
      if (v4 >= *(v99 + 2))
      {
        goto LABEL_54;
      }

      if (v8 != *(*(v6 + *(v100 + 24)) + 16))
      {
        LODWORD(v106) = *v6;
        v19 = *(v96 + 36);
        v20 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
        result = MessageIdentifierSet.insert(_:)(&v120, &v106, v20);
      }

      ++v4;
      v3 = v98;
    }

    while (v4 != v98);
    *(v97 + v95) = v99;
  }

  return result;
}

double sub_1000503E0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 176) = -2;
  return result;
}

uint64_t sub_100050470(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

__n128 sub_100050484(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1000504D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 233))
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

uint64_t sub_100050518(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 233) = 1;
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

    *(result + 233) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000505B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s19MessageHeaderStatusOMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000506AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s19MessageHeaderStatusOMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_100050768()
{
  _s19MessageHeaderStatusOMa(319);
  if (v0 <= 0x3F)
  {
    sub_100050E14(319, &qword_1005CE050);
    if (v1 <= 0x3F)
    {
      sub_100050E14(319, &unk_1005CE058);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100050848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageHeader();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000508C8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MessageHeader();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10005094C()
{
  v0 = type metadata accessor for MessageHeader();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1000509A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 185))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 184);
  if (v3 >= 0xFE)
  {
    v4 = 254;
  }

  else
  {
    v4 = *(a1 + 184);
  }

  v5 = (v4 ^ 0xFF) - 2;
  if (v3 <= 1)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1000509FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
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
    *(result + 184) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 184) = -2 - a2;
    }
  }

  return result;
}

uint64_t sub_100050A98(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100050B68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100050C18()
{
  sub_100050D00();
  if (v0 <= 0x3F)
  {
    sub_100050DB8();
    if (v1 <= 0x3F)
    {
      sub_100050E14(319, &qword_1005CE1A8);
      if (v2 <= 0x3F)
      {
        sub_100050E60();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100050D00()
{
  if (!qword_1005CE198)
  {
    sub_100050D64();
    v0 = sub_1004A5524();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CE198);
    }
  }
}

unint64_t sub_100050D64()
{
  result = qword_1005CE1A0;
  if (!qword_1005CE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CE1A0);
  }

  return result;
}

void sub_100050DB8()
{
  if (!qword_1005CDDC0)
  {
    sub_100016948();
    v0 = type metadata accessor for MessageIdentifierSet();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CDDC0);
    }
  }
}

void sub_100050E14(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1004A5CD4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_100050E60()
{
  if (!qword_1005CE1B0)
  {
    _s25MessageSectionsToDownloadVMa(255);
    v0 = sub_1004A5CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CE1B0);
    }
  }
}

uint64_t sub_100050EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100050F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100050F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100051008(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 >= 0xFE)
  {
    v2 = 254;
  }

  else
  {
    v2 = *(a1 + 184);
  }

  v3 = (v2 ^ 0xFF) - 1;
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

double sub_10005102C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  *&result = sub_100047878(a1, v2[3], v2[4], a2).n128_u64[0];
  return result;
}

double sub_100051164(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 184) = -3;
  return result;
}

uint64_t sub_100051190(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1000511A4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1000511B8(uint64_t a1, uint64_t a2)
{
  v4 = _s19MessageHeaderStatusOMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005121C()
{
  result = qword_1005CE220;
  if (!qword_1005CE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CE220);
  }

  return result;
}

double sub_100051270(uint64_t a1)
{
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 176) = -1;
  return result;
}

uint64_t sub_100051298()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 216);
  if (v2 <= 0xFD)
  {
    sub_10005132C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), v2 & 1);
  }

  return _swift_deallocObject(v0, 217, 7);
}

void sub_10005132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a23)
  {

    sub_1000516D4(a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  }

  else
  {

    sub_1000514CC(a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

void sub_1000514CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 != 1)
  {

    sub_100051570(a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }
}

uint64_t sub_100051570(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 != 1)
  {
    sub_1000515D4(result, a2);

    return sub_100051638(a6, a7, a8, a9);
  }

  return result;
}

uint64_t sub_1000515D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100051638(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_100051690(a2, a3, a4);
  }

  return result;
}

uint64_t sub_100051690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1000516D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {

    sub_100051570(a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }
}

__n128 sub_10005180C(uint64_t a1, __int128 *a2)
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
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_100051848(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 177))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 176);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 < 2)
  {
    v4 = 0;
  }

  if (v4 >= 2)
  {
    return v4 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005189C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 176) = 0;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 176) = -2 - a2;
    }
  }

  return result;
}

double sub_100051900(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(a1 + 176) = 0;
    result = 0.0;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *a1 = a2 - 254;
  }

  else if (a2)
  {
    *(a1 + 176) = ~a2;
  }

  return result;
}

unint64_t sub_100051958()
{
  result = qword_1005CE248;
  if (!qword_1005CE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CE248);
  }

  return result;
}

uint64_t sub_1000519CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100051AA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t _s18SectionDataRequestVMa()
{
  result = qword_1005CE2A8;
  if (!qword_1005CE2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100051BB8()
{
  sub_100051C44();
  if (v0 <= 0x3F)
  {
    sub_100051CA0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100051C44()
{
  if (!qword_1005CE2B8)
  {
    sub_100016948();
    v0 = type metadata accessor for MessageIdentifierSetNonEmpty();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CE2B8);
    }
  }
}

void sub_100051CA0()
{
  if (!qword_1005CE2C0)
  {
    v0 = sub_1004A5CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CE2C0);
    }
  }
}

uint64_t sub_100051CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0 || (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_100102AF4(v7, v8);
}

uint64_t sub_100051D84@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a2 + *(_s18SectionDataRequestVMa() + 20));

  result = SectionSpecifier.init(part:kind:)(v7, 0, 2u);
  *a3 = 1;
  *(a3 + 8) = result;
  *(a3 + 16) = v10;
  *(a3 + 24) = v9 | (v5 << 32);
  *(a3 + 36) = 32;
  *(a3 + 32) = v4;
  return result;
}

uint64_t sub_100051E04@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v124 = a2;
  v109 = a1;
  v106 = a3;
  v3 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v105 = &v96 - v5;
  v6 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v103 = *(v6 - 8);
  v104 = v6;
  v7 = *(v103 + 64);
  __chkstk_darwin(v6);
  v97 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v96 = &v96 - v10;
  __chkstk_darwin(v11);
  v112 = &v96 - v12;
  v13 = _s18SectionDataRequestVMa();
  v98 = *(v13 - 8);
  v14 = *(v98 + 64);
  __chkstk_darwin(v13);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for DownloadTask.CommandID(0);
  v125 = *(v122 - 8);
  v17 = *(v125 + 64);
  __chkstk_darwin(v122);
  v121 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v96 - v20;
  v113 = _s25MessageSectionsToDownloadVMa(0);
  v123 = *(v113 - 8);
  v22 = *(v123 + 64);
  __chkstk_darwin(v113);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C9C0(&qword_1005CE2F8, &qword_1004D0DD8);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v29 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v101 = &v96 - v31;
  v116 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v32 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v102 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v100 = &v96 - v35;
  __chkstk_darwin(v36);
  v38 = &v96 - v37;
  __chkstk_darwin(v39);
  v99 = &v96 - v40;
  sub_100016D2C();
  sub_1004A7114();
  v41 = *(v26 + 56);
  v42 = v38;
  v43 = v24;
  sub_100025FDC(v42, v29, &unk_1005D91B0, &unk_1004CF400);
  v110 = v29;
  v108 = v41;
  *&v29[v41] = 0;
  v44 = *(v124 + 16);
  if (!v44)
  {
LABEL_31:
    v82 = v101;
    sub_100025FDC(v110, v101, &qword_1005CE2F8, &qword_1004D0DD8);
    v83 = v99;
    sub_100025FDC(v82, v99, &unk_1005D91B0, &unk_1004CF400);
    v84 = v100;
    sub_10000E268(v83, v100, &unk_1005D91B0, &unk_1004CF400);
    v85 = v102;
    sub_10000E268(v84, v102, &unk_1005D91B0, &unk_1004CF400);
    v86 = MessageIdentifierSet.count.getter();
    sub_100025F40(v84, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v83, &unk_1005D91B0, &unk_1004CF400);
    if (v86 < 1)
    {
      sub_100025F40(v85, &unk_1005D91B0, &unk_1004CF400);
      v89 = 1;
      v88 = v105;
    }

    else
    {
      v87 = v97;
      sub_100025FDC(v85, v97, &unk_1005D91B0, &unk_1004CF400);
      v88 = v105;
      sub_100025FDC(v87, v105, &qword_1005CD1D0, &unk_1004CF2C0);
      v89 = 0;
    }

    v90 = v106;
    v92 = v103;
    v91 = v104;
    (*(v103 + 56))(v88, v89, 1, v104);
    if ((*(v92 + 48))(v88, 1, v91) == 1)
    {
      sub_100025F40(v88, &qword_1005CD518, &qword_1004CF2F0);
      v93 = 1;
    }

    else
    {
      v94 = v88;
      v95 = v96;
      sub_100025FDC(v94, v96, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025FDC(v95, v90, &qword_1005CD1D0, &unk_1004CF2C0);
      v93 = 0;
      *(v90 + *(v13 + 20)) = _swiftEmptyArrayStorage;
      *(v90 + *(v13 + 24)) = &off_100598D00;
    }

    return (*(v98 + 56))(v90, v93, 1, v13);
  }

  v45 = 0;
  v46 = 0;
  v119 = v124 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
  v120 = v13;
  v118 = *(v123 + 72);
  v107 = v16;
  v126 = v21;
  v114 = v43;
  v111 = v44;
  while (1)
  {
    result = sub_100052CF0(v119 + v118 * v45, v43, _s25MessageSectionsToDownloadVMa);
    if (v46 >> 17 <= 2)
    {
      break;
    }

    sub_100052DBC(v43, _s25MessageSectionsToDownloadVMa);
LABEL_4:
    if (++v45 == v44)
    {
      goto LABEL_31;
    }
  }

  v117 = v46;
  v48 = *(v43 + *(v113 + 24));
  v49 = *(v48 + 16);
  if (!v49)
  {
LABEL_30:
    v43 = v114;
    sub_100052DBC(v114, _s25MessageSectionsToDownloadVMa);
    v13 = v120;
    v44 = v111;
    v46 = v117;
    goto LABEL_4;
  }

  v50 = 0;
  v51 = (v48 + 32);
  while (v50 < *(v48 + 16))
  {
    v52 = *v51;
    v53 = v51[2];
    v129[1] = v51[1];
    v130 = v53;
    v129[0] = v52;
    v54 = v51[3];
    v55 = v51[4];
    v56 = v51[6];
    v133 = v51[5];
    v134 = v56;
    v131 = v54;
    v132 = v55;
    v57 = v51[7];
    v58 = v51[8];
    v59 = v51[10];
    v137 = v51[9];
    v138 = v59;
    v135 = v57;
    v136 = v58;
    v60 = v51[11];
    v61 = v51[12];
    v62 = v51[13];
    *(v141 + 9) = *(v51 + 217);
    v140 = v61;
    v141[0] = v62;
    v139 = v60;
    if ((v129[0] & 1) == 0)
    {
      v63 = v130;
      sub_100050408(v129, v128);

      v65 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v64, _swiftEmptyArrayStorage);

      result = sub_100050440(v129);
      if (v65)
      {
        v115 = *v114;
        result = sub_100071BC4(v109);
        v66 = result;
        v67 = v120;
        v68 = v107;
        v69 = v126;
        v124 = *(result + 16);
        if (v124)
        {
          v70 = 0;
          v123 = result + ((*(v125 + 80) + 32) & ~*(v125 + 80));
          while (1)
          {
            if (v70 >= *(v66 + 16))
            {
              goto LABEL_39;
            }

            sub_100052CF0(v123 + *(v125 + 72) * v70, v69, type metadata accessor for DownloadTask.CommandID);
            v73 = v121;
            sub_100052CF0(v69, v121, type metadata accessor for DownloadTask.CommandID);
            if (swift_getEnumCaseMultiPayload() != 3)
            {
              break;
            }

            sub_100052D58(v73, v68);
            if ((static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*(v68 + *(v67 + 20)), _swiftEmptyArrayStorage) & 1) == 0)
            {
              sub_100052DBC(v69, type metadata accessor for DownloadTask.CommandID);
              v72 = _s18SectionDataRequestVMa;
              v71 = v68;
              goto LABEL_15;
            }

            v74 = v68;
            v75 = v68;
            v76 = v112;
            sub_10000E268(v74, v112, &qword_1005CD1D0, &unk_1004CF2C0);
            v128[0] = v115;
            v77 = MessageIdentifierSet.contains(_:)(v128, v116);
            sub_100025F40(v76, &unk_1005D91B0, &unk_1004CF400);
            if (v77)
            {
              v78 = *(v75 + *(v120 + 24));
              v68 = v75;
              if (*(v78 + 16) == 1)
              {
                v79 = *(v78 + 32);
                v69 = v126;
                sub_100052DBC(v126, type metadata accessor for DownloadTask.CommandID);
                if (!v79)
                {

                  sub_100052DBC(v68, _s18SectionDataRequestVMa);
                  goto LABEL_30;
                }
              }

              else
              {
                v69 = v126;
                sub_100052DBC(v126, type metadata accessor for DownloadTask.CommandID);
              }

              result = sub_100052DBC(v68, _s18SectionDataRequestVMa);
              v67 = v120;
            }

            else
            {
              v80 = v126;
              sub_100052DBC(v126, type metadata accessor for DownloadTask.CommandID);
              result = sub_100052DBC(v75, _s18SectionDataRequestVMa);
              v68 = v75;
              v69 = v80;
              v67 = v120;
            }

LABEL_16:
            if (v124 == ++v70)
            {
              goto LABEL_28;
            }
          }

          sub_100052DBC(v126, type metadata accessor for DownloadTask.CommandID);
          v71 = v73;
          v69 = v126;
          v72 = type metadata accessor for DownloadTask.CommandID;
LABEL_15:
          result = sub_100052DBC(v71, v72);
          goto LABEL_16;
        }

LABEL_28:

        v81 = v117 + v63;
        if (__CFADD__(v117, v63))
        {
          goto LABEL_40;
        }

        *&v110[v108] = v81;
        v127 = v115;
        MessageIdentifierSet.insert(_:)(v128, &v127, v116);
        v43 = v114;
        sub_100052DBC(v114, _s25MessageSectionsToDownloadVMa);
        v13 = v67;
        v44 = v111;
        v46 = v81;
        goto LABEL_4;
      }
    }

    ++v50;
    v51 += 15;
    if (v49 == v50)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100052950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int *a3@<X5>, uint64_t a4@<X8>)
{
  v33 = a4;
  v32 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v32);
  v10 = &v31 - v9;
  v11 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v15 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v31 - v17;
  v19 = *(a1 + 24);
  v35 = *(a1 + 8);
  v36[0] = v19;
  *(v36 + 15) = *(a1 + 39);
  v20 = *a3;
  v21 = v19;

  v22 = sub_100053688(v20, v21, a2);

  v23 = sub_100052E1C(1, v22);

  if (*(v23 + 16))
  {
    v34 = v20;
    v24 = sub_100016948();

    MessageIdentifierSet.init(_:)(&v34, &type metadata for UID, v24);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
      v25 = 1;
    }

    else
    {
      sub_100025FDC(v14, v10, &unk_1005D91B0, &unk_1004CF400);
      sub_100025FDC(v10, v18, &qword_1005CD1D0, &unk_1004CF2C0);
      v25 = 0;
    }

    v29 = v32;
    v28 = v33;
    (*(v7 + 56))(v18, v25, 1, v32);
    result = (*(v7 + 48))(v18, 1, v29);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_100025FDC(v18, v28, &qword_1005CD1D0, &unk_1004CF2C0);
      v30 = _s18SectionDataRequestVMa();
      *(v28 + *(v30 + 20)) = v21;
      *(v28 + *(v30 + 24)) = v23;
      return (*(*(v30 - 8) + 56))(v28, 0, 1, v30);
    }
  }

  else
  {
    v26 = _s18SectionDataRequestVMa();
    (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
  }

  return result;
}

uint64_t sub_100052CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100052D58(uint64_t a1, uint64_t a2)
{
  v4 = _s18SectionDataRequestVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052DBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100052E1C(uint64_t a1, char *a2)
{
  v89 = sub_1004A4614();
  v92 = *(v89 - 8);
  v5 = *(v92 + 8);
  __chkstk_darwin(v89);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005CE300, &qword_1004D0DE0);
  v75 = *(v8 - 8);
  v9 = *(v75 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v74 - v10);
  v12 = sub_1004A4644();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v88 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v87 = &v74 - v17;
  __chkstk_darwin(v18);
  v86 = &v74 - v19;
  __chkstk_darwin(v20);
  v22 = &v74 - v21;
  __chkstk_darwin(v23);
  v90 = &v74 - v24;
  __chkstk_darwin(v25);
  v85 = &v74 - v26;
  __chkstk_darwin(v27);
  v93 = &v74 - v28;
  __chkstk_darwin(v29);
  v84 = &v74 - v30;
  v31 = _swiftEmptyArrayStorage;
  v32 = _swiftEmptyArrayStorage[2];
  v95 = a2;

  v83 = a1;
  if (v32 < a1)
  {
    v94 = (v13 + 32);
    v81 = (v13 + 16);
    v82 = v7;
    v80 = (v13 + 8);
    v33 = &_swiftEmptyArrayStorage[2];
    v79 = (v92 + 8);
    v34 = v12;
    v78 = v2;
    v77 = v22;
    while (1)
    {
      if (*(v2 + 46))
      {
        goto LABEL_29;
      }

      v76 = v33;
      v35 = *(v2 + 32);
      v36 = 24;
      if (*(v2 + 44) < 2u)
      {
        v36 = 40;
      }

      v37 = *(v2 + v36);
      sub_1004A45C4();
      sub_1004A4634();
      v38 = *(v35 + 16);
      if (v38)
      {
        break;
      }

LABEL_10:
      v42 = *v94;
      v43 = v90;
      result = (*v94)(v90, v22, v34);
      v44 = *(v95 + 2);
      if (v44)
      {
        v45 = v95 + 36;
        v46 = v95 + 36;
        do
        {
          v47 = *v46;
          v46 += 8;
          v48 = v47 + 1;
          if (v47 == -1)
          {
            goto LABEL_33;
          }

          result = *(v45 - 1);
          if (v48 < result)
          {
            goto LABEL_34;
          }

          result = sub_1004A45F4();
          v45 = v46;
        }

        while (--v44);
      }

      v91 = v31;
      v49 = v85;
      v50 = v34;
      (v42)(v85, v43, v34);
      v92 = v42;
      v51 = v80;
      v52 = *v81;
      v53 = v93;
      (*v81)(v87, v93, v50);
      v52(v88, v49, v50);
      sub_100053640(&qword_1005CE308, &type metadata accessor for IndexSet);
      v54 = v86;
      sub_1004A6514();
      sub_1004A6504();
      v55 = *v51;
      (*v51)(v54, v50);
      v55(v49, v50);
      v56 = v84;
      (v92)(v84, v53, v50);
      v57 = v82;
      sub_1004A4624();
      sub_100053640(&qword_1005CE310, &type metadata accessor for IndexSet.RangeView);
      v58 = v89;
      sub_1004A5E64();
      sub_1004A5EA4();
      if (v96[4] == v96[0])
      {
        (*v79)(v57, v58);
        v55(v56, v50);

        return v91;
      }

      v59 = sub_1004A5F34();
      v60 = v58;
      v62 = *v61;
      v59(v96, 0);
      (*v79)(v57, v60);
      result = (v55)(v56, v50);
      v63 = 393216 * (v62 / 393216);
      if (v63 > 0xFFFFFFFFLL)
      {
        goto LABEL_35;
      }

      v64 = v63 + 393215;
      if (((v63 + 393215) | v63) < 0)
      {
        goto LABEL_36;
      }

      if (v63 > 4294574080)
      {
        goto LABEL_37;
      }

      if (v64 < v63)
      {
        goto LABEL_38;
      }

      v34 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_1000861E4(0, *(v95 + 2) + 1, 1, v95);
      }

      v31 = v91;
      v22 = v77;
      v66 = *(v95 + 2);
      v65 = *(v95 + 3);
      if (v66 >= v65 >> 1)
      {
        v95 = sub_1000861E4((v65 > 1), v66 + 1, 1, v95);
      }

      v67 = v95;
      *(v95 + 2) = v66 + 1;
      v68 = &v67[8 * v66];
      *(v68 + 8) = v63;
      *(v68 + 9) = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1000861E4(0, *v76 + 1, 1, v31);
      }

      v70 = *(v31 + 2);
      v69 = *(v31 + 3);
      v71 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        v31 = sub_1000861E4((v69 > 1), v70 + 1, 1, v31);
      }

      *(v31 + 2) = v71;
      v33 = v31 + 16;
      v72 = &v31[8 * v70];
      *(v72 + 8) = v63;
      *(v72 + 9) = v64;
      v73 = v71 < v83;
      v2 = v78;
      if (!v73)
      {
        goto LABEL_29;
      }
    }

    v39 = v35 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v40 = *(v75 + 72);
    while (1)
    {
      sub_10000E268(v39, v11, &qword_1005CE300, &qword_1004D0DE0);
      result = *v11;
      if (v11[1] < result)
      {
        break;
      }

      sub_1004A45F4();
      sub_100025F40(v11, &qword_1005CE300, &qword_1004D0DE0);
      v39 += v40;
      if (!--v38)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

LABEL_29:

  return v31;
}

uint64_t sub_100053640(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_100053688(int a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v39 = a1;
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v38 = &v37 - v6;
  v41 = _s18SectionDataRequestVMa();
  v7 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DownloadTask.CommandID(0);
  v10 = *(v43 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v43);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v17 = sub_100071BC4(a3);
  v18 = v17[2];
  if (!v18)
  {

    return _swiftEmptyArrayStorage;
  }

  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v37 = v17;
  v20 = v17 + v19;
  v42 = *(v10 + 72);
  v21 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_100053A8C(v20, v16);
    sub_100053A8C(v16, v13);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_100052D58(v13, v9);
      if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*&v9[*(v41 + 20)], v40))
      {
        v23 = v38;
        sub_10000E268(v9, v38, &qword_1005CD1D0, &unk_1004CF2C0);
        v44 = v39;
        v24 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
        v25 = MessageIdentifierSet.contains(_:)(&v44, v24);
        sub_100025F40(v23, &unk_1005D91B0, &unk_1004CF400);
        if (v25)
        {
          sub_100053AF0(v16, type metadata accessor for DownloadTask.CommandID);
          v26 = *&v9[*(v41 + 24)];

          result = sub_100053AF0(v9, _s18SectionDataRequestVMa);
          goto LABEL_12;
        }
      }

      v27 = _s18SectionDataRequestVMa;
      v28 = v9;
    }

    else
    {
      v27 = type metadata accessor for DownloadTask.CommandID;
      v28 = v13;
    }

    sub_100053AF0(v28, v27);
    result = sub_100053AF0(v16, type metadata accessor for DownloadTask.CommandID);
    v26 = _swiftEmptyArrayStorage;
LABEL_12:
    v29 = v26[2];
    v30 = *(v21 + 2);
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v31 <= *(v21 + 3) >> 1)
    {
      if (v26[2])
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v30 <= v31)
      {
        v32 = v30 + v29;
      }

      else
      {
        v32 = v30;
      }

      result = sub_1000861E4(result, v32, 1, v21);
      v21 = result;
      if (v26[2])
      {
LABEL_21:
        v33 = *(v21 + 2);
        if ((*(v21 + 3) >> 1) - v33 < v29)
        {
          goto LABEL_30;
        }

        memcpy(&v21[8 * v33 + 32], v26 + 4, 8 * v29);

        if (v29)
        {
          v34 = *(v21 + 2);
          v35 = __OFADD__(v34, v29);
          v36 = v34 + v29;
          if (v35)
          {
            goto LABEL_31;
          }

          *(v21 + 2) = v36;
        }

        goto LABEL_4;
      }
    }

    if (v29)
    {
      goto LABEL_29;
    }

LABEL_4:
    v20 += v42;
    if (!--v18)
    {

      return v21;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100053A8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadTask.CommandID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100053AF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_100053B50(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100053B64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 47))
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

uint64_t sub_100053BAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 46) = 0;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 47) = 1;
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

    *(result + 47) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_100053C10()
{
  result = sub_100093190(&off_100598D98);
  qword_1005DDEF8 = result;
  return result;
}

uint64_t sub_100053C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v39 = _s15MissingMessagesO8CompleteVMa(0);
  v3 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v39 - v12;
  v14 = _s15MissingMessagesO10IncompleteVMa(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v39 - v23;
  v25 = _s15MissingMessagesOMa(0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100056ED8(a1, v28, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100056F60(a1, _s15MissingMessagesOMa);
      sub_10005A5E8(v28, v17, _s15MissingMessagesO10IncompleteVMa);
      sub_10000E268(v17, v13, &qword_1005CD1D0, &unk_1004CF2C0);
      v30 = v40;
      sub_100025FDC(v13, v40, &unk_1005D91B0, &unk_1004CF400);
      sub_100056ED8(&v17[*(v14 + 24)], v9, _s15MissingMessagesO11QueriedUIDsVMa);
      v31 = type metadata accessor for FetchMessages.MissingUIDs(0);
      sub_100025FDC(v9, v30 + *(v31 + 20), &unk_1005D91B0, &unk_1004CF400);
      v32 = &v17[*(v14 + 20)];
      v33 = *v32;
      v34 = v32[4];
      v35 = _s15MissingMessagesO10IncompleteVMa;
      v36 = v17;
    }

    else
    {
      sub_10005A5E8(v28, v5, _s15MissingMessagesO8CompleteVMa);
      sub_100016D2C();
      v30 = v40;
      sub_1004A7114();
      sub_100056F60(a1, _s15MissingMessagesOMa);
      sub_100056ED8(&v5[*(v39 + 20)], v9, _s15MissingMessagesO11QueriedUIDsVMa);
      v31 = type metadata accessor for FetchMessages.MissingUIDs(0);
      sub_100025FDC(v9, v30 + *(v31 + 20), &unk_1005D91B0, &unk_1004CF400);
      v33 = *v5;
      v34 = v5[4];
      v35 = _s15MissingMessagesO8CompleteVMa;
      v36 = v5;
    }

    result = sub_100056F60(v36, v35);
  }

  else
  {
    sub_100016D2C();
    sub_1004A7114();
    sub_1004A7114();
    sub_100056F60(a1, _s15MissingMessagesOMa);
    v30 = v40;
    sub_100025FDC(v24, v40, &unk_1005D91B0, &unk_1004CF400);
    v31 = type metadata accessor for FetchMessages.MissingUIDs(0);
    result = sub_100025FDC(v22, v30 + *(v31 + 20), &unk_1005D91B0, &unk_1004CF400);
    v33 = 0;
    v34 = 1;
  }

  v38 = v30 + *(v31 + 24);
  *v38 = v33;
  *(v38 + 4) = v34;
  return result;
}

void sub_100054118(uint64_t a1)
{
  v2 = v1;
  Messages = type metadata accessor for FetchMessages(0);
  v5 = *(*(Messages - 8) + 64);
  __chkstk_darwin(Messages);
  v7 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v103 - v9;
  __chkstk_darwin(v11);
  v112 = &v103 - v12;
  __chkstk_darwin(v13);
  v110 = &v103 - v14;
  __chkstk_darwin(v15);
  v109 = &v103 - v16;
  v114 = type metadata accessor for MailboxTaskLogger(0);
  v17 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v19 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v103 - v21;
  __chkstk_darwin(v23);
  v25 = &v103 - v24;
  __chkstk_darwin(v26);
  v107 = &v103 - v27;
  v28 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v103 - v30;
  v32 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v108 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v113 = &v103 - v36;
  __chkstk_darwin(v37);
  v39 = &v103 - v38;
  __chkstk_darwin(v40);
  v111 = &v103 - v41;
  v115 = Messages;
  v42 = *(Messages + 40);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  if (sub_1004A70C4())
  {
LABEL_4:
    sub_100056ED8(a1, v22, type metadata accessor for MailboxTaskLogger);
    sub_100056ED8(a1, v19, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_100056ED8(v2, v10, type metadata accessor for FetchMessages);
    sub_100056ED8(v2, v7, type metadata accessor for FetchMessages);
    v44 = sub_1004A4A54();
    v45 = sub_1004A6034();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v118 = v113;
      *v46 = 68159747;
      *(v46 + 4) = 2;
      *(v46 + 8) = 256;
      v47 = v114;
      v48 = &v19[*(v114 + 20)];
      *(v46 + 10) = *v48;
      *(v46 + 11) = 2082;
      v49 = &v22[*(v47 + 20)];
      *(v46 + 13) = sub_10015BA6C(*(v49 + 1), *(v49 + 2), &v118);
      *(v46 + 21) = 1040;
      *(v46 + 23) = 2;
      *(v46 + 27) = 512;
      LOWORD(v48) = *(v48 + 12);
      sub_100056F60(v19, type metadata accessor for MailboxTaskLogger);
      *(v46 + 29) = v48;
      *(v46 + 31) = 2160;
      *(v46 + 33) = 0x786F626C69616DLL;
      *(v46 + 41) = 2085;
      v50 = *(v49 + 4);
      LODWORD(v49) = *(v49 + 10);

      sub_100056F60(v22, type metadata accessor for MailboxTaskLogger);
      v116 = v50;
      v117 = v49;
      v51 = sub_1004A5824();
      v53 = sub_10015BA6C(v51, v52, &v118);

      *(v46 + 43) = v53;
      *(v46 + 51) = 2082;
      v54 = &v10[v115[11]];
      v55 = *v54;
      LOBYTE(v49) = v54[8];
      sub_100056F60(v10, type metadata accessor for FetchMessages);
      if (v49)
      {
        v56 = 7104878;
        v57 = 0xE300000000000000;
      }

      else
      {
        v116 = v55;
        sub_10000C9C0(&qword_1005CDA48, &qword_1004CF7A8);
        v56 = sub_1004A56E4();
        v57 = v91;
      }

      v92 = sub_10015BA6C(v56, v57, &v118);

      *(v46 + 53) = v92;
      *(v46 + 61) = 1024;
      v93 = v115[10];
      v94 = &v7[v93 + *(type metadata accessor for FetchMessages.MissingUIDs(0) + 24)];
      if (v94[4])
      {
        v95 = 0;
      }

      else
      {
        v95 = *v94;
      }

      sub_100056F60(v7, type metadata accessor for FetchMessages);
      *(v46 + 63) = v95;
      _os_log_impl(&_mh_execute_header, v44, v45, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task with fetched-window %{public}s (persisted) -> %u (new)", v46, 0x43u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100056F60(v7, type metadata accessor for FetchMessages);
      sub_100056F60(v19, type metadata accessor for MailboxTaskLogger);

      sub_100056F60(v10, type metadata accessor for FetchMessages);
      sub_100056F60(v22, type metadata accessor for MailboxTaskLogger);
    }

    return;
  }

  sub_10000E268(v2 + v115[9], v31, &qword_1005CE3B0, &unk_1004D1010);
  v43 = type metadata accessor for NewServerMessages();
  if ((*(*(v43 - 8) + 48))(v31, 1, v43) == 1)
  {
    sub_100025F40(v31, &qword_1005CE3B0, &unk_1004D1010);
    goto LABEL_4;
  }

  sub_10000E268(&v31[*(v43 + 20)], v39, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_100056F60(v31, type metadata accessor for NewServerMessages);
  v58 = v111;
  sub_100025FDC(v39, v111, &qword_1005CD1D0, &unk_1004CF2C0);
  v59 = v107;
  sub_100056ED8(a1, v107, type metadata accessor for MailboxTaskLogger);
  sub_100056ED8(a1, v25, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v60 = v109;
  sub_100056ED8(v2, v109, type metadata accessor for FetchMessages);
  sub_10000E268(v58, v113, &qword_1005CD1D0, &unk_1004CF2C0);
  v61 = v108;
  sub_10000E268(v58, v108, &qword_1005CD1D0, &unk_1004CF2C0);
  v62 = v110;
  sub_100056ED8(v2, v110, type metadata accessor for FetchMessages);
  v63 = v2;
  v64 = v112;
  sub_100056ED8(v63, v112, type metadata accessor for FetchMessages);
  v65 = sub_1004A4A54();
  v66 = sub_1004A6034();
  if (os_log_type_enabled(v65, v66))
  {
    v104 = v65;
    v106 = v66;
    v67 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v118 = v105;
    *v67 = 68160515;
    *(v67 + 4) = 2;
    *(v67 + 8) = 256;
    v68 = v114;
    v69 = &v25[*(v114 + 20)];
    *(v67 + 10) = *v69;
    *(v67 + 11) = 2082;
    v70 = v60;
    v71 = v59 + *(v68 + 20);
    *(v67 + 13) = sub_10015BA6C(*(v71 + 8), *(v71 + 16), &v118);
    *(v67 + 21) = 1040;
    *(v67 + 23) = 2;
    *(v67 + 27) = 512;
    LOWORD(v69) = *(v69 + 12);
    sub_100056F60(v25, type metadata accessor for MailboxTaskLogger);
    *(v67 + 29) = v69;
    *(v67 + 31) = 2160;
    *(v67 + 33) = 0x786F626C69616DLL;
    *(v67 + 41) = 2085;
    v72 = *(v71 + 32);
    LODWORD(v71) = *(v71 + 40);

    sub_100056F60(v59, type metadata accessor for MailboxTaskLogger);
    v116 = v72;
    v117 = v71;
    v73 = sub_1004A5824();
    v75 = sub_10015BA6C(v73, v74, &v118);

    *(v67 + 43) = v75;
    *(v67 + 51) = 2048;
    v76 = v62;
    v77 = v115;
    v78 = v115[10];
    v79 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v80 = MessageIdentifierSet.count.getter();
    sub_100056F60(v70, type metadata accessor for FetchMessages);
    *(v67 + 53) = v80;
    *(v67 + 61) = 2048;
    v81 = v113;
    v82 = MessageIdentifierSet.count.getter();
    sub_100025F40(v81, &qword_1005CD1D0, &unk_1004CF2C0);
    *(v67 + 63) = v82;
    *(v67 + 71) = 2082;
    v83 = MessageIdentifierSet.debugDescription.getter(v79);
    v85 = v84;
    sub_100025F40(v61, &qword_1005CD1D0, &unk_1004CF2C0);
    v86 = sub_10015BA6C(v83, v85, &v118);

    *(v67 + 73) = v86;
    *(v67 + 81) = 2082;
    v87 = v76 + v77[11];
    v88 = *v87;
    LOBYTE(v85) = *(v87 + 8);
    sub_100056F60(v76, type metadata accessor for FetchMessages);
    if (v85)
    {
      v89 = 7104878;
      v90 = 0xE300000000000000;
    }

    else
    {
      v116 = v88;
      sub_10000C9C0(&qword_1005CDA48, &qword_1004CF7A8);
      v89 = sub_1004A56E4();
      v90 = v97;
    }

    v98 = v104;
    v99 = sub_10015BA6C(v89, v90, &v118);

    *(v67 + 83) = v99;
    *(v67 + 91) = 1024;
    v100 = v115[10];
    v101 = (v112 + v100 + *(type metadata accessor for FetchMessages.MissingUIDs(0) + 24));
    if (*(v101 + 4))
    {
      v102 = 0;
    }

    else
    {
      v102 = *v101;
    }

    sub_100056F60(v112, type metadata accessor for FetchMessages);
    *(v67 + 93) = v102;
    _os_log_impl(&_mh_execute_header, v98, v106, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task with missing %ld, batch %ld UIDs %{public}s, fetched-window %{public}s (persisted) -> %u (new)", v67, 0x61u);
    swift_arrayDestroy();

    v96 = v111;
  }

  else
  {
    sub_100056F60(v64, type metadata accessor for FetchMessages);
    sub_100025F40(v113, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100056F60(v60, type metadata accessor for FetchMessages);
    sub_100056F60(v25, type metadata accessor for MailboxTaskLogger);

    sub_100056F60(v62, type metadata accessor for FetchMessages);
    sub_100025F40(v61, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100056F60(v59, type metadata accessor for MailboxTaskLogger);
    v96 = v58;
  }

  sub_100025F40(v96, &qword_1005CD1D0, &unk_1004CF2C0);
}

uint64_t sub_100054D60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for NewServerMessages();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Messages = type metadata accessor for FetchMessages(0);
  sub_10000E268(v3 + *(Messages + 36), v10, &qword_1005CE3B0, &unk_1004D1010);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100025F40(v10, &qword_1005CE3B0, &unk_1004D1010);
  }

  else
  {
    sub_10005A5E8(v10, v15, type metadata accessor for NewServerMessages);
    if ((sub_100111E58(a1, a2) & 1) == 0)
    {
      sub_1000FAA84(a3);
      sub_100056F60(v15, type metadata accessor for NewServerMessages);
      v17 = 0;
      goto LABEL_7;
    }

    sub_100056F60(v15, type metadata accessor for NewServerMessages);
  }

  v17 = 1;
LABEL_7:
  v18 = sub_10000C9C0(&qword_1005CE538, &qword_1004D0F18);
  return (*(*(v18 - 8) + 56))(a3, v17, 1, v18);
}

uint64_t sub_100054FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for NewServerMessages();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10001F6F0(a2, a4))
  {
    return 0xF000000000000007;
  }

  Messages = type metadata accessor for FetchMessages(0);
  sub_10000E268(v4 + *(Messages + 36), v12, &qword_1005CE3B0, &unk_1004D1010);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100025F40(v12, &qword_1005CE3B0, &unk_1004D1010);
    sub_100055260();
    if (v21)
    {
      return 0xF000000000000007;
    }

    v22 = v20;
    v23 = swift_allocObject();
    v24 = *(v4 + 24);
    *(v23 + 16) = *(v4 + 16);
    *(v23 + 24) = v24;
    *(v23 + 32) = _swiftEmptyArrayStorage;
    *(v23 + 40) = v22;
    *(v23 + 48) = 0;
    v25 = v23 | 0x2000000000000006;

    return v25;
  }

  else
  {
    sub_10005A5E8(v12, v17, type metadata accessor for NewServerMessages);
    if ((sub_100019C0C(a1, a2, a3) & 1) != 0 && ((sub_100055260(), v28 = v27, v29 = v26, v30 = *&v17[*(v13 + 36)], *(v30 + 16)) || (v26 & 1) == 0))
    {
      v31 = swift_allocObject();
      v32 = *(v4 + 24);
      *(v31 + 16) = *(v4 + 16);
      *(v31 + 24) = v32;

      sub_100056F60(v17, type metadata accessor for NewServerMessages);
      *(v31 + 32) = v30;
      *(v31 + 40) = v28;
      *(v31 + 48) = v29 & 1;
      return v31 | 0x2000000000000006;
    }

    else
    {
      sub_100056F60(v17, type metadata accessor for NewServerMessages);
      return 0xF000000000000007;
    }
  }
}

void sub_100055260()
{
  v1 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v35 = &v34 - v3;
  v4 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v34 - v6;
  v8 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v34 - v10;
  v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v34 - v15;
  v17 = type metadata accessor for FetchMessages.MissingUIDs(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Messages = type metadata accessor for FetchMessages(0);
  sub_100056ED8(v0 + Messages[10], v20, type metadata accessor for FetchMessages.MissingUIDs);
  v22 = v0 + Messages[11];
  v23 = *v22;
  v37 = *(v22 + 8);
  v24 = Messages[9];
  v36 = v0;
  sub_10000E268(v0 + v24, v7, &qword_1005CE3B0, &unk_1004D1010);
  v25 = type metadata accessor for NewServerMessages();
  if ((*(*(v25 - 8) + 48))(v7, 1, v25) == 1)
  {
    sub_100025F40(v7, &qword_1005CE3B0, &unk_1004D1010);
    (*(v13 + 56))(v11, 1, 1, v12);
    sub_100016D2C();
    sub_1004A7114();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_100025F40(v11, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  else
  {
    v26 = v35;
    sub_10000E268(&v7[*(v25 + 20)], v35, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100056F60(v7, type metadata accessor for NewServerMessages);
    sub_100025FDC(v26, v11, &unk_1005D91B0, &unk_1004CF400);
    (*(v13 + 56))(v11, 0, 1, v12);
    sub_100025FDC(v11, v16, &unk_1005D91B0, &unk_1004CF400);
  }

  v27 = v37;
  v28 = sub_100056BCC(v23, v37, v16);
  v30 = v29;
  sub_100056F60(v20, type metadata accessor for FetchMessages.MissingUIDs);
  sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
  if ((v30 & 1) == 0 && ((v28 == v23) & ~v27) == 0)
  {
    v31 = *(v36 + Messages[7] + 8);
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = *(v31 + 8 * v32 + 24);
    }

    else
    {
      v33 = 1;
    }

    sub_1000556D0(v33, v28);
  }
}

void sub_1000556D0(unsigned int a1, unint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  __chkstk_darwin(v15);
  v17 = &v19 - v16;
  if (a2 < a1)
  {
    LODWORD(v21) = 1;
    if (a1 < 2)
    {
      __break(1u);
    }

    else
    {
      v19 = HIDWORD(a2);
      LODWORD(v20) = a1 - 1;
      v18 = sub_100016948();
      static MessageIdentifier.... infix(_:_:)(&v21, &v20, &type metadata for UID, v18, &v22);
      v21 = v22;
      v20 = Range<>.init<A>(_:)(&v21, &type metadata for UID, v18);
      sub_100016D2C();
      sub_1004A7124();
      v22 = __PAIR64__(v19, a2);
      v21 = Range<>.init<A>(_:)(&v22, &type metadata for UID, v18);
      sub_1004A7124();
      MessageIdentifierSet.subtracting(_:)(v17, v14);
      sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
      MessageIdentifierSet.ranges.getter(v7);
      sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
      sub_1000E4C0C();
      sub_100025F40(v7, &qword_1005CD7A0, &unk_1004CF590);
      sub_100025F40(v17, &unk_1005D91B0, &unk_1004CF400);
    }
  }
}

uint64_t sub_100055968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v123 = a1;
  v124 = a4;
  v119 = a2;
  v5 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v118 = &v101[-v7];
  v8 = type metadata accessor for MessageMetadata(0);
  v109 = *(v8 - 8);
  v9 = *(v109 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v101[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v111 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v12 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v14 = &v101[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v110 = &v101[-v16];
  v114 = type metadata accessor for MailboxTaskLogger(0);
  v17 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v122 = &v101[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v121 = &v101[-v20];
  __chkstk_darwin(v21);
  v112 = &v101[-v22];
  __chkstk_darwin(v23);
  v113 = &v101[-v24];
  v25 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v115 = &v101[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v30 = &v101[-v29];
  v31 = type metadata accessor for NewServerMessages();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v101[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v36);
  v38 = &v101[-v37];
  Messages = type metadata accessor for FetchMessages(0);
  v40 = *(Messages + 36);
  v120 = a3;
  v116 = v40;
  v117 = Messages;
  sub_10000E268(a3 + v40, v30, &qword_1005CE3B0, &unk_1004D1010);
  v43 = *(v32 + 48);
  v42 = (v32 + 48);
  v41 = v43;
  v125 = v31;
  if (v43(v30, 1, v31) == 1)
  {
    sub_100025F40(v30, &qword_1005CE3B0, &unk_1004D1010);
LABEL_7:
    v65 = v122;
    v64 = v123;
    v66 = v119;
    v50 = v115;
    goto LABEL_16;
  }

  sub_10005A5E8(v30, v38, type metadata accessor for NewServerMessages);
  if (!*(*&v38[*(v125 + 36)] + 16))
  {
    sub_100056F60(v38, type metadata accessor for NewServerMessages);
    goto LABEL_7;
  }

  v106 = *&v38[*(v125 + 36)];
  v108 = v41;
  v44 = v124;
  v45 = v113;
  sub_100056ED8(v124, v113, type metadata accessor for MailboxTaskLogger);
  v46 = v112;
  sub_100056ED8(v44, v112, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v107 = v38;
  sub_100056ED8(v38, v35, type metadata accessor for NewServerMessages);
  v47 = sub_1004A4A54();
  v48 = sub_1004A6034();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v115;
  if (v49)
  {
    v51 = swift_slowAlloc();
    v104 = v48;
    v52 = v51;
    v105 = swift_slowAlloc();
    v128[0] = v105;
    *v52 = 68159491;
    *(v52 + 4) = 2;
    *(v52 + 8) = 256;
    v53 = v114;
    v54 = *(v114 + 20);
    v103 = v47;
    v55 = &v46[v54];
    *(v52 + 10) = v46[v54];
    *(v52 + 11) = 2082;
    v56 = &v45[*(v53 + 20)];
    *(v52 + 13) = sub_10015BA6C(*(v56 + 1), *(v56 + 2), v128);
    *(v52 + 21) = 1040;
    *(v52 + 23) = 2;
    *(v52 + 27) = 512;
    v102 = *(v55 + 12);
    sub_100056F60(v46, type metadata accessor for MailboxTaskLogger);
    *(v52 + 29) = v102;
    *(v52 + 31) = 2160;
    *(v52 + 33) = 0x786F626C69616DLL;
    *(v52 + 41) = 2085;
    v57 = v45;
    v58 = *(v56 + 4);
    LODWORD(v56) = *(v56 + 10);

    sub_100056F60(v57, type metadata accessor for MailboxTaskLogger);
    v126 = v58;
    v127 = v56;
    v59 = sub_1004A5824();
    v61 = sub_10015BA6C(v59, v60, v128);

    *(v52 + 43) = v61;
    *(v52 + 51) = 2048;
    v62 = *(*&v35[*(v125 + 36)] + 16);
    sub_100056F60(v35, type metadata accessor for NewServerMessages);
    *(v52 + 53) = v62;
    v63 = v103;
    _os_log_impl(&_mh_execute_header, v103, v104, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] %ld new message(s).", v52, 0x3Du);
    swift_arrayDestroy();
  }

  else
  {
    sub_100056F60(v35, type metadata accessor for NewServerMessages);
    sub_100056F60(v46, type metadata accessor for MailboxTaskLogger);

    sub_100056F60(v45, type metadata accessor for MailboxTaskLogger);
  }

  v64 = v123;
  sub_10013FC9C(9u);
  sub_100088568(&v126, 9);
  v67 = *(type metadata accessor for MailboxSyncState() + 64);
  v68 = type metadata accessor for NewestMessages();
  v69 = (*(*(v68 - 8) + 48))(v64 + v67, 1, v68);
  v65 = v122;
  v41 = v108;
  if (v69)
  {
    sub_100056F60(v107, type metadata accessor for NewServerMessages);
  }

  else
  {
    v113 = v42;
    sub_100016D2C();
    v70 = v14;
    sub_1004A7114();
    v71 = *(v106 + 16);
    v72 = v111;
    if (v71)
    {
      v73 = v106 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
      v74 = *(v109 + 72);
      do
      {
        sub_100056ED8(v73, v11, type metadata accessor for MessageMetadata);
        LODWORD(v128[0]) = *v11;
        v70 = v14;
        MessageIdentifierSet.insert(_:)(&v126, v128, v72);
        sub_100056F60(v11, type metadata accessor for MessageMetadata);
        v73 += v74;
        --v71;
      }

      while (v71);
    }

    v75 = v110;
    sub_100025FDC(v70, v110, &unk_1005D91B0, &unk_1004CF400);
    sub_1000FA440(v75);
    sub_100025F40(v75, &unk_1005D91B0, &unk_1004CF400);
    sub_100056F60(v107, type metadata accessor for NewServerMessages);
    v65 = v122;
    v41 = v108;
  }

  v66 = v119;
LABEL_16:
  v76 = v120;
  sub_10000E268(v120 + v116, v50, &qword_1005CE3B0, &unk_1004D1010);
  v77 = v41(v50, 1, v125);
  v78 = v118;
  if (v77 == 1)
  {
    sub_100025F40(v50, &qword_1005CE3B0, &unk_1004D1010);
    v79 = 1;
  }

  else
  {
    sub_10000E268(v50 + *(v125 + 20), v118, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100056F60(v50, type metadata accessor for NewServerMessages);
    v79 = 0;
  }

  v80 = v124;
  v81 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  (*(*(v81 - 8) + 56))(v78, v79, 1, v81);
  v82 = sub_100059B90(v64, v66 & 0x101010101FFFF01, v78, (v76 + *(v117 + 28)), v80);
  v84 = v83;
  v86 = v85;
  result = sub_100025F40(v78, &qword_1005CD518, &qword_1004CF2F0);
  v88 = v121;
  if ((v86 & 1) == 0)
  {
    sub_100056ED8(v80, v121, type metadata accessor for MailboxTaskLogger);
    sub_100056ED8(v80, v65, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v89 = sub_1004A4A54();
    v90 = sub_1004A6034();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v128[0] = swift_slowAlloc();
      *v91 = 68159747;
      *(v91 + 4) = 2;
      *(v91 + 8) = 256;
      v92 = v114;
      v93 = v65 + *(v114 + 20);
      *(v91 + 10) = *v93;
      *(v91 + 11) = 2082;
      v94 = *(v92 + 20);
      v125 = v84;
      v95 = v65;
      v96 = &v88[v94];
      *(v91 + 13) = sub_10015BA6C(*&v88[v94 + 8], *&v88[v94 + 16], v128);
      *(v91 + 21) = 1040;
      *(v91 + 23) = 2;
      *(v91 + 27) = 512;
      LOWORD(v93) = *(v93 + 24);
      sub_100056F60(v95, type metadata accessor for MailboxTaskLogger);
      *(v91 + 29) = v93;
      *(v91 + 31) = 2160;
      *(v91 + 33) = 0x786F626C69616DLL;
      *(v91 + 41) = 2085;
      v97 = *(v96 + 4);
      LODWORD(v96) = *(v96 + 10);

      sub_100056F60(v88, type metadata accessor for MailboxTaskLogger);
      v126 = v97;
      v127 = v96;
      v98 = sub_1004A5824();
      v100 = sub_10015BA6C(v98, v99, v128);

      *(v91 + 43) = v100;
      *(v91 + 51) = 2048;
      *(v91 + 53) = v82;
      *(v91 + 61) = 2048;
      *(v91 + 63) = v125;
      _os_log_impl(&_mh_execute_header, v89, v90, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Still missing %ld messages (%ld completed). Will run again.", v91, 0x47u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100056F60(v65, type metadata accessor for MailboxTaskLogger);

      sub_100056F60(v88, type metadata accessor for MailboxTaskLogger);
    }

    sub_10013FC9C(1u);
    return sub_100088568(&v126, 1);
  }

  return result;
}

void sub_10005660C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = HIDWORD(a2);
  v7 = type metadata accessor for MailboxTaskLogger(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  if ((*(a1 + 8) & 1) != 0 || (*a1 == a2 ? (v14 = v6 == HIDWORD(*a1)) : (v14 = 0), !v14))
  {
    sub_100056ED8(a3, &v29 - v12, type metadata accessor for MailboxTaskLogger);
    sub_100056ED8(a3, v10, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v15 = sub_1004A4A54();
    v16 = sub_1004A6004();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v30 = v6;
      v18 = v17;
      v31 = swift_slowAlloc();
      v34 = v31;
      *v18 = 68159491;
      *(v18 + 4) = 2;
      *(v18 + 8) = 256;
      v19 = &v10[*(v7 + 20)];
      *(v18 + 10) = *v19;
      *(v18 + 11) = 2082;
      v20 = &v13[*(v7 + 20)];
      *(v18 + 13) = sub_10015BA6C(*(v20 + 1), *(v20 + 2), &v34);
      *(v18 + 21) = 1040;
      *(v18 + 23) = 2;
      *(v18 + 27) = 512;
      LOWORD(v19) = *(v19 + 12);
      sub_100056F60(v10, type metadata accessor for MailboxTaskLogger);
      *(v18 + 29) = v19;
      *(v18 + 31) = 2160;
      *(v18 + 33) = 0x786F626C69616DLL;
      *(v18 + 41) = 2085;
      v21 = *(v20 + 4);
      LODWORD(v19) = *(v20 + 10);

      sub_100056F60(v13, type metadata accessor for MailboxTaskLogger);
      v32 = v21;
      v33 = v19;
      v22 = sub_1004A5824();
      v24 = sub_10015BA6C(v22, v23, &v34);

      *(v18 + 43) = v24;
      *(v18 + 51) = 2082;
      v32 = __PAIR64__(v30, a2);
      v25 = sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
      v26 = MessageIdentifierRange.debugDescription.getter(v25);
      v28 = sub_10015BA6C(v26, v27, &v34);

      *(v18 + 53) = v28;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Updating fetched-window to %{public}s.", v18, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100056F60(v10, type metadata accessor for MailboxTaskLogger);

      sub_100056F60(v13, type metadata accessor for MailboxTaskLogger);
    }

    *a1 = a2;
    *(a1 + 8) = 0;
  }
}

uint64_t sub_100056974()
{
  sub_10000C9C0(&qword_1005CD560, &unk_1004CF410);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004CEAA0;
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  *(v1 + 32) = type metadata accessor for FetchSearchResultMessages(0);
  sub_100026044();

  sub_1004A6674();
  return v1;
}

uint64_t sub_100056A18()
{
  if (qword_1005CCE30 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100056A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_100054FA4(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

void sub_100056ACC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v8 = a2;
  sub_10012D0D0(v3, v4, sub_100057848, v7);
  sub_100055260();
  if ((v6 & 1) == 0)
  {
    __chkstk_darwin(v5);
    sub_1000B631C(v3, v4, sub_10005785C);
  }
}

uint64_t sub_100056BCC(unint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  MessageIdentifierSet.subtracting(_:)(a3, &v27 - v13);
  v15 = type metadata accessor for FetchMessages.MissingUIDs(0);
  v16 = v4 + *(v15 + 20);
  MessageIdentifierSet.subtracting(_:)(v14, v11);
  v17 = HIDWORD(a1);
  v18 = (v4 + *(v15 + 24));
  v19 = *v18;
  v20 = *(v18 + 4);
  LOBYTE(v29) = a2 & 1;
  if (a2)
  {
    v17 = 0;
  }

  LOBYTE(v29) = v20;
  v21 = sub_100059328(v17 | ((a2 & 1) << 32), v11, v19 | (v20 << 32));
  if ((v21 & 0x100000000) != 0)
  {
    sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
    return 0;
  }

  else
  {
    if (a2)
    {
      v22 = v21;
    }

    else
    {
      v22 = a1;
    }

    v23 = v21;
    v24 = sub_100059808(v22, v11);
    v27 = v23;
    v28 = v24;
    v25 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(&v28, &v27, &type metadata for UID, v25, &v29);
    sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
    return v29;
  }
}

uint64_t sub_100056DBC(void (*a1)(void))
{
  a1();
  if (v1)
  {
    return 7104878;
  }

  sub_10000C9C0(&qword_1005CDA48, &qword_1004CF7A8);
  return sub_1004A56E4();
}

uint64_t sub_100056E20(uint64_t a1, uint64_t a2)
{
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FetchMessages.MissingUIDs(0);
  v5 = *(v4 + 20);
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 4);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 4);
  if (v8)
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v7)
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100056ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100056F60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100056FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100057060(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000570DC()
{
  sub_100057614(319, &qword_1005CDDC0, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
  if (v0 <= 0x3F)
  {
    sub_1000576D4(319, &qword_1005CD840);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000571BC(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for MessageBatches(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = type metadata accessor for FetchMessages.MissingUIDs(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[10]];

  return v15(v16, a2, v14);
}

char *sub_100057348(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for MessageBatches(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_10000C9C0(&qword_1005CE3B0, &unk_1004D1010);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = type metadata accessor for FetchMessages.MissingUIDs(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[10]];

  return v15(v16, a2, a2, v14);
}

void sub_1000574E0()
{
  sub_100057614(319, &qword_1005CD828, sub_10002AB18, &type metadata for SyncStep, &type metadata accessor for Set);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MessageBatches(319);
    if (v1 <= 0x3F)
    {
      sub_10005767C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for FetchMessages.MissingUIDs(319);
        if (v3 <= 0x3F)
        {
          sub_1000576D4(319, &qword_1005CE428);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100057614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_10005767C()
{
  if (!qword_1005CE420)
  {
    type metadata accessor for NewServerMessages();
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CE420);
    }
  }
}

void sub_1000576D4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1004A6374();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_100057720()
{
  result = qword_1005CE470;
  if (!qword_1005CE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CE470);
  }

  return result;
}

unint64_t sub_100057774()
{
  result = qword_1005CE478;
  if (!qword_1005CE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CE478);
  }

  return result;
}

unint64_t sub_1000577C8(uint64_t a1)
{
  result = sub_1000577F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000577F0()
{
  result = qword_1005CE530;
  if (!qword_1005CE530)
  {
    type metadata accessor for FetchMessages(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CE530);
  }

  return result;
}

uint64_t sub_10005787C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v48 = a2;
  v55 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v55);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = &v45 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  __chkstk_darwin(v22);
  v24 = &v45 - v23;
  result = sub_100111658(a1, a4);
  v51 = *(result + 16);
  if (v51)
  {
    v52 = v9;
    v53 = result;
    v45 = v6;
    v46 = v18;
    v26 = 0;
    v49 = result + 32;
    v47 = v15;
    do
    {
      if (v26 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v57 = v26;
      v27 = *(v56 + 16);
      if (!v27)
      {
        goto LABEL_3;
      }

      v58 = *(v49 + 4 * v57);
      v28 = v56 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v29 = *(v50 + 72);
      v30 = v28;
      v31 = v27;
      while (1)
      {
        sub_100056ED8(v30, v24, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v24, v21, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v21, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v30 += v29;
        if (!--v31)
        {
          goto LABEL_3;
        }
      }

      v32 = sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0);
      v33 = *&v21[*(v32 + 48)];
      sub_100056F60(v21, type metadata accessor for ClientCommand);
      if (v33 != v58)
      {
        goto LABEL_8;
      }

      v35 = v46;
      v34 = v47;
      while (1)
      {
        sub_100056ED8(v28, v35, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v35, v34, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v34, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v28 += v29;
        if (!--v27)
        {
LABEL_22:
          v44 = 1;
          goto LABEL_24;
        }
      }

      v36 = *(v34 + *(v32 + 48));
      sub_100056F60(v34, type metadata accessor for ClientCommand);
      if (v36 != v58)
      {
        goto LABEL_13;
      }

      v37 = *(v48 + 16);
      if (v37)
      {
        v38 = v48 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
        v39 = *(v45 + 72);
        do
        {
          v40 = v54;
          sub_100056ED8(v38, v54, type metadata accessor for TaskHistory.Running);
          v41 = v52;
          sub_10005A5E8(v40, v52, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100056F60(v41, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v42 = *(v41 + 8);
            v43 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
            sub_100056F60(v41 + *(v43 + 64), type metadata accessor for ClientCommand);
            if (v42 == v58)
            {
              goto LABEL_22;
            }
          }

          v38 += v39;
          --v37;
        }

        while (v37);
      }

LABEL_3:
      v26 = v57 + 1;
      result = v53;
    }

    while (v57 + 1 != v51);
  }

  v44 = 0;
LABEL_24:

  return v44;
}

uint64_t sub_100057D68(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a5;
  v48 = a4;
  v56 = type metadata accessor for TaskHistory.Running(0);
  v10 = *(v56 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v56);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v55 = &v47 - v15;
  v16 = type metadata accessor for TaskHistory.Previous(0);
  v51 = *(v16 - 8);
  v17 = *(v51 + 64);
  __chkstk_darwin(v16);
  v49 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v59 = &v47 - v20;
  __chkstk_darwin(v21);
  v23 = &v47 - v22;
  __chkstk_darwin(v24);
  v26 = &v47 - v25;
  result = sub_100112A28(a1, a2, a3 & 1, a6);
  v52 = *(result + 16);
  if (v52)
  {
    v53 = v13;
    v54 = result;
    v47 = v10;
    v28 = 0;
    v50 = result + 32;
    do
    {
      if (v28 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v58 = v28;
      v29 = *(v57 + 16);
      if (!v29)
      {
        goto LABEL_3;
      }

      v60 = *(v50 + 4 * v58);
      v30 = v57 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
      v31 = *(v51 + 72);
      v32 = v30;
      v33 = v29;
      while (1)
      {
        sub_100056ED8(v32, v26, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v26, v23, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v23, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v32 += v31;
        if (!--v33)
        {
          goto LABEL_3;
        }
      }

      v34 = sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0);
      v35 = *&v23[*(v34 + 48)];
      sub_100056F60(v23, type metadata accessor for ClientCommand);
      if (v35 != v60)
      {
        goto LABEL_8;
      }

      v36 = v49;
      while (1)
      {
        v37 = v59;
        sub_100056ED8(v30, v59, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v37, v36, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v36, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v30 += v31;
        if (!--v29)
        {
LABEL_22:
          v46 = 1;
          goto LABEL_24;
        }
      }

      v38 = *(v36 + *(v34 + 48));
      sub_100056F60(v36, type metadata accessor for ClientCommand);
      if (v38 != v60)
      {
        goto LABEL_13;
      }

      v39 = *(v48 + 16);
      if (v39)
      {
        v40 = v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
        v41 = *(v47 + 72);
        do
        {
          v42 = v55;
          sub_100056ED8(v40, v55, type metadata accessor for TaskHistory.Running);
          v43 = v53;
          sub_10005A5E8(v42, v53, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100056F60(v43, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v44 = *(v43 + 8);
            v45 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
            sub_100056F60(v43 + *(v45 + 64), type metadata accessor for ClientCommand);
            if (v44 == v60)
            {
              goto LABEL_22;
            }
          }

          v40 += v41;
          --v39;
        }

        while (v39);
      }

LABEL_3:
      v28 = v58 + 1;
      result = v54;
    }

    while (v58 + 1 != v52);
  }

  v46 = 0;
LABEL_24:

  return v46;
}

uint64_t sub_100058284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v48 = a2;
  v55 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v55);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = &v45 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  __chkstk_darwin(v22);
  v24 = &v45 - v23;
  result = sub_100112498(a1, a4);
  v51 = *(result + 16);
  if (v51)
  {
    v52 = v9;
    v53 = result;
    v45 = v6;
    v46 = v18;
    v26 = 0;
    v49 = result + 32;
    v47 = v15;
    do
    {
      if (v26 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v57 = v26;
      v27 = *(v56 + 16);
      if (!v27)
      {
        goto LABEL_3;
      }

      v58 = *(v49 + 4 * v57);
      v28 = v56 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v29 = *(v50 + 72);
      v30 = v28;
      v31 = v27;
      while (1)
      {
        sub_100056ED8(v30, v24, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v24, v21, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v21, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v30 += v29;
        if (!--v31)
        {
          goto LABEL_3;
        }
      }

      v32 = sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0);
      v33 = *&v21[*(v32 + 48)];
      sub_100056F60(v21, type metadata accessor for ClientCommand);
      if (v33 != v58)
      {
        goto LABEL_8;
      }

      v35 = v46;
      v34 = v47;
      while (1)
      {
        sub_100056ED8(v28, v35, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v35, v34, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v34, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v28 += v29;
        if (!--v27)
        {
LABEL_22:
          v44 = 1;
          goto LABEL_24;
        }
      }

      v36 = *(v34 + *(v32 + 48));
      sub_100056F60(v34, type metadata accessor for ClientCommand);
      if (v36 != v58)
      {
        goto LABEL_13;
      }

      v37 = *(v48 + 16);
      if (v37)
      {
        v38 = v48 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
        v39 = *(v45 + 72);
        do
        {
          v40 = v54;
          sub_100056ED8(v38, v54, type metadata accessor for TaskHistory.Running);
          v41 = v52;
          sub_10005A5E8(v40, v52, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100056F60(v41, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v42 = *(v41 + 8);
            v43 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
            sub_100056F60(v41 + *(v43 + 64), type metadata accessor for ClientCommand);
            if (v42 == v58)
            {
              goto LABEL_22;
            }
          }

          v38 += v39;
          --v37;
        }

        while (v37);
      }

LABEL_3:
      v26 = v57 + 1;
      result = v53;
    }

    while (v57 + 1 != v51);
  }

  v44 = 0;
LABEL_24:

  return v44;
}

uint64_t sub_100058788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, __n128))
{
  v57 = a2;
  v49 = a1;
  v56 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v56 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v56);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v46 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v51 = *(v12 - 8);
  v13 = *(v51 + 64);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  __chkstk_darwin(v19);
  v21 = &v46 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v46 - v24;
  result = a4(a3, v23);
  v52 = *(result + 16);
  if (v52)
  {
    v53 = v9;
    v54 = result;
    v46 = v6;
    v47 = v18;
    v27 = 0;
    v50 = result + 32;
    v48 = v15;
    do
    {
      if (v27 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v58 = v27;
      v28 = *(v57 + 16);
      if (!v28)
      {
        goto LABEL_3;
      }

      v59 = *(v50 + 4 * v58);
      v29 = v57 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
      v30 = *(v51 + 72);
      v31 = v29;
      v32 = v28;
      while (1)
      {
        sub_100056ED8(v31, v25, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v25, v21, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v21, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v31 += v30;
        if (!--v32)
        {
          goto LABEL_3;
        }
      }

      v33 = sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0);
      v34 = *&v21[*(v33 + 48)];
      sub_100056F60(v21, type metadata accessor for ClientCommand);
      if (v34 != v59)
      {
        goto LABEL_8;
      }

      v36 = v47;
      v35 = v48;
      while (1)
      {
        sub_100056ED8(v29, v36, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v36, v35, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v35, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v29 += v30;
        if (!--v28)
        {
LABEL_22:
          v45 = 1;
          goto LABEL_24;
        }
      }

      v37 = *(v35 + *(v33 + 48));
      sub_100056F60(v35, type metadata accessor for ClientCommand);
      if (v37 != v59)
      {
        goto LABEL_13;
      }

      v38 = *(v49 + 16);
      if (v38)
      {
        v39 = v49 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
        v40 = *(v46 + 72);
        do
        {
          v41 = v55;
          sub_100056ED8(v39, v55, type metadata accessor for TaskHistory.Running);
          v42 = v53;
          sub_10005A5E8(v41, v53, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100056F60(v42, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v43 = *(v42 + 8);
            v44 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
            sub_100056F60(v42 + *(v44 + 64), type metadata accessor for ClientCommand);
            if (v43 == v59)
            {
              goto LABEL_22;
            }
          }

          v39 += v40;
          --v38;
        }

        while (v38);
      }

LABEL_3:
      v27 = v58 + 1;
      result = v54;
    }

    while (v58 + 1 != v52);
  }

  v45 = 0;
LABEL_24:

  return v45;
}

void *sub_100058C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a4;
  v50 = a3;
  v57 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v57);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v56 = &v47 - v13;
  v14 = type metadata accessor for TaskHistory.Previous(0);
  v52 = *(v14 - 8);
  v15 = *(v52 + 64);
  __chkstk_darwin(v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  __chkstk_darwin(v21);
  v23 = &v47 - v22;
  __chkstk_darwin(v24);
  v26 = &v47 - v25;
  result = sub_10011210C(a1, a2, a5);
  v53 = result[2];
  if (v53)
  {
    v54 = v11;
    v55 = result;
    v47 = v8;
    v48 = v20;
    v28 = 0;
    v51 = result + 4;
    v49 = v17;
    do
    {
      if (v28 >= result[2])
      {
        __break(1u);
        return result;
      }

      v59 = v28;
      v29 = *(v58 + 16);
      if (!v29)
      {
        goto LABEL_3;
      }

      v60 = *(v51 + v59);
      v30 = v58 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v31 = *(v52 + 72);
      v32 = v30;
      v33 = v29;
      while (1)
      {
        sub_100056ED8(v32, v26, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v26, v23, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v23, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v32 += v31;
        if (!--v33)
        {
          goto LABEL_3;
        }
      }

      v34 = sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0);
      v35 = *&v23[*(v34 + 48)];
      sub_100056F60(v23, type metadata accessor for ClientCommand);
      if (v35 != v60)
      {
        goto LABEL_8;
      }

      v37 = v48;
      v36 = v49;
      while (1)
      {
        sub_100056ED8(v30, v37, type metadata accessor for TaskHistory.Previous);
        sub_10005A5E8(v37, v36, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_100056F60(v36, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v30 += v31;
        if (!--v29)
        {
LABEL_22:
          v46 = 1;
          goto LABEL_24;
        }
      }

      v38 = *(v36 + *(v34 + 48));
      sub_100056F60(v36, type metadata accessor for ClientCommand);
      if (v38 != v60)
      {
        goto LABEL_13;
      }

      v39 = *(v50 + 16);
      if (v39)
      {
        v40 = v50 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
        v41 = *(v47 + 72);
        do
        {
          v42 = v56;
          sub_100056ED8(v40, v56, type metadata accessor for TaskHistory.Running);
          v43 = v54;
          sub_10005A5E8(v42, v54, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100056F60(v43, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v44 = *(v43 + 8);
            v45 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
            sub_100056F60(v43 + *(v45 + 64), type metadata accessor for ClientCommand);
            if (v44 == v60)
            {
              goto LABEL_22;
            }
          }

          v40 += v41;
          --v39;
        }

        while (v39);
      }

LABEL_3:
      v28 = v59 + 1;
      result = v55;
    }

    while (v59 + 1 != v53);
  }

  v46 = 0;
LABEL_24:

  return v46;
}

uint64_t sub_100059168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for UntaggedResponse(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  result = sub_100058788(a2, a3, a4, sub_100111E40);
  if (result)
  {
    sub_100056ED8(a1, v15, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      memcpy(v24, v15, sizeof(v24));
      Messages = type metadata accessor for FetchMessages(0);
      v18 = *(v6 + *(Messages + 28) + 8);
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = *(v18 + 8 * v19 + 24);
      }

      else
      {
        v20 = 1;
      }

      v21 = *(Messages + 36);
      v22 = type metadata accessor for NewServerMessages();
      if (!(*(*(v22 - 8) + 48))(v6 + v21, 1, v22))
      {
        sub_1000FAD60(v24, v20, a6);
      }

      return sub_100025D5C(v24);
    }

    else
    {
      return sub_100056F60(v15, type metadata accessor for UntaggedResponse);
    }
  }

  return result;
}

uint64_t sub_100059328(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  __chkstk_darwin(v20);
  v22 = &v31 - v21;
  if ((a3 & 0x100000000) != 0)
  {
    v28 = HIDWORD(a1) & 1;
    goto LABEL_18;
  }

  if (a3 != -1)
  {
    LODWORD(v33) = a3 + 1;
    LODWORD(v32) = -1;
    v29 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(&v33, &v32, &type metadata for UID, v29, &v34);
    v33 = v34;
    v32 = Range<>.init<A>(_:)(&v33, &type metadata for UID, v29);
    sub_100016D2C();
    sub_1004A7124();
    MessageIdentifierSet.subtracting(_:)(v19, v22);
    sub_100025F40(v19, &unk_1005D91B0, &unk_1004CF400);
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    MessageIdentifierSet.ranges.getter(v9);
    a1 = sub_1000E4C0C();
    LOBYTE(v28) = v30;
    sub_100025F40(v9, &qword_1005CD7A0, &unk_1004CF590);
    sub_100025F40(v22, &unk_1005D91B0, &unk_1004CF400);
    if (v28)
    {
      LODWORD(a1) = 0;
    }

    else
    {
      LODWORD(a1) = HIDWORD(a1);
    }

    goto LABEL_18;
  }

  sub_10000E268(a2, &v31 - v21, &unk_1005D91B0, &unk_1004CF400);
  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (a1 == -1)
  {
    goto LABEL_16;
  }

  v23 = sub_100016948();
  static MessageIdentifierRange.all.getter(&type metadata for UID, v23, &v34);
  v33 = v34;
  v32 = Range<>.init<A>(_:)(&v33, &type metadata for UID, v23);
  sub_100016D2C();
  sub_1004A7124();
  MessageIdentifierSet.subtracting(_:)(v22, v16);
  sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
  LODWORD(v33) = 1;
  LODWORD(v32) = a1;
  static MessageIdentifier.... infix(_:_:)(&v33, &v32, &type metadata for UID, v23, &v34);
  v33 = v34;
  v32 = Range<>.init<A>(_:)(&v33, &type metadata for UID, v23);
  sub_1004A7124();
  MessageIdentifierSet.subtracting(_:)(v13, v19);
  sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
  v24 = sub_1000E5314();
  result = sub_100025F40(v19, &unk_1005D91B0, &unk_1004CF400);
  if ((v24 & 0x100000000) != 0 || a1 >= v24)
  {
    goto LABEL_16;
  }

  if ((v24 & 0xFFFFFFFE) != 0)
  {
    v26 = v24 - 1;
    if (v24 - 1 > a1)
    {
      LODWORD(v33) = a1 + 1;
      LODWORD(v32) = v24 - 1;
      static MessageIdentifier.... infix(_:_:)(&v33, &v32, &type metadata for UID, v23, &v34);
      v33 = v34;
      v32 = Range<>.init<A>(_:)(&v33, &type metadata for UID, v23);
      sub_1004A7124();
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      v27 = sub_1004A70E4();
      sub_100025F40(v19, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v22, &unk_1005D91B0, &unk_1004CF400);
      if (v27)
      {
        LOBYTE(v28) = 0;
        LODWORD(a1) = v26;
LABEL_18:
        LOBYTE(v34) = v28 & 1;
        return a1 | ((v28 & 1) << 32);
      }

LABEL_17:
      LOBYTE(v28) = 0;
      goto LABEL_18;
    }

LABEL_16:
    sub_100025F40(v22, &unk_1005D91B0, &unk_1004CF400);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_100059808(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v26 - v6;
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v26 - v13;
  __chkstk_darwin(v15);
  v17 = v26 - v16;
  if (a1 >= 2)
  {
    v18 = sub_100016948();
    static MessageIdentifierRange.all.getter(&type metadata for UID, v18, &v29);
    v28 = v29;
    v27 = Range<>.init<A>(_:)(&v28, &type metadata for UID, v18);
    v19 = sub_100016D2C();
    sub_1004A7124();
    v26[2] = a2;
    MessageIdentifierSet.subtracting(_:)(a2, v14);
    sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
    LODWORD(v28) = a1;
    LODWORD(v27) = -1;
    static MessageIdentifier.... infix(_:_:)(&v28, &v27, &type metadata for UID, v18, &v29);
    v28 = v29;
    v27 = Range<>.init<A>(_:)(&v28, &type metadata for UID, v18);
    v26[1] = v19;
    sub_1004A7124();
    MessageIdentifierSet.subtracting(_:)(v11, v17);
    sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
    MessageIdentifierSet.ranges.getter(v7);
    v20 = sub_1000E4C0C();
    v22 = v21;
    sub_100025F40(v7, &qword_1005CD7A0, &unk_1004CF590);
    sub_100025F40(v17, &unk_1005D91B0, &unk_1004CF400);
    if (v22)
    {
      v23 = 1;
LABEL_6:
      LODWORD(v28) = v23;
      LODWORD(v27) = a1 - 1;
      static MessageIdentifier.... infix(_:_:)(&v28, &v27, &type metadata for UID, v18, &v29);
      v28 = v29;
      v27 = Range<>.init<A>(_:)(&v28, &type metadata for UID, v18);
      sub_1004A7124();
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      v24 = sub_1004A70E4();
      sub_100025F40(v14, &unk_1005D91B0, &unk_1004CF400);
      if (v24)
      {
        return v23;
      }

      else
      {
        return a1;
      }
    }

    if (HIDWORD(v20) < a1)
    {
      v23 = HIDWORD(v20) + 1;
      if (HIDWORD(v20) + 1 < a1)
      {
        goto LABEL_6;
      }
    }
  }

  return a1;
}

uint64_t sub_100059B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v98 = a5;
  v94 = a2;
  v96 = _s15MissingMessagesOMa(0);
  v8 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v97 = &v87[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = _s15MissingMessagesO10IncompleteVMa(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v95 = &v87[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v99 = &v87[-v14];
  v91 = type metadata accessor for MailboxTaskLogger(0);
  v15 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v92 = &v87[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v93 = &v87[-v18];
  __chkstk_darwin(v19);
  v21 = &v87[-v20];
  __chkstk_darwin(v22);
  v90 = &v87[-v23];
  v24 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v87[-v26];
  v28 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v100 = &v87[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v34 = &v87[-v33];
  sub_10000E268(a3, v27, &qword_1005CD518, &qword_1004CF2F0);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    v35 = &qword_1005CD518;
    v36 = &qword_1004CF2F0;
    v37 = v27;
  }

  else
  {
    sub_100025FDC(v27, v34, &qword_1005CD1D0, &unk_1004CF2C0);
    v38 = a1 + *(type metadata accessor for MailboxSyncState() + 68);
    sub_1000E4D18(v34);
    v37 = v34;
    v35 = &qword_1005CD1D0;
    v36 = &unk_1004CF2C0;
  }

  sub_100025F40(v37, v35, v36);
  v39 = *(type metadata accessor for MailboxSyncState() + 68);
  v40 = *a4;
  v41 = sub_1000D8054();
  v42 = sub_1000E5918(v40, v41 | ((HIDWORD(v41) & 1) << 32));
  v43 = v100;
  if ((v42 & 1) != 0 && (v94 & 0xFF00) == 0)
  {
    v44 = sub_1000E5108();
    v46 = v45;
    v47 = v98;
    v48 = v90;
    sub_100056ED8(v98, v90, type metadata accessor for MailboxTaskLogger);
    sub_100056ED8(v47, v21, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v49 = sub_1004A4A54();
    v50 = sub_1004A6034();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v103[0] = v94;
      *v51 = 68159491;
      v89 = v44;
      *(v51 + 4) = 2;
      *(v51 + 8) = 256;
      v52 = v91;
      v53 = v48;
      v54 = &v21[*(v91 + 20)];
      *(v51 + 10) = *v54;
      *(v51 + 11) = 2082;
      v55 = *(v52 + 20);
      v88 = v46;
      v56 = v53 + v55;
      *(v51 + 13) = sub_10015BA6C(*(v53 + v55 + 8), *(v53 + v55 + 16), v103);
      *(v51 + 21) = 1040;
      *(v51 + 23) = 2;
      *(v51 + 27) = 512;
      v57 = *(v54 + 12);
      sub_100056F60(v21, type metadata accessor for MailboxTaskLogger);
      *(v51 + 29) = v57;
      *(v51 + 31) = 2160;
      *(v51 + 33) = 0x786F626C69616DLL;
      *(v51 + 41) = 2085;
      v58 = *(v56 + 32);
      v59 = *(v56 + 40);

      sub_100056F60(v53, type metadata accessor for MailboxTaskLogger);
      v101 = v58;
      v102 = v59;
      v60 = sub_1004A5824();
      v62 = sub_10015BA6C(v60, v61, v103);

      *(v51 + 43) = v62;
      *(v51 + 51) = 2048;
      v63 = v89;
      if (v88)
      {
        v63 = 0;
      }

      *(v51 + 53) = v63;
      _os_log_impl(&_mh_execute_header, v49, v50, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] %ld remaining known-to-be-missing. Requesting FindMissingMessages to re-run.", v51, 0x3Du);
      swift_arrayDestroy();
      v43 = v100;
    }

    else
    {
      sub_100056F60(v21, type metadata accessor for MailboxTaskLogger);

      sub_100056F60(v48, type metadata accessor for MailboxTaskLogger);
    }

    sub_10013FC9C(0xCu);
    sub_100088568(&v101, 12);
  }

  v64 = v97;
  sub_100056ED8(a1 + v39, v97, _s15MissingMessagesOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v66 = v99;
    sub_10005A5E8(v64, v99, _s15MissingMessagesO10IncompleteVMa);
    v67 = v98;
    v68 = v93;
    sub_100056ED8(v98, v93, type metadata accessor for MailboxTaskLogger);
    v69 = v92;
    sub_100056ED8(v67, v92, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v70 = v95;
    sub_100056ED8(v66, v95, _s15MissingMessagesO10IncompleteVMa);
    v71 = sub_1004A4A54();
    v72 = sub_1004A6034();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v103[0] = v100;
      *v73 = 68159491;
      *(v73 + 4) = 2;
      *(v73 + 8) = 256;
      v74 = v91;
      v75 = &v69[*(v91 + 20)];
      *(v73 + 10) = *v75;
      *(v73 + 11) = 2082;
      v76 = v68;
      v77 = &v68[*(v74 + 20)];
      *(v73 + 13) = sub_10015BA6C(*(v77 + 1), *(v77 + 2), v103);
      *(v73 + 21) = 1040;
      *(v73 + 23) = 2;
      *(v73 + 27) = 512;
      LOWORD(v75) = *(v75 + 12);
      sub_100056F60(v69, type metadata accessor for MailboxTaskLogger);
      *(v73 + 29) = v75;
      *(v73 + 31) = 2160;
      *(v73 + 33) = 0x786F626C69616DLL;
      *(v73 + 41) = 2085;
      v78 = *(v77 + 4);
      LODWORD(v77) = *(v77 + 10);

      sub_100056F60(v76, type metadata accessor for MailboxTaskLogger);
      v101 = v78;
      v102 = v77;
      v79 = sub_1004A5824();
      v81 = sub_10015BA6C(v79, v80, v103);

      *(v73 + 43) = v81;
      *(v73 + 51) = 2048;
      v82 = v95;
      sub_10000E268(v95, v43, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v83 = MessageIdentifierSet.count.getter();
      sub_100025F40(v43, &unk_1005D91B0, &unk_1004CF400);
      sub_100056F60(v82, _s15MissingMessagesO10IncompleteVMa);
      *(v73 + 53) = v83;
      _os_log_impl(&_mh_execute_header, v71, v72, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Missing: %ld.", v73, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100056F60(v70, _s15MissingMessagesO10IncompleteVMa);
      sub_100056F60(v69, type metadata accessor for MailboxTaskLogger);

      sub_100056F60(v68, type metadata accessor for MailboxTaskLogger);
    }

    v84 = v99;
    sub_10000E268(v99, v43, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v85 = MessageIdentifierSet.count.getter();
    sub_100025F40(v43, &unk_1005D91B0, &unk_1004CF400);
    v86 = &v84[*(_s15MissingMessagesO8ProgressVMa(0) + 20)];
    MessageIdentifierSet.count.getter();
    sub_100056F60(v84, _s15MissingMessagesO10IncompleteVMa);
    return v85;
  }

  else
  {
    sub_100056F60(v64, _s15MissingMessagesOMa);
    return 0;
  }
}