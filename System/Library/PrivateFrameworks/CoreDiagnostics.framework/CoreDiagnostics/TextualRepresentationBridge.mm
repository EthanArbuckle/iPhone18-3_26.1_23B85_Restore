@interface TextualRepresentationBridge
+ (id)formatMTEPageTags:(id)a3 report:(id)a4;
- (_TtC15CoreDiagnostics27TextualRepresentationBridge)init;
@end

@implementation TextualRepresentationBridge

+ (id)formatMTEPageTags:(id)a3 report:(id)a4
{
  v4 = sub_1D9849FF4();
  v5 = sub_1D9849DB4();
  sub_1D983A748(v4, v5);
  v7 = v6;

  if (v7)
  {
    v8 = sub_1D9849DC4();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_TtC15CoreDiagnostics27TextualRepresentationBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TextualRepresentationBridge();
  return [(TextualRepresentationBridge *)&v3 init];
}

@end