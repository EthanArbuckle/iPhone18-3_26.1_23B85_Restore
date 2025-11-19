@interface TimerClass
- (_TtC15MapsSuggestions10TimerClass)initWithName:(id)a3 estimatedDownload:(int64_t)a4 estimatedUpload:(int64_t)a5 queue:(id)a6 block:(id)a7;
@end

@implementation TimerClass

- (_TtC15MapsSuggestions10TimerClass)initWithName:(id)a3 estimatedDownload:(int64_t)a4 estimatedUpload:(int64_t)a5 queue:(id)a6 block:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  aBlock[4] = sub_1C5258AE8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5139244;
  aBlock[3] = &block_descriptor_162;
  v14 = _Block_copy(aBlock);
  v15 = a3;
  v16 = a6;

  v19.receiver = self;
  v19.super_class = type metadata accessor for TimerClass();
  v17 = [(MapsSuggestionsXPCActivityTimer *)&v19 initWithName:v15 estimatedDownload:a4 estimatedUpload:a5 queue:v16 block:v14];

  _Block_release(v14);

  return v17;
}

@end