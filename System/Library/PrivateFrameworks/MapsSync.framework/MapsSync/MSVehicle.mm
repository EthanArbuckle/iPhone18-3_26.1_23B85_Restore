@interface MSVehicle
+ (Class)managedClass;
- (MSVehicle)initWithColorHex:(id)hex currentVehicleState:(id)state dateOfVehicleIngestion:(id)ingestion displayName:(id)name headUnitBluetoothIdentifier:(id)identifier headUnitMacAddress:(id)address iapIdentifier:(id)iapIdentifier lastStateUpdateDate:(id)self0 licensePlate:(id)self1 lprPowerType:(id)self2 lprVehicleType:(id)self3 manufacturer:(id)self4 model:(id)self5 pairedAppIdentifier:(id)self6 positionIndex:(int64_t)self7 powerByConnector:(id)self8 preferredChargingNetworks:(id)self9 siriIntentsIdentifier:(id)intentsIdentifier supportedConnectors:(id)connectors vehicleIdentifier:(id)vehicleIdentifier vehicleType:(id)a23 year:(id)year;
- (MSVehicle)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSVehicle)initWithStore:(id)store colorHex:(id)hex currentVehicleState:(id)state dateOfVehicleIngestion:(id)ingestion displayName:(id)name headUnitBluetoothIdentifier:(id)identifier headUnitMacAddress:(id)address iapIdentifier:(id)self0 lastStateUpdateDate:(id)self1 licensePlate:(id)self2 lprPowerType:(id)self3 lprVehicleType:(id)self4 manufacturer:(id)self5 model:(id)self6 pairedAppIdentifier:(id)self7 positionIndex:(int64_t)self8 powerByConnector:(id)self9 preferredChargingNetworks:(id)networks siriIntentsIdentifier:(id)intentsIdentifier supportedConnectors:(id)connectors vehicleIdentifier:(id)vehicleIdentifier vehicleType:(id)a24 year:(id)year;
- (NSNumber)supportedConnectors;
- (NSNumber)vehicleType;
- (NSNumber)year;
- (int64_t)positionIndex;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setSupportedConnectors:(id)connectors;
- (void)setVehicleType:(id)type;
- (void)setYear:(id)year;
@end

@implementation MSVehicle

