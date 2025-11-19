@interface BMFrame
- ($B23AFABC6D02C76AE1BFC370CD3EE548)frameHeader;
- (BMFrame)initWithHeader:(id *)a3 storePath:(id)a4 data:(id)a5 framePtr:(void *)a6 offset:(unint64_t)a7 nextOffset:(unint64_t)a8 timestamp:(double)a9 datastoreVersion:(unint64_t)a10 state:(unsigned int)a11;
- (double)modifiedTimestamp;
- (unsigned)dataVersion;
@end

@implementation BMFrame

- (unsigned)dataVersion
{
  if ([(BMFrame *)self datastoreVersion]== 9)
  {
    v3 = 100;
    return *(&self->super.isa + v3);
  }

  if ([(BMFrame *)self datastoreVersion]== 10)
  {
    v3 = 76;
    return *(&self->super.isa + v3);
  }

  return 0;
}

- (BMFrame)initWithHeader:(id *)a3 storePath:(id)a4 data:(id)a5 framePtr:(void *)a6 offset:(unint64_t)a7 nextOffset:(unint64_t)a8 timestamp:(double)a9 datastoreVersion:(unint64_t)a10 state:(unsigned int)a11
{
  v19 = a4;
  v20 = a5;
  v25.receiver = self;
  v25.super_class = BMFrame;
  v21 = [(BMFrame *)&v25 init];
  v22 = v21;
  if (v21)
  {
    *(v21 + 2) = a6;
    v23 = *&a3->var0.var0.var0.var0;
    *(v21 + 88) = *(&a3->var1 + 1);
    *(v21 + 72) = v23;
    objc_storeStrong(v21 + 3, a4);
    objc_storeStrong(&v22->_data, a5);
    v22->_offset = a7;
    v22->_nextOffset = a8;
    v22->_creationTimestamp = a9;
    v22->_datastoreVersion = a10;
    v22->_state = a11;
  }

  return v22;
}

- (double)modifiedTimestamp
{
  v3 = [(BMFrame *)self datastoreVersion];
  result = 0.0;
  if (v3 == 9)
  {
    return self->_frameHeader.frameHeaderV1.otherInfo.modifiedTimestamp;
  }

  return result;
}

- ($B23AFABC6D02C76AE1BFC370CD3EE548)frameHeader
{
  v3 = *(&self[2].var1 + 3);
  *&retstr->var0.var0.var0.var0 = *(&self[2].var1 + 1);
  *(&retstr->var1 + 1) = v3;
  return self;
}

@end