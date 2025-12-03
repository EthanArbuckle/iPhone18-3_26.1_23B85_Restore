@interface _MKFMediaPlaybackAction
+ (id)modelIDForParentRelationshipTo:(id)to;
- (MKFHome)home;
- (MKFMediaPlaybackActionDatabaseID)databaseID;
- (NSArray)accessories;
- (void)willSave;
@end

@implementation _MKFMediaPlaybackAction

- (NSArray)accessories
{
  v2 = [(_MKFMediaPlaybackAction *)self valueForKey:@"accessories_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFHome)home
{
  actionSet = [(_MKFMediaPlaybackAction *)self actionSet];
  home = [actionSet home];

  return home;
}

- (MKFMediaPlaybackActionDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFMediaPlaybackActionDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (void)willSave
{
  v14 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = _MKFMediaPlaybackAction;
  [(_MKFModel *)&v11 willSave];
  if (([(_MKFMediaPlaybackAction *)self isDeleted]& 1) == 0)
  {
    if ([(_MKFMediaPlaybackAction *)self hasChanges])
    {
      accessories = [(_MKFMediaPlaybackAction *)self accessories];
      v4 = [accessories count];

      if (!v4)
      {
        v5 = objc_autoreleasePoolPush();
        selfCopy = self;
        v7 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = HMFGetLogIdentifier();
          *buf = 138543362;
          v13 = v8;
          _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Deleting playback action as it no longer has any accessories", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v5);
        managedObjectContext = [(_MKFMediaPlaybackAction *)selfCopy managedObjectContext];
        [managedObjectContext deleteObject:selfCopy];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)modelIDForParentRelationshipTo:(id)to
{
  toCopy = to;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

@end