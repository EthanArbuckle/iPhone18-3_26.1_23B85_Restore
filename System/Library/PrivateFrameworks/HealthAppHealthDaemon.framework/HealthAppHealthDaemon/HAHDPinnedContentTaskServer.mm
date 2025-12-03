@interface HAHDPinnedContentTaskServer
+ (NSString)taskIdentifier;
- (HAHDPinnedContentTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)remote_applyDifferencesWithDifferences:(id)differences inDomain:(id)domain completion:(id)completion;
- (void)remote_movePinnedContentWithIdentifier:(id)identifier inDomain:(id)domain toIndex:(id)index completion:(id)completion;
- (void)remote_pinContentWithIdentifier:(id)identifier inDomain:(id)domain atIndex:(id)index completion:(id)completion;
- (void)remote_unpinContentWithIdentifier:(id)identifier inDomain:(id)domain completion:(id)completion;
@end

@implementation HAHDPinnedContentTaskServer

- (HAHDPinnedContentTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v10 = sub_2293C00A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293C0090();
  configurationCopy = configuration;
  clientCopy = client;
  swift_unknownObjectRetain();
  v17 = sub_2293C0080();
  v18 = type metadata accessor for PinnedContentTaskServer();
  v21.receiver = self;
  v21.super_class = v18;
  v19 = [(HDStandardTaskServer *)&v21 initWithUUID:v17 configuration:configurationCopy client:clientCopy delegate:delegate];

  swift_unknownObjectRelease();
  (*(v11 + 8))(v14, v10);
  return v19;
}

+ (NSString)taskIdentifier
{
  sub_2293BFF60();
  sub_2293BFF30();
  v2 = sub_2293C0550();

  return v2;
}

- (id)exportedInterface
{
  sub_2293BFF60();
  v2 = MEMORY[0x22AAC9B80]();

  return v2;
}

- (id)remoteInterface
{
  sub_2293BFF60();
  v2 = sub_2293BFF40();

  return v2;
}

- (void)remote_pinContentWithIdentifier:(id)identifier inDomain:(id)domain atIndex:(id)index completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = sub_2293C0570();
  v11 = v10;
  v12 = sub_2293C0570();
  v14 = v13;
  _Block_copy(v8);
  indexCopy = index;
  selfCopy = self;
  sub_2293B066C(v9, v11, v12, v14, index, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)remote_unpinContentWithIdentifier:(id)identifier inDomain:(id)domain completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = sub_2293C0570();
  v9 = v8;
  v10 = sub_2293C0570();
  v12 = v11;
  _Block_copy(v6);
  selfCopy = self;
  sub_2293B09EC(v7, v9, v10, v12, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)remote_movePinnedContentWithIdentifier:(id)identifier inDomain:(id)domain toIndex:(id)index completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = sub_2293C0570();
  v11 = v10;
  v12 = sub_2293C0570();
  v14 = v13;
  _Block_copy(v8);
  indexCopy = index;
  selfCopy = self;
  sub_2293B0D48(v9, v11, v12, v14, indexCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)remote_applyDifferencesWithDifferences:(id)differences inDomain:(id)domain completion:(id)completion
{
  v6 = _Block_copy(completion);
  sub_2293BFFC0();
  v7 = sub_2293C0600();
  v8 = sub_2293C0570();
  v10 = v9;
  _Block_copy(v6);
  selfCopy = self;
  sub_2293B1774(v7, v8, v10, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end