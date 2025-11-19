@interface CPLCKRecordPropertyMapping
+ (CPLCKRecordPropertyMapping)sharedInstance;
+ (NSSet)allSupportedClasses;
+ (NSSet)commonProperties;
- (BOOL)getPairedProperties:(id *)a3 andCKKeys:(id *)a4 forCKKey:(id)a5;
- (BOOL)getPairedProperties:(id *)a3 andCKKeys:(id *)a4 forProperty:(id)a5;
- (BOOL)isKeyReadOnly:(id)a3 recordClass:(Class)a4;
- (BOOL)shouldSplitIndirectRecordForKey:(id)a3 recordClass:(Class)a4;
- (BOOL)shouldUpdateKeyOnBothRecords:(id)a3 recordClass:(Class)a4;
- (BOOL)shouldUpdateKeyOnPrivateRecord:(id)a3 recordClass:(Class)a4;
- (BOOL)shouldUpdateKeyOnSharedRecord:(id)a3 recordClass:(Class)a4;
- (BOOL)shouldUpdatePropertyOnPrivateRecord:(id)a3 recordClass:(Class)a4;
- (BOOL)shouldUpdatePropertyOnSharedRecord:(id)a3 recordClass:(Class)a4;
- (id)allTranslatedPropertiesForClass:(Class)a3;
- (id)initSharedInstance;
@end

@implementation CPLCKRecordPropertyMapping

+ (CPLCKRecordPropertyMapping)sharedInstance
{
  if (qword_1002C5288 != -1)
  {
    sub_1001A1D64();
  }

  v3 = qword_1002C5280;

  return v3;
}

+ (NSSet)commonProperties
{
  if (qword_1002C52C8 != -1)
  {
    sub_1001A1D8C();
  }

  v3 = qword_1002C52C0;

  return v3;
}

+ (NSSet)allSupportedClasses
{
  if (qword_1002C5298 != -1)
  {
    sub_1001A1DB4();
  }

  v3 = qword_1002C5290;

  return v3;
}

