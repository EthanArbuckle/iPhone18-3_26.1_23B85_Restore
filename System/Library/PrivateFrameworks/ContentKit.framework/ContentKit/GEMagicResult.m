@interface GEMagicResult
- (GEMagicResult)initWithMimeType:(id)a3 description:(id)a4 typeHierarchy:(id)a5;
- (void)dealloc;
@end

@implementation GEMagicResult

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GEMagicResult;
  [(GEMagicResult *)&v3 dealloc];
}

- (GEMagicResult)initWithMimeType:(id)a3 description:(id)a4 typeHierarchy:(id)a5
{
  v10.receiver = self;
  v10.super_class = GEMagicResult;
  v8 = [(GEMagicResult *)&v10 init];
  if (v8)
  {
    v8->mimeType = [a3 copy];
    v8->description = [a4 copy];
    v8->uniformTypeHierarchy = [a5 copy];
    if ([(NSArray *)[(GEMagicResult *)v8 uniformTypeHierarchy] count])
    {
      v8->uniformType = [(NSArray *)[(GEMagicResult *)v8 uniformTypeHierarchy] objectAtIndex:0];
    }
  }

  return v8;
}

@end