@interface MKFCKRoom
- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
@end

@implementation MKFCKRoom

- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(MKFCKModel *)self copyPropertiesFromLocalModel:v7 context:v8];
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
    v11 = [(MKFCKRoom *)self homeZone];

    if (v11)
    {
      [(MKFCKRoom *)self setHomeZone:0];
    }

    v12 = [_MKFApplicationData appDataDictionaryForContainer:v7];
    v13 = [(MKFCKRoom *)self applicationData];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      [(MKFCKRoom *)self setApplicationData:v12];
    }
  }

  return v10;
}

- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = [(MKFCKModel *)self copyPropertiesIntoLocalModel:v7 context:a5];
  if (v8)
  {
    v9 = [(MKFCKRoom *)self applicationData];
    [_MKFApplicationData setAppDataDictionary:v9 forContainer:v7];
  }

  return v8;
}

@end