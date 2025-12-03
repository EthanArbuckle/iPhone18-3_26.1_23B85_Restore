@interface MPModelPlaylistEntry(MPCStoreFrontLocalEquivalencyMiddlewareAdditions)
- (id)MPC_modelObjectWithStoreFrontLocalEquivalentModelObject:()MPCStoreFrontLocalEquivalencyMiddlewareAdditions;
@end

@implementation MPModelPlaylistEntry(MPCStoreFrontLocalEquivalencyMiddlewareAdditions)

- (id)MPC_modelObjectWithStoreFrontLocalEquivalentModelObject:()MPCStoreFrontLocalEquivalencyMiddlewareAdditions
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__29075;
  v16 = __Block_byref_object_dispose__29076;
  selfCopy = self;
  v5 = MEMORY[0x1E69706F8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __130__MPModelPlaylistEntry_MPCStoreFrontLocalEquivalencyMiddlewareAdditions__MPC_modelObjectWithStoreFrontLocalEquivalentModelObject___block_invoke;
  v9[3] = &unk_1E8238A50;
  v9[4] = selfCopy;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 performWithoutEnforcement:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

@end