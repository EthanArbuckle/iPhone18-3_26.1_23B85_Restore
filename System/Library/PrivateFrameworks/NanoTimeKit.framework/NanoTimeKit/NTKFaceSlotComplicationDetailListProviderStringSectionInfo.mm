@interface NTKFaceSlotComplicationDetailListProviderStringSectionInfo
- (BOOL)isEqual:(id)a3;
- (NTKFaceSlotComplicationDetailListProviderStringSectionInfo)initWithGroupName:(id)a3;
@end

@implementation NTKFaceSlotComplicationDetailListProviderStringSectionInfo

- (NTKFaceSlotComplicationDetailListProviderStringSectionInfo)initWithGroupName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NTKFaceSlotComplicationDetailListProviderStringSectionInfo;
  v5 = [(NTKFaceSlotComplicationDetailListProviderStringSectionInfo *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 groupName];
    if (v5 == self->_groupName)
    {
      v7 = 1;
    }

    else
    {
      v6 = [v4 groupName];
      v7 = [v6 isEqual:self->_groupName];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end