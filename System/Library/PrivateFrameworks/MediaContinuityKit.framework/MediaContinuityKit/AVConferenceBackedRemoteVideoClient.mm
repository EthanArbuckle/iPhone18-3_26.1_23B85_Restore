@interface AVConferenceBackedRemoteVideoClient
- (void)remoteVideoServerDidDie:(id)die;
@end

@implementation AVConferenceBackedRemoteVideoClient

- (void)remoteVideoServerDidDie:(id)die
{
  sub_2584D3A58();
  swift_allocError();
  *v4 = 0;
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C40, &qword_25853B990);
  sub_2585337FC();
}

@end