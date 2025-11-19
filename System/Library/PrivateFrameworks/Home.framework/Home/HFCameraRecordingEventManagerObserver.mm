@interface HFCameraRecordingEventManagerObserver
- (HFCameraRecordingEventManagerObserver)init;
- (NSArray)recordingEvents;
- (void)recordingEventManager:(id)a3 didUpdateRecordingEvents:(id)a4;
@end

@implementation HFCameraRecordingEventManagerObserver

- (NSArray)recordingEvents
{
  v2 = (self + OBJC_IVAR___HFCameraRecordingEventManagerObserver_recordingEventsByUUID);
  v3 = self;
  os_unfair_lock_lock(v2);
  v4 = *&v2[2]._os_unfair_lock_opaque;

  v8 = sub_20DA55144(v5);
  sub_20DA5ECD0(&v8);

  os_unfair_lock_unlock(v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844370, &qword_20DD94DA0);
  v6 = sub_20DD64FB4();

  return v6;
}

- (void)recordingEventManager:(id)a3 didUpdateRecordingEvents:(id)a4
{
  v6 = sub_20DD651E4();
  v7 = a3;
  v8 = self;
  sub_20DA62158(v6);
}

- (HFCameraRecordingEventManagerObserver)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR___HFCameraRecordingEventManagerObserver_recordingEventsByUUID;
  v5 = sub_20D9D5DF8(MEMORY[0x277D84F90]);
  *v4 = 0;
  *(v4 + 1) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HFCameraRecordingEventManagerObserver *)&v7 init];
}

@end