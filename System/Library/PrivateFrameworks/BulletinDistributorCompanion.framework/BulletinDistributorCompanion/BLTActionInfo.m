@interface BLTActionInfo
- (BLTActionInfo)initWithActionType:(int64_t)a3 publisherBulletinID:(id)a4 recordID:(id)a5 sectionID:(id)a6 context:(id)a7;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation BLTActionInfo

- (BLTActionInfo)initWithActionType:(int64_t)a3 publisherBulletinID:(id)a4 recordID:(id)a5 sectionID:(id)a6 context:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v25.receiver = self;
  v25.super_class = BLTActionInfo;
  v16 = [(BLTActionInfo *)&v25 init];
  v17 = v16;
  if (v16)
  {
    v16->_actionType = a3;
    v18 = [v12 copy];
    publisherBulletinID = v17->_publisherBulletinID;
    v17->_publisherBulletinID = v18;

    v20 = [v13 copy];
    recordID = v17->_recordID;
    v17->_recordID = v20;

    v22 = [v14 copy];
    sectionID = v17->_sectionID;
    v17->_sectionID = v22;

    objc_storeStrong(&v17->_context, a7);
  }

  return v17;
}

- (id)succinctDescription
{
  v2 = [(BLTActionInfo *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BLTActionInfo *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(BLTActionInfo *)self succinctDescriptionBuilder];
  v5 = [v4 appendInteger:self->_actionType withName:@"actionType"];
  v6 = [v4 appendObject:self->_publisherBulletinID withName:@"publisherBulletinID"];
  v7 = [v4 appendObject:self->_recordID withName:@"recordID"];
  v8 = [v4 appendObject:self->_sectionID withName:@"sectionID"];
  v9 = [v4 appendObject:self->_context withName:@"context"];

  return v4;
}

@end