@interface TDImageStackAsset
- (BOOL)hasProduction;
- (id)imageStackDataWithDocument:(id)document;
@end

@implementation TDImageStackAsset

- (id)imageStackDataWithDocument:(id)document
{
  v3 = [-[TDAsset fileURLWithDocument:](self fileURLWithDocument:{document), "URLByAppendingPathComponent:isDirectory:", @"Contents.json", 0}];
  v5 = 0;
  return [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3 options:2 error:&v5];
}

- (BOOL)hasProduction
{
  renditions = [(TDImageStackAsset *)self renditions];
  if (renditions)
  {
    LOBYTE(renditions) = [-[TDImageStackAsset renditions](self "renditions")] != 0;
  }

  return renditions;
}

@end