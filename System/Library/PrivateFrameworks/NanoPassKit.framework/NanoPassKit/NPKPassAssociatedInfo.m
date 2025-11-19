@interface NPKPassAssociatedInfo
- (NPKPassAssociatedInfo)initWithAssociatedInfoModel:(id)a3;
- (NPKPassAssociatedInfo)initWithTransitProperties:(id)a3 appletState:(id)a4 balanceFields:(id)a5 commutePlanFields:(id)a6 tiles:(id)a7 rangingSuspensionReason:(unint64_t)a8 accessories:(id)a9 isHomeAccessRestricted:(BOOL)a10 precursorPassDescription:(id)a11 hasDeviceBoundCommutePlans:(BOOL)a12;
- (id)description;
@end

@implementation NPKPassAssociatedInfo

- (NPKPassAssociatedInfo)initWithAssociatedInfoModel:(id)a3
{
  v4 = a3;
  v5 = [v4 transitPassProperties];
  v20 = [v4 transitAppletState];
  v19 = [v4 balanceFields];
  v18 = [v4 commutePlanFields];
  v6 = [v4 tiles];
  v17 = [v4 rangingSuspensionReason];
  v7 = [v4 accessories];
  v8 = [v4 restrictedGuestAccessState];
  v9 = [v8 value];
  v10 = [v9 BOOLValue];
  v11 = [v4 precursorPassDescription];
  v12 = [v4 hasDeviceBoundCommutePlans];

  LOBYTE(v16) = v12;
  LOBYTE(v15) = v10;
  v13 = [(NPKPassAssociatedInfo *)self initWithTransitProperties:v5 appletState:v20 balanceFields:v19 commutePlanFields:v18 tiles:v6 rangingSuspensionReason:v17 accessories:v7 isHomeAccessRestricted:v15 precursorPassDescription:v11 hasDeviceBoundCommutePlans:v16];

  return v13;
}

- (NPKPassAssociatedInfo)initWithTransitProperties:(id)a3 appletState:(id)a4 balanceFields:(id)a5 commutePlanFields:(id)a6 tiles:(id)a7 rangingSuspensionReason:(unint64_t)a8 accessories:(id)a9 isHomeAccessRestricted:(BOOL)a10 precursorPassDescription:(id)a11 hasDeviceBoundCommutePlans:(BOOL)a12
{
  v34 = a3;
  v33 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v22 = a11;
  v35.receiver = self;
  v35.super_class = NPKPassAssociatedInfo;
  v23 = [(NPKPassAssociatedInfo *)&v35 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_transitProperties, a3);
    objc_storeStrong(&v24->_transitAppletState, a4);
    v25 = [v18 copy];
    balanceFields = v24->_balanceFields;
    v24->_balanceFields = v25;

    v27 = [v19 copy];
    commutePlanFields = v24->_commutePlanFields;
    v24->_commutePlanFields = v27;

    v29 = [v20 copy];
    tiles = v24->_tiles;
    v24->_tiles = v29;

    v24->_rangingSuspensionReason = a8;
    objc_storeStrong(&v24->_precursorPassDescription, a11);
    objc_storeStrong(&v24->_accessories, a9);
    v24->_isHomeAccessRestricted = a10;
    v24->_hasDeviceBoundCommutePlans = a12;
  }

  return v24;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = *&self->_balanceFields;
  v6 = [v3 stringWithFormat:@"<%@:%p> {transitProperties:%@, appletState:%@, balanceFields:%@ commutePlanFields:%@, tiles:%@, rangingSuspensionReason:%lu, precursorPassDescription:%@, hasDeviceBoundCommutePlans:%lu", v4, self, self->_transitProperties, self->_transitAppletState, self->_balanceFields, self->_commutePlanFields, self->_tiles, self->_rangingSuspensionReason, self->_precursorPassDescription, self->_hasDeviceBoundCommutePlans];
  v7 = [v6 mutableCopy];

  [v7 appendFormat:@", accessories:%@", self->_accessories];

  return v7;
}

@end