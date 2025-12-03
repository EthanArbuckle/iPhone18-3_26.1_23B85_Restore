@interface TimerClass
- (_TtC15MapsSuggestions10TimerClass)initWithName:(id)name estimatedDownload:(int64_t)download estimatedUpload:(int64_t)upload queue:(id)queue block:(id)block;
@end

@implementation TimerClass

- (_TtC15MapsSuggestions10TimerClass)initWithName:(id)name estimatedDownload:(int64_t)download estimatedUpload:(int64_t)upload queue:(id)queue block:(id)block
{
  v12 = _Block_copy(block);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  aBlock[4] = sub_1C5258AE8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5139244;
  aBlock[3] = &block_descriptor_162;
  v14 = _Block_copy(aBlock);
  nameCopy = name;
  queueCopy = queue;

  v19.receiver = self;
  v19.super_class = type metadata accessor for TimerClass();
  v17 = [(MapsSuggestionsXPCActivityTimer *)&v19 initWithName:nameCopy estimatedDownload:download estimatedUpload:upload queue:queueCopy block:v14];

  _Block_release(v14);

  return v17;
}

@end