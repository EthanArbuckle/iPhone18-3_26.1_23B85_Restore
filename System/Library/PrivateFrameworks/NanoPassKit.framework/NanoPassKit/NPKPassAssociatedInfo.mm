@interface NPKPassAssociatedInfo
- (NPKPassAssociatedInfo)initWithAssociatedInfoModel:(id)model;
- (NPKPassAssociatedInfo)initWithTransitProperties:(id)properties appletState:(id)state balanceFields:(id)fields commutePlanFields:(id)planFields tiles:(id)tiles rangingSuspensionReason:(unint64_t)reason accessories:(id)accessories isHomeAccessRestricted:(BOOL)self0 precursorPassDescription:(id)self1 hasDeviceBoundCommutePlans:(BOOL)self2;
- (id)description;
@end

@implementation NPKPassAssociatedInfo

- (NPKPassAssociatedInfo)initWithAssociatedInfoModel:(id)model
{
  modelCopy = model;
  transitPassProperties = [modelCopy transitPassProperties];
  transitAppletState = [modelCopy transitAppletState];
  balanceFields = [modelCopy balanceFields];
  commutePlanFields = [modelCopy commutePlanFields];
  tiles = [modelCopy tiles];
  rangingSuspensionReason = [modelCopy rangingSuspensionReason];
  accessories = [modelCopy accessories];
  restrictedGuestAccessState = [modelCopy restrictedGuestAccessState];
  value = [restrictedGuestAccessState value];
  bOOLValue = [value BOOLValue];
  precursorPassDescription = [modelCopy precursorPassDescription];
  hasDeviceBoundCommutePlans = [modelCopy hasDeviceBoundCommutePlans];

  LOBYTE(v16) = hasDeviceBoundCommutePlans;
  LOBYTE(v15) = bOOLValue;
  v13 = [(NPKPassAssociatedInfo *)self initWithTransitProperties:transitPassProperties appletState:transitAppletState balanceFields:balanceFields commutePlanFields:commutePlanFields tiles:tiles rangingSuspensionReason:rangingSuspensionReason accessories:accessories isHomeAccessRestricted:v15 precursorPassDescription:precursorPassDescription hasDeviceBoundCommutePlans:v16];

  return v13;
}

- (NPKPassAssociatedInfo)initWithTransitProperties:(id)properties appletState:(id)state balanceFields:(id)fields commutePlanFields:(id)planFields tiles:(id)tiles rangingSuspensionReason:(unint64_t)reason accessories:(id)accessories isHomeAccessRestricted:(BOOL)self0 precursorPassDescription:(id)self1 hasDeviceBoundCommutePlans:(BOOL)self2
{
  propertiesCopy = properties;
  stateCopy = state;
  fieldsCopy = fields;
  planFieldsCopy = planFields;
  tilesCopy = tiles;
  accessoriesCopy = accessories;
  descriptionCopy = description;
  v35.receiver = self;
  v35.super_class = NPKPassAssociatedInfo;
  v23 = [(NPKPassAssociatedInfo *)&v35 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_transitProperties, properties);
    objc_storeStrong(&v24->_transitAppletState, state);
    v25 = [fieldsCopy copy];
    balanceFields = v24->_balanceFields;
    v24->_balanceFields = v25;

    v27 = [planFieldsCopy copy];
    commutePlanFields = v24->_commutePlanFields;
    v24->_commutePlanFields = v27;

    v29 = [tilesCopy copy];
    tiles = v24->_tiles;
    v24->_tiles = v29;

    v24->_rangingSuspensionReason = reason;
    objc_storeStrong(&v24->_precursorPassDescription, description);
    objc_storeStrong(&v24->_accessories, accessories);
    v24->_isHomeAccessRestricted = restricted;
    v24->_hasDeviceBoundCommutePlans = plans;
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