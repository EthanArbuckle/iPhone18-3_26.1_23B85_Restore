@interface AVConferenceBackedRemoteVideoClient
- (void)remoteVideoServerDidDie:(id)a3;
@end

@implementation AVConferenceBackedRemoteVideoClient

- (void)remoteVideoServerDidDie:(id)a3
{
  sub_2584D3A58();
  swift_allocError();
  *v4 = 0;
  v5 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C40, &qword_25853B990);
  sub_2585337FC();
}

@end