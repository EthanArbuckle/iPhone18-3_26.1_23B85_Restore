@interface CSEnhancedEndpointerInputVectorFactory
+ (id)inputVectorWithShape:(id)a3 dataType:(int64_t)a4 error:(id *)a5;
- (_TtC20CoreSpeechFoundation38CSEnhancedEndpointerInputVectorFactory)init;
@end

@implementation CSEnhancedEndpointerInputVectorFactory

+ (id)inputVectorWithShape:(id)a3 dataType:(int64_t)a4 error:(id *)a5
{
  sub_1DDA5594C();
  v6 = sub_1DDB10E60();
  v7 = sub_1DDA59F38(v6, a4);

  return v7;
}

- (_TtC20CoreSpeechFoundation38CSEnhancedEndpointerInputVectorFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CSEnhancedEndpointerInputVectorFactory();
  return [(CSEnhancedEndpointerInputVectorFactory *)&v3 init];
}

@end