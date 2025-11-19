uint64_t sub_100001DD8()
{
  v0 = sub_100021870();
  sub_100006DC8(v0, qword_100045AF0);
  sub_1000036D4(v0, qword_100045AF0);
  return sub_100021860();
}

uint64_t sub_100001E54()
{
  result = sub_1000217E0();
  static AlchemistWrapper.canUseAlchemistService = result & 1;
  return result;
}

char *AlchemistWrapper.canUseAlchemistService.unsafeMutableAddressor()
{
  if (qword_100045AE8 != -1)
  {
    sub_1000073C4();
    swift_once();
  }

  return &static AlchemistWrapper.canUseAlchemistService;
}

uint64_t static AlchemistWrapper.canUseAlchemistService.getter()
{
  if (qword_100045AE8 != -1)
  {
    sub_1000073C4();
    swift_once();
  }

  return static AlchemistWrapper.canUseAlchemistService;
}

void static AlchemistWrapper.generateAlchemistResult(sourceURL:outputURL:outputColorSpace:)(void *a1, __CVBuffer *a2, Class a3)
{
  v209 = a2;
  v215 = a1;
  v5 = sub_100021780();
  v6 = sub_100007380(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v6);
  v12 = (&v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v213 = &v191 - v13;
  v14 = sub_100003638(&qword_100044560, &qword_100029090);
  v15 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14 - 8);
  sub_1000074C0(&v191 - v16);
  v208 = sub_100021800();
  v17 = sub_100007380(v208);
  v207 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_100007568();
  sub_1000074C0(v21);
  v212 = sub_1000217A0();
  v22 = sub_100007380(v212);
  v211 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  sub_100007568();
  sub_1000074C0(v26);
  v27 = sub_100021840();
  v28 = sub_100007380(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v28);
  __chkstk_darwin(v33);
  v37 = (&v191 - v36);
  if (qword_100045AE8 != -1)
  {
    v201 = v34;
    sub_1000073C4();
    v202 = (&v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v190 = v189;
    swift_once();
    v35 = v190;
    v12 = v202;
    v34 = v201;
  }

  if (static AlchemistWrapper.canUseAlchemistService != 1)
  {
    v52 = sub_100003680();
    sub_1000074F0(&type metadata for AlchemistWrapper.Error, v52);
    *v53 = 0;
    *(v53 + 8) = 0;
    *(v53 + 16) = 2;
    swift_willThrow();
    return;
  }

  v202 = v12;
  v200 = v35;
  v38 = v3;
  v201 = v34;
  v203 = v8;
  v204 = v5;
  sub_100021830();
  sub_100021750(&v222);
  v40 = v39;
  v41 = CGImageSourceCreateWithURL(v39, 0);

  if (!v41)
  {
    sub_1000073D8();
    sub_100021A00(29);

    sub_10000741C();
    sub_1000074D0(v54);
    v223._countAndFlagsBits = sub_100021770();
    sub_100021930(v223);

    v224._countAndFlagsBits = 46;
    v224._object = 0xE100000000000000;
    sub_100021930(v224);
    v55 = sub_100007530();
    v56 = sub_1000074F0(&type metadata for AlchemistWrapper.Error, v55);
    sub_100007450(v56, v57);
LABEL_55:
    (*(v30 + 8))(v37, v27);
    return;
  }

  CGImageSourceGetPrimaryImageIndex(v41);
  v42 = sub_1000074A4();
  Count = CGImageSourceGetCount(v42);
  v205 = v41;
  if (v40 < Count)
  {
    sub_100007488();
    sub_100003638(&qword_100044658, &qword_100029240);
    inited = swift_initStackObject();
    v45 = inited;
    v195 = xmmword_100029010;
    *(inited + 16) = xmmword_100029010;
    v41 = kCIImageApplyOrientationProperty;
    *(inited + 32) = kCIImageApplyOrientationProperty;
    *(inited + 40) = 1;
    type metadata accessor for CIImageOption(0);
    sub_100007368();
    sub_100006924(v46, v47);
    v48 = kCIImageApplyOrientationProperty;
    sub_100007508();
    v49 = sub_1000218A0();
    v30 = sub_1000045F8(v49);

    objc_allocWithZone(CIImage);
    v50 = sub_100004C00(kCIImageApplyOrientationProperty, v40, v30);
    if (a3)
    {
      v37 = a3;
      v51 = v3;
    }

    else
    {
      v61 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
      if (!v61)
      {
        v138 = sub_100003680();
        v139 = sub_1000074F0(&type metadata for AlchemistWrapper.Error, v138);
        sub_1000073F0(xmmword_100029040, v139, v140);

        v27 = v196;
        sub_10000747C();
        v37 = Height;
        if (v139)
        {
          goto LABEL_29;
        }

        goto LABEL_31;
      }

      v51 = v3;
      v37 = v61;
      a3 = 0;
    }

    v62 = a3;
    v41 = v50;
    [(CGImageSource *)v41 extent];
    if (v63 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v63 < 9.22337204e18)
    {
      if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v64 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v64 > -9.22337204e18)
        {
          v197 = v10;
          v193 = v37;
          v194 = v41;
          if (v64 < 9.22337204e18)
          {
            v65 = v63;
            v66 = v64;
            sub_100003638(&qword_100044680, &qword_100029258);
            v67 = swift_initStackObject();
            *(v67 + 16) = v195;
            v68 = IOSurfacePropertyKeyName;
            *(v67 + 32) = IOSurfacePropertyKeyName;
            *&v217 = 0;
            *(&v217 + 1) = 0xE000000000000000;
            v69 = v68;
            sub_100021A00(18);

            *&v217 = 0x6F69737365534F41;
            *(&v217 + 1) = 0xEA00000000005F6ELL;
            pixelBufferOut = v65;
            v225._countAndFlagsBits = sub_100021A50();
            sub_100021930(v225);

            v226._countAndFlagsBits = 95;
            v226._object = 0xE100000000000000;
            sub_100021930(v226);
            pixelBufferOut = v66;
            v227._countAndFlagsBits = sub_100021A50();
            sub_100021930(v227);

            v228._countAndFlagsBits = 95;
            v228._object = 0xE100000000000000;
            sub_100021930(v228);
            LODWORD(pixelBufferOut) = 1111970369;
            v229._countAndFlagsBits = sub_100021A50();
            sub_100021930(v229);

            v70 = *(&v217 + 1);
            *(v67 + 40) = v217;
            *(v67 + 48) = v70;
            type metadata accessor for IOSurfacePropertyKey(0);
            sub_100007350();
            sub_100006924(v71, v72);
            sub_1000218A0();
            isa = sub_100021880().super.isa;

            sub_100003638(&qword_100044690, &qword_100029260);
            v74 = swift_initStackObject();
            *(v74 + 16) = xmmword_100029020;
            v75 = kCVPixelBufferIOSurfacePurgeableKey;
            *(v74 + 32) = kCVPixelBufferIOSurfacePurgeableKey;
            *(v74 + 40) = 1;
            v76 = kCVPixelBufferIOSurfacePropertiesKey;
            *(v74 + 64) = &type metadata for Bool;
            *(v74 + 72) = v76;
            type metadata accessor for CFDictionary(0);
            *(v74 + 104) = v77;
            *(v74 + 80) = isa;
            type metadata accessor for CFString(0);
            v30 = v78;
            sub_1000073AC();
            sub_100006924(v79, v80);
            v81 = v75;
            v82 = v76;
            v192 = isa;
            v41 = &type metadata for Any;
            sub_1000218A0();
            a3 = sub_100021880().super.isa;

            pixelBufferOut = 0;
            v83 = CVPixelBufferCreate(0, v65, v66, 0x42475241u, a3, &pixelBufferOut);
            v38 = pixelBufferOut;
            if (!v83)
            {
              sub_10000747C();
              v37 = Height;
              sub_100007508();
              v10 = v197;
              if (!v38)
              {
LABEL_77:
                __break(1u);
                return;
              }

              v89 = v38;
              goto LABEL_27;
            }

            v45 = v83;
            v30 = v198;
            v37 = Height;
            v41 = v205;
            v10 = v197;
            if (qword_100045AE0 == -1)
            {
LABEL_22:
              v84 = sub_100021870();
              sub_1000036D4(v84, qword_100045AF0);
              v85 = sub_100021850();
              v86 = sub_1000219C0();
              if (os_log_type_enabled(v85, v86))
              {
                v37 = swift_slowAlloc();
                *v37 = 67109120;
                *(v37 + 1) = v45;
                _os_log_impl(&_mh_execute_header, v85, v86, "CVPixelBufferCreate failed with error code: %d", v37, 8u);
                sub_1000074E0();
                sub_100007410();
              }

              v87 = sub_100003680();
              v51 = sub_1000074F0(&type metadata for AlchemistWrapper.Error, v87);
              sub_1000073F0(xmmword_100029030, v51, v88);
LABEL_27:

              v27 = v196;
              if (v51)
              {
                v90 = v194;

                v91 = v193;
                goto LABEL_29;
              }

              sub_100003638(&qword_100044668, &qword_100029248);
              v92 = swift_initStackObject();
              *(v92 + 16) = v195;
              v93 = v193;
              *(v92 + 32) = kCIContextOutputColorSpace;
              *(v92 + 40) = v93;
              type metadata accessor for CIContextOption(0);
              type metadata accessor for CGColorSpace(0);
              v30 = v94;
              sub_100007320();
              sub_100006924(v95, v96);
              v97 = kCIContextOutputColorSpace;
              sub_100007508();
              v98 = v93;
              sub_10000747C();
              v99 = sub_1000218A0();
              v37 = sub_10000488C(v99);

              v100 = objc_allocWithZone(CIContext);
              v101 = sub_1000074E0();
              v102 = sub_100004CDC(v101);
              CVBufferSetAttachment(v38, kCVImageBufferCGColorSpaceKey, v98, kCVAttachmentMode_ShouldPropagate);
              v103 = v194;
              [v102 render:v194 toCVPixelBuffer:v38];

              v27 = v196;
              goto LABEL_31;
            }

LABEL_73:
            sub_10000730C();
            swift_once();
            goto LABEL_22;
          }

LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    __break(1u);
    goto LABEL_70;
  }

  v58 = sub_100003680();
  v59 = sub_1000074F0(&type metadata for AlchemistWrapper.Error, v58);
  sub_1000073F0(xmmword_100029000, v59, v60);
  if (v59)
  {
LABEL_29:
    (*(v30 + 8))(v37, v27);

    return;
  }

LABEL_31:
  v197 = v10;
  Width = CVPixelBufferGetWidth(v38);
  Height = CVPixelBufferGetHeight(v38);
  v105 = v215;
  sub_100021750(&v222);
  v107 = v106;
  v108 = CGImageSourceCreateWithURL(v106, 0);

  if (!v108)
  {
    v214 = v38;
    if (qword_100045AE0 != -1)
    {
      sub_10000730C();
      swift_once();
    }

    v126 = sub_100021870();
    sub_1000036D4(v126, qword_100045AF0);
    v127 = v203;
    v128 = v202;
    v129 = v204;
    (*(v203 + 16))(v202, v105, v204);
    v130 = sub_100021850();
    v131 = sub_1000219C0();
    if (os_log_type_enabled(v130, v131))
    {
      sub_100007588();
      v132 = swift_slowAlloc();
      v213 = v132;
      v133 = swift_slowAlloc();
      Height = v37;
      v37 = v133;
      *&v217 = v133;
      *v132 = 136315138;
      v134 = sub_100021770();
      v198 = v30;
      v30 = v135;
      (*(v127 + 8))(v128, v129);
      v136 = sub_100005874(v134, v30, &v217);
      sub_10000747C();

      v137 = v213;
      *(v213 + 4) = v136;
      _os_log_impl(&_mh_execute_header, v130, v131, "Failed to create image source image from %s.", v137, 0xCu);
      sub_100005938(v37);
      sub_1000074E0();
      sub_100007410();

      sub_100007410();
    }

    else
    {

      (*(v127 + 8))(v128, v129);
    }

    sub_1000073D8();
    sub_100021A00(44);

    sub_10000741C();
    sub_1000074D0(v141);
    v230._countAndFlagsBits = sub_100021770();
    sub_100021930(v230);

    v231._countAndFlagsBits = 46;
    v231._object = 0xE100000000000000;
    sub_100021930(v231);
    v142 = sub_100007530();
    v143 = sub_1000074F0(&type metadata for AlchemistWrapper.Error, v142);
    sub_100007450(v143, v144);

    v145 = &v221;
    goto LABEL_54;
  }

  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v108);
  v202 = v108;
  v110 = CGImageSourceCopyPropertiesAtIndex(v108, PrimaryImageIndex, 0);
  if (!v110)
  {
    goto LABEL_52;
  }

  v111 = v110;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_52;
  }

  *&v217 = 0;
  sub_100021890();

  v112 = v217;
  if (!v217)
  {
LABEL_52:
    sub_1000073D8();
    sub_100021A00(33);

    sub_10000741C();
    sub_1000074D0(v146);
    v232._countAndFlagsBits = sub_100021770();
    sub_100021930(v232);

    v233._countAndFlagsBits = 46;
    v233._object = 0xE100000000000000;
    sub_100021930(v233);
    v147 = sub_100007530();
    v148 = sub_1000074F0(&type metadata for AlchemistWrapper.Error, v147);
    sub_100007450(v148, v149);

LABEL_53:
    v145 = &v219;
LABEL_54:

    goto LABEL_55;
  }

  v113 = sub_100021900();
  sub_10000370C(v113, v114, v112, &v217);

  if (!v218)
  {
    goto LABEL_56;
  }

  sub_100003638(&qword_1000445F0, &qword_1000290C8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_57;
  }

  v115 = v221;
  v116 = sub_100021900();
  sub_10000370C(v116, v117, v115, &v217);

  if (!v218)
  {
LABEL_56:
    sub_10000689C(&v217, &qword_100044570, &qword_100029098);
    goto LABEL_57;
  }

  swift_dynamicCast();
  sub_100007508();
  if (v118)
  {
    v119 = Width * Width;
    if ((Width * Width) >> 64 == (Width * Width) >> 63)
    {
      v120 = Height;
      v121 = v120 * v120;
      if ((v120 * v120) >> 64 == (v120 * v120) >> 63)
      {
        v122 = __OFADD__(v119, v121);
        v123 = v119 + v121;
        if (!v122)
        {
          v124 = 0;
          v125 = (sqrtf(v123) / 43.27) * *&v221;
          goto LABEL_62;
        }

        goto LABEL_76;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_57:
  if (qword_100045AE0 != -1)
  {
    sub_10000730C();
    swift_once();
  }

  v150 = sub_100021870();
  sub_1000036D4(v150, qword_100045AF0);
  v115 = sub_100021850();
  v151 = sub_1000219B0();
  if (os_log_type_enabled(v115, v151))
  {
    v152 = swift_slowAlloc();
    *v152 = 0;
    _os_log_impl(&_mh_execute_header, v115, v151, "Couldn't extract focal length from image, using nil.", v152, 2u);
    sub_100007410();
  }

  v124 = 1;
  v125 = 0.0;
  sub_100007508();
LABEL_62:
  v153 = MTLCreateSystemDefaultDevice();
  if (!v153)
  {
    v171 = sub_100003680();
    v172 = sub_1000074F0(&type metadata for AlchemistWrapper.Error, v171);
    sub_1000073F0(xmmword_100029050, v172, v173);

    goto LABEL_53;
  }

  v215 = v153;
  sub_100007488();
  sub_100021790();
  sub_100003638(&qword_100044578, &qword_1000290A0);
  LODWORD(v195) = v124;
  v154 = (sub_100003638(&qword_100044580, &qword_1000290A8) - 8);
  v155 = *(*v154 + 72);
  v156 = (*(*v154 + 80) + 32) & ~*(*v154 + 80);
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_100029010;
  v158 = (v157 + v156 + v154[14]);
  v159 = v207;
  v160 = *(v207 + 104);
  v161 = v208;
  v160();
  v162 = v212;
  v158[3] = v212;
  v163 = sub_100005984(v158);
  (*(v211 + 16))(v163, v214, v162);
  sub_100006924(&qword_100044588, &type metadata accessor for ALCService.GenerationOption);
  v164 = sub_1000218A0();
  v165 = v206;
  v194 = v160;
  (v160)(v206, enum case for ALCService.GenerationOption.clientName(_:), v161);
  v166 = sub_1000217F0();
  v218 = v166;
  v167 = sub_100005984(&v217);
  (*(*(v166 - 8) + 104))(v167, enum case for ALCService.ClientName.photosApp(_:), v166);
  sub_1000059E4(&v217, &v221);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v216 = v164;
  sub_100005FB0(&v221, v165, isUniquelyReferenced_nonNull_native);
  v169 = v216;
  v170 = *(v159 + 8);
  v170(v165, v161);
  if (v195)
  {
    sub_10000747C();
    v207 = v169;
  }

  else
  {
    (v194)(v165, enum case for ALCService.GenerationOption.focalLengthPx(_:), v161);
    v218 = &type metadata for Float;
    *&v217 = v125;
    sub_1000059E4(&v217, &v221);
    v174 = swift_isUniquelyReferenced_nonNull_native();
    v216 = v169;
    sub_100005FB0(&v221, v165, v174);
    v207 = v216;
    v170(v165, v161);
    sub_10000747C();
  }

  v175 = dispatch_semaphore_create(0);
  v176 = sub_1000219A0();
  sub_10000617C(v210, 1, 1, v176);
  (*(v165 + 16))(v201, Height, v196);
  v177 = v203;
  (*(v203 + 16))(v213, v209, v204);
  sub_100021980();
  v208 = v175;
  swift_unknownObjectRetain();
  v209 = v38;
  v178 = sub_100021970();
  v179 = (*(v165 + 80) + 48) & ~*(v165 + 80);
  v180 = (v200 + v179 + 7) & 0xFFFFFFFFFFFFFFF8;
  v181 = (v180 + 15) & 0xFFFFFFFFFFFFFFF8;
  v182 = (*(v177 + 80) + v181 + 8) & ~*(v177 + 80);
  v183 = swift_allocObject();
  *(v183 + 2) = v178;
  *(v183 + 3) = &protocol witness table for MainActor;
  v184 = v208;
  v185 = v215;
  *(v183 + 4) = v208;
  *(v183 + 5) = v185;
  v186 = &v183[v179];
  v187 = v196;
  (*(v165 + 32))(v186, v201, v196);
  v188 = v209;
  *&v183[v180] = v209;
  *&v183[v181] = v207;
  (*(v177 + 32))(&v183[v182], v213, v204);
  sub_10000417C(0, 0, v210, &unk_1000290C0, v183);

  sub_1000219D0();

  swift_unknownObjectRelease();
  (*(v211 + 8))(v214, v212);
  (*(v198 + 8))(Height, v187);
}

uint64_t sub_100003638(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003680()
{
  result = qword_100044568;
  if (!qword_100044568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044568);
  }

  return result;
}

uint64_t sub_1000036D4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

double sub_10000370C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100005F38(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_100006D68(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_100003770()
{
  sub_10000757C();
  v0[16] = v1;
  v0[17] = v13;
  v0[14] = v2;
  v0[15] = v3;
  v0[12] = v4;
  v0[13] = v5;
  v6 = sub_100021840();
  v0[18] = v6;
  v7 = *(v6 - 8);
  v0[19] = v7;
  v8 = *(v7 + 64) + 15;
  v0[20] = swift_task_alloc();
  sub_100021980();
  v0[21] = sub_100021970();
  sub_1000074A4();
  v9 = sub_100021960();
  v0[22] = v9;
  v0[23] = v10;

  return (_swift_task_switch)(sub_1000038A0, v9, v10);
}

uint64_t sub_1000038A0()
{
  v1 = v0[13];
  (*(v0[19] + 16))(v0[20], v0[14], v0[18]);
  v2 = sub_100021820();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v0[24] = sub_100021810();
  v5 = v0[16];
  v6 = *(&async function pointer to dispatch thunk of ALCService.generate(_:with:) + 1);
  v7 = async function pointer to dispatch thunk of ALCService.generate(_:with:);
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_100003B64;
  v9 = v0[15];

  return ((&async function pointer to dispatch thunk of ALCService.generate(_:with:) + v7))(v9, v5);
}

uint64_t sub_100003B64()
{
  sub_10000757C();
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 200);
  v5 = *v1;
  *(v3 + 208) = v6;
  *(v3 + 216) = v0;

  v7 = *(v2 + 184);
  v8 = *(v2 + 176);
  if (v0)
  {
    v9 = sub_100003FB8;
  }

  else
  {
    v9 = sub_100003CD0;
  }

  return (_swift_task_switch)(v9, v8, v7);
}

uint64_t sub_100003CD0()
{
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[17];

  sub_100021750(v4);
  v6 = v5;
  sub_100003638(&qword_100044630, &qword_100029228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100029010;
  v8 = MXISerializeOptionCompressionAlgorithm;
  *(inited + 32) = MXISerializeOptionCompressionAlgorithm;
  v9 = MXISerializeCompressionAlgorithmZlib;
  type metadata accessor for MXISerializeCompressionAlgorithm(0);
  *(inited + 64) = v10;
  *(inited + 40) = v9;
  type metadata accessor for MXISerializeOption(0);
  sub_100007338();
  sub_100006924(v11, v12);
  v13 = v8;
  v14 = v9;
  v15 = sub_1000218A0();
  v0[11] = 0;
  v16 = sub_100006C9C(v6, v15, (v0 + 11), v1);

  v17 = v0[11];
  v18 = v0[26];
  v19 = v0[24];
  if (v16)
  {
    v20 = v17;
  }

  else
  {
    v21 = v17;
    sub_100021740();

    swift_willThrow();

    if (qword_100045AE0 != -1)
    {
      sub_10000730C();
      swift_once();
    }

    v22 = sub_100021870();
    sub_1000036D4(v22, qword_100045AF0);
    sub_1000074A4();
    swift_errorRetain();
    v23 = sub_100021850();
    v24 = sub_1000219C0();

    if (os_log_type_enabled(v23, v24))
    {
      sub_100007588();
      swift_slowAlloc();
      v25 = sub_100007514();
      *v16 = 138412290;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v26;
      *v25 = v26;
      sub_10000754C(&_mh_execute_header, v27, v24, "Failed to generate alchemist result: %@");
      sub_10000689C(v25, &qword_100044628, &qword_100029220);
      sub_100007410();

      sub_100007410();
    }

    else
    {
    }
  }

  v28 = v0[20];
  v29 = v0[12];
  sub_1000219E0();

  sub_100007470();

  return v30();
}

uint64_t sub_100003FB8()
{
  v2 = v0[24];
  v3 = v0[21];

  v4 = v0[27];
  if (qword_100045AE0 != -1)
  {
    sub_10000730C();
    swift_once();
  }

  v5 = sub_100021870();
  sub_1000036D4(v5, qword_100045AF0);
  sub_1000074A4();
  swift_errorRetain();
  v6 = sub_100021850();
  v7 = sub_1000219C0();

  if (os_log_type_enabled(v6, v7))
  {
    sub_100007588();
    swift_slowAlloc();
    v8 = sub_100007514();
    *v1 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v8 = v9;
    sub_10000754C(&_mh_execute_header, v10, v7, "Failed to generate alchemist result: %@");
    sub_10000689C(v8, &qword_100044628, &qword_100029220);
    sub_100007410();

    sub_100007410();
  }

  else
  {
  }

  v11 = v0[20];
  v12 = v0[12];
  sub_1000219E0();

  sub_100007470();

  return v13();
}

uint64_t sub_10000417C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100003638(&qword_100044560, &qword_100029090) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v25 - v10;
  sub_100006694(a3, v25 - v10);
  v12 = sub_1000219A0();
  v13 = sub_100006704(v11, 1, v12);

  if (v13 == 1)
  {
    sub_10000689C(v11, &qword_100044560, &qword_100029090);
  }

  else
  {
    sub_100021990();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100021960();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100021910() + 32;
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

      sub_10000689C(a3, &qword_100044560, &qword_100029090);

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

  sub_10000689C(a3, &qword_100044560, &qword_100029090);
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

uint64_t sub_1000045F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003638(&qword_1000446A0, &qword_100029268);
    v1 = sub_100021A30();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = (v1 + 8);

  v8 = 0;
  if (!v4)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v4)) | (v8 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    v25 = *(*(a1 + 56) + v10);
    v12 = v11;
    swift_dynamicCast();
    sub_1000059E4((v26 + 8), v24);
    sub_1000059E4(v24, v26);
    v13 = v1[5];
    sub_100021900();
    sub_100021AC0();
    sub_100021920();
    v14 = sub_100021AD0();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v6[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v6[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v6[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *&v6[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v18) = v12;
    result = sub_1000059E4(v26, (v1[7] + 32 * v18));
    ++v1[2];
  }

  while (v4);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10000488C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003638(&qword_100044678, &qword_100029250);
    v1 = sub_100021A30();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = (v1 + 8);

  v8 = 0;
  if (!v4)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v27 = *(*(a1 + 56) + v10);
    v12 = v27;
    type metadata accessor for CGColorSpace(0);
    v13 = v11;
    v14 = v12;
    swift_dynamicCast();
    sub_1000059E4((v28 + 8), v26);
    sub_1000059E4(v26, v28);
    v15 = v1[5];
    sub_100021900();
    sub_100021AC0();
    sub_100021920();
    v16 = sub_100021AD0();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v6[8 * (v18 >> 6)]) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *&v6[8 * v19];
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*&v6[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *&v6[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v20) = v13;
    result = sub_1000059E4(v28, (v1[7] + 32 * v20));
    ++v1[2];
  }

  while (v4);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id AlchemistWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AlchemistWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlchemistWrapper();
  return objc_msgSendSuper2(&v2, "init");
}

id AlchemistWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlchemistWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100004C00(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    type metadata accessor for CIImageOption(0);
    sub_100006924(&qword_100044660, type metadata accessor for CIImageOption);
    v7.super.isa = sub_100021880().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [v4 initWithCGImageSource:a1 index:a2 options:v7.super.isa];

  return v8;
}

id sub_100004CDC(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for CIContextOption(0);
    sub_100006924(&qword_100044670, type metadata accessor for CIContextOption);
    v2.super.isa = sub_100021880().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [v1 initWithOptions:v2.super.isa];

  return v3;
}

uint64_t sub_100004DBC(uint64_t a1, id *a2)
{
  result = sub_1000218E0();
  *a2 = 0;
  return result;
}

uint64_t sub_100004E50(uint64_t a1, id *a2)
{
  v3 = sub_1000218F0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100004ED0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000072A8();
  *a1 = result;
  return result;
}

uint64_t sub_100004F14()
{
  sub_100021900();
  sub_100021950();
  sub_1000074A4();

  return v0;
}

uint64_t sub_100004F64()
{
  sub_100021900();
  sub_100021920();
}

Swift::Int sub_100004FD4()
{
  sub_100021900();
  sub_100021AC0();
  sub_100021920();
  v0 = sub_100021AD0();

  return v0;
}

uint64_t sub_100005048()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1000217D0();
}

uint64_t sub_100005094()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1000217C0();
}

Swift::Int sub_1000050EC()
{
  sub_100021AC0();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1000217C0();
  return sub_100021AD0();
}

uint64_t sub_100005154(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_100005178() & 1;
}

uint64_t sub_100005178()
{
  v0 = sub_100021900();
  v2 = v1;
  if (v0 == sub_100021900() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_100021A60();
  }

  return v5 & 1;
}

uint64_t sub_1000051FC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t sub_10000526C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005298(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10000529C(uint64_t a1)
{
  v2 = sub_100006924(&qword_100044638, type metadata accessor for MXISerializeOption);
  v3 = sub_100006924(&unk_100044790, type metadata accessor for MXISerializeOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100005358(uint64_t a1)
{
  v2 = sub_100006924(&qword_100044780, type metadata accessor for MXISerializeCompressionAlgorithm);
  v3 = sub_100006924(&qword_100044788, type metadata accessor for MXISerializeCompressionAlgorithm);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100005414(uint64_t a1)
{
  v2 = sub_100006924(&qword_100044688, type metadata accessor for IOSurfacePropertyKey);
  v3 = sub_100006924(&qword_100044768, type metadata accessor for IOSurfacePropertyKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000054D0(uint64_t a1)
{
  v2 = sub_100006924(&qword_100044660, type metadata accessor for CIImageOption);
  v3 = sub_100006924(&qword_100044778, type metadata accessor for CIImageOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000558C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1000218D0();

  *a2 = v5;
  return result;
}

uint64_t sub_1000055D4(uint64_t a1)
{
  v2 = sub_100006924(&qword_100044670, type metadata accessor for CIContextOption);
  v3 = sub_100006924(&qword_100044770, type metadata accessor for CIContextOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100005690(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005788;

  return v7(a1);
}

uint64_t sub_100005788()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1000074B0();
  *v3 = v2;

  sub_100007470();

  return v4();
}

uint64_t sub_100005874(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000059F4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100006D68(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100005938(v11);
  return v7;
}

uint64_t sub_100005938(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *sub_100005984(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_OWORD *sub_1000059E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000059F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100005AF4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_100021A10();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100005AF4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005B40(a1, a2);
  sub_100005C58(&off_10003D088);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100005B40(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_100021940())
  {
    result = sub_100005D3C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1000219F0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_100021A10();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100005C58(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_100005DAC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100005D3C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100003638(&qword_100044650, &qword_100029238);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100005DAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003638(&qword_100044650, &qword_100029238);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_100005EA0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_100021800();
  sub_100006924(&qword_100044588, &type metadata accessor for ALCService.GenerationOption);
  v5 = sub_1000218B0();

  return sub_100006A2C(a1, v5);
}

unint64_t sub_100005F38(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100021AC0();
  sub_100021920();
  v6 = sub_100021AD0();

  return sub_100006BE8(a1, a2, v6);
}

_OWORD *sub_100005FB0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_100021800();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v14 = sub_100005EA0(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v14;
  v20 = v15;
  sub_100003638(&qword_100044640, &qword_100029230);
  if (!sub_100021A20(a3 & 1, v18))
  {
    goto LABEL_5;
  }

  v21 = *v4;
  v22 = sub_100005EA0(a2);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_11:
    result = sub_100021A70();
    __break(1u);
    return result;
  }

  v19 = v22;
LABEL_5:
  v24 = *v4;
  if (v20)
  {
    v25 = (v24[7] + 32 * v19);
    sub_100005938(v25);

    return sub_1000059E4(a1, v25);
  }

  else
  {
    (*(v9 + 16))(v12, a2, v8);
    return sub_10000696C(v19, v12, a1, v24);
  }
}

uint64_t sub_1000061A4()
{
  v1 = sub_100021840();
  sub_100007380(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = sub_100021780();
  sub_100007380(v9);
  v11 = v10;
  v13 = v12;
  v14 = *(v11 + 80);
  v15 = (v8 + v14 + 8) & ~v14;
  v21 = *(v13 + 64);
  v16 = v4 | v14;
  v17 = *(v0 + 16);
  swift_unknownObjectRelease();

  v18 = *(v0 + 40);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  v19 = *(v0 + v8);

  (*(v11 + 8))(v0 + v15, v9);

  return _swift_deallocObject(v0, v15 + v21, v16 | 7);
}

uint64_t sub_100006320()
{
  v2 = *(sub_100021840() - 8);
  v3 = (*(v2 + 64) + ((*(v2 + 80) + 48) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(*(sub_100021780() - 8) + 80);
  v6 = *(v0 + v3);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + v4);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100006494;

  return sub_100003770();
}

uint64_t sub_100006494()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1000074B0();
  *v3 = v2;

  sub_100007470();

  return v4();
}

uint64_t sub_1000065B4(uint64_t a1)
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

__n128 sub_1000065D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000065E4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_100006624(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10000666C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100006694(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003638(&qword_100044560, &qword_100029090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000672C()
{
  sub_10000757C();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_100007430(v4);

  return v6(v5);
}

uint64_t sub_1000067C8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006800()
{
  sub_10000757C();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_100007430(v4);

  return v6(v5);
}

uint64_t sub_10000689C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003638(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006924(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_10000696C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_100021800();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1000059E4(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_100006A2C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_100021800();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_100006924(&qword_100044648, &type metadata accessor for ALCService.GenerationOption);
    v10 = sub_1000218C0();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100006BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_100021A60() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

id sub_100006C9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for MXISerializeOption(0);
  sub_100006924(&qword_100044638, type metadata accessor for MXISerializeOption);
  isa = sub_100021880().super.isa;

  v8 = [a4 writeToURL:a1 withOptions:isa error:a3];

  return v8;
}

uint64_t sub_100006D68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100006DC8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_100006EA4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000072A8()
{
  sub_100021900();
  sub_1000218D0();
  sub_1000074A4();

  return v0;
}

uint64_t sub_1000073F0(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u8[0] = 2;

  return swift_willThrow();
}

uint64_t sub_100007430(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100007450(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_100007470()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_100007488()
{
  *(v3 - 448) = v0;
  *(v3 - 456) = v1;
  *(v3 - 472) = v2;
}

uint64_t sub_1000074E0()
{
  result = v0;
  v3 = *(v1 - 448);
  return result;
}

uint64_t sub_1000074F0(uint64_t a1, uint64_t a2)
{

  return _swift_allocError(a1, a2, 0, 0);
}

uint64_t sub_100007514()
{

  return swift_slowAlloc();
}

unint64_t sub_100007530()
{
  v2 = *(v0 - 264);
  v3 = *(v0 - 256);

  return sub_100003680();
}

void sub_10000754C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void sub_100009594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000095B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000095CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v7 = qword_100045B38;
    v24 = qword_100045B38;
    if (!qword_100045B38)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100009890;
      v26 = &unk_10003D3F8;
      v27 = &v21;
      sub_100009890(buf);
      v7 = v22[3];
    }

    v8 = v7;
    _Block_object_dispose(&v21, 8);
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a1 + 32);
    v11 = [v9 image];
    v12 = [v11 cgImage];
    v13 = [*(a1 + 40) lastPathComponent];
    v20 = 0;
    v14 = [v10 _blastDoorStoreTemporarySourceImageWithImageRef:v12 sourceURL:v13 error:&v20];
    v15 = v20;
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v14;

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      [*(a1 + 32) setError:v15];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 40);
        *buf = 138412546;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Failed to generate URL from blast door video reference from sourceURL %@. Error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    [*(a1 + 32) setError:v6];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Unable to access blast door reference from sourceURL %@. Error: %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100009870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009890(uint64_t a1)
{
  sub_100009958();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BlastDoorVideoPreview");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100045B38 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getBlastDoorVideoPreviewClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:33 description:{@"Unable to find class %s", "BlastDoorVideoPreview"}];

    __break(1u);
  }
}

void *sub_100009958()
{
  v4[0] = 0;
  if (!qword_100045B20)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100009AAC;
    v4[4] = &unk_10003D430;
    v4[5] = v4;
    v5 = off_10003D450;
    v6 = 0;
    qword_100045B20 = _sl_dlopen();
  }

  v0 = qword_100045B20;
  if (!qword_100045B20)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *BlastDoorLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:29 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100009AAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100045B20 = result;
  return result;
}

void sub_100009CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100009D18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v7 = qword_100045B30;
    v30 = qword_100045B30;
    if (!qword_100045B30)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10000A0DC;
      v32 = &unk_10003D3F8;
      v33 = &v27;
      sub_10000A0DC(buf);
      v7 = v28[3];
    }

    v8 = v7;
    _Block_object_dispose(&v27, 8);
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v11 = *(a1 + 32);
    v12 = [v10 image];
    v13 = [v12 cgImage];
    v14 = [*(a1 + 40) lastPathComponent];
    v26 = 0;
    v15 = [v11 _blastDoorStoreTemporarySourceImageWithImageRef:v13 sourceURL:v14 error:&v26];
    v16 = v26;
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v15;

    v19 = *(a1 + 32);
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v20 = [v10 metadata];
      v21 = [v19 _blastDoorConvertImageMetadata:v20];
      v22 = *(*(a1 + 64) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;
    }

    else
    {
      [*(a1 + 32) setError:v16];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 40);
        *buf = 138412546;
        *&buf[4] = v25;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Failed to generate URL from blast door reference from sourceURL %@. Error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    [*(a1 + 32) setError:v6];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = v24;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Unable to access blast door reference from sourceURL %@. Error: %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000A00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A0DC(uint64_t a1)
{
  sub_100009958();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BlastDoorLargeImage");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100045B30 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getBlastDoorLargeImageClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:32 description:{@"Unable to find class %s", "BlastDoorLargeImage"}];

    __break(1u);
  }
}

void sub_10000A30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A324(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v7 = qword_100045B28;
    v17 = qword_100045B28;
    if (!qword_100045B28)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10000A504;
      v19 = &unk_10003D3F8;
      v20 = &v14;
      sub_10000A504(buf);
      v7 = v15[3];
    }

    v8 = v7;
    _Block_object_dispose(&v14, 8);
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    v10 = [*(a1 + 32) _blastDoorConvertImageMetadata:{v9, v14}];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    [*(a1 + 32) setError:v6];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Unable to access blast door reference from sourceURL %@. Error: %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000A504(uint64_t a1)
{
  sub_100009958();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BlastDoorMediaMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100045B28 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getBlastDoorMediaMetadataClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:34 description:{@"Unable to find class %s", "BlastDoorMediaMetadata"}];

    __break(1u);
  }
}

void sub_10000AAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10000AAD0(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100045B10)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_10000AD0C;
    v6[4] = &unk_10003D430;
    v6[5] = v6;
    v7 = off_10003D418;
    v8 = 0;
    qword_100045B10 = _sl_dlopen();
  }

  if (!qword_100045B10)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *MessagesBlastDoorSupportLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:30 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("IMMessagesBlastDoorInterface");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getIMMessagesBlastDoorInterfaceClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:31 description:{@"Unable to find class %s", "IMMessagesBlastDoorInterface"}];

LABEL_10:
    __break(1u);
  }

  qword_100045B08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10000ACBC(uint64_t a1)
{
  v2 = sub_100009958();
  result = dlsym(v2, "BlastDoorInstanceTypeHubble");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100045B18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000AD0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100045B10 = result;
  return result;
}

void sub_10000BC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000BC38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000BC50(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = a3;
  v9 = a2;
  v10 = [v7 URLByAppendingPathComponent:v9];
  v11 = a1[5];
  v12 = *(a1[6] + 8);
  obj = *(v12 + 40);
  v13 = [v11 copyURL:v8 forRole:v9 toDirectory:v10 error:&obj];

  objc_storeStrong((v12 + 40), obj);
  if ((v13 & 1) == 0)
  {
    *(*(a1[7] + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_10000BDB4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [a3 url];
  (*(v6 + 16))(v6, v7, v8, a4);
}

void sub_10000C0BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v13 = 0;
  v14 = 0;
  v6 = [a3 getFileSize:&v14 error:&v13];
  v7 = v13;
  if (v6)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:v14];
    v9 = [v8 stringValue];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = v5;
      v18 = 2114;
      v19 = v7;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to get file size for url with role %{public}@: %{public}@", buf, 0x16u);
    }

    v9 = @"?";
  }

  v10 = *(a1 + 32);
  v15[0] = v5;
  v15[1] = v9;
  v11 = [NSArray arrayWithObjects:v15 count:2];
  v12 = [v11 componentsJoinedByString:@"="];
  [v10 addObject:v12];
}

void sub_10000C364(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v14[0] = v5;
  v8 = *(a1 + 40);
  v9 = [v6 path];
  v10 = v9;
  v11 = v9;
  if ((v8 & 1) == 0)
  {
    v11 = [v9 lastPathComponent];
  }

  v14[1] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:2];
  v13 = [v12 componentsJoinedByString:@"="];
  [v7 addObject:v13];

  if ((v8 & 1) == 0)
  {
  }
}

void sub_10000C544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C55C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [a3 path];
  *(*(*(a1 + 40) + 8) + 24) = [v6 isReadableFileAtPath:v7];

  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

void sub_10000C720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10000C744(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1[5] + 8);
  obj = *(v9 + 40);
  v20 = 0;
  v10 = [v8 getFileSize:&v20 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  if ((v10 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v14 = [v8 url];
      v17 = *(*(a1[5] + 8) + 40);
      *buf = 138543874;
      v22 = v7;
      v23 = 2112;
      v24 = v14;
      v25 = 2114;
      v26 = v17;
      v16 = "Unable to get file size for URL ref with role %{public}@ %@: %{public}@";
      goto LABEL_10;
    }

LABEL_7:
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_8;
  }

  if (!v20)
  {
    v11 = a1[4];
    v12 = [v8 url];
    v13 = *(a1[5] + 8);
    v18 = *(v13 + 40);
    LOBYTE(v11) = [v11 removeItemAtURL:v12 error:&v18];
    objc_storeStrong((v13 + 40), v18);

    if ((v11 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v14 = [v8 url];
        v15 = *(*(a1[5] + 8) + 40);
        *buf = 138543874;
        v22 = v7;
        v23 = 2112;
        v24 = v14;
        v25 = 2114;
        v26 = v15;
        v16 = "Unable to remove empty file for URL ref with role %{public}@ %@: %{public}@";
LABEL_10:
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v16, buf, 0x20u);

        goto LABEL_7;
      }

      goto LABEL_7;
    }
  }

LABEL_8:
}

void sub_10000CAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10000CADC(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 url];
  v8 = [v7 path];

  if ([*(a1 + 32) fileExistsAtPath:v8 isDirectory:0])
  {
    goto LABEL_17;
  }

  v9 = [v6 url];
  v10 = [v9 URLByDeletingLastPathComponent];

  v24 = 0;
  v11 = *(a1 + 32);
  v12 = [v10 path];
  LODWORD(v11) = [v11 fileExistsAtPath:v12 isDirectory:&v24];

  if (v11)
  {
    if (v24)
    {
      goto LABEL_9;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 138412290;
    v30 = v8;
    v13 = "Attempting to create empty destination output file at path %@ but the parent directory path exists and is not a directory";
    goto LABEL_19;
  }

  v14 = *(a1 + 32);
  v27 = NSFileOwnerAccountName;
  v28 = @"mobile";
  v15 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v16 = *(*(a1 + 48) + 8);
  obj = *(v16 + 40);
  LOBYTE(v14) = [v14 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:v15 error:&obj];
  objc_storeStrong((v16 + 40), obj);

  if (v14)
  {
    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v22 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138412290;
    v30 = v22;
    v13 = "Attempting to create empty destination output file at path %@ but parent directory creation failed:";
LABEL_19:
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
  }

LABEL_8:
  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_9:
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v17 = *(a1 + 32);
    v25 = NSFileOwnerAccountName;
    v26 = @"mobile";
    v18 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    LOBYTE(v17) = [v17 createFileAtPath:v8 contents:0 attributes:v18];

    if ((v17 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v8;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create empty file at destination %@", buf, 0xCu);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
    v19 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:0];
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

LABEL_17:
}

void sub_10000D074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10000D098(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(*(a1 + 40) + 8);
  obj = *(v8 + 40);
  v9 = [a3 dictionaryRepresentationWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v10;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to encode bookmark data for resource in role %{public}@: %{public}@", buf, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  *a4 = *(*(*(a1 + 48) + 8) + 24);
}

void sub_10000DC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000DCB0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  result = [a3 getPathHash:&v5 lastPathComponent:0];
  *(*(*(a1 + 32) + 8) + 24) ^= v5;
  return result;
}

void sub_10000E2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10000E2DC(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1[5] + 8);
  obj = *(v8 + 40);
  v9 = [PAMediaConversionServiceResourceURLReference referenceWithDictionaryRepresentation:a3 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    [*(a1[4] + 8) setObject:v9 forKeyedSubscript:v7];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(a1[5] + 8) + 40);
      *buf = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v10;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to decode bookmark data for resource in role %{public}@: %{public}@", buf, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  *a4 = *(*(a1[6] + 8) + 24);
}

void sub_10000EA94(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138543618;
    v6 = v4;
    v7 = 2114;
    v8 = a2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to send progress update for request %{public}@ to client: %{public}@", &v5, 0x16u);
  }
}

void sub_10000ED54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000ED6C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 requestTracker];
  v6 = [v5 effectivePriority];

  if (v6 > 4 || ((6u >> v6) & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }
}

void sub_10000EE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000EE9C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 requestTracker];
  v6 = [v5 effectivePriority];

  if (v6 > 4 || (v6 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }
}

void sub_10000EFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000EFC4(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    v4 = [a2 requestTracker];
    *(*(*(a1 + 32) + 8) + 24) = [v4 effectivePriority] == *(a1 + 40);
  }

  else
  {
    *(v2 + 24) = 0;
  }
}

int64_t sub_10000F1A4(id a1, ClientRequest *a2, ClientRequest *a3)
{
  v4 = a3;
  v5 = [(ClientRequest *)a2 requestTracker];
  v6 = [(ClientRequest *)v4 requestTracker];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_10000F44C(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 connectionIdentifier];
  v4 = [v3 UUIDString];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [v8 identifier];
    [v6 addObject:v7];
  }
}

void sub_10000F5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F5EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000F604(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 requestTracker];
  v6 = [v5 destinationURLCollection];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a3 = 1;
  }
}

