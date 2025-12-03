@interface _BMIPBridgeLibrary
+ (void)addToUnifiedLibraryWithBiomeLibraryNode:(id)node;
@end

@implementation _BMIPBridgeLibrary

+ (void)addToUnifiedLibraryWithBiomeLibraryNode:(id)node
{
  swift_unknownObjectRetain();
  static _BMIPBridgeLibrary.addToUnifiedLibrary(biomeLibraryNode:)(node);

  swift_unknownObjectRelease();
}

@end