@interface BMFrame
- ($B23AFABC6D02C76AE1BFC370CD3EE548)frameHeader;
- (BMFrame)initWithHeader:(id *)header storePath:(id)path data:(id)data framePtr:(void *)ptr offset:(unint64_t)offset nextOffset:(unint64_t)nextOffset timestamp:(double)timestamp datastoreVersion:(unint64_t)self0 state:(unsigned int)self1;
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

- (BMFrame)initWithHeader:(id *)header storePath:(id)path data:(id)data framePtr:(void *)ptr offset:(unint64_t)offset nextOffset:(unint64_t)nextOffset timestamp:(double)timestamp datastoreVersion:(unint64_t)self0 state:(unsigned int)self1
{
  pathCopy = path;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = BMFrame;
  v21 = [(BMFrame *)&v25 init];
  v22 = v21;
  if (v21)
  {
    *(v21 + 2) = ptr;
    v23 = *&header->var0.var0.var0.var0;
    *(v21 + 88) = *(&header->var1 + 1);
    *(v21 + 72) = v23;
    objc_storeStrong(v21 + 3, path);
    objc_storeStrong(&v22->_data, data);
    v22->_offset = offset;
    v22->_nextOffset = nextOffset;
    v22->_creationTimestamp = timestamp;
    v22->_datastoreVersion = version;
    v22->_state = state;
  }

  return v22;
}

- (double)modifiedTimestamp
{
  datastoreVersion = [(BMFrame *)self datastoreVersion];
  result = 0.0;
  if (datastoreVersion == 9)
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