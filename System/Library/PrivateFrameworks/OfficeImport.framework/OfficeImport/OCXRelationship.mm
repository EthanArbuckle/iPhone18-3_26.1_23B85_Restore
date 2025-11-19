@interface OCXRelationship
- (OCXRelationship)initWithId:(unint64_t)a3 type:(id)a4 target:(id)a5 external:(BOOL)a6;
- (void)writeToStreamWriter:(id)a3;
@end

@implementation OCXRelationship

- (OCXRelationship)initWithId:(unint64_t)a3 type:(id)a4 target:(id)a5 external:(BOOL)a6
{
  v11 = a4;
  v12 = a5;
  v20.receiver = self;
  v20.super_class = OCXRelationship;
  v13 = [(OCXRelationship *)&v20 init];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a3];
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = [v14 stringValue];
    v17 = [v15 initWithFormat:@"rId%@", v16];
    mIdString = v13->mIdString;
    v13->mIdString = v17;

    objc_storeStrong(&v13->mType, a4);
    objc_storeStrong(&v13->mTarget, a5);
    v13->mExternal = a6;
  }

  return v13;
}

- (void)writeToStreamWriter:(id)a3
{
  v4 = a3;
  [v4 startPlainElement:@"Relationship"];
  [v4 writePlainAttribute:@"Id" content:self->mIdString];
  [v4 writePlainAttribute:@"Type" content:self->mType];
  [v4 writePlainAttribute:@"Target" content:self->mTarget];
  if (self->mExternal)
  {
    [v4 writePlainAttribute:@"TargetMode" content:@"External"];
  }

  [v4 endElement];
}

@end