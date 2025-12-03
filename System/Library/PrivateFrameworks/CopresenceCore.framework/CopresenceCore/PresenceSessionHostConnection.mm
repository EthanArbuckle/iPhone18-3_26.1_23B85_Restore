@interface PresenceSessionHostConnection
- (void)updateMembers:(id)members completion:(id)completion;
@end

@implementation PresenceSessionHostConnection

- (void)updateMembers:(id)members completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for TUHandle();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  PresenceSessionHostConnection.updateMembers(_:completion:)(v6, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> (), v7);
}

@end