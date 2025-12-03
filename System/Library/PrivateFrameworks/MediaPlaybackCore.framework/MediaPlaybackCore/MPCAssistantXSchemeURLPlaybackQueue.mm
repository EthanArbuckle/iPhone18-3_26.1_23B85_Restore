@interface MPCAssistantXSchemeURLPlaybackQueue
+ (BOOL)supportsContainerURL:(id)l itemURLs:(id)ls;
+ (BOOL)supportsURL:(id)l;
- (MPCAssistantXSchemeURLPlaybackQueue)initWithContextID:(id)d;
- (MPCAssistantXSchemeURLPlaybackQueue)initWithContextID:(id)d containerURL:(id)l itemURLs:(id)ls;
- (MPCAssistantXSchemeURLPlaybackQueue)initWithContextID:(id)d url:(id)url;
- (NSArray)itemURLs;
- (NSString)description;
- (NSURL)url;
- (void)getPlaybackQueueWithDestination:(MPCAssistantRemoteControlDestination *)destination completion:(id)completion;
@end

@implementation MPCAssistantXSchemeURLPlaybackQueue

+ (BOOL)supportsURL:(id)l
{
  v3 = sub_1C6014F20();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6014EC0();
  sub_1C5C97374();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

+ (BOOL)supportsContainerURL:(id)l itemURLs:(id)ls
{
  v4 = sub_1C6014F20();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6014EC0();
  sub_1C6016B10();
  sub_1C5C9F1B0();
  v9 = v8;

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

- (MPCAssistantXSchemeURLPlaybackQueue)initWithContextID:(id)d url:(id)url
{
  v5 = sub_1C6014F20();
  MEMORY[0x1EEE9AC00](v5 - 8);
  if (d)
  {
    sub_1C6016940();
  }

  sub_1C6014EC0();
  sub_1C5CA0250();
  return result;
}

- (MPCAssistantXSchemeURLPlaybackQueue)initWithContextID:(id)d containerURL:(id)l itemURLs:(id)ls
{
  v6 = sub_1C6014F20();
  MEMORY[0x1EEE9AC00](v6);
  if (d)
  {
    sub_1C6016940();
  }

  sub_1C6014EC0();
  sub_1C6016B10();
  sub_1C5CA06E0();
  return result;
}

- (NSURL)url
{
  v2 = sub_1C6014F20();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5CA0E04(v5);
  v6 = sub_1C6014EA0();
  (*(v3 + 8))(v5, v2);

  return v6;
}

- (NSArray)itemURLs
{
  sub_1C5CA0EDC();
  sub_1C6014F20();
  v2 = sub_1C6016AF0();

  return v2;
}

- (NSString)description
{
  selfCopy = self;
  MPCAssistantXSchemeURLPlaybackQueue.description.getter();

  v3 = sub_1C6016900();

  return v3;
}

- (void)getPlaybackQueueWithDestination:(MPCAssistantRemoteControlDestination *)destination completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = destination;
  v7[3] = v6;
  v7[4] = self;
  destinationCopy = destination;
  selfCopy = self;

  sub_1C5E3A9D0(&unk_1C6032D88, v7);
}

- (MPCAssistantXSchemeURLPlaybackQueue)initWithContextID:(id)d
{
  if (d)
  {
    sub_1C6016940();
  }

  MPCAssistantXSchemeURLPlaybackQueue.init(contextID:)();
}

@end