@interface SRAudioDecoder
+ (unint64_t)totalFrames:(id)a3;
- (SRAudioDecoder)init;
- (SRAudioDecoder)initWithStreamDescription:(AudioStreamBasicDescription *)a3 error:(id *)a4;
- (id)decodeAudio:(id)a3 error:(id *)a4;
- (id)endWithError:(id *)a3;
@end

@implementation SRAudioDecoder

- (SRAudioDecoder)initWithStreamDescription:(AudioStreamBasicDescription *)a3 error:(id *)a4
{
  mSampleRate = a3->mSampleRate;
  v5 = *&a3->mBytesPerFrame;
  v12 = *&a3->mFormatID;
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

- (id)decodeAudio:(id)a3 error:(id *)a4
{
  v5 = *(&self->super.isa + OBJC_IVAR___SRAudioDecoder_decoder);
  v6 = a3;
  v7 = self;
  v8 = dispatch thunk of OpusDecoder.decode(audio:)();

  return v8;
}

- (id)endWithError:(id *)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___SRAudioDecoder_decoder);
  v4 = self;
  v5 = dispatch thunk of OpusDecoder.end()();

  return v5;
}

+ (unint64_t)totalFrames:(id)a3
{
  v3 = a3;
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