void sub_10000F788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F7A0(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 identifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_10000FA78(id a1, ClientRequest *a2, BOOL *a3)
{
  v3 = [(ClientRequest *)a2 requestTracker];
  [v3 didDequeueAndStartProcessingRequest];
}

void sub_100010548(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 requestIdentifiersForConnectionIdentifier:*(a1 + 40)];
  [v2 addObjectsFromArray:v3];
}

void sub_1000109A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000109CC(void *a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v12 = 0;
  v7 = [v6 removeAndReturnClientRequestWithIdentifier:a1[4] remainingRequestCount:&v12];
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1[5] + 8) + 40);
  if (v10)
  {
    [v10 setCancellationReasonDebugDescription:@"Client request"];
    *a3 = 1;
    if (!v12)
    {
      objc_storeStrong((*(a1[6] + 8) + 40), a2);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v11 = a1[4];
      *buf = 138543874;
      v14 = v11;
      v15 = 2114;
      v16 = v6;
      v17 = 2048;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Found client request reference for cancelled request identifier %{public}@ in conversion %{public}@, remaining request count %lu", buf, 0x20u);
    }
  }
}

void sub_100010FB4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 clientRequestForIdentifier:*(a1 + 32)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a3 = 1;
  }
}

void sub_10001122C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100011250(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) resourceURLForRole:v7];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = [v8 path];
    v11 = [v9 path];
    v12 = *(a1 + 40);
    *buf = 138413058;
    v27 = v10;
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = v11;
    v32 = 2114;
    v33 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Copying conversion output %@ (role %@) to destination %@ for request %{public}@", buf, 0x2Au);
  }

  if (!v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 40);
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v7;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to copy conversion request output - destination URL collection for request %{public}@ is missing URL for role %@", buf, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    v24 = NSDebugDescriptionErrorKey;
    v16 = [NSString stringWithFormat:@"Failed to copy conversion output - destination URL collection is missing URL for role %@", v7];
    v25 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v18 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:v17];
    v19 = *(*(a1 + 64) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    goto LABEL_11;
  }

  v13 = *(a1 + 48);
  v14 = *(*(a1 + 64) + 8);
  obj = *(v14 + 40);
  v15 = [v13 copyItemAtURL:v8 toURL:v9 error:&obj];
  objc_storeStrong((v14 + 40), obj);
  if ((v15 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v22 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543618;
      v27 = v7;
      v28 = 2112;
      v29 = v22;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to copy conversion output for role %{public}@: %@", buf, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_11:
    *a4 = 1;
  }
}