- (id)initSharedInstance
{
  v172.receiver = self;
  v172.super_class = CPLCKRecordPropertyMapping;
  v78 = [(CPLCKRecordPropertyMapping *)&v172 init];
  if (v78)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = objc_alloc_init(NSMutableDictionary);
    v87 = objc_alloc_init(NSMutableDictionary);
    v5 = objc_alloc_init(NSMutableDictionary);
    v85 = objc_alloc_init(NSMutableDictionary);
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = objc_alloc_init(NSMutableDictionary);
    v170[0] = 0;
    v170[1] = v170;
    v170[2] = 0x3032000000;
    v170[3] = sub_100004450;
    v170[4] = sub_10000530C;
    v171 = 0;
    v168[0] = 0;
    v168[1] = v168;
    v168[2] = 0x3032000000;
    v168[3] = sub_100004450;
    v168[4] = sub_10000530C;
    v169 = 0;
    v167[0] = 0;
    v167[1] = v167;
    v167[2] = 0x2050000000;
    v167[3] = 0;
    v165[0] = 0;
    v165[1] = v165;
    v165[2] = 0x3032000000;
    v165[3] = sub_100004450;
    v165[4] = sub_10000530C;
    v166 = 0;
    v163[0] = 0;
    v163[1] = v163;
    v163[2] = 0x3032000000;
    v163[3] = sub_100004450;
    v163[4] = sub_10000530C;
    v164 = 0;
    v161[0] = 0;
    v161[1] = v161;
    v161[2] = 0x3032000000;
    v161[3] = sub_100004450;
    v161[4] = sub_10000530C;
    v162 = 0;
    v159[0] = 0;
    v159[1] = v159;
    v159[2] = 0x3032000000;
    v159[3] = sub_100004450;
    v159[4] = sub_10000530C;
    v160 = 0;
    v157[0] = 0;
    v157[1] = v157;
    v157[2] = 0x3032000000;
    v157[3] = sub_100004450;
    v157[4] = sub_10000530C;
    v158 = 0;
    v155[0] = 0;
    v155[1] = v155;
    v155[2] = 0x2020000000;
    v156 = 0;
    v154[0] = 0;
    v154[1] = v154;
    v154[2] = 0x2020000000;
    v154[3] = 0;
    v152[0] = 0;
    v152[1] = v152;
    v152[2] = 0x3032000000;
    v152[3] = sub_100004450;
    v152[4] = sub_10000530C;
    v153 = 0;
    v150[0] = 0;
    v150[1] = v150;
    v150[2] = 0x3032000000;
    v150[3] = sub_100004450;
    v150[4] = sub_10000530C;
    v151 = 0;
    v140[0] = _NSConcreteStackBlock;
    v140[1] = 3221225472;
    v140[2] = sub_100064978;
    v140[3] = &unk_100275108;
    v144 = v167;
    v145 = v165;
    v146 = v163;
    v75 = v3;
    v141 = v75;
    v74 = v4;
    v142 = v74;
    v147 = v170;
    v148 = v168;
    v149 = v152;
    v73 = v7;
    v143 = v73;
    v8 = objc_retainBlock(v140);
    v137[0] = _NSConcreteStackBlock;
    v137[1] = 3221225472;
    v137[2] = sub_100064A98;
    v137[3] = &unk_100272028;
    v139 = v167;
    v71 = v6;
    v138 = v71;
    v84 = objc_retainBlock(v137);
    v132[0] = _NSConcreteStackBlock;
    v132[1] = 3221225472;
    v132[2] = sub_100064C34;
    v132[3] = &unk_100275158;
    v134 = v161;
    v135 = v157;
    v136 = v159;
    v9 = v8;
    v133 = v9;
    v83 = objc_retainBlock(v132);
    v126[0] = _NSConcreteStackBlock;
    v126[1] = 3221225472;
    v126[2] = sub_100064CB4;
    v126[3] = &unk_100275180;
    v130 = v161;
    v131 = v157;
    v72 = v87;
    v127 = v72;
    v70 = v5;
    v128 = v70;
    v68 = v9;
    v129 = v68;
    v77 = objc_retainBlock(v126);
    v125[0] = _NSConcreteStackBlock;
    v125[1] = 3221225472;
    v125[2] = sub_100064D6C;
    v125[3] = &unk_1002751A8;
    v125[4] = v170;
    v125[5] = v150;
    v125[6] = v152;
    v10 = objc_retainBlock(v125);
    v124[0] = _NSConcreteStackBlock;
    v124[1] = 3221225472;
    v124[2] = sub_100064E08;
    v124[3] = &unk_100272000;
    v124[4] = v150;
    v11 = objc_retainBlock(v124);
    v121[0] = _NSConcreteStackBlock;
    v121[1] = 3221225472;
    v121[2] = sub_100064E1C;
    v121[3] = &unk_1002751D0;
    v12 = v10;
    v122 = v12;
    v13 = v11;
    v123 = v13;
    v76 = objc_retainBlock(v121);
    v112[0] = _NSConcreteStackBlock;
    v112[1] = 3221225472;
    v112[2] = sub_100064E68;
    v112[3] = &unk_1002751F8;
    v115 = v150;
    v120 = a2;
    v14 = v78;
    v113 = v14;
    v116 = v168;
    v117 = v155;
    v118 = v159;
    v69 = v85;
    v114 = v69;
    v119 = v167;
    v15 = objc_retainBlock(v112);
    v103[0] = _NSConcreteStackBlock;
    v103[1] = 3221225472;
    v103[2] = sub_100064F58;
    v103[3] = &unk_100275220;
    v105 = v161;
    v106 = v167;
    v111 = a2;
    v16 = v14;
    v104 = v16;
    v107 = v170;
    v108 = v168;
    v109 = v157;
    v110 = v155;
    v17 = objc_retainBlock(v103);
    v95[0] = _NSConcreteStackBlock;
    v95[1] = 3221225472;
    v95[2] = sub_100064FDC;
    v95[3] = &unk_100275248;
    v97 = v155;
    v102 = a2;
    v81 = v16;
    v96 = v81;
    v98 = v170;
    v99 = v165;
    v100 = v168;
    v101 = v163;
    v18 = objc_retainBlock(v95);
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_100065058;
    v92[3] = &unk_100275270;
    v94 = v154;
    v80 = v17;
    v93 = v80;
    v19 = objc_retainBlock(v92);
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_100065090;
    v89[3] = &unk_100275298;
    v91 = v154;
    v79 = v18;
    v90 = v79;
    v20 = objc_retainBlock(v89);
    v21 = objc_opt_class();
    (v83[2])(v83, v21);
    (v19[2])(v19, 2);
    (v12[2])(v12, &off_10028FCA0);
    v196 = @"itemId";
    v22 = [NSArray arrayWithObjects:&v196 count:1];
    (v15[2])(v15, v22);

    v13[2](v13);
    (v12[2])(v12, &off_10028FCB8);
    (v15[2])(v15, &off_10028FCD0);
    v13[2](v13);
    (v20[2])(v20);
    (v84[2])();
    v23 = objc_opt_class();
    (v83[2])(v83, v23);
    (v19[2])(v19, 2);
    (v12[2])(v12, &off_10028FCE8);
    v195 = @"parentId";
    v24 = [NSArray arrayWithObjects:&v195 count:1];
    (v15[2])(v15, v24);

    v13[2](v13);
    (v12[2])(v12, &off_10028FD00);
    (v15[2])(v15, &off_10028FD18);
    v13[2](v13);
    (v12[2])(v12, &off_10028FD30);
    (v15[2])(v15, &off_10028FD48);
    v13[2](v13);
    (v12[2])(v12, &off_10028FD60);
    (v15[2])(v15, &off_10028FD78);
    v13[2](v13);
    (v12[2])(v12, &off_10028FD90);
    (v15[2])(v15, &off_10028FDA8);
    v13[2](v13);
    (v12[2])(v12, &off_10028FDC0);
    (v15[2])(v15, &off_10028FDD8);
    v13[2](v13);
    (v12[2])(v12, &off_10028FDF0);
    (v15[2])(v15, &off_10028FE08);
    v13[2](v13);
    (v12[2])(v12, &off_10028FE20);
    v194 = @"userModificationDate";
    v25 = [NSArray arrayWithObjects:&v194 count:1];
    (v15[2])(v15, v25);

    v13[2](v13);
    (v12[2])(v12, &off_10028FE38);
    (v15[2])(v15, &off_10028FE50);
    v13[2](v13);
    (v12[2])(v12, &off_10028FE68);
    (v15[2])(v15, &off_10028FE80);
    v13[2](v13);
    (v12[2])(v12, &off_10028FE98);
    (v15[2])(v15, &off_10028FEB0);
    v13[2](v13);
    (v20[2])(v20);
    (v84[2])();
    v26 = objc_opt_class();
    (v83[2])(v83, v26);
    (v19[2])(v19, 2);
    (v12[2])(v12, &off_10028FEC8);
    (v15[2])(v15, &off_10028FEE0);
    v13[2](v13);
    (v12[2])(v12, &off_10028FEF8);
    (v15[2])(v15, &off_10028FF10);
    v13[2](v13);
    (v12[2])(v12, &off_10028FF28);
    (v15[2])(v15, &off_10028FF40);
    v13[2](v13);
    (v12[2])(v12, &off_10028FF58);
    (v15[2])(v15, &off_10028FF70);
    v13[2](v13);
    (v12[2])(v12, &off_10028FF88);
    (v15[2])(v15, &off_10028FFA0);
    v13[2](v13);
    (v12[2])(v12, &off_10028FFB8);
    (v15[2])(v15, &off_10028FFD0);
    v13[2](v13);
    (v12[2])(v12, &off_10028FFE8);
    v193 = @"createDate";
    v27 = [NSArray arrayWithObjects:&v193 count:1];
    (v15[2])(v15, v27);

    v13[2](v13);
    (v12[2])(v12, &off_100290000);
    (v15[2])(v15, &off_100290018);
    v13[2](v13);
    (v12[2])(v12, &off_100290030);
    (v15[2])(v15, &off_100290048);
    v13[2](v13);
    (v12[2])(v12, &off_100290060);
    (v15[2])(v15, &off_100290078);
    v13[2](v13);
    (v12[2])(v12, &off_100290090);
    (v15[2])(v15, &off_1002900A8);
    v13[2](v13);
    (v12[2])(v12, &off_1002900C0);
    (v15[2])(v15, &off_1002900D8);
    v13[2](v13);
    (v12[2])(v12, &off_1002900F0);
    (v15[2])(v15, &off_100290108);
    v13[2](v13);
    (v12[2])(v12, &off_100290120);
    (v15[2])(v15, &off_100290138);
    v13[2](v13);
    (v12[2])(v12, &off_100290150);
    (v15[2])(v15, &off_100290168);
    v13[2](v13);
    (v12[2])(v12, &off_100290180);
    (v15[2])(v15, &off_100290198);
    v13[2](v13);
    (v12[2])(v12, &off_1002901B0);
    (v15[2])(v15, &off_1002901C8);
    v13[2](v13);
    (v12[2])(v12, &off_1002901E0);
    (v15[2])(v15, &off_1002901F8);
    v13[2](v13);
    (v12[2])(v12, &off_100290210);
    (v15[2])(v15, &off_100290228);
    v13[2](v13);
    (v12[2])(v12, &off_100290240);
    (v15[2])(v15, &off_100290258);
    v13[2](v13);
    (v20[2])(v20);
    (v84[2])();
    v28 = objc_opt_class();
    (v83[2])(v83, v28);
    (v19[2])(v19, 2);
    (v12[2])(v12, &off_100290270);
    (v15[2])(v15, &off_100290288);
    v13[2](v13);
    (v12[2])(v12, &off_1002902A0);
    (v15[2])(v15, &off_1002902B8);
    v13[2](v13);
    (v12[2])(v12, &off_1002902D0);
    (v15[2])(v15, &off_1002902E8);
    v13[2](v13);
    (v12[2])(v12, &off_100290300);
    (v15[2])(v15, &off_100290318);
    v13[2](v13);
    (v20[2])(v20);
    (v84[2])();
    v29 = objc_opt_class();
    (v83[2])(v83, v29);
    (v19[2])(v19, 2);
    (v12[2])(v12, &off_100290330);
    (v15[2])(v15, &off_100290348);
    v13[2](v13);
    (v12[2])(v12, &off_100290360);
    (v15[2])(v15, &off_100290378);
    v13[2](v13);
    (v12[2])(v12, &off_100290390);
    (v15[2])(v15, &off_1002903A8);
    v13[2](v13);
    if (+[CPLPersonChange serverSupportsAssetSortOrder])
    {
      (v12[2])(v12, &off_1002903C0);
      (v15[2])(v15, &off_1002903D8);
      v13[2](v13);
    }

    (v12[2])(v12, &off_1002903F0);
    (v15[2])(v15, &off_100290408);
    v13[2](v13);
    (v12[2])(v12, &off_100290420);
    (v15[2])(v15, &off_100290438);
    v13[2](v13);
    (v12[2])(v12, &off_100290450);
    (v15[2])(v15, &off_100290468);
    v13[2](v13);
    if (+[CPLPersonChange serverSupportsDetectionType])
    {
      (v12[2])(v12, &off_100290480);
      (v15[2])(v15, &off_100290498);
      v13[2](v13);
    }

    (v12[2])(v12, &off_1002904B0);
    (v15[2])(v15, &off_1002904C8);
    v13[2](v13);
    (v20[2])(v20);
    (v84[2])();
    v30 = objc_opt_class();
    (v83[2])(v83, v30);
    (v19[2])(v19, 2);
    (v12[2])(v12, &off_1002904E0);
    (v15[2])(v15, &off_1002904F8);
    v13[2](v13);
    (v12[2])(v12, &off_100290510);
    (v15[2])(v15, &off_100290528);
    v13[2](v13);
    (v12[2])(v12, &off_100290540);
    (v15[2])(v15, &off_100290558);
    v13[2](v13);
    (v12[2])(v12, &off_100290570);
    (v15[2])(v15, &off_100290588);
    v13[2](v13);
    (v12[2])(v12, &off_1002905A0);
    (v15[2])(v15, &off_1002905B8);
    v13[2](v13);
    (v12[2])(v12, &off_1002905D0);
    (v15[2])(v15, &off_1002905E8);
    v13[2](v13);
    (v12[2])(v12, &off_100290600);
    (v15[2])(v15, &off_100290618);
    v13[2](v13);
    (v12[2])(v12, &off_100290630);
    (v15[2])(v15, &off_100290648);
    v13[2](v13);
    (v12[2])(v12, &off_100290660);
    v192 = @"createDate";
    v31 = [NSArray arrayWithObjects:&v192 count:1];
    (v15[2])(v15, v31);

    v13[2](v13);
    (v12[2])(v12, &off_100290678);
    (v15[2])(v15, &off_100290690);
    v13[2](v13);
    (v12[2])(v12, &off_1002906A8);
    (v15[2])(v15, &off_1002906C0);
    v13[2](v13);
    (v12[2])(v12, &off_1002906D8);
    (v15[2])(v15, &off_1002906F0);
    v13[2](v13);
    (v12[2])(v12, &off_100290708);
    (v15[2])(v15, &off_100290720);
    v13[2](v13);
    (v12[2])(v12, &off_100290738);
    (v15[2])(v15, &off_100290750);
    v13[2](v13);
    (v20[2])(v20);
    (v84[2])();
    v32 = objc_opt_class();
    (v83[2])(v83, v32);
    (v19[2])(v19, 2);
    (v12[2])(v12, &off_100290768);
    (v15[2])(v15, &off_100290780);
    v13[2](v13);
    (v12[2])(v12, &off_100290798);
    (v15[2])(v15, &off_1002907B0);
    v13[2](v13);
    (v12[2])(v12, &off_1002907C8);
    (v15[2])(v15, &off_1002907E0);
    v13[2](v13);
    (v12[2])(v12, &off_1002907F8);
    (v15[2])(v15, &off_100290810);
    v13[2](v13);
    (v12[2])(v12, &__NSArray0__struct);
    (v15[2])(v15, &off_100290828);
    v13[2](v13);
    (v12[2])(v12, &off_100290840);
    (v15[2])(v15, &off_100290858);
    v13[2](v13);
    (v20[2])(v20);
    (v84[2])();
    v33 = objc_opt_class();
    (v77[2])(v77, v33);
    (v19[2])(v19, 8);
    (v76[2])(v76, &off_100290870);
    (v20[2])(v20);
    (v19[2])(v19, 2);
    (v80[2])(v80, 0);
    (v12[2])(v12, &off_100290888);
    (v15[2])(v15, &off_1002908A0);
    v13[2](v13);
    (v12[2])(v12, &off_1002908B8);
    (v15[2])(v15, &off_1002908D0);
    v13[2](v13);
    (v12[2])(v12, &off_1002908E8);
    v191[0] = @"originalCreationDate";
    v191[1] = @"originalCreationDateEnc";
    v34 = [NSArray arrayWithObjects:v191 count:2];
    (v15[2])(v15, v34);

    v13[2](v13);
    (v12[2])(v12, &off_100290900);
    v190 = @"importDate";
    v35 = [NSArray arrayWithObjects:&v190 count:1];
    (v15[2])(v15, v35);

    v13[2](v13);
    (v12[2])(v12, &off_100290918);
    v189 = @"importGroupId";
    v36 = [NSArray arrayWithObjects:&v189 count:1];
    (v15[2])(v15, v36);

    v13[2](v13);
    (v12[2])(v12, &off_100290930);
    v188 = @"mediaMetaDataType";
    v37 = [NSArray arrayWithObjects:&v188 count:1];
    (v15[2])(v15, v37);

    v13[2](v13);
    (v12[2])(v12, &off_100290948);
    (v15[2])(v15, &off_100290960);
    v13[2](v13);
    (v12[2])(v12, &off_100290978);
    (v15[2])(v15, &off_100290990);
    v13[2](v13);
    (v12[2])(v12, &off_1002909A8);
    (v15[2])(v15, &off_1002909C0);
    v13[2](v13);
    (v12[2])(v12, &off_1002909D8);
    v187[0] = @"originatingFingerprint";
    v187[1] = @"originatingFingerprintEnc";
    v38 = [NSArray arrayWithObjects:v187 count:2];
    (v15[2])(v15, v38);

    v13[2](v13);
    (v12[2])(v12, &off_1002909F0);
    (v15[2])(v15, &off_100290A08);
    v13[2](v13);
    (v12[2])(v12, &off_100290A20);
    (v15[2])(v15, &off_100290A38);
    v13[2](v13);
    (v12[2])(v12, &off_100290A50);
    (v15[2])(v15, &off_100290A68);
    v13[2](v13);
    (v12[2])(v12, &off_100290A80);
    v186[0] = @"videoFrameRate";
    v186[1] = @"videoFrameRateEnc";
    v39 = [NSArray arrayWithObjects:v186 count:2];
    (v15[2])(v15, v39);

    v13[2](v13);
    (v12[2])(v12, &off_100290A98);
    v185[0] = @"codec";
    v185[1] = @"codecEnc";
    v40 = [NSArray arrayWithObjects:v185 count:2];
    (v15[2])(v15, v40);

    v13[2](v13);
    (v12[2])(v12, &off_100290AB0);
    v13[2](v13);
    (v79[2])(v79, 0);
    (v20[2])(v20);
    (v84[2])();
    v41 = objc_opt_class();
    (v77[2])(v77, v41);
    (v19[2])(v19, 8);
    (v76[2])(v76, &off_100290AC8);
    (v20[2])(v20);
    (v19[2])(v19, 2);
    (v12[2])(v12, &off_100290AE0);
    (v15[2])(v15, &off_100290AF8);
    v13[2](v13);
    (v12[2])(v12, &off_100290B10);
    v184 = @"syndicationId";
    v42 = [NSArray arrayWithObjects:&v184 count:1];
    (v15[2])(v15, v42);

    v13[2](v13);
    if (+[CPLAssetChange serverSupportsSharedLibrarySharingState])
    {
      (v12[2])(v12, &off_100290B28);
      (v15[2])(v15, &off_100290B40);
      v13[2](v13);
    }

    (v12[2])(v12, &off_100290B58);
    (v15[2])(v15, &off_100290B70);
    v13[2](v13);
    if (+[CPLAssetChange serverSupportsLastViewedDate])
    {
      (v12[2])(v12, &off_100290B88);
      (v15[2])(v15, &off_100290BA0);
      v13[2](v13);
    }

    (v12[2])(v12, &off_100290BB8);
    (v15[2])(v15, &off_100290BD0);
    v13[2](v13);
    (v12[2])(v12, &off_100290BE8);
    v183 = @"lastSharedDate";
    v43 = [NSArray arrayWithObjects:&v183 count:1];
    (v15[2])(v15, v43);

    v13[2](v13);
    (v12[2])(v12, &off_100290C00);
    (v15[2])(v15, &off_100290C18);
    v13[2](v13);
    (v12[2])(v12, &off_100290C30);
    (v15[2])(v15, &off_100290C48);
    v13[2](v13);
    (v12[2])(v12, &off_100290C60);
    (v15[2])(v15, &off_100290C78);
    v13[2](v13);
    (v12[2])(v12, &off_100290C90);
    (v15[2])(v15, &off_100290CA8);
    v13[2](v13);
    (v12[2])(v12, &off_100290CC0);
    (v15[2])(v15, &off_100290CD8);
    v13[2](v13);
    (v12[2])(v12, &__NSArray0__struct);
    (v15[2])(v15, &off_100290CF0);
    v13[2](v13);
    (v80[2])(v80, 1);
    (v12[2])(v12, &off_100290D08);
    v182[0] = @"assetDate";
    v182[1] = @"assetDateEnc";
    v44 = [NSArray arrayWithObjects:v182 count:2];
    (v15[2])(v15, v44);

    v13[2](v13);
    (v79[2])(v79, 1);
    (v80[2])(v80, 0);
    (v12[2])(v12, &off_100290D20);
    (v15[2])(v15, &off_100290D38);
    v13[2](v13);
    (v12[2])(v12, &off_100290D50);
    (v15[2])(v15, &off_100290D68);
    v13[2](v13);
    (v12[2])(v12, &off_100290D80);
    (v15[2])(v15, &off_100290D98);
    v13[2](v13);
    (v12[2])(v12, &off_100290DB0);
    (v15[2])(v15, &off_100290DC8);
    v13[2](v13);
    (v12[2])(v12, &off_100290DE0);
    (v15[2])(v15, &off_100290DF8);
    v13[2](v13);
    (v12[2])(v12, &off_100290E10);
    (v15[2])(v15, &off_100290E28);
    v13[2](v13);
    (v79[2])(v79, 0);
    (v80[2])(v80, 0);
    (v12[2])(v12, &off_100290E40);
    (v15[2])(v15, &off_100290E58);
    v13[2](v13);
    (v12[2])(v12, &off_100290E70);
    v181 = @"addedDate";
    v45 = [NSArray arrayWithObjects:&v181 count:1];
    (v15[2])(v15, v45);

    v13[2](v13);
    (v12[2])(v12, &off_100290E88);
    (v15[2])(v15, &off_100290EA0);
    v13[2](v13);
    if (+[CPLAssetChange serverSupportsDeletedByUserIdentifier])
    {
      (v12[2])(v12, &off_100290EB8);
      (v15[2])(v15, &off_100290ED0);
      v13[2](v13);
    }

    (v12[2])(v12, &off_100290EE8);
    (v15[2])(v15, &off_100290F00);
    v13[2](v13);
    (v12[2])(v12, &off_100290F18);
    (v15[2])(v15, &off_100290F30);
    v13[2](v13);
    (v12[2])(v12, &off_100290F48);
    v180[0] = @"burstId";
    v180[1] = @"burstIdEnc";
    v46 = [NSArray arrayWithObjects:v180 count:2];
    (v15[2])(v15, v46);

    v13[2](v13);
    (v12[2])(v12, &off_100290F60);
    v179[0] = @"mediaGroupId";
    v179[1] = @"mediaGroupIdEnc";
    v47 = [NSArray arrayWithObjects:v179 count:2];
    (v15[2])(v15, v47);

    v13[2](v13);
    (v12[2])(v12, &off_100290F78);
    (v15[2])(v15, &off_100290F90);
    v13[2](v13);
    (v12[2])(v12, &off_100290FA8);
    (v15[2])(v15, &off_100290FC0);
    v13[2](v13);
    (v12[2])(v12, &off_100290FD8);
    (v15[2])(v15, &off_100290FF0);
    v13[2](v13);
    (v12[2])(v12, &off_100291008);
    (v15[2])(v15, &off_100291020);
    v13[2](v13);
    (v12[2])(v12, &off_100291038);
    (v15[2])(v15, &off_100291050);
    v13[2](v13);
    (v12[2])(v12, &off_100291068);
    (v15[2])(v15, &off_100291080);
    v13[2](v13);
    (v12[2])(v12, &off_100291098);
    (v15[2])(v15, &off_1002910B0);
    v13[2](v13);
    (v12[2])(v12, &off_1002910C8);
    v178[0] = @"timeZoneOffset";
    v178[1] = @"timeZoneOffsetEnc";
    v48 = [NSArray arrayWithObjects:v178 count:2];
    (v15[2])(v15, v48);

    v13[2](v13);
    (v12[2])(v12, &off_1002910E0);
    (v15[2])(v15, &off_1002910F8);
    v13[2](v13);
    (v12[2])(v12, &off_100291110);
    v177[0] = @"customRenderedValue";
    v177[1] = @"customRenderedValueEnc";
    v49 = [NSArray arrayWithObjects:v177 count:2];
    (v15[2])(v15, v49);

    v13[2](v13);
    (v12[2])(v12, &off_100291128);
    (v15[2])(v15, &off_100291140);
    v13[2](v13);
    (v79[2])(v79, 0);
    (v20[2])(v20);
    (v19[2])(v19, 8);
    (v12[2])(v12, &off_100291158);
    (v15[2])(v15, &off_100291170);
    v13[2](v13);
    (v12[2])(v12, &off_100291188);
    (v15[2])(v15, &off_1002911A0);
    v13[2](v13);
    (v12[2])(v12, &off_1002911B8);
    v176[0] = @"duration";
    v176[1] = @"durationEnc";
    v50 = [NSArray arrayWithObjects:v176 count:2];
    (v15[2])(v15, v50);

    v13[2](v13);
    (v12[2])(v12, &off_1002911D0);
    (v15[2])(v15, &off_1002911E8);
    v13[2](v13);
    (v12[2])(v12, &off_100291200);
    v175 = @"adjustedMediaMetaDataStrType";
    v51 = [NSArray arrayWithObjects:&v175 count:1];
    (v15[2])(v15, v51);

    v13[2](v13);
    (v12[2])(v12, &off_100291218);
    (v15[2])(v15, &off_100291230);
    v13[2](v13);
    (v20[2])(v20);
    (v19[2])(v19, 32);
    (v12[2])(v12, &off_100291248);
    (v15[2])(v15, &off_100291260);
    v13[2](v13);
    (v20[2])(v20);
    (v84[2])();
    v52 = objc_opt_class();
    (v83[2])(v83, v52);
    (v19[2])(v19, 2);
    (v12[2])(v12, &off_100291278);
    v174 = @"commentTimestamp";
    v53 = [NSArray arrayWithObjects:&v174 count:1];
    (v15[2])(v15, v53);

    v13[2](v13);
    (v12[2])(v12, &off_100291290);
    (v15[2])(v15, &off_1002912A8);
    v13[2](v13);
    (v20[2])(v20);
    (v84[2])();
    v54 = objc_opt_class();
    (v83[2])(v83, v54);
    (v19[2])(v19, 2);
    (v12[2])(v12, &off_1002912C0);
    (v15[2])(v15, &off_1002912D8);
    v13[2](v13);
    (v12[2])(v12, &off_1002912F0);
    v173 = @"commentTimestamp";
    v55 = [NSArray arrayWithObjects:&v173 count:1];
    (v15[2])(v15, v55);

    v13[2](v13);
    (v12[2])(v12, &off_100291308);
    (v15[2])(v15, &off_100291320);
    v13[2](v13);
    (v20[2])(v20);
    (v84[2])();
    allPrivateProperties = v81->_allPrivateProperties;
    v81->_allPrivateProperties = v75;
    v88 = v75;

    allPrivateCKKeys = v81->_allPrivateCKKeys;
    v81->_allPrivateCKKeys = v74;
    v86 = v74;

    propertiesKeysPairings = v81->_propertiesKeysPairings;
    v81->_propertiesKeysPairings = v73;
    v82 = v73;

    allSharedProperties = v81->_allSharedProperties;
    v81->_allSharedProperties = v72;
    v60 = v72;

    allSharedAndPrivateCKKeys = v81->_allSharedAndPrivateCKKeys;
    v81->_allSharedAndPrivateCKKeys = v69;
    v62 = v69;

    allSharedCKKeys = v81->_allSharedCKKeys;
    v81->_allSharedCKKeys = v70;
    v64 = v70;

    allResourcesCKKeys = v81->_allResourcesCKKeys;
    v81->_allResourcesCKKeys = v71;
    v66 = v71;

    _Block_object_dispose(v150, 8);
    _Block_object_dispose(v152, 8);

    _Block_object_dispose(v154, 8);
    _Block_object_dispose(v155, 8);
    _Block_object_dispose(v157, 8);

    _Block_object_dispose(v159, 8);
    _Block_object_dispose(v161, 8);

    _Block_object_dispose(v163, 8);
    _Block_object_dispose(v165, 8);

    _Block_object_dispose(v167, 8);
    _Block_object_dispose(v168, 8);

    _Block_object_dispose(v170, 8);
  }

  return v78;
}

