@interface SRAudioDecoder
+ (unint64_t)totalFrames:(id)frames;
- (SRAudioDecoder)init;
- (SRAudioDecoder)initWithStreamDescription:(AudioStreamBasicDescription *)description error:(id *)error;
- (id)decodeAudio:(id)audio error:(id *)error;
- (id)endWithError:(id *)error;
@end

@implementation SRAudioDecoder

- (SRAudioDecoder)initWithStreamDescription:(AudioStreamBasicDescription *)description error:(id *)error
{
  mSampleRate = description->mSampleRate;
  v5 = *&description->mBytesPerFrame;
  v12 = *&description->mFormatID;
  v13 = v5;
  v6 = type metadata accessor for OpusDecoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR___SRAudioDecoder_decoder) = OpusDecoder.init(destinationFormat:)();
  v10.receiver = self;
  v10.super_class = type metadata accessor for SRAudioDecoder();
  return [(SRAudioDecoder *)&v10 init];
}

- (id)decodeAudio:(id)audio error:(id *)error
{
  v5 = *(&self->super.isa + OBJC_IVAR___SRAudioDecoder_decoder);
  audioCopy = audio;
  selfCopy = self;
  v8 = dispatch thunk of OpusDecoder.decode(audio:)();

  return v8;
}

- (id)endWithError:(id *)error
{
  v3 = *(&self->super.isa + OBJC_IVAR___SRAudioDecoder_decoder);
  selfCopy = self;
  v5 = dispatch thunk of OpusDecoder.end()();

  return v5;
}

+ (unint64_t)totalFrames:(id)frames
{
  framesCopy = frames;
  v4 = AudioData.sampleCount.getter();

  return v4;
}

- (SRAudioDecoder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end