void sub_100012A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v33 = objc_begin_catch(exception_object);
      v34 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v35 = [v30 identifier];
        *(v32 - 128) = 138543618;
        *(v31 + 4) = v35;
        *(v32 - 116) = 2114;
        *(v31 + 14) = v33;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Exception while enqueueing new queue entry %{public}@: %{public}@", (v32 - 128), 0x16u);
      }

      objc_end_catch();
      JUMPOUT(0x100012908);
    }

    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v29 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_100012B60(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v10 = 0;
  v7 = [*(a1 + 32) taskTypeSupportsDeduplication];
  if (v7)
  {
    v7 = [v6 taskTypeSupportsDeduplication];
    if (v7)
    {
      LOBYTE(v7) = [v6 clientRequestIsDuplicate:*(a1 + 40) identicalDestination:&v10];
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = v7;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    if ([*(a1 + 40) requiresDeduplicationAgainstOriginalWithIdenticalOutput] && (v10 & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v8 = [*(a1 + 40) identifier];
        v9 = [*(a1 + 32) identifier];
        *buf = 138544130;
        v12 = v8;
        v13 = 2114;
        v14 = v9;
        v15 = 2114;
        v16 = v6;
        v17 = 1024;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "New queue entry %{public}@ for request %{public}@ is duplicate of existing entry %{public}@ (identical output: %d), attached request to existing entry", buf, 0x26u);
      }

      [v6 addClientRequest:*(a1 + 40)];
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_100014724(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 lastPathComponent];
  v8 = [NSString stringWithFormat:@"%@-%@", v6, v7];
  v9 = [v5 URLByAppendingPathComponent:v8];

  [*(a1 + 40) setResourceURL:v9 forRole:v6];
}

void sub_100014F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014F7C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_100015F4C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_100017480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_1000174D0(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [a2 result:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  dispatch_group_leave(*(a1 + 32));
}

void sub_10001754C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setPortraitInfo:v3];
  [v4 setStrength:*(a1 + 40)];
  [v4 setEnabled:1];
}

void sub_1000175B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setDepthInfo:v3];
  [v4 setAperture:*(a1 + 48)];
  [v4 setFocusRect:*(a1 + 40)];
  [v4 setEnabled:1];
}

