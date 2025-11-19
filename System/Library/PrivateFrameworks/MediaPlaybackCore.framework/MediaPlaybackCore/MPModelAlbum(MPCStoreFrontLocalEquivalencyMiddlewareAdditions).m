@interface MPModelAlbum(MPCStoreFrontLocalEquivalencyMiddlewareAdditions)
- (id)MPC_modelObjectWithStoreFrontLocalEquivalentModelObject:()MPCStoreFrontLocalEquivalencyMiddlewareAdditions;
@end

@implementation MPModelAlbum(MPCStoreFrontLocalEquivalencyMiddlewareAdditions)

- (id)MPC_modelObjectWithStoreFrontLocalEquivalentModelObject:()MPCStoreFrontLocalEquivalencyMiddlewareAdditions
{
  v4 = a3;
  v5 = [a1 identifiers];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __122__MPModelAlbum_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke;
  v13[3] = &unk_1E82389D8;
  v6 = v4;
  v14 = v6;
  v7 = [v5 copyWithSource:@"StoreFrontLocalEquivalency" block:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __122__MPModelAlbum_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke_4;
  v11[3] = &unk_1E8238A00;
  v12 = v6;
  v8 = v6;
  v9 = [a1 copyWithIdentifiers:v7 block:v11];

  return v9;
}

@end