- (BOOL)getPairedProperties:(id *)a3 andCKKeys:(id *)a4 forProperty:(id)a5
{
  v8 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_propertiesKeysPairings;
  v10 = [(NSDictionary *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v14 hasProperty:{v8, v17}])
        {
          *a3 = [v14 properties];
          *a4 = [v14 ckKeys];
          v15 = 1;
          goto LABEL_11;
        }
      }

      v11 = [(NSDictionary *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (BOOL)getPairedProperties:(id *)a3 andCKKeys:(id *)a4 forCKKey:(id)a5
{
  v8 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_propertiesKeysPairings;
  v10 = [(NSDictionary *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v14 hasCKKey:{v8, v17}])
        {
          *a3 = [v14 properties];
          *a4 = [v14 ckKeys];
          v15 = 1;
          goto LABEL_11;
        }
      }

      v11 = [(NSDictionary *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (id)allTranslatedPropertiesForClass:(Class)a3
{
  v6 = [(NSDictionary *)self->_allPrivateProperties objectForKeyedSubscript:?];
  if (!v6)
  {
    sub_1001A2234(a2, self, a3);
  }

  v7 = v6;
  v8 = [(NSDictionary *)self->_allSharedProperties objectForKeyedSubscript:a3];
  if ([v8 count])
  {
    v9 = [v7 mutableCopy];
    [v9 unionSet:v8];
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

- (BOOL)shouldUpdatePropertyOnPrivateRecord:(id)a3 recordClass:(Class)a4
{
  allPrivateProperties = self->_allPrivateProperties;
  v6 = a3;
  v7 = [(NSDictionary *)allPrivateProperties objectForKeyedSubscript:a4];
  LOBYTE(allPrivateProperties) = [v7 containsObject:v6];

  return allPrivateProperties;
}

- (BOOL)shouldUpdatePropertyOnSharedRecord:(id)a3 recordClass:(Class)a4
{
  allSharedProperties = self->_allSharedProperties;
  v6 = a3;
  v7 = [(NSDictionary *)allSharedProperties objectForKeyedSubscript:a4];
  LOBYTE(allSharedProperties) = [v7 containsObject:v6];

  return allSharedProperties;
}

- (BOOL)isKeyReadOnly:(id)a3 recordClass:(Class)a4
{
  v4 = qword_1002C52A8;
  v5 = a3;
  if (v4 != -1)
  {
    sub_1001A2320();
  }

  v6 = [qword_1002C52A0 containsObject:v5];

  return v6;
}

- (BOOL)shouldSplitIndirectRecordForKey:(id)a3 recordClass:(Class)a4
{
  v6 = a3;
  if (objc_opt_class() == a4 || [(CPLCKRecordPropertyMapping *)self shouldUpdateKeyOnBothRecords:v6 recordClass:a4])
  {
    v7 = 0;
  }

  else
  {
    v7 = [(CPLCKRecordPropertyMapping *)self shouldUpdateKeyOnPrivateRecord:v6 recordClass:a4];
  }

  return v7;
}

- (BOOL)shouldUpdateKeyOnBothRecords:(id)a3 recordClass:(Class)a4
{
  v6 = a3;
  if (objc_opt_class() == a4 || (-[NSDictionary objectForKeyedSubscript:](self->_allSharedAndPrivateCKKeys, "objectForKeyedSubscript:", a4), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:v6], v7, (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v10 = sub_100061744();
    v9 = [v10 containsObject:v6];
  }

  return v9;
}

- (BOOL)shouldUpdateKeyOnPrivateRecord:(id)a3 recordClass:(Class)a4
{
  v6 = a3;
  if ([(CPLCKRecordPropertyMapping *)self shouldUpdateKeyOnBothRecords:v6 recordClass:a4])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(NSDictionary *)self->_allPrivateCKKeys objectForKeyedSubscript:a4];
    v7 = [v8 containsObject:v6];
  }

  return v7;
}

- (BOOL)shouldUpdateKeyOnSharedRecord:(id)a3 recordClass:(Class)a4
{
  v6 = a3;
  if (objc_opt_class() == a4)
  {
    v8 = 1;
  }

  else
  {
    v7 = [(NSDictionary *)self->_allSharedCKKeys objectForKeyedSubscript:a4];
    if ([v7 containsObject:v6])
    {
      v8 = 1;
    }

    else
    {
      v9 = [(NSDictionary *)self->_allResourcesCKKeys objectForKeyedSubscript:a4];
      if ([v9 containsObject:v6])
      {
        v8 = 1;
      }

      else
      {
        v10 = sub_100061744();
        v8 = [v10 containsObject:v6];
      }
    }
  }

  return v8;
}

@end