CFTypeRef sub_100018EC8(uint64_t a1, CGColorSpaceRef space)
{
  if ((a1 - 1) >= 2)
  {
    if (a1)
    {
      return 0;
    }

    v2 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    v2 = CGColorSpaceRetain(space);
    if (!v2)
    {
      return 0;
    }
  }

  return CFAutorelease(v2);
}

void sub_100018F2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v3;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Image generation using CIRawFilter failed: %@", &v4, 0xCu);
    }
  }
}

void sub_100019BEC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 rectValue];
  [v3 setCropRect:?];
  [v3 setEnabled:1];
}

void sub_10001B5EC(id a1, NSString *a2, NSString *a3)
{
  v3 = [(NSString *)a2 UTF8String];

  unsetenv(v3);
}

void sub_10001B724(id a1, NSString *a2, NSString *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [(NSString *)a2 UTF8String];
  v8 = [(NSString *)v6 UTF8String];

  setenv(v7, v8, 1);
}

id sub_10001DD74(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = 0;
  if (PFFigGetImageSourceImageIndexForContainerItemID())
  {
    v4 = [*(a1 + 40) objectAtIndexedSubscript:0];
    v5 = +[NSNull null];
    v6 = [v4 isEqual:v5];

    if (v6)
    {

      v4 = 0;
    }
  }

  return v4;
}

