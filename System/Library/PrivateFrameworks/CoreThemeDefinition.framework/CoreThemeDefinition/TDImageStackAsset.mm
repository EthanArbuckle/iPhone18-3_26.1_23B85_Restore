@interface TDImageStackAsset
- (BOOL)hasProduction;
- (id)imageStackDataWithDocument:(id)a3;
@end

@implementation TDImageStackAsset

- (id)imageStackDataWithDocument:(id)a3
{
  v3 = [-[TDAsset fileURLWithDocument:](self fileURLWithDocument:{a3), "URLByAppendingPathComponent:isDirectory:", @"Contents.json", 0}];
  v5 = 0;
  return [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3 options:2 error:&v5];
}

- (BOOL)hasProduction
{
  v3 = [(TDImageStackAsset *)self renditions];
  if (v3)
  {
    LOBYTE(v3) = [-[TDImageStackAsset renditions](self "renditions")] != 0;
  }

  return v3;
}

@end