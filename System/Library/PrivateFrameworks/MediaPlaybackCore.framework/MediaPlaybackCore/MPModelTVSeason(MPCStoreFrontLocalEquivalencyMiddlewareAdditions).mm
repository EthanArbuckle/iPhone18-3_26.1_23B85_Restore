@interface MPModelTVSeason(MPCStoreFrontLocalEquivalencyMiddlewareAdditions)
- (id)MPC_modelObjectWithStoreFrontLocalEquivalentModelObject:()MPCStoreFrontLocalEquivalencyMiddlewareAdditions;
@end

@implementation MPModelTVSeason(MPCStoreFrontLocalEquivalencyMiddlewareAdditions)

- (id)MPC_modelObjectWithStoreFrontLocalEquivalentModelObject:()MPCStoreFrontLocalEquivalencyMiddlewareAdditions
{
  v4 = a3;
  identifiers = [self identifiers];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __125__MPModelTVSeason_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke;
  v13[3] = &unk_1E82389D8;
  v6 = v4;
  v14 = v6;
  v7 = [identifiers copyWithSource:@"StoreFrontLocalEquivalency" block:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __125__MPModelTVSeason_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_4;
  v11[3] = &unk_1E8238B18;
  v12 = v6;
  v8 = v6;
  v9 = [self copyWithIdentifiers:v7 block:v11];

  return v9;
}

@end