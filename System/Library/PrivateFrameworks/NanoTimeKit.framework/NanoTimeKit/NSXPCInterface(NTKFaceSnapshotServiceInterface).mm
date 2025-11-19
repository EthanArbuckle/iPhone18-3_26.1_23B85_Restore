@interface NSXPCInterface(NTKFaceSnapshotServiceInterface)
+ (id)faceSnapshotServiceInterface;
@end

@implementation NSXPCInterface(NTKFaceSnapshotServiceInterface)

+ (id)faceSnapshotServiceInterface
{
  if (faceSnapshotServiceInterface_onceToken != -1)
  {
    +[NSXPCInterface(NTKFaceSnapshotServiceInterface) faceSnapshotServiceInterface];
  }

  v1 = faceSnapshotServiceInterface_interface;

  return v1;
}

@end