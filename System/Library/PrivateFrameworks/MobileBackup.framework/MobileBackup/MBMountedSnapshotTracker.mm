@interface MBMountedSnapshotTracker
- (MBMountedSnapshotTracker)init;
- (void)trackSnapshotForVolume:(id)volume snapshotName:(id)name mountPoint:(id)point;
@end

@implementation MBMountedSnapshotTracker

- (MBMountedSnapshotTracker)init
{
  v8.receiver = self;
  v8.super_class = MBMountedSnapshotTracker;
  v2 = [(MBMountedSnapshotTracker *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mountedSnapshots = v2->_mountedSnapshots;
    v2->_mountedSnapshots = v3;

    v5 = objc_opt_new();
    snapshotMountPointsByVolume = v2->_snapshotMountPointsByVolume;
    v2->_snapshotMountPointsByVolume = v5;
  }

  return v2;
}

- (void)trackSnapshotForVolume:(id)volume snapshotName:(id)name mountPoint:(id)point
{
  volumeCopy = volume;
  nameCopy = name;
  pointCopy = point;
  v10 = objc_opt_new();
  [v10 setSnapshotName:nameCopy];
  [v10 setVolumeMountPoint:volumeCopy];
  [v10 setSnapshotMountPoint:pointCopy];
  [(NSMutableArray *)self->_mountedSnapshots addObject:v10];
  [(NSMutableDictionary *)self->_snapshotMountPointsByVolume objectForKeyedSubscript:volumeCopy];
  if (objc_claimAutoreleasedReturnValue())
  {
    __assert_rtn("[MBMountedSnapshotTracker trackSnapshotForVolume:snapshotName:mountPoint:]", "MBMountedSnapshotTracker.m", 46, "_snapshotMountPointsByVolume[volumeMountPoint] == nil");
  }

  [(NSMutableDictionary *)self->_snapshotMountPointsByVolume setObject:pointCopy forKeyedSubscript:volumeCopy];
}

@end