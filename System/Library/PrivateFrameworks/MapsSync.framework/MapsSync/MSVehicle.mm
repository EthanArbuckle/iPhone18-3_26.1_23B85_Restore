@interface MSVehicle
+ (Class)managedClass;
- (MSVehicle)initWithColorHex:(id)a3 currentVehicleState:(id)a4 dateOfVehicleIngestion:(id)a5 displayName:(id)a6 headUnitBluetoothIdentifier:(id)a7 headUnitMacAddress:(id)a8 iapIdentifier:(id)a9 lastStateUpdateDate:(id)a10 licensePlate:(id)a11 lprPowerType:(id)a12 lprVehicleType:(id)a13 manufacturer:(id)a14 model:(id)a15 pairedAppIdentifier:(id)a16 positionIndex:(int64_t)a17 powerByConnector:(id)a18 preferredChargingNetworks:(id)a19 siriIntentsIdentifier:(id)a20 supportedConnectors:(id)a21 vehicleIdentifier:(id)a22 vehicleType:(id)a23 year:(id)a24;
- (MSVehicle)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSVehicle)initWithStore:(id)a3 colorHex:(id)a4 currentVehicleState:(id)a5 dateOfVehicleIngestion:(id)a6 displayName:(id)a7 headUnitBluetoothIdentifier:(id)a8 headUnitMacAddress:(id)a9 iapIdentifier:(id)a10 lastStateUpdateDate:(id)a11 licensePlate:(id)a12 lprPowerType:(id)a13 lprVehicleType:(id)a14 manufacturer:(id)a15 model:(id)a16 pairedAppIdentifier:(id)a17 positionIndex:(int64_t)a18 powerByConnector:(id)a19 preferredChargingNetworks:(id)a20 siriIntentsIdentifier:(id)a21 supportedConnectors:(id)a22 vehicleIdentifier:(id)a23 vehicleType:(id)a24 year:(id)a25;
- (NSNumber)supportedConnectors;
- (NSNumber)vehicleType;
- (NSNumber)year;
- (int64_t)positionIndex;
- (void)setPositionIndex:(int64_t)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)setSupportedConnectors:(id)a3;
- (void)setVehicleType:(id)a3;
- (void)setYear:(id)a3;
@end

@implementation MSVehicle

