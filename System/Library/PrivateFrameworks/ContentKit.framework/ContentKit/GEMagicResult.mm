@interface GEMagicResult
- (GEMagicResult)initWithMimeType:(id)type description:(id)description typeHierarchy:(id)hierarchy;
- (void)dealloc;
@end

@implementation GEMagicResult

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GEMagicResult;
  [(GEMagicResult *)&v3 dealloc];
}

- (GEMagicResult)initWithMimeType:(id)type description:(id)description typeHierarchy:(id)hierarchy
{
  v10.receiver = self;
  v10.super_class = GEMagicResult;
  v8 = [(GEMagicResult *)&v10 init];
  if (v8)
  {
    v8->mimeType = [type copy];
    v8->description = [description copy];
    v8->uniformTypeHierarchy = [hierarchy copy];
    if ([(NSArray *)[(GEMagicResult *)v8 uniformTypeHierarchy] count])
    {
      v8->uniformType = [(NSArray *)[(GEMagicResult *)v8 uniformTypeHierarchy] objectAtIndex:0];
    }
  }

  return v8;
}

@end