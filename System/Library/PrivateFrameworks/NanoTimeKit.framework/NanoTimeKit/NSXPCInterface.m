@interface NSXPCInterface
@end

@implementation NSXPCInterface

void __79__NSXPCInterface_NTKFaceSnapshotServiceInterface__faceSnapshotServiceInterface__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28A8ADF30];
  v1 = faceSnapshotServiceInterface_interface;
  faceSnapshotServiceInterface_interface = v0;

  v3 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [faceSnapshotServiceInterface_interface setClasses:v3 forSelector:sel_requestSnapshotOfFaceInstanceDescriptor_options_completion_ argumentIndex:0 ofReply:1];
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [faceSnapshotServiceInterface_interface setClasses:v2 forSelector:sel_requestSnapshotOfFaceInstanceDescriptor_options_completion_ argumentIndex:1 ofReply:1];
}

@end