@interface PhotosPersonEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (id)serialize;
@end

@implementation PhotosPersonEvent

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = sub_1C4EF9A68();
  v8 = v7;

  swift_getObjCClassMetadata();
  v9 = static PhotosPersonEvent.event(with:dataVersion:)(v6, v8, version);
  sub_1C4434000(v6, v8);

  return v9;
}

- (id)serialize
{
  selfCopy = self;
  v3 = PhotosPersonEvent.serialize()();
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