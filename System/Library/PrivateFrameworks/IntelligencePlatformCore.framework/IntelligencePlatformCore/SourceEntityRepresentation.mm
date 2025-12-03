@interface SourceEntityRepresentation
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (id)serialize;
@end

@implementation SourceEntityRepresentation

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v5 = sub_1C4EF9A68();
  v7 = v6;

  swift_getObjCClassMetadata();
  v8 = static SourceEntityRepresentation.event(with:dataVersion:)();
  sub_1C4434000(v5, v7);

  return v8;
}

- (id)serialize
{
  selfCopy = self;
  v3 = SourceEntityRepresentation.serialize()();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1C4EF9A38();
    sub_1C441DFEC(v3, v5);
  }

  return v6;
}

@end