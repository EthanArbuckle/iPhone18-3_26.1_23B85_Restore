@interface BLTActionInfo
- (BLTActionInfo)initWithActionType:(int64_t)type publisherBulletinID:(id)d recordID:(id)iD sectionID:(id)sectionID context:(id)context;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation BLTActionInfo

- (BLTActionInfo)initWithActionType:(int64_t)type publisherBulletinID:(id)d recordID:(id)iD sectionID:(id)sectionID context:(id)context
{
  dCopy = d;
  iDCopy = iD;
  sectionIDCopy = sectionID;
  contextCopy = context;
  v25.receiver = self;
  v25.super_class = BLTActionInfo;
  v16 = [(BLTActionInfo *)&v25 init];
  v17 = v16;
  if (v16)
  {
    v16->_actionType = type;
    v18 = [dCopy copy];
    publisherBulletinID = v17->_publisherBulletinID;
    v17->_publisherBulletinID = v18;

    v20 = [iDCopy copy];
    recordID = v17->_recordID;
    v17->_recordID = v20;

    v22 = [sectionIDCopy copy];
    sectionID = v17->_sectionID;
    v17->_sectionID = v22;

    objc_storeStrong(&v17->_context, context);
  }

  return v17;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BLTActionInfo *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BLTActionInfo *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BLTActionInfo *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendInteger:self->_actionType withName:@"actionType"];
  v6 = [succinctDescriptionBuilder appendObject:self->_publisherBulletinID withName:@"publisherBulletinID"];
  v7 = [succinctDescriptionBuilder appendObject:self->_recordID withName:@"recordID"];
  v8 = [succinctDescriptionBuilder appendObject:self->_sectionID withName:@"sectionID"];
  v9 = [succinctDescriptionBuilder appendObject:self->_context withName:@"context"];

  return succinctDescriptionBuilder;
}

@end