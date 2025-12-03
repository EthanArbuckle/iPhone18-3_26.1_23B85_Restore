@interface NTKWidgetComplicationDeviceProvider
+ (NTKWidgetComplicationDeviceProvider)sharedInstance;
- (NSString)activeDeviceID;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation NTKWidgetComplicationDeviceProvider

+ (NTKWidgetComplicationDeviceProvider)sharedInstance
{
  if (qword_27DA2CB58 != -1)
  {
    swift_once();
  }

  v3 = qword_27DA2D170;

  return v3;
}

- (NSString)activeDeviceID
{
  v2 = (self + OBJC_IVAR___NTKWidgetComplicationDeviceProvider_activeDeviceIDLock);
  selfCopy = self;
  os_unfair_lock_lock(v2);
  v4 = *&v2[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v2);

  if (v4)
  {
    v5 = sub_22DCB611C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR___NTKWidgetComplicationDeviceProvider_taskLock);
  selfCopy = self;
  os_unfair_lock_lock(v4);
  if (*&v4[2]._os_unfair_lock_opaque)
  {
    sub_22DCB634C();
  }

  os_unfair_lock_unlock(v4);
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(NTKWidgetComplicationDeviceProvider *)&v6 dealloc];
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_22DCB64BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  WidgetComplicationDeviceProvider.addObserver(_:)(v6);

  sub_22D9CA164(v6, &qword_27DA2D188);
}

- (void)removeObserver:(id)observer
{
  v5 = self + OBJC_IVAR___NTKWidgetComplicationDeviceProvider_observersLock;
  swift_unknownObjectRetain();
  selfCopy = self;
  os_unfair_lock_lock(v5);
  [*(v5 + 1) removeObject_];
  os_unfair_lock_unlock(v5);
  swift_unknownObjectRelease();
}

@end