- (MSVehicle)initWithColorHex:(id)hex currentVehicleState:(id)state dateOfVehicleIngestion:(id)ingestion displayName:(id)name headUnitBluetoothIdentifier:(id)identifier headUnitMacAddress:(id)address iapIdentifier:(id)iapIdentifier lastStateUpdateDate:(id)self0 licensePlate:(id)self1 lprPowerType:(id)self2 lprVehicleType:(id)self3 manufacturer:(id)self4 model:(id)self5 pairedAppIdentifier:(id)self6 positionIndex:(int64_t)self7 powerByConnector:(id)self8 preferredChargingNetworks:(id)self9 siriIntentsIdentifier:(id)intentsIdentifier supportedConnectors:(id)connectors vehicleIdentifier:(id)vehicleIdentifier vehicleType:(id)a23 year:(id)year
{
  ingestionCopy = ingestion;
  selfCopy = self;
  stateCopy = state;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v164 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v166 = &v134 - v32;
  identifierCopy = identifier;
  addressCopy = address;
  nameCopy = name;
  if (hex)
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

  yearCopy = year;
  vehicleIdentifierCopy = vehicleIdentifier;
  v163 = a23;
  connectorCopy = connector;
  networksCopy = networks;
  connectorsCopy = connectors;
  modelCopy = model;
  appIdentifierCopy = appIdentifier;
  vehicleTypeCopy = vehicleType;
  manufacturerCopy = manufacturer;
  typeCopy = type;
  plateCopy = plate;
  dateCopy = date;
  iapIdentifierCopy = iapIdentifier;
  if (stateCopy)
  {
    v145 = stateCopy;
    v35 = ingestionCopy;
    v36 = nameCopy;
    v37 = identifierCopy;
    v38 = addressCopy;
    iapIdentifierCopy2 = iapIdentifier;
    dateCopy2 = date;
    plateCopy2 = plate;
    typeCopy2 = type;
    vehicleTypeCopy2 = vehicleType;
    manufacturerCopy2 = manufacturer;
    modelCopy2 = model;
    appIdentifierCopy2 = appIdentifier;
    v47 = connectorCopy;
    v48 = networksCopy;
    intentsIdentifierCopy3 = intentsIdentifier;
    intentsIdentifierCopy2 = intentsIdentifier;
    v51 = connectorsCopy;
    v52 = vehicleIdentifierCopy;
    v53 = v163;
    v54 = yearCopy;
    stateCopy = sub_1B63BE924();
    v150 = v55;
  }

  else
  {
    v56 = ingestionCopy;
    v57 = nameCopy;
    v58 = identifierCopy;
    v59 = addressCopy;
    iapIdentifierCopy3 = iapIdentifier;
    dateCopy3 = date;
    plateCopy3 = plate;
    typeCopy3 = type;
    vehicleTypeCopy3 = vehicleType;
    manufacturerCopy3 = manufacturer;
    modelCopy3 = model;
    appIdentifierCopy3 = appIdentifier;
    v68 = connectorCopy;
    v69 = networksCopy;
    intentsIdentifierCopy3 = intentsIdentifier;
    intentsIdentifierCopy4 = intentsIdentifier;
    connectorsCopy2 = connectors;
    v72 = vehicleIdentifierCopy;
    v73 = v163;
    v74 = yearCopy;
    stateCopy = 0;
    v150 = 0xF000000000000000;
  }

  v75 = v164;
  v76 = ingestionCopy;
  if (ingestionCopy)
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

  v80 = intentsIdentifierCopy3;
  v82 = manufacturerCopy;
  v81 = modelCopy;
  v83 = vehicleTypeCopy;
  v84 = typeCopy;
  v86 = identifierCopy;
  v85 = addressCopy;
  v87 = nameCopy;
  if (nameCopy)
  {
    ingestionCopy = sub_1B63BEBD4();
    v145 = v88;

    if (v86)
    {
LABEL_12:
      nameCopy = sub_1B63BEBD4();
      v136 = v89;

      goto LABEL_15;
    }
  }

  else
  {
    ingestionCopy = 0;
    v145 = 0;
    if (identifierCopy)
    {
      goto LABEL_12;
    }
  }

  nameCopy = 0;
  v136 = 0;
LABEL_15:
  v90 = iapIdentifierCopy;
  if (v85)
  {
    identifierCopy = sub_1B63BEBD4();
    v142 = v91;
  }

  else
  {
    identifierCopy = 0;
    v142 = 0;
  }

  v92 = dateCopy;
  if (v90)
  {
    addressCopy = sub_1B63BEBD4();
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
    addressCopy = 0;
    v140 = 0;
    if (dateCopy)
    {
      goto LABEL_20;
    }
  }

  v94 = 1;
LABEL_23:
  v95 = sub_1B63BE994();
  (*(*(v95 - 8) + 56))(v75, v94, 1, v95);
  v96 = plateCopy;
  if (plateCopy)
  {
    dateCopy = sub_1B63BEBD4();
    iapIdentifierCopy = v97;
  }

  else
  {
    dateCopy = 0;
    iapIdentifierCopy = 0;
  }

  v98 = connectorCopy;
  v99 = appIdentifierCopy;
  if (v84)
  {
    connectorCopy = sub_1B63BEBD4();
    plateCopy = v100;

    if (v83)
    {
      goto LABEL_28;
    }
  }

  else
  {
    connectorCopy = 0;
    plateCopy = 0;
    if (v83)
    {
LABEL_28:
      typeCopy = sub_1B63BEBD4();
      v138 = v101;

      if (v82)
      {
        goto LABEL_29;
      }

      goto LABEL_37;
    }
  }

  typeCopy = 0;
  v138 = 0;
  if (v82)
  {
LABEL_29:
    vehicleTypeCopy = sub_1B63BEBD4();
    v137 = v102;

    if (v81)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

LABEL_37:
  vehicleTypeCopy = 0;
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
    manufacturerCopy = v106;
    modelCopy = v105;

    if (v98)
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

LABEL_39:
  manufacturerCopy = 0;
  modelCopy = 0;
  if (v98)
  {
LABEL_32:
    v107 = sub_1B63BE924();
    appIdentifierCopy = v108;

    v109 = networksCopy;
    if (networksCopy)
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
  appIdentifierCopy = 0xF000000000000000;
  v109 = networksCopy;
  if (!networksCopy)
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
  v116 = vehicleIdentifierCopy;
  if (vehicleIdentifierCopy)
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
  v120 = connectorsCopy;
  v121 = v107;
  v130 = v107;
  v122 = yearCopy;
  v123 = v163;
  v124 = appIdentifierCopy;
  v125 = stateCopy;
  v126 = v150;
  v127 = sub_1B6336F54(v152, v151, stateCopy, v150, v166, ingestionCopy, v145, nameCopy, v136, identifierCopy, v142, addressCopy, v140, v164, dateCopy, iapIdentifierCopy, connectorCopy, plateCopy, typeCopy, v138, vehicleTypeCopy, v137, v135, v129, modelCopy, manufacturerCopy, index, v130, appIdentifierCopy, v110, v112, v131, v132, connectorsCopy, v117, v133, v163, yearCopy);

  sub_1B6284F64(v110, v112);
  sub_1B6284F64(v121, v124);
  sub_1B6284F64(v125, v126);
  return v127;
}

- (MSVehicle)initWithStore:(id)store colorHex:(id)hex currentVehicleState:(id)state dateOfVehicleIngestion:(id)ingestion displayName:(id)name headUnitBluetoothIdentifier:(id)identifier headUnitMacAddress:(id)address iapIdentifier:(id)self0 lastStateUpdateDate:(id)self1 licensePlate:(id)self2 lprPowerType:(id)self3 lprVehicleType:(id)self4 manufacturer:(id)self5 model:(id)self6 pairedAppIdentifier:(id)self7 positionIndex:(int64_t)self8 powerByConnector:(id)self9 preferredChargingNetworks:(id)networks siriIntentsIdentifier:(id)intentsIdentifier supportedConnectors:(id)connectors vehicleIdentifier:(id)vehicleIdentifier vehicleType:(id)a24 year:(id)year
{
  ingestionCopy = ingestion;
  selfCopy = self;
  stateCopy = state;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v155 = &v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v156 = &v122 - v33;
  nameCopy = name;
  identifierCopy = identifier;
  if (hex)
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
  vehicleIdentifierCopy = vehicleIdentifier;
  yearCopy = year;
  connectorsCopy = connectors;
  intentsIdentifierCopy = intentsIdentifier;
  networksCopy = networks;
  manufacturerCopy = manufacturer;
  storeCopy = store;
  connectorCopy = connector;
  v143 = storeCopy;
  appIdentifierCopy = appIdentifier;
  vehicleTypeCopy = vehicleType;
  modelCopy = model;
  typeCopy = type;
  plateCopy = plate;
  dateCopy = date;
  iapIdentifierCopy = iapIdentifier;
  addressCopy = address;
  if (stateCopy)
  {
    v132 = stateCopy;
    v37 = ingestionCopy;
    v38 = ingestionCopy;
    v39 = nameCopy;
    v40 = identifierCopy;
    addressCopy2 = address;
    iapIdentifierCopy2 = iapIdentifier;
    dateCopy2 = date;
    plateCopy2 = plate;
    typeCopy2 = type;
    vehicleTypeCopy2 = vehicleType;
    v47 = manufacturerCopy;
    v48 = manufacturerCopy;
    modelCopy2 = model;
    appIdentifierCopy2 = appIdentifier;
    connectorCopy2 = connector;
    v52 = networksCopy;
    v53 = networksCopy;
    v54 = intentsIdentifierCopy;
    v55 = connectorsCopy;
    v56 = vehicleIdentifierCopy;
    v57 = v148;
    v58 = yearCopy;
    stateCopy = sub_1B63BE924();
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
    v37 = ingestionCopy;
    v62 = ingestionCopy;
    v63 = nameCopy;
    v64 = identifierCopy;
    addressCopy3 = address;
    iapIdentifierCopy3 = iapIdentifier;
    dateCopy3 = date;
    plateCopy3 = plate;
    typeCopy3 = type;
    vehicleTypeCopy3 = vehicleType;
    v47 = manufacturerCopy;
    v71 = manufacturerCopy;
    modelCopy3 = model;
    appIdentifierCopy3 = appIdentifier;
    connectorCopy3 = connector;
    v52 = networksCopy;
    v75 = networksCopy;
    v76 = intentsIdentifierCopy;
    v77 = connectorsCopy;
    v78 = vehicleIdentifierCopy;
    v79 = v148;
    v80 = yearCopy;
    stateCopy = 0;
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
  v84 = vehicleTypeCopy;
  v83 = modelCopy;
  v85 = typeCopy;
  v86 = dateCopy;
  v88 = nameCopy;
  v87 = identifierCopy;
  if (nameCopy)
  {
    v89 = sub_1B63BEBD4();
    manufacturerCopy = v90;
    ingestionCopy = v89;
  }

  else
  {
    manufacturerCopy = 0;
    ingestionCopy = 0;
  }

  v91 = addressCopy;
  if (v87)
  {
    nameCopy = sub_1B63BEBD4();
    networksCopy = v92;
  }

  else
  {
    nameCopy = 0;
    networksCopy = 0;
  }

  v93 = iapIdentifierCopy;
  if (v91)
  {
    identifierCopy = sub_1B63BEBD4();
    v132 = v94;

    if (v93)
    {
      goto LABEL_17;
    }

LABEL_20:
    addressCopy = 0;
    v129 = 0;
    if (v86)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  identifierCopy = 0;
  v132 = 0;
  if (!iapIdentifierCopy)
  {
    goto LABEL_20;
  }

LABEL_17:
  addressCopy = sub_1B63BEBD4();
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
  v98 = plateCopy;
  if (plateCopy)
  {
    dateCopy = sub_1B63BEBD4();
    iapIdentifierCopy = v99;
  }

  else
  {
    dateCopy = 0;
    iapIdentifierCopy = 0;
  }

  v100 = intentsIdentifierCopy;
  v101 = appIdentifierCopy;
  if (v85)
  {
    intentsIdentifierCopy = sub_1B63BEBD4();
    plateCopy = v102;

    if (v84)
    {
      goto LABEL_27;
    }
  }

  else
  {
    intentsIdentifierCopy = 0;
    plateCopy = 0;
    if (v84)
    {
LABEL_27:
      typeCopy = sub_1B63BEBD4();
      v127 = v103;

      if (v47)
      {
        goto LABEL_28;
      }

      goto LABEL_36;
    }
  }

  typeCopy = 0;
  v127 = 0;
  if (v47)
  {
LABEL_28:
    vehicleTypeCopy = sub_1B63BEBD4();
    v126 = v104;

    if (v83)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

LABEL_36:
  vehicleTypeCopy = 0;
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
    modelCopy = sub_1B63BEBD4();
    v123 = v106;

    v107 = connectorCopy;
    if (connectorCopy)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

LABEL_38:
  modelCopy = 0;
  v123 = 0;
  v107 = connectorCopy;
  if (connectorCopy)
  {
LABEL_31:
    appIdentifierCopy = sub_1B63BE924();
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
  appIdentifierCopy = 0;
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
  v117 = vehicleIdentifierCopy;
  if (vehicleIdentifierCopy)
  {
    v118 = sub_1B63BEBD4();
    v120 = v119;
  }

  else
  {
    v118 = 0;
    v120 = 0;
  }

  return Vehicle.init(store:colorHex:currentVehicleState:dateOfVehicleIngestion:displayName:headUnitBluetoothIdentifier:headUnitMacAddress:iapIdentifier:lastStateUpdateDate:licensePlate:lprPowerType:lprVehicleType:manufacturer:model:pairedAppIdentifier:positionIndex:powerByConnector:preferredChargingNetworks:siriIntentsIdentifier:supportedConnectors:vehicleIdentifier:vehicleType:year:)(v143, v145, v144, stateCopy, v140, v156, ingestionCopy, manufacturerCopy, nameCopy, networksCopy, identifierCopy, v132, addressCopy, v129, v155, dateCopy, iapIdentifierCopy, intentsIdentifierCopy, plateCopy, typeCopy, v127, vehicleTypeCopy, v126, v125, v124, modelCopy, v123, index, appIdentifierCopy, v109, v111, v113, v114, v116, connectorsCopy, v118, v120, v110, yearCopy);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedVehicle();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B6336468(objectCopy, load);
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR___MSVehicle__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B6332A68(index);
}

- (NSNumber)supportedConnectors
{
  selfCopy = self;
  v3 = sub_1B6334054();

  return v3;
}

- (void)setSupportedConnectors:(id)connectors
{
  connectorsCopy = connectors;
  selfCopy = self;
  sub_1B63382BC(connectors);
}

- (NSNumber)vehicleType
{
  selfCopy = self;
  v3 = sub_1B6334E34();

  return v3;
}

- (void)setVehicleType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  sub_1B63384E0(type);
}

- (NSNumber)year
{
  selfCopy = self;
  v3 = sub_1B6335350();

  return v3;
}

- (void)setYear:(id)year
{
  yearCopy = year;
  selfCopy = self;
  sub_1B63386B8(year);
}

- (MSVehicle)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B6335988(object, store, loadCopy, parentCopy);
}

@end