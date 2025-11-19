@interface GraphSimulationXPC.Server
- (void)mockTripleEntityTaggingWithContactId:(NSString *)a3 inferredRelationshipLabel:(NSString *)a4 completion:(id)a5;
@end

@implementation GraphSimulationXPC.Server

- (void)mockTripleEntityTaggingWithContactId:(NSString *)a3 inferredRelationshipLabel:(NSString *)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_1C446D134(&unk_1C4F37240, v9);
}

@end