- (MSVehicle)initWithColorHex:(id)a3 currentVehicleState:(id)a4 dateOfVehicleIngestion:(id)a5 displayName:(id)a6 headUnitBluetoothIdentifier:(id)a7 headUnitMacAddress:(id)a8 iapIdentifier:(id)a9 lastStateUpdateDate:(id)a10 licensePlate:(id)a11 lprPowerType:(id)a12 lprVehicleType:(id)a13 manufacturer:(id)a14 model:(id)a15 pairedAppIdentifier:(id)a16 positionIndex:(int64_t)a17 powerByConnector:(id)a18 preferredChargingNetworks:(id)a19 siriIntentsIdentifier:(id)a20 supportedConnectors:(id)a21 vehicleIdentifier:(id)a22 vehicleType:(id)a23 year:(id)a24
{
  v156 = a5;
  v153 = self;
  v154 = a4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v164 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v166 = &v134 - v32;
  v158 = a7;
  v159 = a8;
  v157 = a6;
  if (a3)
  {
    v33 = sub_1B63BEBD4();
    v151 = v34;
    v152 = v33;
  }

  else
  {
    v151 = 0;
    v152 = 0;
  }

  v165 = a24;
  v162 = a22;
  v163 = a23;
  v160 = a18;
  v161 = a19;
  v155 = a21;
  v148 = a15;
  v149 = a16;
  v146 = a13;
  v147 = a14;
  v144 = a12;
  v143 = a11;
  v141 = a10;
  v139 = a9;
  if (v154)
  {
    v145 = v154;
    v35 = v156;
    v36 = v157;
    v37 = v158;
    v38 = v159;
    v39 = a9;
    v40 = a10;
    v41 = a11;
    v42 = a12;
    v43 = a13;
    v44 = a14;
    v45 = a15;
    v46 = a16;
    v47 = v160;
    v48 = v161;
    v49 = a20;
    v50 = a20;
    v51 = v155;
    v52 = v162;
    v53 = v163;
    v54 = v165;
    v154 = sub_1B63BE924();
    v150 = v55;
  }

  else
  {
    v56 = v156;
    v57 = v157;
    v58 = v158;
    v59 = v159;
    v60 = a9;
    v61 = a10;
    v62 = a11;
    v63 = a12;
    v64 = a13;
    v65 = a14;
    v66 = a15;
    v67 = a16;
    v68 = v160;
    v69 = v161;
    v49 = a20;
    v70 = a20;
    v71 = a21;
    v72 = v162;
    v73 = v163;
    v74 = v165;
    v154 = 0;
    v150 = 0xF000000000000000;
  }

  v75 = v164;
  v76 = v156;
  if (v156)
  {
    v77 = v166;
    sub_1B63BE974();

    v78 = sub_1B63BE994();
    (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
  }

  else
  {
    v79 = sub_1B63BE994();
    (*(*(v79 - 8) + 56))(v166, 1, 1, v79);
  }

  v80 = v49;
  v82 = v147;
  v81 = v148;
  v83 = v146;
  v84 = v144;
  v86 = v158;
  v85 = v159;
  v87 = v157;
  if (v157)
  {
    v156 = sub_1B63BEBD4();
    v145 = v88;

    if (v86)
    {
LABEL_12:
      v157 = sub_1B63BEBD4();
      v136 = v89;

      goto LABEL_15;
    }
  }

  else
  {
    v156 = 0;
    v145 = 0;
    if (v158)
    {
      goto LABEL_12;
    }
  }

  v157 = 0;
  v136 = 0;
LABEL_15:
  v90 = v139;
  if (v85)
  {
    v158 = sub_1B63BEBD4();
    v142 = v91;
  }

  else
  {
    v158 = 0;
    v142 = 0;
  }

  v92 = v141;
  if (v90)
  {
    v159 = sub_1B63BEBD4();
    v140 = v93;

    if (v92)
    {
LABEL_20:
      sub_1B63BE974();

      v94 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v159 = 0;
    v140 = 0;
    if (v141)
    {
      goto LABEL_20;
    }
  }

  v94 = 1;
LABEL_23:
  v95 = sub_1B63BE994();
  (*(*(v95 - 8) + 56))(v75, v94, 1, v95);
  v96 = v143;
  if (v143)
  {
    v141 = sub_1B63BEBD4();
    v139 = v97;
  }

  else
  {
    v141 = 0;
    v139 = 0;
  }

  v98 = v160;
  v99 = v149;
  if (v84)
  {
    v160 = sub_1B63BEBD4();
    v143 = v100;

    if (v83)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v160 = 0;
    v143 = 0;
    if (v83)
    {
LABEL_28:
      v144 = sub_1B63BEBD4();
      v138 = v101;

      if (v82)
      {
        goto LABEL_29;
      }

      goto LABEL_37;
    }
  }

  v144 = 0;
  v138 = 0;
  if (v82)
  {
LABEL_29:
    v146 = sub_1B63BEBD4();
    v137 = v102;

    if (v81)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

LABEL_37:
  v146 = 0;
  v137 = 0;
  if (v81)
  {
LABEL_30:
    v135 = sub_1B63BEBD4();
    v104 = v103;

    if (v99)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

LABEL_38:
  v135 = 0;
  v104 = 0;
  if (v99)
  {
LABEL_31:
    v105 = sub_1B63BEBD4();
    v147 = v106;
    v148 = v105;

    if (v98)
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

LABEL_39:
  v147 = 0;
  v148 = 0;
  if (v98)
  {
LABEL_32:
    v107 = sub_1B63BE924();
    v149 = v108;

    v109 = v161;
    if (v161)
    {
      goto LABEL_33;
    }

LABEL_41:
    v110 = 0;
    v112 = 0xF000000000000000;
    if (v80)
    {
      goto LABEL_34;
    }

    goto LABEL_42;
  }

LABEL_40:
  v107 = 0;
  v149 = 0xF000000000000000;
  v109 = v161;
  if (!v161)
  {
    goto LABEL_41;
  }

LABEL_33:
  v110 = sub_1B63BE924();
  v112 = v111;

  if (v80)
  {
LABEL_34:
    v113 = sub_1B63BEBD4();
    v115 = v114;

    goto LABEL_43;
  }

LABEL_42:
  v113 = 0;
  v115 = 0;
LABEL_43:
  v116 = v162;
  if (v162)
  {
    v117 = sub_1B63BEBD4();
    v119 = v118;
  }

  else
  {
    v117 = 0;
    v119 = 0;
  }

  v133 = v119;
  v131 = v113;
  v132 = v115;
  v129 = v104;
  v120 = v155;
  v121 = v107;
  v130 = v107;
  v122 = v165;
  v123 = v163;
  v124 = v149;
  v125 = v154;
  v126 = v150;
  v127 = sub_1B6336F54(v152, v151, v154, v150, v166, v156, v145, v157, v136, v158, v142, v159, v140, v164, v141, v139, v160, v143, v144, v138, v146, v137, v135, v129, v148, v147, a17, v130, v149, v110, v112, v131, v132, v155, v117, v133, v163, v165);

  sub_1B6284F64(v110, v112);
  sub_1B6284F64(v121, v124);
  sub_1B6284F64(v125, v126);
  return v127;
}

- (MSVehicle)initWithStore:(id)a3 colorHex:(id)a4 currentVehicleState:(id)a5 dateOfVehicleIngestion:(id)a6 displayName:(id)a7 headUnitBluetoothIdentifier:(id)a8 headUnitMacAddress:(id)a9 iapIdentifier:(id)a10 lastStateUpdateDate:(id)a11 licensePlate:(id)a12 lprPowerType:(id)a13 lprVehicleType:(id)a14 manufacturer:(id)a15 model:(id)a16 pairedAppIdentifier:(id)a17 positionIndex:(int64_t)a18 powerByConnector:(id)a19 preferredChargingNetworks:(id)a20 siriIntentsIdentifier:(id)a21 supportedConnectors:(id)a22 vehicleIdentifier:(id)a23 vehicleType:(id)a24 year:(id)a25
{
  v137 = a6;
  v146 = self;
  v147 = a5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v155 = &v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v156 = &v122 - v33;
  v149 = a7;
  v150 = a8;
  if (a4)
  {
    v34 = sub_1B63BEBD4();
    v144 = v35;
    v145 = v34;
  }

  else
  {
    v144 = 0;
    v145 = 0;
  }

  v148 = a24;
  v152 = a23;
  v153 = a25;
  v154 = a22;
  v151 = a21;
  v133 = a20;
  v136 = a15;
  v36 = a3;
  v142 = a19;
  v143 = v36;
  v141 = a17;
  v138 = a14;
  v139 = a16;
  v135 = a13;
  v134 = a12;
  v131 = a11;
  v128 = a10;
  v130 = a9;
  if (v147)
  {
    v132 = v147;
    v37 = v137;
    v38 = v137;
    v39 = v149;
    v40 = v150;
    v41 = a9;
    v42 = a10;
    v43 = a11;
    v44 = a12;
    v45 = a13;
    v46 = a14;
    v47 = v136;
    v48 = v136;
    v49 = a16;
    v50 = a17;
    v51 = a19;
    v52 = v133;
    v53 = v133;
    v54 = v151;
    v55 = v154;
    v56 = v152;
    v57 = v148;
    v58 = v153;
    v147 = sub_1B63BE924();
    v140 = v59;

    if (v37)
    {
LABEL_6:
      v60 = v156;
      sub_1B63BE974();

      v61 = sub_1B63BE994();
      (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
      goto LABEL_9;
    }
  }

  else
  {
    v37 = v137;
    v62 = v137;
    v63 = v149;
    v64 = v150;
    v65 = a9;
    v66 = a10;
    v67 = a11;
    v68 = a12;
    v69 = a13;
    v70 = a14;
    v47 = v136;
    v71 = v136;
    v72 = a16;
    v73 = a17;
    v74 = a19;
    v52 = v133;
    v75 = v133;
    v76 = v151;
    v77 = v154;
    v78 = v152;
    v79 = v148;
    v80 = v153;
    v147 = 0;
    v140 = 0xF000000000000000;
    if (v37)
    {
      goto LABEL_6;
    }
  }

  v81 = sub_1B63BE994();
  (*(*(v81 - 8) + 56))(v156, 1, 1, v81);
LABEL_9:
  v82 = v155;
  v84 = v138;
  v83 = v139;
  v85 = v135;
  v86 = v131;
  v88 = v149;
  v87 = v150;
  if (v149)
  {
    v89 = sub_1B63BEBD4();
    v136 = v90;
    v137 = v89;
  }

  else
  {
    v136 = 0;
    v137 = 0;
  }

  v91 = v130;
  if (v87)
  {
    v149 = sub_1B63BEBD4();
    v133 = v92;
  }

  else
  {
    v149 = 0;
    v133 = 0;
  }

  v93 = v128;
  if (v91)
  {
    v150 = sub_1B63BEBD4();
    v132 = v94;

    if (v93)
    {
      goto LABEL_17;
    }

LABEL_20:
    v130 = 0;
    v129 = 0;
    if (v86)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  v150 = 0;
  v132 = 0;
  if (!v128)
  {
    goto LABEL_20;
  }

LABEL_17:
  v130 = sub_1B63BEBD4();
  v129 = v95;

  if (v86)
  {
LABEL_18:
    sub_1B63BE974();

    v96 = 0;
    goto LABEL_22;
  }

LABEL_21:
  v96 = 1;
LABEL_22:
  v97 = sub_1B63BE994();
  (*(*(v97 - 8) + 56))(v82, v96, 1, v97);
  v98 = v134;
  if (v134)
  {
    v131 = sub_1B63BEBD4();
    v128 = v99;
  }

  else
  {
    v131 = 0;
    v128 = 0;
  }

  v100 = v151;
  v101 = v141;
  if (v85)
  {
    v151 = sub_1B63BEBD4();
    v134 = v102;

    if (v84)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v151 = 0;
    v134 = 0;
    if (v84)
    {
LABEL_27:
      v135 = sub_1B63BEBD4();
      v127 = v103;

      if (v47)
      {
        goto LABEL_28;
      }

      goto LABEL_36;
    }
  }

  v135 = 0;
  v127 = 0;
  if (v47)
  {
LABEL_28:
    v138 = sub_1B63BEBD4();
    v126 = v104;

    if (v83)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

LABEL_36:
  v138 = 0;
  v126 = 0;
  if (v83)
  {
LABEL_29:
    v125 = sub_1B63BEBD4();
    v124 = v105;

    if (v101)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

LABEL_37:
  v125 = 0;
  v124 = 0;
  if (v101)
  {
LABEL_30:
    v139 = sub_1B63BEBD4();
    v123 = v106;

    v107 = v142;
    if (v142)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

LABEL_38:
  v139 = 0;
  v123 = 0;
  v107 = v142;
  if (v142)
  {
LABEL_31:
    v141 = sub_1B63BE924();
    v109 = v108;

    v110 = v148;
    if (v52)
    {
      goto LABEL_32;
    }

LABEL_40:
    v111 = 0;
    v113 = 0xF000000000000000;
    if (v100)
    {
      goto LABEL_33;
    }

    goto LABEL_41;
  }

LABEL_39:
  v141 = 0;
  v109 = 0xF000000000000000;
  v110 = v148;
  if (!v52)
  {
    goto LABEL_40;
  }

LABEL_32:
  v111 = sub_1B63BE924();
  v113 = v112;

  if (v100)
  {
LABEL_33:
    v114 = sub_1B63BEBD4();
    v116 = v115;

    goto LABEL_42;
  }

LABEL_41:
  v114 = 0;
  v116 = 0;
LABEL_42:
  v117 = v152;
  if (v152)
  {
    v118 = sub_1B63BEBD4();
    v120 = v119;
  }

  else
  {
    v118 = 0;
    v120 = 0;
  }

  return Vehicle.init(store:colorHex:currentVehicleState:dateOfVehicleIngestion:displayName:headUnitBluetoothIdentifier:headUnitMacAddress:iapIdentifier:lastStateUpdateDate:licensePlate:lprPowerType:lprVehicleType:manufacturer:model:pairedAppIdentifier:positionIndex:powerByConnector:preferredChargingNetworks:siriIntentsIdentifier:supportedConnectors:vehicleIdentifier:vehicleType:year:)(v143, v145, v144, v147, v140, v156, v137, v136, v149, v133, v150, v132, v130, v129, v155, v131, v128, v151, v134, v135, v127, v138, v126, v125, v124, v139, v123, a18, v141, v109, v111, v113, v114, v116, v154, v118, v120, v110, v153);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedVehicle();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B6336468(v7, a4);
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  v6 = *(&v5->super.super.isa + OBJC_IVAR___MSVehicle__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)a3
{
  v4 = self;
  sub_1B6332A68(a3);
}

- (NSNumber)supportedConnectors
{
  v2 = self;
  v3 = sub_1B6334054();

  return v3;
}

- (void)setSupportedConnectors:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B63382BC(a3);
}

- (NSNumber)vehicleType
{
  v2 = self;
  v3 = sub_1B6334E34();

  return v3;
}

- (void)setVehicleType:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B63384E0(a3);
}

- (NSNumber)year
{
  v2 = self;
  v3 = sub_1B6335350();

  return v3;
}

- (void)setYear:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B63386B8(a3);
}

- (MSVehicle)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B6335988(a3, a4, v7, v6);
}

@end