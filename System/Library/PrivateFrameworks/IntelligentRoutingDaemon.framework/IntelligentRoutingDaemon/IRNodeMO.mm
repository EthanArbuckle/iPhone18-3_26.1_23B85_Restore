@interface IRNodeMO
+ (id)nodeMOFromNodeDO:(id)a3 forCandidate:(id)a4 inManagedObjectContext:(id)a5;
+ (void)setPropertiesOfNodeMO:(id)a3 withNodeDO:(id)a4;
- (id)convert;
@end

@implementation IRNodeMO

+ (id)nodeMOFromNodeDO:(id)a3 forCandidate:(id)a4 inManagedObjectContext:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = [[IRNodeMO alloc] initWithContext:v7];
  v9 = [v6 avOutputDevice];

  if (v9)
  {
    v10 = [[IRAVOutputDeviceMO alloc] initWithContext:v7];
    [(IRNodeMO *)v8 setAvOutputDevice:v10];
  }

  v11 = [v6 rapportDevice];

  if (v11)
  {
    v12 = [[IRRapportDeviceMO alloc] initWithContext:v7];
    [(IRNodeMO *)v8 setRapportDevice:v12];
  }

  [IRNodeMO setPropertiesOfNodeMO:v8 withNodeDO:v6];

  return v8;
}

+ (void)setPropertiesOfNodeMO:(id)a3 withNodeDO:(id)a4
{
  v15 = a3;
  v5 = a4;
  v6 = [v5 avOutputDevice];

  if (v6)
  {
    v7 = [v15 avOutputDevice];
    v8 = [v5 avOutputDevice];
    [IRAVOutputDeviceMO setPropertiesOfAVOutputDeviceMO:v7 withAVOutputDevice:v8];
  }

  v9 = [v5 rapportDevice];

  if (v9)
  {
    v10 = [v15 rapportDevice];
    v11 = [v5 rapportDevice];
    [IRRapportDeviceMO setPropertiesOfRapportDeviceMO:v10 withRapportDO:v11];
  }

  v12 = [v5 avOutpuDeviceIdentifier];
  [v15 setAvOutpuDeviceIdentifier:v12];

  v13 = [v5 rapportIdentifier];
  [v15 setRapportIdentifier:v13];

  v14 = [v5 idsIdentifier];
  [v15 setIdsIdentifier:v14];

  [v15 setIsLocal:{objc_msgSend(v5, "isLocal")}];
}

- (id)convert
{
  v3 = [IRNodeDO alloc];
  v4 = [(IRNodeMO *)self avOutpuDeviceIdentifier];
  v5 = [(IRNodeMO *)self rapportIdentifier];
  v6 = [(IRNodeMO *)self idsIdentifier];
  v7 = [(IRNodeMO *)self avOutputDevice];
  v8 = [v7 convert];
  v9 = [(IRNodeMO *)self rapportDevice];
  v10 = [v9 convert];
  v11 = [(IRNodeDO *)v3 initWithAvOutpuDeviceIdentifier:v4 rapportIdentifier:v5 idsIdentifier:v6 avOutputDevice:v8 rapportDevice:v10 isLocal:[(IRNodeMO *)self isLocal]];

  return v11;
}

@end