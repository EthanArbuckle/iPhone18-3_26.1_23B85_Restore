@interface OCXRelationship
- (OCXRelationship)initWithId:(unint64_t)id type:(id)type target:(id)target external:(BOOL)external;
- (void)writeToStreamWriter:(id)writer;
@end

@implementation OCXRelationship

- (OCXRelationship)initWithId:(unint64_t)id type:(id)type target:(id)target external:(BOOL)external
{
  typeCopy = type;
  targetCopy = target;
  v20.receiver = self;
  v20.super_class = OCXRelationship;
  v13 = [(OCXRelationship *)&v20 init];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:id];
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    stringValue = [v14 stringValue];
    v17 = [v15 initWithFormat:@"rId%@", stringValue];
    mIdString = v13->mIdString;
    v13->mIdString = v17;

    objc_storeStrong(&v13->mType, type);
    objc_storeStrong(&v13->mTarget, target);
    v13->mExternal = external;
  }

  return v13;
}

- (void)writeToStreamWriter:(id)writer
{
  writerCopy = writer;
  [writerCopy startPlainElement:@"Relationship"];
  [writerCopy writePlainAttribute:@"Id" content:self->mIdString];
  [writerCopy writePlainAttribute:@"Type" content:self->mType];
  [writerCopy writePlainAttribute:@"Target" content:self->mTarget];
  if (self->mExternal)
  {
    [writerCopy writePlainAttribute:@"TargetMode" content:@"External"];
  }

  [writerCopy endElement];
}

@end