@interface GraphSimulationXPC.Server
- (void)mockTripleEntityTaggingWithContactId:(NSString *)id inferredRelationshipLabel:(NSString *)label completion:(id)completion;
@end

@implementation GraphSimulationXPC.Server

- (void)mockTripleEntityTaggingWithContactId:(NSString *)id inferredRelationshipLabel:(NSString *)label completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  v9[2] = id;
  v9[3] = label;
  v9[4] = v8;
  v9[5] = self;
  idCopy = id;
  labelCopy = label;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F37240, v9);
}

@end