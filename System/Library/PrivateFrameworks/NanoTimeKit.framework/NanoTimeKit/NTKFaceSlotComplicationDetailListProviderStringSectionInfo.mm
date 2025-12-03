@interface NTKFaceSlotComplicationDetailListProviderStringSectionInfo
- (BOOL)isEqual:(id)equal;
- (NTKFaceSlotComplicationDetailListProviderStringSectionInfo)initWithGroupName:(id)name;
@end

@implementation NTKFaceSlotComplicationDetailListProviderStringSectionInfo

- (NTKFaceSlotComplicationDetailListProviderStringSectionInfo)initWithGroupName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = NTKFaceSlotComplicationDetailListProviderStringSectionInfo;
  v5 = [(NTKFaceSlotComplicationDetailListProviderStringSectionInfo *)&v10 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_284110E98;
    }

    objc_storeStrong(&v5->_groupName, v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    groupName = [equalCopy groupName];
    if (groupName == self->_groupName)
    {
      v7 = 1;
    }

    else
    {
      groupName2 = [equalCopy groupName];
      v7 = [groupName2 isEqual:self->_groupName];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end