uint64_t sub_1000207C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000207E0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) resourceURLForRole:v7];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 40) requestIdentifier];
    v11 = [*(a1 + 48) requestIdentifier];
    *buf = 138413314;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    v28 = 2114;
    v29 = v10;
    v30 = 2112;
    v31 = v9;
    v32 = 2114;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Copying destination URL (role %@) from original %@ (request %{public}@) to duplicate %@ (request %{public}@) ", buf, 0x34u);
  }

  if (!v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v7;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to copy duplicate request output - destination URL collection is missing URL for role %@", buf, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    v22 = NSDebugDescriptionErrorKey;
    v15 = [NSString stringWithFormat:@"Failed to copy duplicate request output - destination URL collection is missing URL for role %@", v7];
    v23 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v17 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:v16];
    v18 = *(*(a1 + 72) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    goto LABEL_11;
  }

  v12 = *(a1 + 56);
  v13 = *(*(a1 + 72) + 8);
  obj = *(v13 + 40);
  v14 = [v12 copyItemAtURL:v8 toURL:v9 error:&obj];
  objc_storeStrong((v13 + 40), obj);
  if ((v14 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v20 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138543618;
      v25 = v7;
      v26 = 2112;
      v27 = v20;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to copy duplicate request output for role %{public}@: %@", buf, 0x16u);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_11:
    *a4 = 1;
  }
}