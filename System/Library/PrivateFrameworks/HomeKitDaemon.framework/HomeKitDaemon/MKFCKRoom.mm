@interface MKFCKRoom
- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
@end

@implementation MKFCKRoom

- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  v9 = [(MKFCKModel *)self copyPropertiesFromLocalModel:modelCopy context:contextCopy];
  if (self)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    homeZone = [(MKFCKRoom *)self homeZone];

    if (homeZone)
    {
      [(MKFCKRoom *)self setHomeZone:0];
    }

    v12 = [_MKFApplicationData appDataDictionaryForContainer:modelCopy];
    applicationData = [(MKFCKRoom *)self applicationData];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      [(MKFCKRoom *)self setApplicationData:v12];
    }
  }

  return v10;
}

- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  modelCopy = model;
  v8 = [(MKFCKModel *)self copyPropertiesIntoLocalModel:modelCopy context:context];
  if (v8)
  {
    applicationData = [(MKFCKRoom *)self applicationData];
    [_MKFApplicationData setAppDataDictionary:applicationData forContainer:modelCopy];
  }

  return v8;
}

@end